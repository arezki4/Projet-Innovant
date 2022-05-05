
_afficheChiffre:

;MyProject.c,9 :: 		void afficheChiffre(char chiffre,char position){
;MyProject.c,17 :: 		LATA = 0x01 << position;
	MOVF        FARG_afficheChiffre_position+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__afficheChiffre26:
	BZ          L__afficheChiffre27
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__afficheChiffre26
L__afficheChiffre27:
	MOVF        R0, 0 
	MOVWF       LATA+0 
;MyProject.c,19 :: 		switch(chiffre){
	GOTO        L_afficheChiffre0
;MyProject.c,20 :: 		case 0:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre2:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,21 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 0;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,22 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,24 :: 		case 1:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre3:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,25 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,26 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,28 :: 		case 2:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 0;LATD3_bit = 1;
L_afficheChiffre4:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BCF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,29 :: 		LATD4_bit = 1;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,30 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,32 :: 		case 3:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre5:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,33 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,34 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,36 :: 		case 4:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre6:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,37 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,38 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,40 :: 		case 5:LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre7:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BCF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,41 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,42 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,44 :: 		case 7:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre8:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,45 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,46 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,48 :: 		case 8:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre9:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,49 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,50 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,52 :: 		case 9:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre10:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,53 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,55 :: 		default:
L_afficheChiffre11:
;MyProject.c,56 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,57 :: 		}
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
;MyProject.c,58 :: 		}
L_end_afficheChiffre:
	RETURN      0
; end of _afficheChiffre

_afficheNombre:

;MyProject.c,61 :: 		void afficheNombre(char nb){
;MyProject.c,66 :: 		chiffre3 = nb/1000;
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
;MyProject.c,67 :: 		nb -= chiffre3*1000;
	MOVLW       232
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FARG_afficheNombre_nb+0, 0 
	MOVWF       FLOC__afficheNombre+0 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject.c,69 :: 		chiffre2 = nb/100;
	MOVLW       100
	MOVWF       R4 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre2_L0+0 
;MyProject.c,70 :: 		nb -= chiffre2*100;
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 1 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject.c,72 :: 		chiffre1 = nb/10;
	MOVLW       10
	MOVWF       R4 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre1_L0+0 
;MyProject.c,73 :: 		nb -= chiffre1*10;
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
;MyProject.c,79 :: 		afficheChiffre(chiffre0,0);
	MOVF        R0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	CLRF        FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject.c,80 :: 		Delay_ms(1);
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
;MyProject.c,81 :: 		afficheChiffre(chiffre1,1);
	MOVF        afficheNombre_chiffre1_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       1
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject.c,82 :: 		Delay_ms(1);
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
;MyProject.c,83 :: 		afficheChiffre(chiffre2,2);
	MOVF        afficheNombre_chiffre2_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       2
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject.c,84 :: 		Delay_ms(1);
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
;MyProject.c,85 :: 		afficheChiffre(chiffre3,3);
	MOVF        afficheNombre_chiffre3_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       3
	MOVWF       FARG_afficheChiffre_position+0 
	CALL        _afficheChiffre+0, 0
;MyProject.c,86 :: 		Delay_ms(1);
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
;MyProject.c,87 :: 		}
L_end_afficheNombre:
	RETURN      0
; end of _afficheNombre

_Display_Temperature:

;MyProject.c,90 :: 		void Display_Temperature(unsigned int temp2write) {
;MyProject.c,96 :: 		if (temp2write & 0x8000) {
	BTFSS       FARG_Display_Temperature_temp2write+1, 7 
	GOTO        L_Display_Temperature16
;MyProject.c,97 :: 		text[0] = '-';
	MOVFF       _text+0, FSR1L+0
	MOVFF       _text+1, FSR1H+0
	MOVLW       45
	MOVWF       POSTINC1+0 
;MyProject.c,98 :: 		temp2write = ~temp2write + 1;
	COMF        FARG_Display_Temperature_temp2write+0, 1 
	COMF        FARG_Display_Temperature_temp2write+1, 1 
	INFSNZ      FARG_Display_Temperature_temp2write+0, 1 
	INCF        FARG_Display_Temperature_temp2write+1, 1 
;MyProject.c,99 :: 		}
L_Display_Temperature16:
;MyProject.c,102 :: 		temp_whole = temp2write >> RES_SHIFT ;
	MOVF        FARG_Display_Temperature_temp2write+0, 0 
	MOVWF       R0 
	MOVF        FARG_Display_Temperature_temp2write+1, 0 
	MOVWF       R1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	MOVF        R0, 0 
	MOVWF       Display_Temperature_temp_whole_L0+0 
;MyProject.c,105 :: 		if (temp_whole/100)
	MOVLW       100
	MOVWF       R4 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Display_Temperature17
;MyProject.c,106 :: 		text[0] = temp_whole/100  + 48;
	MOVLW       100
	MOVWF       R4 
	MOVF        Display_Temperature_temp_whole_L0+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVFF       _text+0, FSR1L+0
	MOVFF       _text+1, FSR1H+0
	MOVLW       48
	ADDWF       R0, 0 
	MOVWF       POSTINC1+0 
	GOTO        L_Display_Temperature18
L_Display_Temperature17:
;MyProject.c,108 :: 		text[0] = '0';
	MOVFF       _text+0, FSR1L+0
	MOVFF       _text+1, FSR1H+0
	MOVLW       48
	MOVWF       POSTINC1+0 
L_Display_Temperature18:
;MyProject.c,110 :: 		text[1] = (temp_whole/10)%10 + 48;
	MOVLW       1
	ADDWF       _text+0, 0 
	MOVWF       FLOC__Display_Temperature+0 
	MOVLW       0
	ADDWFC      _text+1, 0 
	MOVWF       FLOC__Display_Temperature+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        Display_Temperature_temp_whole_L0+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       10
	MOVWF       R4 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__Display_Temperature+0, FSR1L+0
	MOVFF       FLOC__Display_Temperature+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,111 :: 		text[2] =  temp_whole%10     + 48;             // Extract ones digit
	MOVLW       2
	ADDWF       _text+0, 0 
	MOVWF       FLOC__Display_Temperature+0 
	MOVLW       0
	ADDWFC      _text+1, 0 
	MOVWF       FLOC__Display_Temperature+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        Display_Temperature_temp_whole_L0+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__Display_Temperature+0, FSR1L+0
	MOVFF       FLOC__Display_Temperature+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,125 :: 		UART1_Write_Text(text);
	MOVF        _text+0, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVF        _text+1, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,126 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,127 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,128 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Display_Temperature19:
	DECFSZ      R13, 1, 1
	BRA         L_Display_Temperature19
	DECFSZ      R12, 1, 1
	BRA         L_Display_Temperature19
	DECFSZ      R11, 1, 1
	BRA         L_Display_Temperature19
	NOP
;MyProject.c,130 :: 		afficheNombre(temp_whole/10);
	MOVLW       10
	MOVWF       R4 
	MOVF        Display_Temperature_temp_whole_L0+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_nb+0 
	CALL        _afficheNombre+0, 0
;MyProject.c,131 :: 		}
L_end_Display_Temperature:
	RETURN      0
