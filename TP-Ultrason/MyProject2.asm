
_afficheChiffre:

;MyProject2.c,21 :: 		void afficheChiffre(char chiffre,char position){
;MyProject2.c,29 :: 		LATA = 0x01 << position;
	MOVF        FARG_afficheChiffre_position+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__afficheChiffre32:
	BZ          L__afficheChiffre33
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__afficheChiffre32
L__afficheChiffre33:
	MOVF        R0, 0 
	MOVWF       LATA+0 
;MyProject2.c,31 :: 		switch(chiffre){
	GOTO        L_afficheChiffre0
;MyProject2.c,32 :: 		case 0:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre2:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,33 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 0;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,34 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,36 :: 		case 1:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre3:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,37 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,38 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,40 :: 		case 2:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 0;LATD3_bit = 1;
L_afficheChiffre4:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BCF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,41 :: 		LATD4_bit = 1;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,42 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,44 :: 		case 3:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre5:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,45 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,46 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,48 :: 		case 4:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre6:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,49 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,50 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,52 :: 		case 5:LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre7:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BCF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,53 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,54 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,56 :: 		case 7:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre8:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,57 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,58 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,60 :: 		case 8:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre9:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,61 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,62 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,64 :: 		case 9:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre10:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject2.c,65 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject2.c,67 :: 		default:
L_afficheChiffre11:
;MyProject2.c,68 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject2.c,69 :: 		}
L_afficheChiffre0:
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre2
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre3
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre4
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre5
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre6
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre7
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre8
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre9
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre10
	GOTO        L_afficheChiffre11
L_afficheChiffre1:
;MyProject2.c,70 :: 		}
L_end_afficheChiffre:
	RETURN      0
; end of _afficheChiffre

_afficheNombre:

;MyProject2.c,73 :: 		void afficheNombre(char nb){
;MyProject2.c,78 :: 		chiffre3 = nb/1000;
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        FARG_afficheNombre_nb+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre3_L0+0 
;MyProject2.c,79 :: 		nb -= chiffre3*1000;
	MOVLW       232
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FARG_afficheNombre_nb+0, 0 
	MOVWF       FLOC__afficheNombre+0 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject2.c,81 :: 		chiffre2 = nb/100;
	MOVLW       100
	MOVWF       R4 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre2_L0+0 
;MyProject2.c,82 :: 		nb -= chiffre2*100;
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 1 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject2.c,84 :: 		chiffre1 = nb/10;
	MOVLW       10
	MOVWF       R4 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre1_L0+0 
;MyProject2.c,85 :: 		nb -= chiffre1*10;
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject2.c,91 :: 		afficheChiffre(chiffre0,0);
	MOVF        R0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	CLRF        FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject2.c,92 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre12:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre12
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre12
	NOP
	NOP
;MyProject2.c,93 :: 		afficheChiffre(chiffre1,1);
	MOVF        afficheNombre_chiffre1_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       1
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject2.c,94 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre13:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre13
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre13
	NOP
	NOP
;MyProject2.c,95 :: 		afficheChiffre(chiffre2,2);
	MOVF        afficheNombre_chiffre2_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       2
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject2.c,96 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre14:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre14
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre14
	NOP
	NOP
;MyProject2.c,97 :: 		afficheChiffre(chiffre3,3);
	MOVF        afficheNombre_chiffre3_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       3
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject2.c,98 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre15:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre15
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre15
	NOP
	NOP
;MyProject2.c,99 :: 		}
L_end_afficheNombre:
	RETURN      0
; end of _afficheNombre

_main:

;MyProject2.c,118 :: 		void main(void) {
;MyProject2.c,121 :: 		int etape = 0;
	CLRF        main_etape_L0+0 
	CLRF        main_etape_L0+1 
	CLRF        main_compte_L0+0 
	CLRF        main_compte_L0+1 
	CLRF        main_nombreaffiche_L0+0 
	CLRF        main_nombreaffiche_L0+1 
	CLRF        main_nombreaffiche_L0+2 
	CLRF        main_nombreaffiche_L0+3 
;MyProject2.c,132 :: 		ANSELA = 0x00;
	CLRF        ANSELA+0 
;MyProject2.c,133 :: 		ANSELB = 0x00;
	CLRF        ANSELB+0 
;MyProject2.c,134 :: 		ANSELC = 0x00;
	CLRF        ANSELC+0 
;MyProject2.c,135 :: 		ANSELD = 0x00;
	CLRF        ANSELD+0 
;MyProject2.c,137 :: 		TRISA = 0x00;
	CLRF        TRISA+0 
;MyProject2.c,139 :: 		TRISB = 0x01;
	MOVLW       1
	MOVWF       TRISB+0 
;MyProject2.c,140 :: 		TRISD=0x00;
	CLRF        TRISD+0 
;MyProject2.c,142 :: 		LATA = 0x00;
	CLRF        LATA+0 
;MyProject2.c,143 :: 		LATB = 0x00;
	CLRF        LATB+0 
;MyProject2.c,145 :: 		etape = 0;
	CLRF        main_etape_L0+0 
	CLRF        main_etape_L0+1 
;MyProject2.c,149 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;MyProject2.c,155 :: 		while(1)
L_main16:
;MyProject2.c,157 :: 		switch(etape)
	GOTO        L_main18
;MyProject2.c,159 :: 		case 0:
L_main20:
;MyProject2.c,161 :: 		LATB1_bit = 1;
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
;MyProject2.c,162 :: 		compte = 0;
	CLRF        main_compte_L0+0 
	CLRF        main_compte_L0+1 
;MyProject2.c,163 :: 		etape++ ;
	INFSNZ      main_etape_L0+0, 1 
	INCF        main_etape_L0+1, 1 
;MyProject2.c,164 :: 		break;
	GOTO        L_main19
;MyProject2.c,165 :: 		case 1:
L_main21:
;MyProject2.c,166 :: 		Delay_ms(1); // >10 us
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 1
	BRA         L_main22
	DECFSZ      R12, 1, 1
	BRA         L_main22
	NOP
	NOP
;MyProject2.c,168 :: 		LATB1_bit = 0;
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
;MyProject2.c,169 :: 		etape++ ;
	INFSNZ      main_etape_L0+0, 1 
	INCF        main_etape_L0+1, 1 
;MyProject2.c,170 :: 		break;
	GOTO        L_main19
;MyProject2.c,171 :: 		case 2:
L_main23:
;MyProject2.c,175 :: 		if(PORTB & 0x01)
	BTFSS       PORTB+0, 0 
	GOTO        L_main24
;MyProject2.c,177 :: 		while(PORTB & 0x01)
L_main25:
	BTFSS       PORTB+0, 0 
	GOTO        L_main26
;MyProject2.c,181 :: 		compte++;
	INFSNZ      main_compte_L0+0, 1 
	INCF        main_compte_L0+1, 1 
;MyProject2.c,182 :: 		delay_us(10);
	MOVLW       6
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	NOP
;MyProject2.c,183 :: 		}
	GOTO        L_main25
