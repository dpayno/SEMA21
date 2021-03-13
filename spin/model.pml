ltl siempre_redP_o_redS {
	[] (redP || redS)
}

ltl peatonP_cruza {
	([]<> finEspera) -> ([] (peatonP -><> redP))
}

ltl peatonS_cruza {
	([]<> finEspera) -> ([] (peatonS -><> redS))
}

ltl secuencia_semaforoP {
	[]((redP U greenP) && (greenP U yellowP) && (yellowP U redP))
}

ltl secuencia_semaforoS {
	[]((redS U greenS) && (greenS U yellowS) && (yellowS U redS))
}

ltl espiraS_implica_greenS {
	[](espiraS -> <> greenS)
}

ltl recurrentemente_greenP {
	[](<>greenP)
}

ltl nunca_los_dos_en_verde {
	[] !(greenP && greenS)
}

ltl siempre_los_dos_en_verde {
	[] (greenP && greenS)
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


active proctype fsm () 
{
    int estado = P_GREEN_S_RED;
    do
    :: (estado == P_GREEN_S_RED) -> atomic {
        if
        :: (finEspera && (peatonP || espiraS)) -> estado = P_YELLOW_S_RED;
    		greenP = 0; yellowP = 1; redP = 0;
    		greenS = 0; yellowS = 0; redS = 1;
    		peatonP = 0; peatonS = 0; espiraS = 0;
    		printf("estado = %d", estado);
    		printf("deadline = now() + TIMEOUT_PRINCIPAL_YELLOW\n");

        fi
    }

    :: (estado == P_YELLOW_S_RED) -> atomic {
        if
        :: (finEspera) -> estado = P_RED_S_GREEN;
    		greenP = 0; yellowP = 0; redP = 1;
    		greenS = 1; yellowS = 0; redS = 0;
    		printf("estado = %d", estado);
    		printf("deadline = now() + TIMEOUT_PRINCIPAL_RED\n");

        fi
    }

    :: (estado == P_RED_S_GREEN) -> atomic {
        if
        :: (finEspera) -> estado = P_RED_S_YELLOW;
    		greenP = 0; yellowP = 0; redP = 1;
    		greenS = 0; yellowS = 1; redS = 0;
    		printf("estado = %d", estado);
    		printf("deadline = now() + TIMEOUT_SECONDARY_YELLOW\n");

        fi
    }

    :: (estado == P_RED_S_YELLOW) -> atomic {
        if
        :: (finEspera) -> estado = P_GREEN_S_RED;
    		greenP = 1; yellowP = 0; redP = 0;
    		greenS = 0; yellowS = 0; redS = 1;
    		printf("estado = %d", estado);
    		printf("deadline = now() + TIMEOUT_PRINCIPAL_GREEN\n");

        fi
    }
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
		printf ("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n",
			peatonS, peatonP, espiraS, finEspera);
		printf("greenP = %d, yellowP = %d, redP = %d, greenS = %d, yellowS = %d, redS = %d\n", greenP, yellowP, redP, greenS, yellowS, redS);


	od
}
