ltl siempre_redP_o_redS {
	[] (redP || redS)
}

ltl nunca_redP_y_redS {
	[] !(redP && redS)
}

ltl peatonP_cruza {
	([]<> finEspera) -> ([] (peatonP -><> redP))
}

ltl peatonS_cruza {
	([]<> finEspera) -> ([] (peatonS -><> redS))
}

ltl espiraS_implica_greenS {
	([]<> finEspera) -> ([](espiraS -> <> greenS))
}

ltl recurrentemente_greenP {
	([]<> finEspera) -> ([](<>greenP))
}

ltl nunca_los_dos_en_verde {
	[] !(greenP && greenS)
}

ltl secuencia_semaforoP_red_to_green {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(redP U greenP)
}

ltl secuencia_semaforoP_green_to_yellow {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(greenP U yellowP)
}

ltl secuencia_semaforoP_yellow_to_red {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(yellowP U redP)
}

ltl secuencia_semaforoS_red_to_green {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(redS U greenS)
}

ltl secuencia_semaforoS_green_to_yellow {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(greenS U yellowS)
}

ltl secuencia_semaforoS_yellow_to_red {
	([]<> finEspera && []<> (peatonP || espiraS)) -> []<>(yellowS U redS)
}


mtype = { P_GREEN_S_RED, P_YELLOW_S_RED, P_RED_S_GREEN, P_RED_S_YELLOW }

int peatonS;
int peatonP;
int espiraS;
int finEspera;

int greenP = 1;
int yellowP;
int redP;
int greenS;
int yellowS;
int redS = 1;

int estado = P_GREEN_S_RED;


active proctype fsm () 
{
	estado = P_GREEN_S_RED;
	do
		::	if
			:: (estado == P_GREEN_S_RED) -> atomic {
				if
				:: ((finEspera == 1) && (peatonP || espiraS)) -> estado = P_YELLOW_S_RED;
					printf ("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n",
						peatonS, peatonP, espiraS, finEspera);
					finEspera = 0; peatonP = 0; espiraS = 0;
					greenP = 0; yellowP = 1; redP = 0;
					greenS = 0; yellowS = 0; redS = 1;
					peatonP = 0; peatonS = 0; espiraS = 0;
					printf("estado siguiente = %d\n", estado);
					printf("deadline = now() + TIMEOUT_PRINCIPAL_YELLOW\n");

				fi;
			}

			:: (estado == P_YELLOW_S_RED) -> atomic {
				if
				:: (finEspera == 1) -> estado = P_RED_S_GREEN;
					printf ("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n",
						peatonS, peatonP, espiraS, finEspera);
					finEspera = 0;
					greenP = 0; yellowP = 0; redP = 1;
					greenS = 1; yellowS = 0; redS = 0;
					printf("estado siguiente = %d\n", estado);
					printf("deadline = now() + TIMEOUT_PRINCIPAL_RED\n");

				fi;
			}

			:: (estado == P_RED_S_GREEN) -> atomic {
				if
				:: (finEspera == 1) -> estado = P_RED_S_YELLOW;
					printf ("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n",
						peatonS, peatonP, espiraS, finEspera);
					finEspera = 0;
					greenP = 0; yellowP = 0; redP = 1;
					greenS = 0; yellowS = 1; redS = 0;
					printf("estado siguiente = %d\n", estado);
					printf("deadline = now() + TIMEOUT_SECONDARY_YELLOW\n");

				fi;
			}

			:: (estado == P_RED_S_YELLOW) -> atomic {
				if
				:: (finEspera == 1) -> estado = P_GREEN_S_RED;
					printf ("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n",
						peatonS, peatonP, espiraS, finEspera);
					finEspera = 0;
					greenP = 1; yellowP = 0; redP = 0;
					greenS = 0; yellowS = 0; redS = 1;
					printf("estado siguiente = %d\n", estado);
					printf("deadline = now() + TIMEOUT_PRINCIPAL_GREEN\n");

				fi;
			}
		fi;
	od
}

active proctype entorno ()
{
	do
	::	if
		:: peatonS = 1
		:: peatonP = 1
		:: espiraS = 1
		:: finEspera = 1
		:: skip -> skip
		fi ;
		printf("estado = %d\n", estado);
		printf("greenP = %d, yellowP = %d, redP = %d, greenS = %d, yellowS = %d, redS = %d\n",
			greenP, yellowP, redP, greenS, yellowS, redS);
	od
}
