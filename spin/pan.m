#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM siempre_los_dos_en_verde */
	case 3: // STATE 1 - _spin_nvr.tmp:131 - [(!((greenP&&greenS)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!( !((now.greenP&&now.greenS))))
			continue;
		/* merge: assert(!(!((greenP&&greenS))))(0, 2, 6) */
		reached[10][2] = 1;
		spin_assert( !( !((now.greenP&&now.greenS))), " !( !((greenP&&greenS)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[10][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:136 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM nunca_los_dos_en_verde */
	case 5: // STATE 1 - _spin_nvr.tmp:122 - [(!(!((greenP&&greenS))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!( !( !((now.greenP&&now.greenS)))))
			continue;
		/* merge: assert(!(!(!((greenP&&greenS)))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !( !( !((now.greenP&&now.greenS)))), " !( !( !((greenP&&greenS))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:127 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM recurrentemente_greenP */
	case 7: // STATE 1 - _spin_nvr.tmp:111 - [(!(greenP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !(now.greenP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:116 - [(!(greenP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !(now.greenP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:118 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM espiraS_implica_greenS */
	case 10: // STATE 1 - _spin_nvr.tmp:100 - [((!(!(espiraS))&&!(greenS)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !(now.espiraS))&& !(now.greenS))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - _spin_nvr.tmp:105 - [(!(greenS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!( !(now.greenS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:107 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secuencia_semaforoS */
	case 13: // STATE 1 - _spin_nvr.tmp:73 - [(!(yellowS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(now.yellowS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 3 - _spin_nvr.tmp:74 - [(((!(greenS)&&!(redS))||((!(greenS)&&!(yellowS))||(!(redS)&&!(yellowS)))))] (12:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!((( !(now.greenS)&& !(now.redS))||(( !(now.greenS)&& !(now.yellowS))||( !(now.redS)&& !(now.yellowS))))))
			continue;
		/* merge: assert(!(((!(greenS)&&!(redS))||((!(greenS)&&!(yellowS))||(!(redS)&&!(yellowS))))))(0, 4, 12) */
		reached[6][4] = 1;
		spin_assert( !((( !(now.greenS)&& !(now.redS))||(( !(now.greenS)&& !(now.yellowS))||( !(now.redS)&& !(now.yellowS))))), " !((( !(greenS)&& !(redS))||(( !(greenS)&& !(yellowS))||( !(redS)&& !(yellowS)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[6][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 6 - _spin_nvr.tmp:75 - [(!(redS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][6] = 1;
		if (!( !(now.redS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:76 - [(!(greenS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!( !(now.greenS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - _spin_nvr.tmp:81 - [(!(yellowS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][15] = 1;
		if (!( !(now.yellowS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 17 - _spin_nvr.tmp:82 - [((!(greenS)&&!(yellowS)))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][17] = 1;
		if (!(( !(now.greenS)&& !(now.yellowS))))
			continue;
		/* merge: assert(!((!(greenS)&&!(yellowS))))(0, 18, 20) */
		reached[6][18] = 1;
		spin_assert( !(( !(now.greenS)&& !(now.yellowS))), " !(( !(greenS)&& !(yellowS)))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[6][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 23 - _spin_nvr.tmp:86 - [(!(redS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][23] = 1;
		if (!( !(now.redS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 25 - _spin_nvr.tmp:87 - [((!(redS)&&!(yellowS)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][25] = 1;
		if (!(( !(now.redS)&& !(now.yellowS))))
			continue;
		/* merge: assert(!((!(redS)&&!(yellowS))))(0, 26, 28) */
		reached[6][26] = 1;
		spin_assert( !(( !(now.redS)&& !(now.yellowS))), " !(( !(redS)&& !(yellowS)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[6][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 31 - _spin_nvr.tmp:91 - [(!(greenS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][31] = 1;
		if (!( !(now.greenS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 33 - _spin_nvr.tmp:92 - [((!(greenS)&&!(redS)))] (36:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][33] = 1;
		if (!(( !(now.greenS)&& !(now.redS))))
			continue;
		/* merge: assert(!((!(greenS)&&!(redS))))(0, 34, 36) */
		reached[6][34] = 1;
		spin_assert( !(( !(now.greenS)&& !(now.redS))), " !(( !(greenS)&& !(redS)))", II, tt, t);
		/* merge: .(goto)(0, 37, 36) */
		reached[6][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 40 - _spin_nvr.tmp:96 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM secuencia_semaforoP */
	case 24: // STATE 1 - _spin_nvr.tmp:46 - [(!(yellowP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(now.yellowP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 3 - _spin_nvr.tmp:47 - [(((!(greenP)&&!(redP))||((!(greenP)&&!(yellowP))||(!(redP)&&!(yellowP)))))] (12:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!((( !(now.greenP)&& !(now.redP))||(( !(now.greenP)&& !(now.yellowP))||( !(now.redP)&& !(now.yellowP))))))
			continue;
		/* merge: assert(!(((!(greenP)&&!(redP))||((!(greenP)&&!(yellowP))||(!(redP)&&!(yellowP))))))(0, 4, 12) */
		reached[5][4] = 1;
		spin_assert( !((( !(now.greenP)&& !(now.redP))||(( !(now.greenP)&& !(now.yellowP))||( !(now.redP)&& !(now.yellowP))))), " !((( !(greenP)&& !(redP))||(( !(greenP)&& !(yellowP))||( !(redP)&& !(yellowP)))))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[5][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 6 - _spin_nvr.tmp:48 - [(!(redP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][6] = 1;
		if (!( !(now.redP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 8 - _spin_nvr.tmp:49 - [(!(greenP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !(now.greenP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 15 - _spin_nvr.tmp:54 - [(!(yellowP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][15] = 1;
		if (!( !(now.yellowP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 17 - _spin_nvr.tmp:55 - [((!(greenP)&&!(yellowP)))] (20:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][17] = 1;
		if (!(( !(now.greenP)&& !(now.yellowP))))
			continue;
		/* merge: assert(!((!(greenP)&&!(yellowP))))(0, 18, 20) */
		reached[5][18] = 1;
		spin_assert( !(( !(now.greenP)&& !(now.yellowP))), " !(( !(greenP)&& !(yellowP)))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[5][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 23 - _spin_nvr.tmp:59 - [(!(redP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][23] = 1;
		if (!( !(now.redP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 25 - _spin_nvr.tmp:60 - [((!(redP)&&!(yellowP)))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][25] = 1;
		if (!(( !(now.redP)&& !(now.yellowP))))
			continue;
		/* merge: assert(!((!(redP)&&!(yellowP))))(0, 26, 28) */
		reached[5][26] = 1;
		spin_assert( !(( !(now.redP)&& !(now.yellowP))), " !(( !(redP)&& !(yellowP)))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[5][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 31 - _spin_nvr.tmp:64 - [(!(greenP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][31] = 1;
		if (!( !(now.greenP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 33 - _spin_nvr.tmp:65 - [((!(greenP)&&!(redP)))] (36:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][33] = 1;
		if (!(( !(now.greenP)&& !(now.redP))))
			continue;
		/* merge: assert(!((!(greenP)&&!(redP))))(0, 34, 36) */
		reached[5][34] = 1;
		spin_assert( !(( !(now.greenP)&& !(now.redP))), " !(( !(greenP)&& !(redP)))", II, tt, t);
		/* merge: .(goto)(0, 37, 36) */
		reached[5][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 40 - _spin_nvr.tmp:69 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonS_cruza */
	case 35: // STATE 1 - _spin_nvr.tmp:29 - [(((!(!(peatonS))&&!(redS))&&finEspera))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!((( !( !(now.peatonS))&& !(now.redS))&&now.finEspera)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 3 - _spin_nvr.tmp:30 - [((!(!(peatonS))&&!(redS)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!(( !( !(now.peatonS))&& !(now.redS))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 10 - _spin_nvr.tmp:35 - [(!(redS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!( !(now.redS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 15 - _spin_nvr.tmp:39 - [((!(redS)&&finEspera))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][15] = 1;
		if (!(( !(now.redS)&&now.finEspera)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 17 - _spin_nvr.tmp:40 - [(!(redS))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][17] = 1;
		if (!( !(now.redS)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 22 - _spin_nvr.tmp:42 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM peatonP_cruza */
	case 41: // STATE 1 - _spin_nvr.tmp:12 - [(((!(!(peatonP))&&!(redP))&&finEspera))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!((( !( !(now.peatonP))&& !(now.redP))&&now.finEspera)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 3 - _spin_nvr.tmp:13 - [((!(!(peatonP))&&!(redP)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][3] = 1;
		if (!(( !( !(now.peatonP))&& !(now.redP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 10 - _spin_nvr.tmp:18 - [(!(redP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!( !(now.redP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 15 - _spin_nvr.tmp:22 - [((!(redP)&&finEspera))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][15] = 1;
		if (!(( !(now.redP)&&now.finEspera)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 17 - _spin_nvr.tmp:23 - [(!(redP))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][17] = 1;
		if (!( !(now.redP)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 22 - _spin_nvr.tmp:25 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM siempre_redP_o_redS */
	case 47: // STATE 1 - _spin_nvr.tmp:3 - [(!((redP||redS)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((now.redP||now.redS))))
			continue;
		/* merge: assert(!(!((redP||redS))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !((now.redP||now.redS))), " !( !((redP||redS)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 49: // STATE 1 - model.pml:90 - [peatonS = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.peatonS;
		now.peatonS = 1;
#ifdef VAR_RANGES
		logval("peatonS", now.peatonS);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 2 - model.pml:91 - [peatonP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.peatonP;
		now.peatonP = 1;
#ifdef VAR_RANGES
		logval("peatonP", now.peatonP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 3 - model.pml:92 - [espiraS = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.espiraS;
		now.espiraS = 1;
#ifdef VAR_RANGES
		logval("espiraS", now.espiraS);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 4 - model.pml:93 - [finEspera = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.finEspera;
		now.finEspera = 1;
#ifdef VAR_RANGES
		logval("finEspera", now.finEspera);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 9 - model.pml:96 - [printf('peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\\n',peatonS,peatonP,espiraS,finEspera)] (0:0:0 - 6)
		IfNotBlocked
		reached[1][9] = 1;
		Printf("peatonS = %d, peatonP = %d, espiraS = %d, finEspera = %d\n", now.peatonS, now.peatonP, now.espiraS, now.finEspera);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 10 - model.pml:98 - [printf('greenP = %d, yellowP = %d, redP = %d, greenS = %d, yellowS = %d, redS = %d\\n',greenP,yellowP,redP,greenS,yellowS,redS)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		Printf("greenP = %d, yellowP = %d, redP = %d, greenS = %d, yellowS = %d, redS = %d\n", now.greenP, now.yellowP, now.redP, now.greenS, now.yellowS, now.redS);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 14 - model.pml:102 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 56: // STATE 1 - model.pml:39 - [((estado==P_GREEN_S_RED))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((P0 *)this)->estado==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: estado */  (trpt+1)->bup.oval = ((P0 *)this)->estado;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->estado = 0;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 2 - model.pml:41 - [((finEspera&&(peatonP||espiraS)))] (60:0:10 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.finEspera&&(now.peatonP||now.espiraS))))
			continue;
		/* merge: estado = P_YELLOW_S_RED(60, 3, 60) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(10);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->estado;
		((P0 *)this)->estado = 3;
#ifdef VAR_RANGES
		logval("fsm:estado", ((P0 *)this)->estado);
#endif
		;
		/* merge: greenP = 0(60, 4, 60) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = now.greenP;
		now.greenP = 0;
#ifdef VAR_RANGES
		logval("greenP", now.greenP);
#endif
		;
		/* merge: yellowP = 1(60, 5, 60) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = now.yellowP;
		now.yellowP = 1;
#ifdef VAR_RANGES
		logval("yellowP", now.yellowP);
#endif
		;
		/* merge: redP = 0(60, 6, 60) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = now.redP;
		now.redP = 0;
#ifdef VAR_RANGES
		logval("redP", now.redP);
#endif
		;
		/* merge: greenS = 0(60, 7, 60) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = now.greenS;
		now.greenS = 0;
#ifdef VAR_RANGES
		logval("greenS", now.greenS);
#endif
		;
		/* merge: yellowS = 0(60, 8, 60) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[5] = now.yellowS;
		now.yellowS = 0;
#ifdef VAR_RANGES
		logval("yellowS", now.yellowS);
#endif
		;
		/* merge: redS = 1(60, 9, 60) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[6] = now.redS;
		now.redS = 1;
#ifdef VAR_RANGES
		logval("redS", now.redS);
#endif
		;
		/* merge: peatonP = 0(60, 10, 60) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[7] = now.peatonP;
		now.peatonP = 0;
#ifdef VAR_RANGES
		logval("peatonP", now.peatonP);
#endif
		;
		/* merge: peatonS = 0(60, 11, 60) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[8] = now.peatonS;
		now.peatonS = 0;
#ifdef VAR_RANGES
		logval("peatonS", now.peatonS);
#endif
		;
		/* merge: espiraS = 0(60, 12, 60) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[9] = now.espiraS;
		now.espiraS = 0;
#ifdef VAR_RANGES
		logval("espiraS", now.espiraS);
#endif
		;
		/* merge: printf('estado = %d',estado)(60, 13, 60) */
		reached[0][13] = 1;
		Printf("estado = %d", ((P0 *)this)->estado);
		/* merge: printf('deadline = now() + TIMEOUT_PRINCIPAL_YELLOW\\n')(60, 14, 60) */
		reached[0][14] = 1;
		Printf("deadline = now() + TIMEOUT_PRINCIPAL_YELLOW\n");
		/* merge: .(goto)(60, 16, 60) */
		reached[0][16] = 1;
		;
		/* merge: .(goto)(0, 61, 60) */
		reached[0][61] = 1;
		;
		_m = 3; goto P999; /* 14 */
	case 58: // STATE 18 - model.pml:51 - [((estado==P_YELLOW_S_RED))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((((P0 *)this)->estado==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: estado */  (trpt+1)->bup.oval = ((P0 *)this)->estado;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->estado = 0;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 19 - model.pml:53 - [(finEspera)] (60:0:7 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(now.finEspera))
			continue;
		/* merge: estado = P_RED_S_GREEN(60, 20, 60) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->estado;
		((P0 *)this)->estado = 2;
#ifdef VAR_RANGES
		logval("fsm:estado", ((P0 *)this)->estado);
#endif
		;
		/* merge: greenP = 0(60, 21, 60) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = now.greenP;
		now.greenP = 0;
#ifdef VAR_RANGES
		logval("greenP", now.greenP);
#endif
		;
		/* merge: yellowP = 0(60, 22, 60) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.yellowP;
		now.yellowP = 0;
#ifdef VAR_RANGES
		logval("yellowP", now.yellowP);
#endif
		;
		/* merge: redP = 1(60, 23, 60) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[3] = now.redP;
		now.redP = 1;
#ifdef VAR_RANGES
		logval("redP", now.redP);
#endif
		;
		/* merge: greenS = 1(60, 24, 60) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[4] = now.greenS;
		now.greenS = 1;
#ifdef VAR_RANGES
		logval("greenS", now.greenS);
#endif
		;
		/* merge: yellowS = 0(60, 25, 60) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[5] = now.yellowS;
		now.yellowS = 0;
#ifdef VAR_RANGES
		logval("yellowS", now.yellowS);
#endif
		;
		/* merge: redS = 0(60, 26, 60) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[6] = now.redS;
		now.redS = 0;
#ifdef VAR_RANGES
		logval("redS", now.redS);
#endif
		;
		/* merge: printf('estado = %d',estado)(60, 27, 60) */
		reached[0][27] = 1;
		Printf("estado = %d", ((P0 *)this)->estado);
		/* merge: printf('deadline = now() + TIMEOUT_PRINCIPAL_RED\\n')(60, 28, 60) */
		reached[0][28] = 1;
		Printf("deadline = now() + TIMEOUT_PRINCIPAL_RED\n");
		/* merge: .(goto)(60, 30, 60) */
		reached[0][30] = 1;
		;
		/* merge: .(goto)(0, 61, 60) */
		reached[0][61] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 60: // STATE 32 - model.pml:62 - [((estado==P_RED_S_GREEN))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((P0 *)this)->estado==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: estado */  (trpt+1)->bup.oval = ((P0 *)this)->estado;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->estado = 0;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 33 - model.pml:64 - [(finEspera)] (60:0:7 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!(now.finEspera))
			continue;
		/* merge: estado = P_RED_S_YELLOW(60, 34, 60) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->estado;
		((P0 *)this)->estado = 1;
#ifdef VAR_RANGES
		logval("fsm:estado", ((P0 *)this)->estado);
#endif
		;
		/* merge: greenP = 0(60, 35, 60) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[1] = now.greenP;
		now.greenP = 0;
#ifdef VAR_RANGES
		logval("greenP", now.greenP);
#endif
		;
		/* merge: yellowP = 0(60, 36, 60) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[2] = now.yellowP;
		now.yellowP = 0;
#ifdef VAR_RANGES
		logval("yellowP", now.yellowP);
#endif
		;
		/* merge: redP = 1(60, 37, 60) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[3] = now.redP;
		now.redP = 1;
#ifdef VAR_RANGES
		logval("redP", now.redP);
#endif
		;
		/* merge: greenS = 0(60, 38, 60) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[4] = now.greenS;
		now.greenS = 0;
#ifdef VAR_RANGES
		logval("greenS", now.greenS);
#endif
		;
		/* merge: yellowS = 1(60, 39, 60) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[5] = now.yellowS;
		now.yellowS = 1;
#ifdef VAR_RANGES
		logval("yellowS", now.yellowS);
#endif
		;
		/* merge: redS = 0(60, 40, 60) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[6] = now.redS;
		now.redS = 0;
#ifdef VAR_RANGES
		logval("redS", now.redS);
#endif
		;
		/* merge: printf('estado = %d',estado)(60, 41, 60) */
		reached[0][41] = 1;
		Printf("estado = %d", ((P0 *)this)->estado);
		/* merge: printf('deadline = now() + TIMEOUT_SECONDARY_YELLOW\\n')(60, 42, 60) */
		reached[0][42] = 1;
		Printf("deadline = now() + TIMEOUT_SECONDARY_YELLOW\n");
		/* merge: .(goto)(60, 44, 60) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 61, 60) */
		reached[0][61] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 62: // STATE 46 - model.pml:73 - [((estado==P_RED_S_YELLOW))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((((P0 *)this)->estado==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: estado */  (trpt+1)->bup.oval = ((P0 *)this)->estado;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->estado = 0;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 47 - model.pml:75 - [(finEspera)] (60:0:7 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!(now.finEspera))
			continue;
		/* merge: estado = P_GREEN_S_RED(60, 48, 60) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->estado;
		((P0 *)this)->estado = 4;
#ifdef VAR_RANGES
		logval("fsm:estado", ((P0 *)this)->estado);
#endif
		;
		/* merge: greenP = 1(60, 49, 60) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[1] = now.greenP;
		now.greenP = 1;
#ifdef VAR_RANGES
		logval("greenP", now.greenP);
#endif
		;
		/* merge: yellowP = 0(60, 50, 60) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[2] = now.yellowP;
		now.yellowP = 0;
#ifdef VAR_RANGES
		logval("yellowP", now.yellowP);
#endif
		;
		/* merge: redP = 0(60, 51, 60) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[3] = now.redP;
		now.redP = 0;
#ifdef VAR_RANGES
		logval("redP", now.redP);
#endif
		;
		/* merge: greenS = 0(60, 52, 60) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals[4] = now.greenS;
		now.greenS = 0;
#ifdef VAR_RANGES
		logval("greenS", now.greenS);
#endif
		;
		/* merge: yellowS = 0(60, 53, 60) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[5] = now.yellowS;
		now.yellowS = 0;
#ifdef VAR_RANGES
		logval("yellowS", now.yellowS);
#endif
		;
		/* merge: redS = 1(60, 54, 60) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[6] = now.redS;
		now.redS = 1;
#ifdef VAR_RANGES
		logval("redS", now.redS);
#endif
		;
		/* merge: printf('estado = %d',estado)(60, 55, 60) */
		reached[0][55] = 1;
		Printf("estado = %d", ((P0 *)this)->estado);
		/* merge: printf('deadline = now() + TIMEOUT_PRINCIPAL_GREEN\\n')(60, 56, 60) */
		reached[0][56] = 1;
		Printf("deadline = now() + TIMEOUT_PRINCIPAL_GREEN\n");
		/* merge: .(goto)(60, 58, 60) */
		reached[0][58] = 1;
		;
		/* merge: .(goto)(0, 61, 60) */
		reached[0][61] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 64: // STATE 63 - model.pml:84 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

