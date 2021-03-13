	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM siempre_los_dos_en_verde */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM nunca_los_dos_en_verde */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM recurrentemente_greenP */
;
		;
		;
		;
		
	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM espiraS_implica_greenS */
;
		;
		;
		;
		
	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secuencia_semaforoS */
;
		;
		;
		
	case 14: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 18: // STATE 17
		goto R999;
;
		;
		;
		
	case 20: // STATE 25
		goto R999;
;
		;
		;
		
	case 22: // STATE 33
		goto R999;

	case 23: // STATE 40
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM secuencia_semaforoP */
;
		;
		;
		
	case 25: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 29: // STATE 17
		goto R999;
;
		;
		;
		
	case 31: // STATE 25
		goto R999;
;
		;
		;
		
	case 33: // STATE 33
		goto R999;

	case 34: // STATE 40
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonS_cruza */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 40: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM peatonP_cruza */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 46: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM siempre_redP_o_redS */
;
		
	case 47: // STATE 1
		goto R999;

	case 48: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 49: // STATE 1
		;
		now.peatonS = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 2
		;
		now.peatonP = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 3
		;
		now.espiraS = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 4
		;
		now.finEspera = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 55: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */

	case 56: // STATE 1
		;
	/* 0 */	((P0 *)this)->estado = trpt->bup.oval;
		;
		;
		goto R999;

	case 57: // STATE 12
		;
		now.espiraS = trpt->bup.ovals[9];
		now.peatonS = trpt->bup.ovals[8];
		now.peatonP = trpt->bup.ovals[7];
		now.redS = trpt->bup.ovals[6];
		now.yellowS = trpt->bup.ovals[5];
		now.greenS = trpt->bup.ovals[4];
		now.redP = trpt->bup.ovals[3];
		now.yellowP = trpt->bup.ovals[2];
		now.greenP = trpt->bup.ovals[1];
		((P0 *)this)->estado = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 10);
		goto R999;

	case 58: // STATE 18
		;
	/* 0 */	((P0 *)this)->estado = trpt->bup.oval;
		;
		;
		goto R999;

	case 59: // STATE 26
		;
		now.redS = trpt->bup.ovals[6];
		now.yellowS = trpt->bup.ovals[5];
		now.greenS = trpt->bup.ovals[4];
		now.redP = trpt->bup.ovals[3];
		now.yellowP = trpt->bup.ovals[2];
		now.greenP = trpt->bup.ovals[1];
		((P0 *)this)->estado = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 60: // STATE 32
		;
	/* 0 */	((P0 *)this)->estado = trpt->bup.oval;
		;
		;
		goto R999;

	case 61: // STATE 40
		;
		now.redS = trpt->bup.ovals[6];
		now.yellowS = trpt->bup.ovals[5];
		now.greenS = trpt->bup.ovals[4];
		now.redP = trpt->bup.ovals[3];
		now.yellowP = trpt->bup.ovals[2];
		now.greenP = trpt->bup.ovals[1];
		((P0 *)this)->estado = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 62: // STATE 46
		;
	/* 0 */	((P0 *)this)->estado = trpt->bup.oval;
		;
		;
		goto R999;

	case 63: // STATE 54
		;
		now.redS = trpt->bup.ovals[6];
		now.yellowS = trpt->bup.ovals[5];
		now.greenS = trpt->bup.ovals[4];
		now.redP = trpt->bup.ovals[3];
		now.yellowP = trpt->bup.ovals[2];
		now.greenP = trpt->bup.ovals[1];
		((P0 *)this)->estado = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 64: // STATE 63
		;
		p_restor(II);
		;
		;
		goto R999;
	}