L_main26:
;MyProject2.c,184 :: 		etape++;
	INFSNZ      main_etape_L0+0, 1 
	INCF        main_etape_L0+1, 1 
;MyProject2.c,185 :: 		}
L_main24:
;MyProject2.c,186 :: 		break;
	GOTO        L_main19
;MyProject2.c,187 :: 		case 3:
L_main28:
;MyProject2.c,189 :: 		nombreaffiche = (float)compte*10/58.82;
	MOVF        main_compte_L0+0, 0 
	MOVWF       R0 
	MOVF        main_compte_L0+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       174
	MOVWF       R4 
	MOVLW       71
	MOVWF       R5 
	MOVLW       107
	MOVWF       R6 
	MOVLW       132
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_nombreaffiche_L0+0 
	MOVF        R1, 0 
	MOVWF       main_nombreaffiche_L0+1 
	MOVF        R2, 0 
	MOVWF       main_nombreaffiche_L0+2 
	MOVF        R3, 0 
	MOVWF       main_nombreaffiche_L0+3 
;MyProject2.c,190 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 1
	BRA         L_main29
	DECFSZ      R12, 1, 1
	BRA         L_main29
	NOP
	NOP
;MyProject2.c,193 :: 		afficheNombre((int)nombreaffiche);
	MOVF        main_nombreaffiche_L0+0, 0 
	MOVWF       R0 
	MOVF        main_nombreaffiche_L0+1, 0 
	MOVWF       R1 
	MOVF        main_nombreaffiche_L0+2, 0 
	MOVWF       R2 
	MOVF        main_nombreaffiche_L0+3, 0 
	MOVWF       R3 
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
	CALL        _afficheNombre+0, 0
;MyProject2.c,196 :: 		IntToStr((int)nombreaffiche, distChar);
	MOVF        main_nombreaffiche_L0+0, 0 
	MOVWF       R0 
	MOVF        main_nombreaffiche_L0+1, 0 
	MOVWF       R1 
	MOVF        main_nombreaffiche_L0+2, 0 
	MOVWF       R2 
	MOVF        main_nombreaffiche_L0+3, 0 
	MOVWF       R3 
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       main_distChar_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(main_distChar_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;MyProject2.c,198 :: 		UART1_Write_Text(distChar);
	MOVLW       main_distChar_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_distChar_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject2.c,199 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject2.c,200 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject2.c,201 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main30:
	DECFSZ      R13, 1, 1
	BRA         L_main30
	DECFSZ      R12, 1, 1
	BRA         L_main30
	DECFSZ      R11, 1, 1
	BRA         L_main30
	NOP
;MyProject2.c,203 :: 		etape=0;
	CLRF        main_etape_L0+0 
	CLRF        main_etape_L0+1 
;MyProject2.c,204 :: 		break;
	GOTO        L_main19
;MyProject2.c,205 :: 		}
L_main18:
	MOVLW       0
	XORWF       main_etape_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main36
	MOVLW       0
	XORWF       main_etape_L0+0, 0 
L__main36:
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
	MOVLW       0
	XORWF       main_etape_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main37
	MOVLW       1
	XORWF       main_etape_L0+0, 0 
L__main37:
	BTFSC       STATUS+0, 2 
	GOTO        L_main21
	MOVLW       0
	XORWF       main_etape_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main38
	MOVLW       2
	XORWF       main_etape_L0+0, 0 
L__main38:
	BTFSC       STATUS+0, 2 
	GOTO        L_main23
	MOVLW       0
	XORWF       main_etape_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main39
	MOVLW       3
	XORWF       main_etape_L0+0, 0 
L__main39:
	BTFSC       STATUS+0, 2 
	GOTO        L_main28
L_main19:
;MyProject2.c,206 :: 		}
	GOTO        L_main16
;MyProject2.c,207 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