; end of _Display_Temperature

_main:

;MyProject.c,133 :: 		void main() {
;MyProject.c,134 :: 		ANSELE = 0;                                    // Configure PORTE pins as digital
	CLRF        ANSELE+0 
;MyProject.c,135 :: 		TRISE.B2 = 1;                                  // Configure RE2 pin as input
	BSF         TRISE+0, 2 
;MyProject.c,136 :: 		ANSELA = 0x00;
	CLRF        ANSELA+0 
;MyProject.c,137 :: 		ANSELD = 0x00;
	CLRF        ANSELD+0 
;MyProject.c,139 :: 		TRISA = 0x00;
	CLRF        TRISA+0 
;MyProject.c,141 :: 		TRISD=0x00;
	CLRF        TRISD+0 
;MyProject.c,142 :: 		LATA = 0x00;
	CLRF        LATA+0 
;MyProject.c,146 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;MyProject.c,149 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main20:
	DECFSZ      R13, 1, 1
	BRA         L_main20
	DECFSZ      R12, 1, 1
	BRA         L_main20
	DECFSZ      R11, 1, 1
	BRA         L_main20
	NOP
;MyProject.c,151 :: 		do {
L_main21:
;MyProject.c,153 :: 		Ow_Reset(&PORTE, 2);                         // Onewire reset signal
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Reset_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Reset_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Reset_pin+0 
	CALL        _Ow_Reset+0, 0
;MyProject.c,154 :: 		Ow_Write(&PORTE, 2, 0xCC);                   // Issue command SKIP_ROM
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Write_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Write_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Write_pin+0 
	MOVLW       204
	MOVWF       FARG_Ow_Write_data_+0 
	CALL        _Ow_Write+0, 0
;MyProject.c,155 :: 		Ow_Write(&PORTE, 2, 0x44);                   // Issue command CONVERT_T
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Write_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Write_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Write_pin+0 
	MOVLW       68
	MOVWF       FARG_Ow_Write_data_+0 
	CALL        _Ow_Write+0, 0
;MyProject.c,156 :: 		Delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 1
	BRA         L_main24
	DECFSZ      R12, 1, 1
	BRA         L_main24
	NOP
;MyProject.c,158 :: 		Ow_Reset(&PORTE, 2);
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Reset_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Reset_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Reset_pin+0 
	CALL        _Ow_Reset+0, 0
;MyProject.c,159 :: 		Ow_Write(&PORTE, 2, 0xCC);                   // Issue command SKIP_ROM
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Write_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Write_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Write_pin+0 
	MOVLW       204
	MOVWF       FARG_Ow_Write_data_+0 
	CALL        _Ow_Write+0, 0
;MyProject.c,160 :: 		Ow_Write(&PORTE, 2, 0xBE);                   // Issue command READ_SCRATCHPAD
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Write_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Write_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Write_pin+0 
	MOVLW       190
	MOVWF       FARG_Ow_Write_data_+0 
	CALL        _Ow_Write+0, 0
;MyProject.c,162 :: 		temp =  Ow_Read(&PORTE, 2);
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Read_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Read_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Read_pin+0 
	CALL        _Ow_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _temp+0 
	MOVLW       0
	MOVWF       _temp+1 
;MyProject.c,163 :: 		temp = (Ow_Read(&PORTE, 2) << 8) + temp;
	MOVLW       PORTE+0
	MOVWF       FARG_Ow_Read_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Ow_Read_port+1 
	MOVLW       2
	MOVWF       FARG_Ow_Read_pin+0 
	CALL        _Ow_Read+0, 0
	MOVF        R0, 0 
	MOVWF       R3 
	CLRF        R2 
	MOVF        _temp+0, 0 
	ADDWF       R2, 0 
	MOVWF       R0 
	MOVF        _temp+1, 0 
	ADDWFC      R3, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temp+0 
	MOVF        R1, 0 
	MOVWF       _temp+1 
;MyProject.c,166 :: 		Display_Temperature(temp);
	MOVF        R0, 0 
	MOVWF       FARG_Display_Temperature_temp2write+0 
	MOVF        R1, 0 
	MOVWF       FARG_Display_Temperature_temp2write+1 
	CALL        _Display_Temperature+0, 0
;MyProject.c,170 :: 		} while (1);
	GOTO        L_main21
;MyProject.c,171 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
