
_acerta_cal:

;reg des.c,81 :: 		void acerta_cal()
;reg des.c,83 :: 		opr1:
___acerta_cal_opr1:
;reg des.c,84 :: 		while(BT3==0)       // aguarda o botão OK
	BTFSC       PORTF+0, 3 
	GOTO        L_acerta_cal1
;reg des.c,85 :: 		{goto opr1;}
	GOTO        ___acerta_cal_opr1
L_acerta_cal1:
;reg des.c,86 :: 		delay_ms(1000);
	MOVLW       32
	MOVWF       R11, 0
	MOVLW       181
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_acerta_cal2:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal2
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal2
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal2
;reg des.c,87 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;reg des.c,88 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,89 :: 		Lcd_Out(1,1,"ACERTA RELOGIO ?");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,90 :: 		Lcd_Out(2,1,"  SIM      NAO  ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,91 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal3:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal3
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal3
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal3
;reg des.c,92 :: 		sel3:
___acerta_cal_sel3:
;reg des.c,93 :: 		Lcd_Out(2,12,"   ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,94 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal4:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal4
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal4
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal4
;reg des.c,95 :: 		Lcd_Out(2,12,"NAO");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,96 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal5:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal5
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal5
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal5
;reg des.c,97 :: 		if(BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_acerta_cal8
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal8
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal8
L__acerta_cal828:
;reg des.c,98 :: 		{Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,99 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,100 :: 		Lcd_Out(1,1,"   FINALIZADO");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,101 :: 		while(1);
L_acerta_cal9:
	GOTO        L_acerta_cal9
;reg des.c,102 :: 		}
L_acerta_cal8:
;reg des.c,103 :: 		if (BT1==1 && BT2==0 && BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal13
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal13
	BTFSC       PORTF+0, 3 
	GOTO        L_acerta_cal13
L__acerta_cal827:
;reg des.c,104 :: 		{   sel4:
___acerta_cal_sel4:
;reg des.c,105 :: 		Lcd_Out(2,3,"   ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,106 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal14:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal14
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal14
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal14
;reg des.c,107 :: 		Lcd_Out(2,3,"SIM");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,108 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal15:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal15
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal15
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal15
;reg des.c,109 :: 		if(BT1==1 && BT2==0 && BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal18
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal18
	BTFSC       PORTF+0, 3 
	GOTO        L_acerta_cal18
L__acerta_cal826:
;reg des.c,111 :: 		goto sel3;
	GOTO        ___acerta_cal_sel3
;reg des.c,112 :: 		}
L_acerta_cal18:
;reg des.c,113 :: 		if (BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_acerta_cal21
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal21
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal21
L__acerta_cal825:
;reg des.c,117 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON);
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,118 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,119 :: 		Lcd_Out(1,1,"DATA:00/00/00   ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,120 :: 		Lcd_Out(2,1,"HORA:00:00   OK ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,121 :: 		delay_ms(1000);
	MOVLW       32
	MOVWF       R11, 0
	MOVLW       181
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_acerta_cal22:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal22
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal22
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal22
;reg des.c,122 :: 		voltdia:
___acerta_cal_voltdia:
;reg des.c,123 :: 		rdia=1;
	MOVLW       1
	MOVWF       _rdia+0 
;reg des.c,124 :: 		voltadia:
___acerta_cal_voltadia:
;reg des.c,125 :: 		IntToStr(rdia,&drdia);
	MOVF        _rdia+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       acerta_cal_drdia_L2+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(acerta_cal_drdia_L2+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,126 :: 		drdia=msgd;
	MOVLW       acerta_cal_msgd_L2+0
	MOVWF       acerta_cal_drdia_L2+0 
;reg des.c,127 :: 		Lcd_Out(1,5,&msgd[2]);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       acerta_cal_msgd_L2+2
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(acerta_cal_msgd_L2+2)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,128 :: 		if(BT3==1)
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal23
;reg des.c,130 :: 		if (rdia>30)
	MOVF        _rdia+0, 0 
	SUBLW       30
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal24
;reg des.c,132 :: 		rdia=0;
	CLRF        _rdia+0 
;reg des.c,133 :: 		}
L_acerta_cal24:
;reg des.c,134 :: 		rdia++;
	INCF        _rdia+0, 1 
;reg des.c,135 :: 		delay_ms(300);
	MOVLW       10
	MOVWF       R11, 0
	MOVLW       132
	MOVWF       R12, 0
	MOVLW       7
	MOVWF       R13, 0
L_acerta_cal25:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal25
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal25
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal25
	NOP
	NOP
;reg des.c,136 :: 		goto voltadia;
	GOTO        ___acerta_cal_voltadia
;reg des.c,137 :: 		}
L_acerta_cal23:
;reg des.c,139 :: 		if(BT1==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal26
;reg des.c,143 :: 		if (rdia>29 && rdia<32)
	MOVF        _rdia+0, 0 
	SUBLW       29
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal29
	MOVLW       32
	SUBWF       _rdia+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal29
L__acerta_cal824:
;reg des.c,145 :: 		rdia=rdia+18;
	MOVLW       18
	ADDWF       _rdia+0, 1 
;reg des.c,146 :: 		}
L_acerta_cal29:
;reg des.c,147 :: 		if (rdia>19 && rdia<30)
	MOVF        _rdia+0, 0 
	SUBLW       19
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal32
	MOVLW       30
	SUBWF       _rdia+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal32
L__acerta_cal823:
;reg des.c,149 :: 		rdia=rdia+12;
	MOVLW       12
	ADDWF       _rdia+0, 1 
;reg des.c,150 :: 		}
L_acerta_cal32:
;reg des.c,151 :: 		if (rdia>9 && rdia<20)
	MOVF        _rdia+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal35
	MOVLW       20
	SUBWF       _rdia+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal35
L__acerta_cal822:
;reg des.c,153 :: 		rdia=rdia+6;
	MOVLW       6
	ADDWF       _rdia+0, 1 
;reg des.c,154 :: 		}
L_acerta_cal35:
;reg des.c,155 :: 		rmes=1;
	MOVLW       1
	MOVWF       _rmes+0 
;reg des.c,156 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_acerta_cal36:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal36
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal36
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal36
	NOP
;reg des.c,157 :: 		voltames:
___acerta_cal_voltames:
;reg des.c,158 :: 		IntToStr(rmes,&drmes);
	MOVF        _rmes+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       acerta_cal_drmes_L3+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(acerta_cal_drmes_L3+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,159 :: 		drmes=msgm;
	MOVLW       acerta_cal_msgm_L3+0
	MOVWF       acerta_cal_drmes_L3+0 
;reg des.c,160 :: 		Lcd_Out(1,9,&msgm[3]);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       acerta_cal_msgm_L3+3
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(acerta_cal_msgm_L3+3)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,161 :: 		if(BT3==1)
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal37
;reg des.c,163 :: 		if (rmes>11)
	MOVF        _rmes+0, 0 
	SUBLW       11
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal38
;reg des.c,165 :: 		rmes=0;
	CLRF        _rmes+0 
;reg des.c,166 :: 		}
L_acerta_cal38:
;reg des.c,167 :: 		rmes++;
	INCF        _rmes+0, 1 
;reg des.c,168 :: 		delay_ms(300);
	MOVLW       10
	MOVWF       R11, 0
	MOVLW       132
	MOVWF       R12, 0
	MOVLW       7
	MOVWF       R13, 0
L_acerta_cal39:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal39
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal39
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal39
	NOP
	NOP
;reg des.c,169 :: 		goto voltames;
	GOTO        ___acerta_cal_voltames
;reg des.c,170 :: 		}
L_acerta_cal37:
;reg des.c,171 :: 		if(BT1==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal40
;reg des.c,175 :: 		if (rmes>19 && rmes<24)
	MOVF        _rmes+0, 0 
	SUBLW       19
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal43
	MOVLW       24
	SUBWF       _rmes+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal43
L__acerta_cal821:
;reg des.c,177 :: 		rmes=rmes+12;
	MOVLW       12
	ADDWF       _rmes+0, 1 
;reg des.c,178 :: 		}
L_acerta_cal43:
;reg des.c,179 :: 		if (rmes>9 && rmes<20)
	MOVF        _rmes+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal46
	MOVLW       20
	SUBWF       _rmes+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal46
L__acerta_cal820:
;reg des.c,181 :: 		rmes=rmes+6;
	MOVLW       6
	ADDWF       _rmes+0, 1 
;reg des.c,182 :: 		}
L_acerta_cal46:
;reg des.c,183 :: 		anot=18;
	MOVLW       18
	MOVWF       _anot+0 
;reg des.c,184 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_acerta_cal47:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal47
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal47
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal47
	NOP
;reg des.c,185 :: 		voltaano:
___acerta_cal_voltaano:
;reg des.c,186 :: 		IntToStr(anot,&ranot);
	MOVF        _anot+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       acerta_cal_ranot_L4+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(acerta_cal_ranot_L4+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,187 :: 		ranot=msga;
	MOVLW       acerta_cal_msga_L4+0
	MOVWF       acerta_cal_ranot_L4+0 
;reg des.c,188 :: 		Lcd_Out(1,12,&msga[3]);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       acerta_cal_msga_L4+3
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(acerta_cal_msga_L4+3)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,189 :: 		if(BT3==1)
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal48
;reg des.c,191 :: 		if (anot>99)
	MOVF        _anot+0, 0 
	SUBLW       99
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal49
;reg des.c,192 :: 		{anot=14;}
	MOVLW       14
	MOVWF       _anot+0 
L_acerta_cal49:
;reg des.c,193 :: 		anot++;
	INCF        _anot+0, 1 
;reg des.c,194 :: 		delay_ms(300);
	MOVLW       10
	MOVWF       R11, 0
	MOVLW       132
	MOVWF       R12, 0
	MOVLW       7
	MOVWF       R13, 0
L_acerta_cal50:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal50
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal50
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal50
	NOP
	NOP
;reg des.c,195 :: 		}
L_acerta_cal48:
;reg des.c,196 :: 		if(BT1==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal51
;reg des.c,200 :: 		if (anot>89 && anot<100)
	MOVF        _anot+0, 0 
	SUBLW       89
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal54
	MOVLW       100
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal54
L__acerta_cal819:
;reg des.c,202 :: 		anot=anot+54;
	MOVLW       54
	ADDWF       _anot+0, 1 
;reg des.c,203 :: 		}
L_acerta_cal54:
;reg des.c,204 :: 		if (anot>79 && anot<90)
	MOVF        _anot+0, 0 
	SUBLW       79
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal57
	MOVLW       90
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal57
L__acerta_cal818:
;reg des.c,206 :: 		anot=anot+48;
	MOVLW       48
	ADDWF       _anot+0, 1 
;reg des.c,207 :: 		}
L_acerta_cal57:
;reg des.c,208 :: 		if (anot>69 && anot<80)
	MOVF        _anot+0, 0 
	SUBLW       69
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal60
	MOVLW       80
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal60
L__acerta_cal817:
;reg des.c,210 :: 		anot=anot+42;
	MOVLW       42
	ADDWF       _anot+0, 1 
;reg des.c,211 :: 		}
L_acerta_cal60:
;reg des.c,212 :: 		if (anot>59 && anot<70)
	MOVF        _anot+0, 0 
	SUBLW       59
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal63
	MOVLW       70
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal63
L__acerta_cal816:
;reg des.c,214 :: 		anot=anot+36;
	MOVLW       36
	ADDWF       _anot+0, 1 
;reg des.c,215 :: 		}
L_acerta_cal63:
;reg des.c,216 :: 		if (anot>49 && anot<60)
	MOVF        _anot+0, 0 
	SUBLW       49
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal66
	MOVLW       60
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal66
L__acerta_cal815:
;reg des.c,218 :: 		anot=anot+30;
	MOVLW       30
	ADDWF       _anot+0, 1 
;reg des.c,219 :: 		}
L_acerta_cal66:
;reg des.c,220 :: 		if (anot>39 && anot<50)
	MOVF        _anot+0, 0 
	SUBLW       39
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal69
	MOVLW       50
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal69
L__acerta_cal814:
;reg des.c,222 :: 		anot=anot+24;
	MOVLW       24
	ADDWF       _anot+0, 1 
;reg des.c,223 :: 		}
L_acerta_cal69:
;reg des.c,224 :: 		if (anot>29 && anot<40)
	MOVF        _anot+0, 0 
	SUBLW       29
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal72
	MOVLW       40
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal72
L__acerta_cal813:
;reg des.c,226 :: 		anot=anot+18;
	MOVLW       18
	ADDWF       _anot+0, 1 
;reg des.c,227 :: 		}
L_acerta_cal72:
;reg des.c,228 :: 		if (anot>19 && anot<30)
	MOVF        _anot+0, 0 
	SUBLW       19
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal75
	MOVLW       30
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal75
L__acerta_cal812:
;reg des.c,230 :: 		anot=anot+12;
	MOVLW       12
	ADDWF       _anot+0, 1 
;reg des.c,231 :: 		}
L_acerta_cal75:
;reg des.c,232 :: 		if (anot>9 && anot<20)
	MOVF        _anot+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal78
	MOVLW       20
	SUBWF       _anot+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal78
L__acerta_cal811:
;reg des.c,234 :: 		anot=anot+6;
	MOVLW       6
	ADDWF       _anot+0, 1 
;reg des.c,235 :: 		}
L_acerta_cal78:
;reg des.c,236 :: 		rhora=12;
	MOVLW       12
	MOVWF       _rhora+0 
;reg des.c,237 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_acerta_cal79:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal79
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal79
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal79
	NOP
;reg des.c,238 :: 		voltahora:
___acerta_cal_voltahora:
;reg des.c,239 :: 		IntToStr(rhora,&drhora);
	MOVF        _rhora+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       acerta_cal_drhora_L5+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(acerta_cal_drhora_L5+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,240 :: 		drhora=msgh;
	MOVLW       acerta_cal_msgh_L5+0
	MOVWF       acerta_cal_drhora_L5+0 
;reg des.c,241 :: 		Lcd_Out(2,6,&msgh[3]);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       acerta_cal_msgh_L5+3
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(acerta_cal_msgh_L5+3)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,242 :: 		if(BT3==1)
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal80
;reg des.c,244 :: 		if (rhora>22)
	MOVF        _rhora+0, 0 
	SUBLW       22
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal81
;reg des.c,246 :: 		rhora=-1;
	MOVLW       255
	MOVWF       _rhora+0 
;reg des.c,247 :: 		}
L_acerta_cal81:
;reg des.c,248 :: 		rhora++;
	INCF        _rhora+0, 1 
;reg des.c,249 :: 		delay_ms(300);
	MOVLW       10
	MOVWF       R11, 0
	MOVLW       132
	MOVWF       R12, 0
	MOVLW       7
	MOVWF       R13, 0
L_acerta_cal82:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal82
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal82
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal82
	NOP
	NOP
;reg des.c,250 :: 		goto voltahora;
	GOTO        ___acerta_cal_voltahora
;reg des.c,251 :: 		}
L_acerta_cal80:
;reg des.c,252 :: 		if(BT1==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal83
;reg des.c,256 :: 		if (rhora>19 && rhora<24)
	MOVF        _rhora+0, 0 
	SUBLW       19
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal86
	MOVLW       24
	SUBWF       _rhora+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal86
L__acerta_cal810:
;reg des.c,258 :: 		rhora=rhora+12;
	MOVLW       12
	ADDWF       _rhora+0, 1 
;reg des.c,259 :: 		}
L_acerta_cal86:
;reg des.c,260 :: 		if (rhora>9 && rhora<20)
	MOVF        _rhora+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal89
	MOVLW       20
	SUBWF       _rhora+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal89
L__acerta_cal809:
;reg des.c,262 :: 		rhora=rhora+6;
	MOVLW       6
	ADDWF       _rhora+0, 1 
;reg des.c,263 :: 		}
L_acerta_cal89:
;reg des.c,264 :: 		rmin=0;
	CLRF        _rmin+0 
;reg des.c,265 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_acerta_cal90:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal90
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal90
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal90
	NOP
;reg des.c,266 :: 		voltamin:
___acerta_cal_voltamin:
;reg des.c,267 :: 		IntToStr(rmin,&drmin);
	MOVF        _rmin+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       acerta_cal_drmin_L6+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(acerta_cal_drmin_L6+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,268 :: 		drmin=msgm;
	MOVLW       acerta_cal_msgm_L6+0
	MOVWF       acerta_cal_drmin_L6+0 
;reg des.c,269 :: 		Lcd_Out(2,9,&msgm[3]);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       acerta_cal_msgm_L6+3
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(acerta_cal_msgm_L6+3)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,270 :: 		if(BT3==1)
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal91
;reg des.c,272 :: 		if (rmin>58)
	MOVF        _rmin+0, 0 
	SUBLW       58
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal92
;reg des.c,274 :: 		rmin=-1;
	MOVLW       255
	MOVWF       _rmin+0 
;reg des.c,275 :: 		}
L_acerta_cal92:
;reg des.c,276 :: 		rmin++;
	INCF        _rmin+0, 1 
;reg des.c,277 :: 		delay_ms(300);
	MOVLW       10
	MOVWF       R11, 0
	MOVLW       132
	MOVWF       R12, 0
	MOVLW       7
	MOVWF       R13, 0
L_acerta_cal93:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal93
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal93
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal93
	NOP
	NOP
;reg des.c,278 :: 		goto voltamin;
	GOTO        ___acerta_cal_voltamin
;reg des.c,279 :: 		}
L_acerta_cal91:
;reg des.c,280 :: 		if(BT1==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal94
;reg des.c,282 :: 		if (rmin>49 && rmin<60)
	MOVF        _rmin+0, 0 
	SUBLW       49
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal97
	MOVLW       60
	SUBWF       _rmin+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal97
L__acerta_cal808:
;reg des.c,284 :: 		rmin=rmin+30;
	MOVLW       30
	ADDWF       _rmin+0, 1 
;reg des.c,285 :: 		}
L_acerta_cal97:
;reg des.c,286 :: 		if (rmin>39 && rmin<50)
	MOVF        _rmin+0, 0 
	SUBLW       39
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal100
	MOVLW       50
	SUBWF       _rmin+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal100
L__acerta_cal807:
;reg des.c,288 :: 		rmin=rmin+24;
	MOVLW       24
	ADDWF       _rmin+0, 1 
;reg des.c,289 :: 		}
L_acerta_cal100:
;reg des.c,290 :: 		if (rmin>29 && rmin<40)
	MOVF        _rmin+0, 0 
	SUBLW       29
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal103
	MOVLW       40
	SUBWF       _rmin+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal103
L__acerta_cal806:
;reg des.c,292 :: 		rmin=rmin+18;
	MOVLW       18
	ADDWF       _rmin+0, 1 
;reg des.c,293 :: 		}
L_acerta_cal103:
;reg des.c,294 :: 		if (rmin>19 && rmin<30)
	MOVF        _rmin+0, 0 
	SUBLW       19
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal106
	MOVLW       30
	SUBWF       _rmin+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal106
L__acerta_cal805:
;reg des.c,296 :: 		rmin=rmin+12;
	MOVLW       12
	ADDWF       _rmin+0, 1 
;reg des.c,297 :: 		}
L_acerta_cal106:
;reg des.c,298 :: 		if (rmin>9 && rmin<20)
	MOVF        _rmin+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal109
	MOVLW       20
	SUBWF       _rmin+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_acerta_cal109
L__acerta_cal804:
;reg des.c,300 :: 		rmin=rmin+6;
	MOVLW       6
	ADDWF       _rmin+0, 1 
;reg des.c,301 :: 		}
L_acerta_cal109:
;reg des.c,302 :: 		sel6:
___acerta_cal_sel6:
;reg des.c,303 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,304 :: 		Lcd_Out(2,14,"  ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,305 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal110:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal110
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal110
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal110
;reg des.c,306 :: 		Lcd_Out(2,14,"OK");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,307 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_acerta_cal111:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal111
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal111
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal111
;reg des.c,308 :: 		if (BT1==1 && BT2==0 && BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_acerta_cal114
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal114
	BTFSC       PORTF+0, 3 
	GOTO        L_acerta_cal114
L__acerta_cal803:
;reg des.c,310 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_acerta_cal115:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal115
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal115
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal115
	NOP
;reg des.c,311 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON);
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,312 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,313 :: 		goto voltdia;
	GOTO        ___acerta_cal_voltdia
;reg des.c,314 :: 		}
L_acerta_cal114:
;reg des.c,315 :: 		if (BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_acerta_cal118
	BTFSC       PORTF+0, 2 
	GOTO        L_acerta_cal118
	BTFSS       PORTF+0, 3 
	GOTO        L_acerta_cal118
L__acerta_cal802:
;reg des.c,317 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal119:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal119
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal119
	NOP
;reg des.c,318 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,319 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal120:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal120
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal120
	NOP
;reg des.c,320 :: 		Uart1_Write(0x73);
	MOVLW       115
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,321 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal121:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal121
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal121
	NOP
;reg des.c,322 :: 		Uart1_Write(0x72);
	MOVLW       114
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,323 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal122:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal122
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal122
	NOP
;reg des.c,324 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,325 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal123:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal123
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal123
	NOP
;reg des.c,326 :: 		Uart1_Write(anot);
	MOVF        _anot+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,327 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal124:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal124
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal124
	NOP
;reg des.c,328 :: 		Uart1_Write(rmes);
	MOVF        _rmes+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,329 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal125:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal125
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal125
	NOP
;reg des.c,330 :: 		Uart1_Write(rdia);
	MOVF        _rdia+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,331 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal126:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal126
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal126
	NOP
;reg des.c,332 :: 		Uart1_Write(rhora);
	MOVF        _rhora+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,333 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal127:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal127
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal127
	NOP
;reg des.c,334 :: 		Uart1_Write(rmin);
	MOVF        _rmin+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,335 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal128:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal128
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal128
	NOP
;reg des.c,336 :: 		Uart1_Write(0x00);
	CLRF        FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,337 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal129:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal129
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal129
	NOP
;reg des.c,338 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,339 :: 		LEDY=1;
	BSF         PORTB+0, 1 
;reg des.c,340 :: 		delay_ms(1000);
	MOVLW       32
	MOVWF       R11, 0
	MOVLW       181
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_acerta_cal130:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal130
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal130
	DECFSZ      R11, 1, 1
	BRA         L_acerta_cal130
;reg des.c,341 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,342 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,343 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,344 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal131:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal131
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal131
	NOP
;reg des.c,345 :: 		Uart1_Write(0x61);
	MOVLW       97
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,346 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal132:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal132
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal132
	NOP
;reg des.c,347 :: 		Uart1_Write(0x74);
	MOVLW       116
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,348 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal133:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal133
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal133
	NOP
;reg des.c,349 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,350 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal134:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal134
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal134
	NOP
;reg des.c,351 :: 		Uart1_Write(0x6E);
	MOVLW       110
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,352 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal135:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal135
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal135
	NOP
;reg des.c,353 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,354 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_acerta_cal136:
	DECFSZ      R13, 1, 1
	BRA         L_acerta_cal136
	DECFSZ      R12, 1, 1
	BRA         L_acerta_cal136
	NOP
;reg des.c,355 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,356 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,357 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,358 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,359 :: 		Lcd_Chr_Cp('F');
	MOVLW       70
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,360 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,361 :: 		Lcd_Chr_Cp('R');
	MOVLW       82
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,362 :: 		Lcd_Chr_Cp('M');
	MOVLW       77
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,363 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,364 :: 		Lcd_Chr_Cp('T');
	MOVLW       84
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,365 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,366 :: 		Lcd_Chr_Cp('N');
	MOVLW       78
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,367 :: 		Lcd_Chr_Cp('D');
	MOVLW       68
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,368 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,372 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,373 :: 		while(1)
L_acerta_cal137:
;reg des.c,375 :: 		if(UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_acerta_cal139
;reg des.c,377 :: 		uart_rd = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
	MOVLW       0
	MOVWF       _uart_rd+1 
;reg des.c,379 :: 		if (uart_rd==0x4B)
	MOVLW       0
	XORWF       _uart_rd+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acerta_cal896
	MOVLW       75
	XORWF       _uart_rd+0, 0 
L__acerta_cal896:
	BTFSS       STATUS+0, 2 
	GOTO        L_acerta_cal140
;reg des.c,381 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,382 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,383 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,384 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,385 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,386 :: 		Lcd_Chr_Cp('F');
	MOVLW       70
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,387 :: 		Lcd_Chr_Cp('I');
	MOVLW       73
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,388 :: 		Lcd_Chr_Cp('N');
	MOVLW       78
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,389 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,390 :: 		Lcd_Chr_Cp('L');
	MOVLW       76
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,391 :: 		Lcd_Chr_Cp('I');
	MOVLW       73
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,392 :: 		Lcd_Chr_Cp('Z');
	MOVLW       90
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,393 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,394 :: 		Lcd_Chr_Cp('D');
	MOVLW       68
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,395 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,396 :: 		while(1);
L_acerta_cal141:
	GOTO        L_acerta_cal141
;reg des.c,397 :: 		}
L_acerta_cal140:
;reg des.c,398 :: 		}
L_acerta_cal139:
;reg des.c,399 :: 		}
	GOTO        L_acerta_cal137
;reg des.c,401 :: 		}
L_acerta_cal118:
;reg des.c,402 :: 		goto sel6;
	GOTO        ___acerta_cal_sel6
;reg des.c,403 :: 		}
L_acerta_cal94:
;reg des.c,404 :: 		goto voltamin;
	GOTO        ___acerta_cal_voltamin
;reg des.c,405 :: 		}
L_acerta_cal83:
;reg des.c,406 :: 		goto voltahora;
	GOTO        ___acerta_cal_voltahora
;reg des.c,407 :: 		}
L_acerta_cal51:
;reg des.c,408 :: 		goto voltaano;
	GOTO        ___acerta_cal_voltaano
;reg des.c,409 :: 		}
L_acerta_cal40:
;reg des.c,410 :: 		goto voltames;
	GOTO        ___acerta_cal_voltames
;reg des.c,411 :: 		}
L_acerta_cal26:
;reg des.c,412 :: 		goto voltadia;
	GOTO        ___acerta_cal_voltadia
;reg des.c,413 :: 		}
L_acerta_cal21:
;reg des.c,414 :: 		goto sel4;
	GOTO        ___acerta_cal_sel4
;reg des.c,415 :: 		}
L_acerta_cal13:
;reg des.c,416 :: 		goto sel3;
	GOTO        ___acerta_cal_sel3
;reg des.c,417 :: 		}
L_end_acerta_cal:
	RETURN      0
; end of _acerta_cal

_M_Create_New_File:

;reg des.c,424 :: 		void M_Create_New_File()
;reg des.c,426 :: 		if (Mmc_Fat_Assign(&filename, 0xA0)==0)
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	MOVLW       160
	MOVWF       FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_M_Create_New_File145
;reg des.c,428 :: 		Mmc_Fat_Rewrite();                  // limpa e cria arquivo
	CALL        _Mmc_Fat_Rewrite+0, 0
;reg des.c,429 :: 		}
L_M_Create_New_File145:
;reg des.c,430 :: 		}
L_end_M_Create_New_File:
	RETURN      0
; end of _M_Create_New_File

_M_Open_File_Append:

;reg des.c,436 :: 		void M_Open_File_Append()
;reg des.c,438 :: 		if (conteudo[6]<=64){serialnumber[0]=conteudo[6]-48;}
	MOVF        _conteudo+27, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append899
	MOVF        _conteudo+26, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append899
	MOVF        _conteudo+25, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append899
	MOVF        _conteudo+24, 0 
	SUBLW       64
L__M_Open_File_Append899:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append146
	MOVLW       48
	SUBWF       _conteudo+24, 0 
	MOVWF       _serialnumber+0 
L_M_Open_File_Append146:
;reg des.c,439 :: 		if (conteudo[6]>=65){serialnumber[0]=conteudo[6]-55;}
	MOVLW       0
	SUBWF       _conteudo+27, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append900
	MOVLW       0
	SUBWF       _conteudo+26, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append900
	MOVLW       0
	SUBWF       _conteudo+25, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append900
	MOVLW       65
	SUBWF       _conteudo+24, 0 
L__M_Open_File_Append900:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append147
	MOVLW       55
	SUBWF       _conteudo+24, 0 
	MOVWF       _serialnumber+0 
L_M_Open_File_Append147:
;reg des.c,440 :: 		nsm=serialnumber[0]*4096;
	MOVLW       12
	MOVWF       R0 
	MOVF        _serialnumber+0, 0 
	MOVWF       _nsm+0 
	MOVLW       0
	MOVWF       _nsm+1 
	MOVF        R0, 0 
L__M_Open_File_Append901:
	BZ          L__M_Open_File_Append902
	RLCF        _nsm+0, 1 
	BCF         _nsm+0, 0 
	RLCF        _nsm+1, 1 
	ADDLW       255
	GOTO        L__M_Open_File_Append901
L__M_Open_File_Append902:
;reg des.c,442 :: 		if (conteudo[7]<=64){serialnumber[1]=conteudo[7]-48;}
	MOVF        _conteudo+31, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append903
	MOVF        _conteudo+30, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append903
	MOVF        _conteudo+29, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append903
	MOVF        _conteudo+28, 0 
	SUBLW       64
L__M_Open_File_Append903:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append148
	MOVLW       48
	SUBWF       _conteudo+28, 0 
	MOVWF       _serialnumber+1 
L_M_Open_File_Append148:
;reg des.c,443 :: 		if (conteudo[7]>=65){serialnumber[1]=conteudo[7]-55;}
	MOVLW       0
	SUBWF       _conteudo+31, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append904
	MOVLW       0
	SUBWF       _conteudo+30, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append904
	MOVLW       0
	SUBWF       _conteudo+29, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append904
	MOVLW       65
	SUBWF       _conteudo+28, 0 
L__M_Open_File_Append904:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append149
	MOVLW       55
	SUBWF       _conteudo+28, 0 
	MOVWF       _serialnumber+1 
L_M_Open_File_Append149:
;reg des.c,444 :: 		nsc=serialnumber[1]*256;
	MOVF        _serialnumber+1, 0 
	MOVWF       _nsc+1 
	CLRF        _nsc+0 
;reg des.c,446 :: 		if (conteudo[8]<=64){serialnumber[2]=conteudo[8]-48;}
	MOVF        _conteudo+35, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append905
	MOVF        _conteudo+34, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append905
	MOVF        _conteudo+33, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append905
	MOVF        _conteudo+32, 0 
	SUBLW       64
L__M_Open_File_Append905:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append150
	MOVLW       48
	SUBWF       _conteudo+32, 0 
	MOVWF       _serialnumber+2 
L_M_Open_File_Append150:
;reg des.c,447 :: 		if (conteudo[8]>=65){serialnumber[2]=conteudo[8]-55;}
	MOVLW       0
	SUBWF       _conteudo+35, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append906
	MOVLW       0
	SUBWF       _conteudo+34, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append906
	MOVLW       0
	SUBWF       _conteudo+33, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append906
	MOVLW       65
	SUBWF       _conteudo+32, 0 
L__M_Open_File_Append906:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append151
	MOVLW       55
	SUBWF       _conteudo+32, 0 
	MOVWF       _serialnumber+2 
L_M_Open_File_Append151:
;reg des.c,448 :: 		nsd=serialnumber[2]*16;
	MOVLW       4
	MOVWF       R0 
	MOVF        _serialnumber+2, 0 
	MOVWF       _nsd+0 
	MOVLW       0
	MOVWF       _nsd+1 
	MOVF        R0, 0 
L__M_Open_File_Append907:
	BZ          L__M_Open_File_Append908
	RLCF        _nsd+0, 1 
	BCF         _nsd+0, 0 
	RLCF        _nsd+1, 1 
	ADDLW       255
	GOTO        L__M_Open_File_Append907
L__M_Open_File_Append908:
;reg des.c,450 :: 		if (conteudo[9]<=64){serialnumber[3]=conteudo[9]-48;}
	MOVF        _conteudo+39, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append909
	MOVF        _conteudo+38, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append909
	MOVF        _conteudo+37, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append909
	MOVF        _conteudo+36, 0 
	SUBLW       64
L__M_Open_File_Append909:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append152
	MOVLW       48
	SUBWF       _conteudo+36, 0 
	MOVWF       _serialnumber+3 
L_M_Open_File_Append152:
;reg des.c,451 :: 		if (conteudo[9]>=65){serialnumber[3]=conteudo[9]-55;}
	MOVLW       0
	SUBWF       _conteudo+39, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append910
	MOVLW       0
	SUBWF       _conteudo+38, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append910
	MOVLW       0
	SUBWF       _conteudo+37, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__M_Open_File_Append910
	MOVLW       65
	SUBWF       _conteudo+36, 0 
L__M_Open_File_Append910:
	BTFSS       STATUS+0, 0 
	GOTO        L_M_Open_File_Append153
	MOVLW       55
	SUBWF       _conteudo+36, 0 
	MOVWF       _serialnumber+3 
L_M_Open_File_Append153:
;reg des.c,452 :: 		nsu=serialnumber[3];
	MOVF        _serialnumber+3, 0 
	MOVWF       _nsu+0 
	MOVLW       0
	MOVWF       _nsu+1 
;reg des.c,453 :: 		tns=nsu+nsd+nsc+nsm;
	MOVF        _nsd+0, 0 
	ADDWF       _nsu+0, 0 
	MOVWF       R0 
	MOVF        _nsd+1, 0 
	ADDWFC      _nsu+1, 0 
	MOVWF       R1 
	MOVF        _nsc+0, 0 
	ADDWF       R0, 1 
	MOVF        _nsc+1, 0 
	ADDWFC      R1, 1 
	MOVF        _nsm+0, 0 
	ADDWF       R0, 1 
	MOVF        _nsm+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _tns+0 
	MOVF        R1, 0 
	MOVWF       _tns+1 
;reg des.c,454 :: 		IntToStr(tns,serial);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _serial+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_serial+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;reg des.c,455 :: 		filename[0]=serial[2];
	MOVF        _serial+2, 0 
	MOVWF       _filename+0 
;reg des.c,456 :: 		filename[1]=serial[3];
	MOVF        _serial+3, 0 
	MOVWF       _filename+1 
;reg des.c,457 :: 		filename[2]=serial[4];
	MOVF        _serial+4, 0 
	MOVWF       _filename+2 
;reg des.c,458 :: 		filename[3]=serial[5];
	MOVF        _serial+5, 0 
	MOVWF       _filename+3 
;reg des.c,459 :: 		maquina[0]=serial[2];
	MOVF        _serial+2, 0 
	MOVWF       _maquina+0 
;reg des.c,460 :: 		maquina[1]=serial[3];
	MOVF        _serial+3, 0 
	MOVWF       _maquina+1 
;reg des.c,461 :: 		maquina[2]=serial[4];
	MOVF        _serial+4, 0 
	MOVWF       _maquina+2 
;reg des.c,462 :: 		maquina[3]=serial[5];
	MOVF        _serial+5, 0 
	MOVWF       _maquina+3 
;reg des.c,463 :: 		erro10:
___M_Open_File_Append_erro10:
;reg des.c,464 :: 		if(Mmc_Fat_Exists(&filename)==1)
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Exists_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Exists_name+1 
	CALL        _Mmc_Fat_Exists+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_M_Open_File_Append154
;reg des.c,466 :: 		Mmc_Fat_Assign(&filename,0x20);
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	MOVLW       32
	MOVWF       FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,467 :: 		Mmc_Fat_Delete();
	CALL        _Mmc_Fat_Delete+0, 0
;reg des.c,468 :: 		delay_ms(100);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       44
	MOVWF       R12, 0
	MOVLW       171
	MOVWF       R13, 0
L_M_Open_File_Append155:
	DECFSZ      R13, 1, 1
	BRA         L_M_Open_File_Append155
	DECFSZ      R12, 1, 1
	BRA         L_M_Open_File_Append155
	DECFSZ      R11, 1, 1
	BRA         L_M_Open_File_Append155
	NOP
	NOP
;reg des.c,469 :: 		}
L_M_Open_File_Append154:
;reg des.c,470 :: 		Mmc_Fat_Assign(&filename,0xA0);
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	MOVLW       160
	MOVWF       FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,471 :: 		Mmc_Fat_Rewrite();
	CALL        _Mmc_Fat_Rewrite+0, 0
;reg des.c,472 :: 		if(Mmc_Fat_Exists(&filename)==0)
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Exists_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Exists_name+1 
	CALL        _Mmc_Fat_Exists+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_M_Open_File_Append156
;reg des.c,474 :: 		Mmc_Fat_QuickFormat (nomesd);
	MOVLW       _nomesd+0
	MOVWF       FARG_Mmc_Fat_QuickFormat_fat_label+0 
	MOVLW       hi_addr(_nomesd+0)
	MOVWF       FARG_Mmc_Fat_QuickFormat_fat_label+1 
	CALL        _Mmc_Fat_QuickFormat+0, 0
;reg des.c,475 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,476 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,477 :: 		Lcd_Out(2,2,"FORMAT. ERRADA");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,478 :: 		goto erro10;
	GOTO        ___M_Open_File_Append_erro10
;reg des.c,479 :: 		}
L_M_Open_File_Append156:
;reg des.c,481 :: 		}
L_end_M_Open_File_Append:
	RETURN      0
; end of _M_Open_File_Append

_M_Open_File_Rewrite:

;reg des.c,488 :: 		void M_Open_File_Rewrite()
;reg des.c,490 :: 		Mmc_Fat_Assign(&filename, 0);                // Procura se há algum arquivo dentro da pasta
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	CLRF        FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,491 :: 		Mmc_Fat_Rewrite();                           // Prepara para sobrescrever arquivo
	CALL        _Mmc_Fat_Rewrite+0, 0
;reg des.c,492 :: 		Mmc_Fat_Write(txt, strlen(txt)); // Escreve dados no arquivo
	MOVLW       _txt+0
	MOVWF       FARG_strlen_s+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_strlen_s+1 
	CALL        _strlen+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Mmc_Fat_Write_len+0 
	MOVF        R1, 0 
	MOVWF       FARG_Mmc_Fat_Write_len+1 
	MOVLW       _txt+0
	MOVWF       FARG_Mmc_Fat_Write_fdata+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Mmc_Fat_Write_fdata+1 
	CALL        _Mmc_Fat_Write+0, 0
;reg des.c,493 :: 		}
L_end_M_Open_File_Rewrite:
	RETURN      0
; end of _M_Open_File_Rewrite

_M_Delete_File:

;reg des.c,499 :: 		void M_Delete_File()
;reg des.c,501 :: 		Mmc_Fat_Assign(&filename, 0);                 // Procura se há algum arquivo dentro da pasta
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	CLRF        FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,502 :: 		Mmc_Fat_Delete();                            // Deleta arquivo
	CALL        _Mmc_Fat_Delete+0, 0
;reg des.c,503 :: 		}
L_end_M_Delete_File:
	RETURN      0
; end of _M_Delete_File

_Clone:

;reg des.c,504 :: 		void Clone()
;reg des.c,506 :: 		Mmc_Fat_Write(&character,1);
	MOVLW       _character+0
	MOVWF       FARG_Mmc_Fat_Write_fdata+0 
	MOVLW       hi_addr(_character+0)
	MOVWF       FARG_Mmc_Fat_Write_fdata+1 
	MOVLW       1
	MOVWF       FARG_Mmc_Fat_Write_len+0 
	MOVLW       0
	MOVWF       FARG_Mmc_Fat_Write_len+1 
	CALL        _Mmc_Fat_Write+0, 0
;reg des.c,507 :: 		}
L_end_Clone:
	RETURN      0
; end of _Clone

_descarga:

;reg des.c,511 :: 		void descarga()
;reg des.c,513 :: 		Mmc_Fat_Assign(&filename, 0);
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	CLRF        FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,514 :: 		Mmc_Fat_Reset(&mem);
	MOVLW       _mem+0
	MOVWF       FARG_Mmc_Fat_Reset_size+0 
	MOVLW       hi_addr(_mem+0)
	MOVWF       FARG_Mmc_Fat_Reset_size+1 
	CALL        _Mmc_Fat_Reset+0, 0
;reg des.c,515 :: 		}
L_end_descarga:
	RETURN      0
; end of _descarga

_Desc:

;reg des.c,516 :: 		void Desc()
;reg des.c,519 :: 		i++;
	MOVLW       1
	ADDWF       _i+0, 1 
	MOVLW       0
	ADDWFC      _i+1, 1 
	ADDWFC      _i+2, 1 
	ADDWFC      _i+3, 1 
;reg des.c,520 :: 		desc:
___Desc_desc:
;reg des.c,521 :: 		descarga();
	CALL        _descarga+0, 0
;reg des.c,522 :: 		if (i <= mem)
	MOVF        _i+3, 0 
	SUBWF       _mem+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc916
	MOVF        _i+2, 0 
	SUBWF       _mem+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc916
	MOVF        _i+1, 0 
	SUBWF       _mem+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc916
	MOVF        _i+0, 0 
	SUBWF       _mem+0, 0 
L__Desc916:
	BTFSS       STATUS+0, 0 
	GOTO        L_Desc157
;reg des.c,524 :: 		i++;
	MOVLW       1
	ADDWF       _i+0, 1 
	MOVLW       0
	ADDWFC      _i+1, 1 
	ADDWFC      _i+2, 1 
	ADDWFC      _i+3, 1 
;reg des.c,525 :: 		u++;
	MOVLW       1
	ADDWF       _u+0, 1 
	MOVLW       0
	ADDWFC      _u+1, 1 
	ADDWFC      _u+2, 1 
	ADDWFC      _u+3, 1 
;reg des.c,526 :: 		for (o=1; o <= u; o++)
	MOVLW       1
	MOVWF       _o+0 
	MOVLW       0
	MOVWF       _o+1 
	MOVWF       _o+2 
	MOVWF       _o+3 
L_Desc158:
	MOVF        _o+3, 0 
	SUBWF       _u+3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc917
	MOVF        _o+2, 0 
	SUBWF       _u+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc917
	MOVF        _o+1, 0 
	SUBWF       _u+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Desc917
	MOVF        _o+0, 0 
	SUBWF       _u+0, 0 
L__Desc917:
	BTFSS       STATUS+0, 0 
	GOTO        L_Desc159
;reg des.c,529 :: 		Mmc_Fat_Read(&character);
	MOVLW       _character+0
	MOVWF       FARG_Mmc_Fat_Read_fdata+0 
	MOVLW       hi_addr(_character+0)
	MOVWF       FARG_Mmc_Fat_Read_fdata+1 
	CALL        _Mmc_Fat_Read+0, 0
;reg des.c,526 :: 		for (o=1; o <= u; o++)
	MOVLW       1
	ADDWF       _o+0, 1 
	MOVLW       0
	ADDWFC      _o+1, 1 
	ADDWFC      _o+2, 1 
	ADDWFC      _o+3, 1 
;reg des.c,530 :: 		}
	GOTO        L_Desc158
L_Desc159:
;reg des.c,531 :: 		Mmc_Fat_Assign(&filename,0);
	MOVLW       _filename+0
	MOVWF       FARG_Mmc_Fat_Assign_name+0 
	MOVLW       hi_addr(_filename+0)
	MOVWF       FARG_Mmc_Fat_Assign_name+1 
	CLRF        FARG_Mmc_Fat_Assign_attrib+0 
	CALL        _Mmc_Fat_Assign+0, 0
;reg des.c,532 :: 		Mmc_Fat_Append();
	CALL        _Mmc_Fat_Append+0, 0
;reg des.c,533 :: 		Mmc_Fat_Write(&character,1);
	MOVLW       _character+0
	MOVWF       FARG_Mmc_Fat_Write_fdata+0 
	MOVLW       hi_addr(_character+0)
	MOVWF       FARG_Mmc_Fat_Write_fdata+1 
	MOVLW       1
	MOVWF       FARG_Mmc_Fat_Write_len+0 
	MOVLW       0
	MOVWF       FARG_Mmc_Fat_Write_len+1 
	CALL        _Mmc_Fat_Write+0, 0
;reg des.c,534 :: 		goto desc;
	GOTO        ___Desc_desc
;reg des.c,535 :: 		}
L_Desc157:
;reg des.c,537 :: 		}
L_end_Desc:
	RETURN      0
; end of _Desc

_pega_cal:

;reg des.c,539 :: 		void pega_cal()    // pega calendario
;reg des.c,541 :: 		calend[0]=conteudo[20];
	MOVF        _conteudo+80, 0 
	MOVWF       _calend+0 
;reg des.c,542 :: 		calend[1]=conteudo[21];
	MOVF        _conteudo+84, 0 
	MOVWF       _calend+1 
;reg des.c,543 :: 		calend[2]=conteudo[22];
	MOVF        _conteudo+88, 0 
	MOVWF       _calend+2 
;reg des.c,544 :: 		calend[3]=conteudo[23];
	MOVF        _conteudo+92, 0 
	MOVWF       _calend+3 
;reg des.c,545 :: 		calend[4]=conteudo[24];
	MOVF        _conteudo+96, 0 
	MOVWF       _calend+4 
;reg des.c,546 :: 		calend[5]=conteudo[25];
	MOVF        _conteudo+100, 0 
	MOVWF       _calend+5 
;reg des.c,547 :: 		calend[6]=conteudo[26];
	MOVF        _conteudo+104, 0 
	MOVWF       _calend+6 
;reg des.c,548 :: 		calend[7]=conteudo[27];
	MOVF        _conteudo+108, 0 
	MOVWF       _calend+7 
;reg des.c,549 :: 		calend[8]=conteudo[28];
	MOVF        _conteudo+112, 0 
	MOVWF       _calend+8 
;reg des.c,550 :: 		calend[9]=conteudo[29];
	MOVF        _conteudo+116, 0 
	MOVWF       _calend+9 
;reg des.c,551 :: 		calend[10]=conteudo[30];
	MOVF        _conteudo+120, 0 
	MOVWF       _calend+10 
;reg des.c,552 :: 		calend[11]=conteudo[31];
	MOVF        _conteudo+124, 0 
	MOVWF       _calend+11 
;reg des.c,553 :: 		calend[12]=conteudo[32];
	MOVF        _conteudo+128, 0 
	MOVWF       _calend+12 
;reg des.c,554 :: 		calend[13]=conteudo[33];
	MOVF        _conteudo+132, 0 
	MOVWF       _calend+13 
;reg des.c,555 :: 		}
L_end_pega_cal:
	RETURN      0
; end of _pega_cal

_le_memoria:

;reg des.c,557 :: 		void le_memoria()
;reg des.c,559 :: 		volta4:
___le_memoria_volta4:
;reg des.c,560 :: 		LEDY=1;
	BSF         PORTB+0, 1 
;reg des.c,561 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria161:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria161
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria161
	NOP
;reg des.c,562 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,563 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria162:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria162
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria162
	NOP
;reg des.c,564 :: 		Uart1_Write(0x72);
	MOVLW       114
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,565 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria163:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria163
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria163
	NOP
;reg des.c,566 :: 		Uart1_Write(0x64);
	MOVLW       100
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,567 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria164:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria164
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria164
	NOP
;reg des.c,568 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,569 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria165:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria165
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria165
	NOP
;reg des.c,570 :: 		Uart1_Write(0x30);
	MOVLW       48
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,571 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria166:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria166
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria166
	NOP
;reg des.c,572 :: 		Uart1_Write(0x30);
	MOVLW       48
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,573 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria167:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria167
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria167
	NOP
;reg des.c,574 :: 		Uart1_Write(pom);
	MOVF        _pom+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,575 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria168:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria168
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria168
	NOP
;reg des.c,576 :: 		Uart1_Write(poc);
	MOVF        _poc+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,577 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria169:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria169
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria169
	NOP
;reg des.c,578 :: 		Uart1_Write(pod);
	MOVF        _pod+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,579 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria170:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria170
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria170
	NOP
;reg des.c,580 :: 		Uart1_Write(pou);
	MOVF        _pou+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,581 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_le_memoria171:
	DECFSZ      R13, 1, 1
	BRA         L_le_memoria171
	DECFSZ      R12, 1, 1
	BRA         L_le_memoria171
	NOP
;reg des.c,582 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,583 :: 		cont=0;
	CLRF        _cont+0 
	CLRF        _cont+1 
;reg des.c,584 :: 		volta2:
___le_memoria_volta2:
;reg des.c,585 :: 		if (UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_le_memoria172
;reg des.c,587 :: 		uart_rd1 = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd1+0 
	MOVLW       0
	MOVWF       _uart_rd1+1 
;reg des.c,588 :: 		if (uart_rd1==0x0D||uart_rd1==0x0A)
	MOVLW       0
	XORWF       _uart_rd1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__le_memoria920
	MOVLW       13
	XORWF       _uart_rd1+0, 0 
L__le_memoria920:
	BTFSC       STATUS+0, 2 
	GOTO        L__le_memoria830
	MOVLW       0
	XORWF       _uart_rd1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__le_memoria921
	MOVLW       10
	XORWF       _uart_rd1+0, 0 
L__le_memoria921:
	BTFSC       STATUS+0, 2 
	GOTO        L__le_memoria830
	GOTO        L_le_memoria175
L__le_memoria830:
;reg des.c,590 :: 		goto volta2;
	GOTO        ___le_memoria_volta2
;reg des.c,591 :: 		}
L_le_memoria175:
;reg des.c,592 :: 		}
L_le_memoria172:
;reg des.c,601 :: 		volta3:
___le_memoria_volta3:
;reg des.c,602 :: 		if (UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_le_memoria176
;reg des.c,604 :: 		uart_rd = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
	MOVLW       0
	MOVWF       _uart_rd+1 
;reg des.c,605 :: 		memoria[cont] = uart_rd;
	MOVLW       _memoria+0
	ADDWF       _cont+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_memoria+0)
	ADDWFC      _cont+1, 0 
	MOVWF       FSR1H 
	MOVF        _uart_rd+0, 0 
	MOVWF       POSTINC1+0 
;reg des.c,606 :: 		cont++;
	INFSNZ      _cont+0, 1 
	INCF        _cont+1, 1 
;reg des.c,607 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,608 :: 		}
L_le_memoria176:
;reg des.c,609 :: 		while(cont<=538)
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       _cont+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__le_memoria922
	MOVF        _cont+0, 0 
	SUBLW       26
L__le_memoria922:
	BTFSS       STATUS+0, 0 
	GOTO        L_le_memoria178
;reg des.c,611 :: 		goto volta3;
	GOTO        ___le_memoria_volta3
;reg des.c,612 :: 		}
L_le_memoria178:
;reg des.c,613 :: 		if (memoria[530] != 0x3C && memoria[531] != 0x52 ){Lcd_Out(2,1,&memoria[530] );goto volta4;}       // verifica se o conteudo da memoria esta correto
	MOVF        _memoria+530, 0 
	XORLW       60
	BTFSC       STATUS+0, 2 
	GOTO        L_le_memoria181
	MOVF        _memoria+531, 0 
	XORLW       82
	BTFSC       STATUS+0, 2 
	GOTO        L_le_memoria181
L__le_memoria829:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _memoria+530
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_memoria+530)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	GOTO        ___le_memoria_volta4
L_le_memoria181:
;reg des.c,614 :: 		}
L_end_le_memoria:
	RETURN      0
; end of _le_memoria

_grava_sd:

;reg des.c,616 :: 		void grava_sd()
;reg des.c,618 :: 		le_memoria();
	CALL        _le_memoria+0, 0
;reg des.c,619 :: 		memoria[531]=pom;memoria[532]=poc;memoria[533]=pod;memoria[534]=pou;    // grava pagina na memória para debug
	MOVF        _pom+0, 0 
	MOVWF       _memoria+531 
	MOVF        _poc+0, 0 
	MOVWF       _memoria+532 
	MOVF        _pod+0, 0 
	MOVWF       _memoria+533 
	MOVF        _pou+0, 0 
	MOVWF       _memoria+534 
;reg des.c,620 :: 		Mmc_Fat_Write(memoria,528);       // alterar para 538 para gravar pagina na memoria para debug
	MOVLW       _memoria+0
	MOVWF       FARG_Mmc_Fat_Write_fdata+0 
	MOVLW       hi_addr(_memoria+0)
	MOVWF       FARG_Mmc_Fat_Write_fdata+1 
	MOVLW       16
	MOVWF       FARG_Mmc_Fat_Write_len+0 
	MOVLW       2
	MOVWF       FARG_Mmc_Fat_Write_len+1 
	CALL        _Mmc_Fat_Write+0, 0
;reg des.c,621 :: 		}
L_end_grava_sd:
	RETURN      0
; end of _grava_sd

_coleta_1:

;reg des.c,623 :: 		void coleta_1()
;reg des.c,626 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,627 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,628 :: 		Lcd_Out(1,1,"MAQ.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,629 :: 		Lcd_Out(1,5,maquina);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _maquina+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_maquina+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,630 :: 		Lcd_Out(1,10,"COLETA1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,631 :: 		Lcd_Out(2,1,"                ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,632 :: 		LEDR1=1;
	BSF         PORTB+0, 2 
;reg des.c,634 :: 		if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
	MOVF        _conteudo+11, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1925
	MOVF        _conteudo+10, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1925
	MOVF        _conteudo+9, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1925
	MOVF        _conteudo+8, 0 
	SUBLW       64
L__coleta_1925:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1182
	MOVLW       48
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_1182:
;reg des.c,635 :: 		if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
	MOVLW       0
	SUBWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1926
	MOVLW       0
	SUBWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1926
	MOVLW       0
	SUBWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1926
	MOVLW       65
	SUBWF       _conteudo+8, 0 
L__coleta_1926:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1183
	MOVLW       55
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_1183:
;reg des.c,636 :: 		npm=ponteiro[0]*4096;
	MOVLW       12
	MOVWF       R0 
	MOVF        _ponteiro+0, 0 
	MOVWF       _npm+0 
	MOVLW       0
	MOVWF       _npm+1 
	MOVF        R0, 0 
L__coleta_1927:
	BZ          L__coleta_1928
	RLCF        _npm+0, 1 
	BCF         _npm+0, 0 
	RLCF        _npm+1, 1 
	ADDLW       255
	GOTO        L__coleta_1927
L__coleta_1928:
;reg des.c,638 :: 		if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
	MOVF        _conteudo+15, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1929
	MOVF        _conteudo+14, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1929
	MOVF        _conteudo+13, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1929
	MOVF        _conteudo+12, 0 
	SUBLW       64
L__coleta_1929:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1184
	MOVLW       48
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_1184:
;reg des.c,639 :: 		if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
	MOVLW       0
	SUBWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1930
	MOVLW       0
	SUBWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1930
	MOVLW       0
	SUBWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1930
	MOVLW       65
	SUBWF       _conteudo+12, 0 
L__coleta_1930:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1185
	MOVLW       55
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_1185:
;reg des.c,640 :: 		npc=ponteiro[1]*256;
	MOVF        _ponteiro+1, 0 
	MOVWF       _npc+1 
	CLRF        _npc+0 
;reg des.c,642 :: 		if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
	MOVF        _conteudo+19, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1931
	MOVF        _conteudo+18, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1931
	MOVF        _conteudo+17, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1931
	MOVF        _conteudo+16, 0 
	SUBLW       64
L__coleta_1931:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1186
	MOVLW       48
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_1186:
;reg des.c,643 :: 		if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
	MOVLW       0
	SUBWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1932
	MOVLW       0
	SUBWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1932
	MOVLW       0
	SUBWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1932
	MOVLW       65
	SUBWF       _conteudo+16, 0 
L__coleta_1932:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1187
	MOVLW       55
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_1187:
;reg des.c,644 :: 		npd=ponteiro[2]*16;
	MOVLW       4
	MOVWF       R0 
	MOVF        _ponteiro+2, 0 
	MOVWF       _npd+0 
	MOVLW       0
	MOVWF       _npd+1 
	MOVF        R0, 0 
L__coleta_1933:
	BZ          L__coleta_1934
	RLCF        _npd+0, 1 
	BCF         _npd+0, 0 
	RLCF        _npd+1, 1 
	ADDLW       255
	GOTO        L__coleta_1933
L__coleta_1934:
;reg des.c,646 :: 		if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
	MOVF        _conteudo+23, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1935
	MOVF        _conteudo+22, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1935
	MOVF        _conteudo+21, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1935
	MOVF        _conteudo+20, 0 
	SUBLW       64
L__coleta_1935:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1188
	MOVLW       48
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_1188:
;reg des.c,647 :: 		if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
	MOVLW       0
	SUBWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1936
	MOVLW       0
	SUBWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1936
	MOVLW       0
	SUBWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1936
	MOVLW       65
	SUBWF       _conteudo+20, 0 
L__coleta_1936:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_1189
	MOVLW       55
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_1189:
;reg des.c,648 :: 		npu=ponteiro[3];
	MOVF        _ponteiro+3, 0 
	MOVWF       _npu+0 
	MOVLW       0
	MOVWF       _npu+1 
;reg des.c,649 :: 		tpt=(npu+npd+npc+npm);
	MOVF        _npd+0, 0 
	ADDWF       _npu+0, 0 
	MOVWF       R0 
	MOVF        _npd+1, 0 
	ADDWFC      _npu+1, 0 
	MOVWF       R1 
	MOVF        _npc+0, 0 
	ADDWF       R0, 1 
	MOVF        _npc+1, 0 
	ADDWFC      R1, 1 
	MOVF        _npm+0, 0 
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVF        _npm+1, 0 
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVF        R2, 0 
	MOVWF       _tpt+0 
	MOVF        R3, 0 
	MOVWF       _tpt+1 
;reg des.c,651 :: 		if (tpt<1059)
	MOVLW       4
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1937
	MOVLW       35
	SUBWF       R2, 0 
L__coleta_1937:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1190
;reg des.c,653 :: 		pina=1059-tpt;
	MOVF        _tpt+0, 0 
	SUBLW       35
	MOVWF       R0 
	MOVF        _tpt+1, 0 
	MOVWF       R1 
	MOVLW       4
	SUBFWB      R1, 1 
	MOVF        R0, 0 
	MOVWF       _pina+0 
	MOVF        R1, 0 
	MOVWF       _pina+1 
;reg des.c,654 :: 		pinb=8191-pina;
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       R0 
	MOVF        R1, 0 
	MOVWF       R1 
	MOVLW       31
	SUBFWB      R1, 1 
	MOVF        R0, 0 
	MOVWF       _pinb+0 
	MOVF        R1, 0 
	MOVWF       _pinb+1 
;reg des.c,655 :: 		IntToHex(pinb,ponta);
	MOVF        R0, 0 
	MOVWF       FARG_IntToHex_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToHex_input+1 
	MOVLW       _ponta+0
	MOVWF       FARG_IntToHex_output+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_IntToHex_output+1 
	CALL        _IntToHex+0, 0
;reg des.c,656 :: 		Lcd_Out(4,1,&ponta);
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ponta+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,657 :: 		pom=ponta[0];
	MOVF        _ponta+0, 0 
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
;reg des.c,658 :: 		poc=ponta[1];
	MOVF        _ponta+1, 0 
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,659 :: 		pod=ponta[2];
	MOVF        _ponta+2, 0 
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,660 :: 		pou=ponta[3];
	MOVF        _ponta+3, 0 
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,661 :: 		contar:
___coleta_1_contar:
;reg des.c,662 :: 		while(pou<57)
L_coleta_1191:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1938
	MOVLW       57
	SUBWF       _pou+0, 0 
L__coleta_1938:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1192
;reg des.c,664 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,665 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,666 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,667 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,668 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,669 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,670 :: 		}
	GOTO        L_coleta_1191
L_coleta_1192:
;reg des.c,671 :: 		if (pou==57){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1939
	MOVLW       57
	XORWF       _pou+0, 0 
L__coleta_1939:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1193
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_1193:
;reg des.c,672 :: 		while(pou<71)
L_coleta_1194:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1940
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_1940:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1195
;reg des.c,674 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,675 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,676 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,677 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,678 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,679 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,680 :: 		}
	GOTO        L_coleta_1194
L_coleta_1195:
;reg des.c,681 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,682 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1941
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_1941:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1197
;reg des.c,684 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,685 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,686 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,687 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,688 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,689 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,690 :: 		goto contar;
	GOTO        ___coleta_1_contar
;reg des.c,691 :: 		}
L_coleta_1197:
;reg des.c,692 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1942
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_1942:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1198
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_1198:
;reg des.c,693 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1943
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_1943:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1200
;reg des.c,695 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,696 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,697 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,698 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,699 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,700 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,701 :: 		goto contar;
	GOTO        ___coleta_1_contar
;reg des.c,702 :: 		}
L_coleta_1200:
;reg des.c,703 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,704 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1944
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_1944:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1202
;reg des.c,706 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,707 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,708 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,709 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,710 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,711 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,712 :: 		goto contar;
	GOTO        ___coleta_1_contar
;reg des.c,713 :: 		}
L_coleta_1202:
;reg des.c,714 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1945
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_1945:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1203
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_1203:
;reg des.c,715 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1946
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_1946:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1205
;reg des.c,717 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,718 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,719 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,720 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,721 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,722 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,723 :: 		goto contar;
	GOTO        ___coleta_1_contar
;reg des.c,724 :: 		}
L_coleta_1205:
;reg des.c,725 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,726 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1947
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_1947:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1207
;reg des.c,728 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,729 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,730 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,731 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,732 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,733 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,734 :: 		goto contar;
	GOTO        ___coleta_1_contar
;reg des.c,735 :: 		}
L_coleta_1207:
;reg des.c,736 :: 		pom=48;poc=48;pod=48;pou=49;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       49
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,737 :: 		contar1:
___coleta_1_contar1:
;reg des.c,738 :: 		while(pou<58)
L_coleta_1208:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1948
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_1948:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1209
;reg des.c,740 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,741 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,742 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,743 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,744 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,745 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0;while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1949
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1949
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1949
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1949:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1212
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1950
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1950
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1950
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1950:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1212
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1951
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1951
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1951
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1951:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1212
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1952
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1952
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1952
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1952:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1212
L__coleta_1851:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1213:
	GOTO        L_coleta_1213
L_coleta_1212:
;reg des.c,746 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,747 :: 		}
	GOTO        L_coleta_1208
L_coleta_1209:
;reg des.c,748 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1953
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_1953:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1215
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_1215:
;reg des.c,749 :: 		while(pou<71)
L_coleta_1216:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1954
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_1954:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1217
;reg des.c,751 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,752 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,753 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,754 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,755 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,756 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1955
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1955
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1955
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1955:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1220
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1956
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1956
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1956
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1956:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1220
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1957
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1957
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1957
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1957:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1220
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1958
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1958
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1958
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1958:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1220
L__coleta_1850:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1221:
	GOTO        L_coleta_1221
L_coleta_1220:
;reg des.c,757 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,758 :: 		}
	GOTO        L_coleta_1216
L_coleta_1217:
;reg des.c,759 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,760 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1959
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_1959:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1224
;reg des.c,762 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,763 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,764 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,765 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,766 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,767 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,768 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1960
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1960
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1960
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1960:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1227
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1961
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1961
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1961
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1961:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1227
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1962
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1962
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1962
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1962:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1227
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1963
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1963
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1963
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1963:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1227
L__coleta_1849:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1228:
	GOTO        L_coleta_1228
L_coleta_1227:
;reg des.c,769 :: 		goto contar1;
	GOTO        ___coleta_1_contar1
;reg des.c,770 :: 		}
L_coleta_1224:
;reg des.c,771 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1964
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_1964:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1230
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_1230:
;reg des.c,772 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1965
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_1965:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1232
;reg des.c,774 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,775 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,776 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,777 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,778 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,779 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,780 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1966
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1966
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1966
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1966:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1235
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1967
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1967
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1967
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1967:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1235
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1968
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1968
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1968
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1968:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1235
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1969
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1969
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1969
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1969:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1235
L__coleta_1848:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1236:
	GOTO        L_coleta_1236
L_coleta_1235:
;reg des.c,781 :: 		goto contar1;
	GOTO        ___coleta_1_contar1
;reg des.c,782 :: 		}
L_coleta_1232:
;reg des.c,783 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,784 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1970
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_1970:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1239
;reg des.c,786 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,787 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,788 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,789 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,790 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,791 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,792 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1971
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1971
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1971
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1971:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1242
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1972
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1972
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1972
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1972:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1242
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1973
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1973
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1973
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1973:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1242
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1974
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1974
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1974
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1974:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1242
L__coleta_1847:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1243:
	GOTO        L_coleta_1243
L_coleta_1242:
;reg des.c,793 :: 		goto contar1;
	GOTO        ___coleta_1_contar1
;reg des.c,794 :: 		}
L_coleta_1239:
;reg des.c,795 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1975
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_1975:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1245
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_1245:
;reg des.c,796 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1976
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_1976:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1247
;reg des.c,798 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,799 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,800 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,801 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,802 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,803 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,804 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1977
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1977
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1977
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1977:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1250
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1978
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1978
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1978
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1978:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1250
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1979
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1979
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1979
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1979:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1250
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1980
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1980
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1980
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1980:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1250
L__coleta_1846:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1251:
	GOTO        L_coleta_1251
L_coleta_1250:
;reg des.c,805 :: 		goto contar1;
	GOTO        ___coleta_1_contar1
;reg des.c,806 :: 		}
L_coleta_1247:
;reg des.c,807 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,808 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1981
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_1981:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1254
;reg des.c,810 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,811 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,812 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,813 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,814 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,815 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,816 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1982
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1982
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1982
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1982:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1257
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1983
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1983
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1983
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1983:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1257
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1984
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1984
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1984
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1984:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1257
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1985
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1985
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1985
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1985:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1257
L__coleta_1845:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1258:
	GOTO        L_coleta_1258
L_coleta_1257:
;reg des.c,817 :: 		goto contar1;
	GOTO        ___coleta_1_contar1
;reg des.c,818 :: 		}
L_coleta_1254:
;reg des.c,819 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,820 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,821 :: 		while(1);
L_coleta_1260:
	GOTO        L_coleta_1260
;reg des.c,822 :: 		}
L_coleta_1190:
;reg des.c,823 :: 		if (tpt>1059)
	MOVF        _tpt+1, 0 
	SUBLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1986
	MOVF        _tpt+0, 0 
	SUBLW       35
L__coleta_1986:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1262
;reg des.c,825 :: 		pinb=tpt-1059;
	MOVLW       35
	SUBWF       _tpt+0, 0 
	MOVWF       R0 
	MOVLW       4
	SUBWFB      _tpt+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _pinb+0 
	MOVF        R1, 0 
	MOVWF       _pinb+1 
;reg des.c,826 :: 		IntToHex(pinb,ponta);
	MOVF        R0, 0 
	MOVWF       FARG_IntToHex_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToHex_input+1 
	MOVLW       _ponta+0
	MOVWF       FARG_IntToHex_output+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_IntToHex_output+1 
	CALL        _IntToHex+0, 0
;reg des.c,827 :: 		Lcd_Out(4,1,&ponta);
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ponta+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,828 :: 		pom=ponta[0];
	MOVF        _ponta+0, 0 
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
;reg des.c,829 :: 		poc=ponta[1];
	MOVF        _ponta+1, 0 
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,830 :: 		pod=ponta[2];
	MOVF        _ponta+2, 0 
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,831 :: 		pou=ponta[3];
	MOVF        _ponta+3, 0 
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,832 :: 		contar2:
___coleta_1_contar2:
;reg des.c,833 :: 		while(pou<58)
L_coleta_1263:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1987
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_1987:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1264
;reg des.c,835 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,836 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,837 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,838 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,839 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,840 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1988
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1988
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1988
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1988:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1267
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1989
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1989
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1989
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1989:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1267
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1990
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1990
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1990
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1990:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1267
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1991
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1991
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1991
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1991:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1267
L__coleta_1844:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1268:
	GOTO        L_coleta_1268
L_coleta_1267:
;reg des.c,841 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,842 :: 		}
	GOTO        L_coleta_1263
L_coleta_1264:
;reg des.c,843 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1992
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_1992:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1270
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_1270:
;reg des.c,844 :: 		while(pou<71)
L_coleta_1271:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1993
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_1993:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1272
;reg des.c,846 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,847 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,848 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,849 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,850 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,851 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1994
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1994
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1994
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1994:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1275
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1995
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1995
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1995
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_1995:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1275
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1996
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1996
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1996
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_1996:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1275
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1997
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1997
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1997
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_1997:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1275
L__coleta_1843:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1276:
	GOTO        L_coleta_1276
L_coleta_1275:
;reg des.c,852 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,853 :: 		}
	GOTO        L_coleta_1271
L_coleta_1272:
;reg des.c,854 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,855 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1998
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_1998:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1279
;reg des.c,857 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,858 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,859 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,860 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,861 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,862 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,863 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1999
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1999
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_1999
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_1999:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1282
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11000
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11000
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11000
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11000:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1282
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11001
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11001
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11001
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11001:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1282
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11002
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11002
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11002
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11002:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1282
L__coleta_1842:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1283:
	GOTO        L_coleta_1283
L_coleta_1282:
;reg des.c,864 :: 		goto contar2;
	GOTO        ___coleta_1_contar2
;reg des.c,865 :: 		}
L_coleta_1279:
;reg des.c,866 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11003
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_11003:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1285
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_1285:
;reg des.c,867 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11004
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_11004:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1287
;reg des.c,869 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,870 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,871 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,872 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,873 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,874 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,875 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11005
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11005
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11005
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11005:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1290
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11006
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11006
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11006
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11006:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1290
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11007
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11007
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11007
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11007:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1290
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11008
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11008
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11008
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11008:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1290
L__coleta_1841:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1291:
	GOTO        L_coleta_1291
L_coleta_1290:
;reg des.c,876 :: 		goto contar2;
	GOTO        ___coleta_1_contar2
;reg des.c,877 :: 		}
L_coleta_1287:
;reg des.c,878 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,879 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11009
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_11009:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1294
;reg des.c,881 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,882 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,883 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,884 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,885 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,886 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,887 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11010
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11010
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11010
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11010:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1297
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11011
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11011
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11011
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11011:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1297
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11012
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11012
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11012
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11012:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1297
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11013
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11013
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11013
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11013:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1297
L__coleta_1840:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1298:
	GOTO        L_coleta_1298
L_coleta_1297:
;reg des.c,888 :: 		goto contar2;
	GOTO        ___coleta_1_contar2
;reg des.c,889 :: 		}
L_coleta_1294:
;reg des.c,890 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11014
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_11014:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1300
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_1300:
;reg des.c,891 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11015
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_11015:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1302
;reg des.c,893 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,894 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,895 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,896 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,897 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,898 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,899 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11016
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11016
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11016
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11016:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1305
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11017
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11017
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11017
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11017:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1305
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11018
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11018
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11018
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11018:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1305
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11019
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11019
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11019
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11019:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1305
L__coleta_1839:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1306:
	GOTO        L_coleta_1306
L_coleta_1305:
;reg des.c,900 :: 		goto contar2;
	GOTO        ___coleta_1_contar2
;reg des.c,901 :: 		}
L_coleta_1302:
;reg des.c,902 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,903 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11020
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_11020:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1309
;reg des.c,905 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,906 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,907 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,908 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,909 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,910 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,911 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11021
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11021
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11021
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11021:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1312
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11022
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11022
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11022
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11022:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1312
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11023
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11023
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11023
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11023:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1312
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11024
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11024
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11024
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11024:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1312
L__coleta_1838:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1313:
	GOTO        L_coleta_1313
L_coleta_1312:
;reg des.c,912 :: 		goto contar2;
	GOTO        ___coleta_1_contar2
;reg des.c,913 :: 		}
L_coleta_1309:
;reg des.c,914 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,915 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,916 :: 		while(1);
L_coleta_1315:
	GOTO        L_coleta_1315
;reg des.c,917 :: 		}
L_coleta_1262:
;reg des.c,918 :: 		if (tpt=1059)
	MOVLW       35
	MOVWF       _tpt+0 
	MOVLW       4
	MOVWF       _tpt+1 
;reg des.c,920 :: 		pom=48;poc=48;pod=48;pou=49;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       49
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,921 :: 		contar3:
___coleta_1_contar3:
;reg des.c,922 :: 		while(pou<58)
L_coleta_1318:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11025
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_11025:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1319
;reg des.c,924 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,925 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,926 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,927 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,928 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,929 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11026
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11026
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11026
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11026:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1322
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11027
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11027
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11027
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11027:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1322
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11028
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11028
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11028
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11028:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1322
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11029
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11029
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11029
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11029:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1322
L__coleta_1837:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1323:
	GOTO        L_coleta_1323
L_coleta_1322:
;reg des.c,930 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,931 :: 		}
	GOTO        L_coleta_1318
L_coleta_1319:
;reg des.c,932 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11030
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_11030:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1325
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_1325:
;reg des.c,933 :: 		while(pou<71)
L_coleta_1326:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11031
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_11031:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1327
;reg des.c,935 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,936 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,937 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,938 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,939 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,940 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11032
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11032
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11032
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11032:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1330
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11033
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11033
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11033
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11033:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1330
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11034
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11034
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11034
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11034:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1330
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11035
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11035
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11035
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11035:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1330
L__coleta_1836:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1331:
	GOTO        L_coleta_1331
L_coleta_1330:
;reg des.c,941 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,942 :: 		}
	GOTO        L_coleta_1326
L_coleta_1327:
;reg des.c,943 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,944 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11036
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_11036:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1334
;reg des.c,946 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,947 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,948 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,949 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,950 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,951 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,952 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11037
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11037
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11037
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11037:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1337
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11038
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11038
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11038
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11038:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1337
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11039
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11039
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11039
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11039:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1337
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11040
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11040
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11040
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11040:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1337
L__coleta_1835:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1338:
	GOTO        L_coleta_1338
L_coleta_1337:
;reg des.c,953 :: 		goto contar3;
	GOTO        ___coleta_1_contar3
;reg des.c,954 :: 		}
L_coleta_1334:
;reg des.c,955 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11041
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_11041:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1340
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_1340:
;reg des.c,956 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11042
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_11042:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1342
;reg des.c,958 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,959 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,960 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,961 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,962 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,963 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,964 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11043
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11043
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11043
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11043:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1345
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11044
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11044
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11044
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11044:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1345
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11045
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11045
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11045
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11045:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1345
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11046
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11046
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11046
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11046:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1345
L__coleta_1834:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1346:
	GOTO        L_coleta_1346
L_coleta_1345:
;reg des.c,965 :: 		goto contar3;
	GOTO        ___coleta_1_contar3
;reg des.c,966 :: 		}
L_coleta_1342:
;reg des.c,967 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,968 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11047
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_11047:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1349
;reg des.c,970 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,971 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,972 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,973 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,974 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,975 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,976 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11048
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11048
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11048
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11048:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1352
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11049
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11049
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11049
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11049:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1352
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11050
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11050
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11050
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11050:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1352
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11051
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11051
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11051
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11051:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1352
L__coleta_1833:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1353:
	GOTO        L_coleta_1353
L_coleta_1352:
;reg des.c,977 :: 		goto contar3;
	GOTO        ___coleta_1_contar3
;reg des.c,978 :: 		}
L_coleta_1349:
;reg des.c,979 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11052
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_11052:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1355
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_1355:
;reg des.c,980 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11053
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_11053:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1357
;reg des.c,982 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,983 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,984 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,985 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,986 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,987 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,988 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11054
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11054
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11054
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11054:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1360
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11055
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11055
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11055
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11055:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1360
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11056
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11056
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11056
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11056:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1360
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11057
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11057
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11057
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11057:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1360
L__coleta_1832:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1361:
	GOTO        L_coleta_1361
L_coleta_1360:
;reg des.c,989 :: 		goto contar3;
	GOTO        ___coleta_1_contar3
;reg des.c,990 :: 		}
L_coleta_1357:
;reg des.c,991 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,992 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11058
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_11058:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_1364
;reg des.c,994 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,995 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,996 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,997 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,998 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,999 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1000 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11059
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11059
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11059
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_11059:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1367
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11060
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11060
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11060
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_11060:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1367
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11061
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11061
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11061
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_11061:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1367
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11062
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11062
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_11062
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_11062:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_1367
L__coleta_1831:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_1368:
	GOTO        L_coleta_1368
L_coleta_1367:
;reg des.c,1001 :: 		goto contar3;
	GOTO        ___coleta_1_contar3
;reg des.c,1002 :: 		}
L_coleta_1364:
;reg des.c,1003 :: 		Lcd_Out(2,7,"FINALIZADA");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1004 :: 		acerta_cal();
	CALL        _acerta_cal+0, 0
;reg des.c,1005 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1006 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1007 :: 		while(1);
L_coleta_1370:
	GOTO        L_coleta_1370
;reg des.c,1010 :: 		}
L_end_coleta_1:
	RETURN      0
; end of _coleta_1

_coleta_2:

;reg des.c,1012 :: 		void coleta_2()
;reg des.c,1014 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1015 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1016 :: 		Lcd_Out(1,1,"MAQ.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1017 :: 		Lcd_Out(1,5,maquina);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _maquina+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_maquina+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1018 :: 		Lcd_Out(1,10,"COLETA2");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1019 :: 		Lcd_Out(2,1,"                ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1020 :: 		LEDR2=1;
	BSF         PORTB+0, 3 
;reg des.c,1022 :: 		if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
	MOVF        _conteudo+11, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21064
	MOVF        _conteudo+10, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21064
	MOVF        _conteudo+9, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21064
	MOVF        _conteudo+8, 0 
	SUBLW       64
L__coleta_21064:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2374
	MOVLW       48
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_2374:
;reg des.c,1023 :: 		if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
	MOVLW       0
	SUBWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21065
	MOVLW       0
	SUBWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21065
	MOVLW       0
	SUBWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21065
	MOVLW       65
	SUBWF       _conteudo+8, 0 
L__coleta_21065:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2375
	MOVLW       55
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_2375:
;reg des.c,1024 :: 		npm=ponteiro[0]*4096;
	MOVLW       12
	MOVWF       R0 
	MOVF        _ponteiro+0, 0 
	MOVWF       _npm+0 
	MOVLW       0
	MOVWF       _npm+1 
	MOVF        R0, 0 
L__coleta_21066:
	BZ          L__coleta_21067
	RLCF        _npm+0, 1 
	BCF         _npm+0, 0 
	RLCF        _npm+1, 1 
	ADDLW       255
	GOTO        L__coleta_21066
L__coleta_21067:
;reg des.c,1026 :: 		if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
	MOVF        _conteudo+15, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21068
	MOVF        _conteudo+14, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21068
	MOVF        _conteudo+13, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21068
	MOVF        _conteudo+12, 0 
	SUBLW       64
L__coleta_21068:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2376
	MOVLW       48
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_2376:
;reg des.c,1027 :: 		if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
	MOVLW       0
	SUBWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21069
	MOVLW       0
	SUBWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21069
	MOVLW       0
	SUBWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21069
	MOVLW       65
	SUBWF       _conteudo+12, 0 
L__coleta_21069:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2377
	MOVLW       55
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_2377:
;reg des.c,1028 :: 		npc=ponteiro[1]*256;
	MOVF        _ponteiro+1, 0 
	MOVWF       _npc+1 
	CLRF        _npc+0 
;reg des.c,1030 :: 		if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
	MOVF        _conteudo+19, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21070
	MOVF        _conteudo+18, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21070
	MOVF        _conteudo+17, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21070
	MOVF        _conteudo+16, 0 
	SUBLW       64
L__coleta_21070:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2378
	MOVLW       48
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_2378:
;reg des.c,1031 :: 		if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
	MOVLW       0
	SUBWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21071
	MOVLW       0
	SUBWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21071
	MOVLW       0
	SUBWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21071
	MOVLW       65
	SUBWF       _conteudo+16, 0 
L__coleta_21071:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2379
	MOVLW       55
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_2379:
;reg des.c,1032 :: 		npd=ponteiro[2]*16;
	MOVLW       4
	MOVWF       R0 
	MOVF        _ponteiro+2, 0 
	MOVWF       _npd+0 
	MOVLW       0
	MOVWF       _npd+1 
	MOVF        R0, 0 
L__coleta_21072:
	BZ          L__coleta_21073
	RLCF        _npd+0, 1 
	BCF         _npd+0, 0 
	RLCF        _npd+1, 1 
	ADDLW       255
	GOTO        L__coleta_21072
L__coleta_21073:
;reg des.c,1034 :: 		if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
	MOVF        _conteudo+23, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21074
	MOVF        _conteudo+22, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21074
	MOVF        _conteudo+21, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21074
	MOVF        _conteudo+20, 0 
	SUBLW       64
L__coleta_21074:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2380
	MOVLW       48
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_2380:
;reg des.c,1035 :: 		if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
	MOVLW       0
	SUBWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21075
	MOVLW       0
	SUBWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21075
	MOVLW       0
	SUBWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21075
	MOVLW       65
	SUBWF       _conteudo+20, 0 
L__coleta_21075:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_2381
	MOVLW       55
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_2381:
;reg des.c,1036 :: 		npu=ponteiro[3];
	MOVF        _ponteiro+3, 0 
	MOVWF       _npu+0 
	MOVLW       0
	MOVWF       _npu+1 
;reg des.c,1037 :: 		tpt=(npu+npd+npc+npm);
	MOVF        _npd+0, 0 
	ADDWF       _npu+0, 0 
	MOVWF       R0 
	MOVF        _npd+1, 0 
	ADDWFC      _npu+1, 0 
	MOVWF       R1 
	MOVF        _npc+0, 0 
	ADDWF       R0, 1 
	MOVF        _npc+1, 0 
	ADDWFC      R1, 1 
	MOVF        _npm+0, 0 
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVF        _npm+1, 0 
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVF        R2, 0 
	MOVWF       _tpt+0 
	MOVF        R3, 0 
	MOVWF       _tpt+1 
;reg des.c,1038 :: 		if (tpt<4092)
	MOVLW       15
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21076
	MOVLW       252
	SUBWF       R2, 0 
L__coleta_21076:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2382
;reg des.c,1039 :: 		{pina=4092-tpt;
	MOVF        _tpt+0, 0 
	SUBLW       252
	MOVWF       R0 
	MOVF        _tpt+1, 0 
	MOVWF       R1 
	MOVLW       15
	SUBFWB      R1, 1 
	MOVF        R0, 0 
	MOVWF       _pina+0 
	MOVF        R1, 0 
	MOVWF       _pina+1 
;reg des.c,1040 :: 		pinb=8191-pina;
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       R0 
	MOVF        R1, 0 
	MOVWF       R1 
	MOVLW       31
	SUBFWB      R1, 1 
	MOVF        R0, 0 
	MOVWF       _pinb+0 
	MOVF        R1, 0 
	MOVWF       _pinb+1 
;reg des.c,1041 :: 		IntToHex(pinb,ponta);
	MOVF        R0, 0 
	MOVWF       FARG_IntToHex_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToHex_input+1 
	MOVLW       _ponta+0
	MOVWF       FARG_IntToHex_output+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_IntToHex_output+1 
	CALL        _IntToHex+0, 0
;reg des.c,1042 :: 		Lcd_Out(4,1,&ponta);
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ponta+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1043 :: 		pom=ponta[0];
	MOVF        _ponta+0, 0 
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
;reg des.c,1044 :: 		poc=ponta[1];
	MOVF        _ponta+1, 0 
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1045 :: 		pod=ponta[2];
	MOVF        _ponta+2, 0 
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1046 :: 		pou=ponta[3];
	MOVF        _ponta+3, 0 
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1047 :: 		contar7:
___coleta_2_contar7:
;reg des.c,1048 :: 		while(pou<57)
L_coleta_2383:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21077
	MOVLW       57
	SUBWF       _pou+0, 0 
L__coleta_21077:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2384
;reg des.c,1050 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1051 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1052 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1053 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1054 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1055 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1056 :: 		}
	GOTO        L_coleta_2383
L_coleta_2384:
;reg des.c,1057 :: 		if (pou==57){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21078
	MOVLW       57
	XORWF       _pou+0, 0 
L__coleta_21078:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2385
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_2385:
;reg des.c,1058 :: 		while(pou<71)
L_coleta_2386:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21079
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_21079:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2387
;reg des.c,1060 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1061 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1062 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1063 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1064 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1065 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1066 :: 		}
	GOTO        L_coleta_2386
L_coleta_2387:
;reg des.c,1067 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1068 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21080
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_21080:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2389
;reg des.c,1070 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1071 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1072 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1073 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1074 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1075 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1076 :: 		goto contar7;
	GOTO        ___coleta_2_contar7
;reg des.c,1077 :: 		}
L_coleta_2389:
;reg des.c,1078 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21081
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_21081:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2390
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_2390:
;reg des.c,1079 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21082
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_21082:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2392
;reg des.c,1081 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1082 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1083 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1084 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1085 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1086 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1087 :: 		goto contar7;
	GOTO        ___coleta_2_contar7
;reg des.c,1088 :: 		}
L_coleta_2392:
;reg des.c,1089 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1090 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21083
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_21083:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2394
;reg des.c,1092 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1093 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1094 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1095 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1096 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1097 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1098 :: 		goto contar7;
	GOTO        ___coleta_2_contar7
;reg des.c,1099 :: 		}
L_coleta_2394:
;reg des.c,1100 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21084
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_21084:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2395
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_2395:
;reg des.c,1101 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21085
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_21085:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2397
;reg des.c,1103 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1104 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1105 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1106 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1107 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1108 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1109 :: 		goto contar7;
	GOTO        ___coleta_2_contar7
;reg des.c,1110 :: 		}
L_coleta_2397:
;reg des.c,1111 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1112 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21086
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_21086:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2399
;reg des.c,1114 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1115 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1116 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1117 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1118 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1119 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1120 :: 		goto contar7;
	GOTO        ___coleta_2_contar7
;reg des.c,1121 :: 		}
L_coleta_2399:
;reg des.c,1122 :: 		pom=48;poc=48;pod=48;pou=49;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       49
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1123 :: 		contar8:
___coleta_2_contar8:
;reg des.c,1124 :: 		while(pou<58)
L_coleta_2400:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21087
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_21087:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2401
;reg des.c,1126 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1127 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1128 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1129 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1130 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1131 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0;acerta_cal(); while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21088
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21088
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21088
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21088:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2404
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21089
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21089
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21089
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21089:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2404
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21090
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21090
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21090
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21090:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2404
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21091
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21091
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21091
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21091:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2404
L__coleta_2872:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
	CALL        _acerta_cal+0, 0
L_coleta_2405:
	GOTO        L_coleta_2405
L_coleta_2404:
;reg des.c,1132 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1133 :: 		}
	GOTO        L_coleta_2400
L_coleta_2401:
;reg des.c,1134 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21092
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_21092:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2407
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_2407:
;reg des.c,1135 :: 		while(pou<71)
L_coleta_2408:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21093
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_21093:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2409
;reg des.c,1137 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1138 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1139 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1140 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1141 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1142 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA"); acerta_cal();LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21094
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21094
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21094
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21094:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2412
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21095
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21095
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21095
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21095:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2412
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21096
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21096
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21096
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21096:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2412
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21097
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21097
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21097
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21097:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2412
L__coleta_2871:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2413:
	GOTO        L_coleta_2413
L_coleta_2412:
;reg des.c,1143 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1144 :: 		}
	GOTO        L_coleta_2408
L_coleta_2409:
;reg des.c,1145 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1146 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21098
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_21098:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2416
;reg des.c,1148 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1149 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1150 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1151 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1152 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1153 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1154 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21099
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21099
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21099
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21099:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2419
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21100
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21100
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21100
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21100:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2419
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21101
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21101
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21101
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21101:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2419
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21102
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21102
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21102
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21102:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2419
L__coleta_2870:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2420:
	GOTO        L_coleta_2420
L_coleta_2419:
;reg des.c,1155 :: 		goto contar8;
	GOTO        ___coleta_2_contar8
;reg des.c,1156 :: 		}
L_coleta_2416:
;reg des.c,1157 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21103
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_21103:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2422
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_2422:
;reg des.c,1158 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21104
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_21104:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2424
;reg des.c,1160 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1161 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1162 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1163 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1164 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1165 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1166 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21105
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21105
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21105
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21105:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2427
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21106
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21106
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21106
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21106:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2427
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21107
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21107
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21107
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21107:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2427
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21108
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21108
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21108
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21108:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2427
L__coleta_2869:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2428:
	GOTO        L_coleta_2428
L_coleta_2427:
;reg des.c,1167 :: 		goto contar8;
	GOTO        ___coleta_2_contar8
;reg des.c,1168 :: 		}
L_coleta_2424:
;reg des.c,1169 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1170 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21109
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_21109:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2431
;reg des.c,1172 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1173 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1174 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1175 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1176 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1177 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1178 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21110
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21110
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21110
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21110:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2434
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21111
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21111
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21111
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21111:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2434
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21112
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21112
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21112
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21112:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2434
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21113
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21113
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21113
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21113:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2434
L__coleta_2868:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2435:
	GOTO        L_coleta_2435
L_coleta_2434:
;reg des.c,1179 :: 		goto contar8;
	GOTO        ___coleta_2_contar8
;reg des.c,1180 :: 		}
L_coleta_2431:
;reg des.c,1181 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21114
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_21114:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2437
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_2437:
;reg des.c,1182 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21115
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_21115:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2439
;reg des.c,1184 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1185 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1186 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1187 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1188 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1189 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1190 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21116
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21116
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21116
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21116:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2442
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21117
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21117
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21117
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21117:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2442
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21118
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21118
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21118
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21118:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2442
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21119
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21119
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21119
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21119:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2442
L__coleta_2867:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2443:
	GOTO        L_coleta_2443
L_coleta_2442:
;reg des.c,1191 :: 		goto contar8;
	GOTO        ___coleta_2_contar8
;reg des.c,1192 :: 		}
L_coleta_2439:
;reg des.c,1193 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1194 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21120
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_21120:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2446
;reg des.c,1196 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1197 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1198 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1199 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1200 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1201 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1202 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21121
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21121
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21121
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21121:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2449
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21122
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21122
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21122
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21122:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2449
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21123
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21123
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21123
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21123:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2449
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21124
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21124
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21124
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21124:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2449
L__coleta_2866:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr47_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr47_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2450:
	GOTO        L_coleta_2450
L_coleta_2449:
;reg des.c,1203 :: 		goto contar8;
	GOTO        ___coleta_2_contar8
;reg des.c,1204 :: 		}
L_coleta_2446:
;reg des.c,1205 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1206 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1207 :: 		while(1);
L_coleta_2452:
	GOTO        L_coleta_2452
;reg des.c,1208 :: 		}
L_coleta_2382:
;reg des.c,1209 :: 		if (tpt>4092)
	MOVF        _tpt+1, 0 
	SUBLW       15
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21125
	MOVF        _tpt+0, 0 
	SUBLW       252
L__coleta_21125:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2454
;reg des.c,1211 :: 		pinb=tpt-4092;
	MOVLW       252
	SUBWF       _tpt+0, 0 
	MOVWF       R0 
	MOVLW       15
	SUBWFB      _tpt+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _pinb+0 
	MOVF        R1, 0 
	MOVWF       _pinb+1 
;reg des.c,1212 :: 		IntToHex(pinb,ponta);
	MOVF        R0, 0 
	MOVWF       FARG_IntToHex_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToHex_input+1 
	MOVLW       _ponta+0
	MOVWF       FARG_IntToHex_output+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_IntToHex_output+1 
	CALL        _IntToHex+0, 0
;reg des.c,1213 :: 		Lcd_Out(4,1,&ponta);
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ponta+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1214 :: 		pom=ponta[0];
	MOVF        _ponta+0, 0 
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
;reg des.c,1215 :: 		poc=ponta[1];
	MOVF        _ponta+1, 0 
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1216 :: 		pod=ponta[2];
	MOVF        _ponta+2, 0 
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1217 :: 		pou=ponta[3];
	MOVF        _ponta+3, 0 
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1218 :: 		contar9:
___coleta_2_contar9:
;reg des.c,1219 :: 		while(pou<58)
L_coleta_2455:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21126
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_21126:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2456
;reg des.c,1221 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1222 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1223 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1224 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1225 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1226 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21127
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21127
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21127
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21127:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2459
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21128
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21128
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21128
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21128:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2459
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21129
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21129
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21129
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21129:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2459
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21130
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21130
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21130
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21130:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2459
L__coleta_2865:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr48_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr48_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2460:
	GOTO        L_coleta_2460
L_coleta_2459:
;reg des.c,1227 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1228 :: 		}
	GOTO        L_coleta_2455
L_coleta_2456:
;reg des.c,1229 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21131
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_21131:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2462
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_2462:
;reg des.c,1230 :: 		while(pou<71)
L_coleta_2463:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21132
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_21132:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2464
;reg des.c,1232 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1233 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1234 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1235 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1236 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1237 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21133
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21133
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21133
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21133:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2467
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21134
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21134
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21134
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21134:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2467
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21135
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21135
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21135
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21135:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2467
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21136
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21136
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21136
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21136:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2467
L__coleta_2864:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr49_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr49_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2468:
	GOTO        L_coleta_2468
L_coleta_2467:
;reg des.c,1238 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1239 :: 		}
	GOTO        L_coleta_2463
L_coleta_2464:
;reg des.c,1240 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1241 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21137
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_21137:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2471
;reg des.c,1243 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1244 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1245 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1246 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1247 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1248 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1249 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21138
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21138
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21138
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21138:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2474
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21139
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21139
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21139
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21139:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2474
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21140
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21140
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21140
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21140:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2474
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21141
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21141
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21141
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21141:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2474
L__coleta_2863:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr50_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr50_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2475:
	GOTO        L_coleta_2475
L_coleta_2474:
;reg des.c,1250 :: 		goto contar9;
	GOTO        ___coleta_2_contar9
;reg des.c,1251 :: 		}
L_coleta_2471:
;reg des.c,1252 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21142
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_21142:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2477
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_2477:
;reg des.c,1253 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21143
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_21143:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2479
;reg des.c,1255 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1256 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1257 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1258 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1259 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1260 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1261 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21144
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21144
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21144
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21144:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2482
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21145
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21145
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21145
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21145:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2482
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21146
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21146
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21146
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21146:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2482
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21147
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21147
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21147
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21147:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2482
L__coleta_2862:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr51_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr51_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2483:
	GOTO        L_coleta_2483
L_coleta_2482:
;reg des.c,1262 :: 		goto contar9;
	GOTO        ___coleta_2_contar9
;reg des.c,1263 :: 		}
L_coleta_2479:
;reg des.c,1264 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1265 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21148
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_21148:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2486
;reg des.c,1267 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1268 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1269 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1270 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1271 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1272 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1273 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21149
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21149
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21149
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21149:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2489
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21150
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21150
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21150
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21150:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2489
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21151
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21151
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21151
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21151:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2489
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21152
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21152
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21152
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21152:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2489
L__coleta_2861:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr52_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr52_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2490:
	GOTO        L_coleta_2490
L_coleta_2489:
;reg des.c,1274 :: 		goto contar9;
	GOTO        ___coleta_2_contar9
;reg des.c,1275 :: 		}
L_coleta_2486:
;reg des.c,1276 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21153
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_21153:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2492
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_2492:
;reg des.c,1277 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21154
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_21154:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2494
;reg des.c,1279 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1280 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1281 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1282 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1283 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1284 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1285 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21155
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21155
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21155
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21155:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2497
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21156
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21156
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21156
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21156:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2497
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21157
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21157
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21157
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21157:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2497
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21158
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21158
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21158
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21158:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2497
L__coleta_2860:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr53_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr53_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2498:
	GOTO        L_coleta_2498
L_coleta_2497:
;reg des.c,1286 :: 		goto contar9;
	GOTO        ___coleta_2_contar9
;reg des.c,1287 :: 		}
L_coleta_2494:
;reg des.c,1288 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1289 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21159
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_21159:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2501
;reg des.c,1291 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1292 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1293 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1294 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1295 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1296 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1297 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21160
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21160
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21160
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21160:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2504
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21161
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21161
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21161
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21161:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2504
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21162
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21162
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21162
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21162:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2504
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21163
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21163
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21163
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21163:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2504
L__coleta_2859:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr54_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr54_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2505:
	GOTO        L_coleta_2505
L_coleta_2504:
;reg des.c,1298 :: 		goto contar9;
	GOTO        ___coleta_2_contar9
;reg des.c,1299 :: 		}
L_coleta_2501:
;reg des.c,1300 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1301 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1302 :: 		while(1);
L_coleta_2507:
	GOTO        L_coleta_2507
;reg des.c,1303 :: 		}
L_coleta_2454:
;reg des.c,1304 :: 		if (tpt=4092)
	MOVLW       252
	MOVWF       _tpt+0 
	MOVLW       15
	MOVWF       _tpt+1 
;reg des.c,1306 :: 		pom=48;poc=48;pod=48;pou=49;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       49
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1307 :: 		contara:
___coleta_2_contara:
;reg des.c,1308 :: 		while(pou<58)
L_coleta_2510:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21164
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_21164:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2511
;reg des.c,1310 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1311 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1312 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1313 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1314 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1315 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21165
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21165
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21165
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21165:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2514
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21166
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21166
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21166
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21166:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2514
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21167
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21167
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21167
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21167:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2514
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21168
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21168
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21168
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21168:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2514
L__coleta_2858:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr55_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr55_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2515:
	GOTO        L_coleta_2515
L_coleta_2514:
;reg des.c,1316 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1317 :: 		}
	GOTO        L_coleta_2510
L_coleta_2511:
;reg des.c,1318 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21169
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_21169:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2517
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_2517:
;reg des.c,1319 :: 		while(pou<71)
L_coleta_2518:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21170
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_21170:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2519
;reg des.c,1321 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1322 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1323 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1324 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1325 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1326 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21171
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21171
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21171
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21171:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2522
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21172
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21172
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21172
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21172:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2522
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21173
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21173
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21173
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21173:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2522
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21174
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21174
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21174
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21174:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2522
L__coleta_2857:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr56_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr56_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2523:
	GOTO        L_coleta_2523
L_coleta_2522:
;reg des.c,1327 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1328 :: 		}
	GOTO        L_coleta_2518
L_coleta_2519:
;reg des.c,1329 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1330 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21175
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_21175:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2526
;reg des.c,1332 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1333 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1334 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1335 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1336 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1337 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1338 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21176
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21176
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21176
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21176:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2529
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21177
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21177
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21177
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21177:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2529
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21178
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21178
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21178
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21178:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2529
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21179
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21179
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21179
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21179:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2529
L__coleta_2856:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr57_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr57_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2530:
	GOTO        L_coleta_2530
L_coleta_2529:
;reg des.c,1339 :: 		goto contara;
	GOTO        ___coleta_2_contara
;reg des.c,1340 :: 		}
L_coleta_2526:
;reg des.c,1341 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21180
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_21180:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2532
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_2532:
;reg des.c,1342 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21181
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_21181:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2534
;reg des.c,1344 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1345 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1346 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1347 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1348 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1349 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1350 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21182
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21182
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21182
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21182:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2537
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21183
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21183
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21183
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21183:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2537
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21184
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21184
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21184
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21184:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2537
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21185
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21185
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21185
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21185:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2537
L__coleta_2855:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr58_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr58_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2538:
	GOTO        L_coleta_2538
L_coleta_2537:
;reg des.c,1351 :: 		goto contara;
	GOTO        ___coleta_2_contara
;reg des.c,1352 :: 		}
L_coleta_2534:
;reg des.c,1353 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1354 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21186
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_21186:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2541
;reg des.c,1356 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1357 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1358 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1359 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1360 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1361 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1362 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21187
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21187
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21187
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21187:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2544
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21188
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21188
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21188
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21188:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2544
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21189
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21189
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21189
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21189:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2544
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21190
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21190
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21190
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21190:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2544
L__coleta_2854:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr59_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr59_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2545:
	GOTO        L_coleta_2545
L_coleta_2544:
;reg des.c,1363 :: 		goto contara;
	GOTO        ___coleta_2_contara
;reg des.c,1364 :: 		}
L_coleta_2541:
;reg des.c,1365 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21191
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_21191:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2547
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_2547:
;reg des.c,1366 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21192
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_21192:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2549
;reg des.c,1368 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1369 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1370 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1371 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1372 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1373 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1374 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal();LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21193
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21193
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21193
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21193:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2552
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21194
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21194
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21194
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21194:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2552
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21195
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21195
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21195
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21195:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2552
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21196
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21196
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21196
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21196:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2552
L__coleta_2853:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr60_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr60_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2553:
	GOTO        L_coleta_2553
L_coleta_2552:
;reg des.c,1375 :: 		goto contara;
	GOTO        ___coleta_2_contara
;reg des.c,1376 :: 		}
L_coleta_2549:
;reg des.c,1377 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1378 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21197
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_21197:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_2556
;reg des.c,1380 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1381 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1382 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1383 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1384 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1385 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1386 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21198
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21198
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21198
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_21198:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2559
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21199
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21199
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21199
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_21199:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2559
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21200
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21200
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21200
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_21200:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2559
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21201
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21201
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_21201
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_21201:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_2559
L__coleta_2852:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr61_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr61_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_2560:
	GOTO        L_coleta_2560
L_coleta_2559:
;reg des.c,1387 :: 		goto contara;
	GOTO        ___coleta_2_contara
;reg des.c,1388 :: 		}
L_coleta_2556:
;reg des.c,1389 :: 		Lcd_Out(2,7,"FINALIZADA");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr62_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr62_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1390 :: 		acerta_cal();
	CALL        _acerta_cal+0, 0
;reg des.c,1391 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1392 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1393 :: 		while(1);
L_coleta_2562:
	GOTO        L_coleta_2562
;reg des.c,1396 :: 		}
L_end_coleta_2:
	RETURN      0
; end of _coleta_2

_coleta_3:

;reg des.c,1398 :: 		void coleta_3()
;reg des.c,1400 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1401 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1402 :: 		Lcd_Out(1,1,"MAQ.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr63_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr63_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1403 :: 		Lcd_Out(1,1,"MAQ.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr64_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr64_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1404 :: 		Lcd_Out(1,5,maquina);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _maquina+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_maquina+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1405 :: 		Lcd_Out(1,10,"COLETA3");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr65_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr65_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1406 :: 		Lcd_Out(2,1,"                ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr66_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr66_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1407 :: 		LEDR3=1;
	BSF         PORTB+0, 4 
;reg des.c,1408 :: 		if (conteudo[2]<=64){ponteiro[0]=conteudo[2]-48;}
	MOVF        _conteudo+11, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31203
	MOVF        _conteudo+10, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31203
	MOVF        _conteudo+9, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31203
	MOVF        _conteudo+8, 0 
	SUBLW       64
L__coleta_31203:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3564
	MOVLW       48
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_3564:
;reg des.c,1409 :: 		if (conteudo[2]>=65){ponteiro[0]=conteudo[2]-55;}
	MOVLW       0
	SUBWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31204
	MOVLW       0
	SUBWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31204
	MOVLW       0
	SUBWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31204
	MOVLW       65
	SUBWF       _conteudo+8, 0 
L__coleta_31204:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3565
	MOVLW       55
	SUBWF       _conteudo+8, 0 
	MOVWF       _ponteiro+0 
L_coleta_3565:
;reg des.c,1410 :: 		npm=ponteiro[0]*4096;
	MOVLW       12
	MOVWF       R0 
	MOVF        _ponteiro+0, 0 
	MOVWF       _npm+0 
	MOVLW       0
	MOVWF       _npm+1 
	MOVF        R0, 0 
L__coleta_31205:
	BZ          L__coleta_31206
	RLCF        _npm+0, 1 
	BCF         _npm+0, 0 
	RLCF        _npm+1, 1 
	ADDLW       255
	GOTO        L__coleta_31205
L__coleta_31206:
;reg des.c,1412 :: 		if (conteudo[3]<=64){ponteiro[1]=conteudo[3]-48;}
	MOVF        _conteudo+15, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31207
	MOVF        _conteudo+14, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31207
	MOVF        _conteudo+13, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31207
	MOVF        _conteudo+12, 0 
	SUBLW       64
L__coleta_31207:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3566
	MOVLW       48
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_3566:
;reg des.c,1413 :: 		if (conteudo[3]>=65){ponteiro[1]=conteudo[3]-55;}
	MOVLW       0
	SUBWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31208
	MOVLW       0
	SUBWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31208
	MOVLW       0
	SUBWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31208
	MOVLW       65
	SUBWF       _conteudo+12, 0 
L__coleta_31208:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3567
	MOVLW       55
	SUBWF       _conteudo+12, 0 
	MOVWF       _ponteiro+1 
L_coleta_3567:
;reg des.c,1414 :: 		npc=ponteiro[1]*256;
	MOVF        _ponteiro+1, 0 
	MOVWF       _npc+1 
	CLRF        _npc+0 
;reg des.c,1416 :: 		if (conteudo[4]<=64){ponteiro[2]=conteudo[4]-48;}
	MOVF        _conteudo+19, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31209
	MOVF        _conteudo+18, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31209
	MOVF        _conteudo+17, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31209
	MOVF        _conteudo+16, 0 
	SUBLW       64
L__coleta_31209:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3568
	MOVLW       48
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_3568:
;reg des.c,1417 :: 		if (conteudo[4]>=65){ponteiro[2]=conteudo[4]-55;}
	MOVLW       0
	SUBWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31210
	MOVLW       0
	SUBWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31210
	MOVLW       0
	SUBWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31210
	MOVLW       65
	SUBWF       _conteudo+16, 0 
L__coleta_31210:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3569
	MOVLW       55
	SUBWF       _conteudo+16, 0 
	MOVWF       _ponteiro+2 
L_coleta_3569:
;reg des.c,1418 :: 		npd=ponteiro[2]*16;
	MOVLW       4
	MOVWF       R0 
	MOVF        _ponteiro+2, 0 
	MOVWF       _npd+0 
	MOVLW       0
	MOVWF       _npd+1 
	MOVF        R0, 0 
L__coleta_31211:
	BZ          L__coleta_31212
	RLCF        _npd+0, 1 
	BCF         _npd+0, 0 
	RLCF        _npd+1, 1 
	ADDLW       255
	GOTO        L__coleta_31211
L__coleta_31212:
;reg des.c,1420 :: 		if (conteudo[5]<=64){ponteiro[3]=conteudo[5]-48;}
	MOVF        _conteudo+23, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31213
	MOVF        _conteudo+22, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31213
	MOVF        _conteudo+21, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31213
	MOVF        _conteudo+20, 0 
	SUBLW       64
L__coleta_31213:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3570
	MOVLW       48
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_3570:
;reg des.c,1421 :: 		if (conteudo[5]>=65){ponteiro[3]=conteudo[5]-55;}
	MOVLW       0
	SUBWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31214
	MOVLW       0
	SUBWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31214
	MOVLW       0
	SUBWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31214
	MOVLW       65
	SUBWF       _conteudo+20, 0 
L__coleta_31214:
	BTFSS       STATUS+0, 0 
	GOTO        L_coleta_3571
	MOVLW       55
	SUBWF       _conteudo+20, 0 
	MOVWF       _ponteiro+3 
L_coleta_3571:
;reg des.c,1422 :: 		npu=ponteiro[3];
	MOVF        _ponteiro+3, 0 
	MOVWF       _npu+0 
	MOVLW       0
	MOVWF       _npu+1 
;reg des.c,1423 :: 		tpt=(npu+npd+npc+npm);
	MOVF        _npd+0, 0 
	ADDWF       _npu+0, 0 
	MOVWF       R0 
	MOVF        _npd+1, 0 
	ADDWFC      _npu+1, 0 
	MOVWF       R1 
	MOVF        _npc+0, 0 
	ADDWF       R0, 1 
	MOVF        _npc+1, 0 
	ADDWFC      R1, 1 
	MOVF        _npm+0, 0 
	ADDWF       R0, 1 
	MOVF        _npm+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       _tpt+0 
	MOVF        R1, 0 
	MOVWF       _tpt+1 
;reg des.c,1424 :: 		pinb=tpt+1;
	INFSNZ      R0, 1 
	INCF        R1, 1 
	MOVF        R0, 0 
	MOVWF       _pinb+0 
	MOVF        R1, 0 
	MOVWF       _pinb+1 
;reg des.c,1425 :: 		IntToHex(pinb,ponta);
	MOVF        R0, 0 
	MOVWF       FARG_IntToHex_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToHex_input+1 
	MOVLW       _ponta+0
	MOVWF       FARG_IntToHex_output+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_IntToHex_output+1 
	CALL        _IntToHex+0, 0
;reg des.c,1426 :: 		Lcd_Out(4,1,&ponta);
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ponta+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ponta+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1427 :: 		pom=ponta[0];   // 0x1;  para ponteiro fixo e ler amemoria inteira
	MOVF        _ponta+0, 0 
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
;reg des.c,1428 :: 		poc=ponta[1];   //0xF;
	MOVF        _ponta+1, 0 
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1429 :: 		pod=ponta[2];   //0xF;
	MOVF        _ponta+2, 0 
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1430 :: 		pou=ponta[3];   //0xF;
	MOVF        _ponta+3, 0 
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1431 :: 		le_memoria();
	CALL        _le_memoria+0, 0
;reg des.c,1432 :: 		if (memoria[0] == 0xFF && memoria[1] == 0xFF && memoria[2] == 0xFF && memoria[3] == 0xFF && memoria[4] == 0xFF)        // verifica se a pag está vazia
	MOVF        _memoria+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3574
	MOVF        _memoria+1, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3574
	MOVF        _memoria+2, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3574
	MOVF        _memoria+3, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3574
	MOVF        _memoria+4, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3574
L__coleta_3887:
;reg des.c,1434 :: 		pom=48;poc=48;pod=48;pou=48;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1435 :: 		contar4:
___coleta_3_contar4:
;reg des.c,1436 :: 		while(pou<57)
L_coleta_3575:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31215
	MOVLW       57
	SUBWF       _pou+0, 0 
L__coleta_31215:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3576
;reg des.c,1438 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1439 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1440 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1441 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1442 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1443 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1444 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31216
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31216
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31216
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31216:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3579
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31217
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31217
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31217
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31217:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3579
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31218
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31218
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31218
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31218:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3579
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31219
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31219
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31219
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31219:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3579
L__coleta_3886:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr67_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr67_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3580:
	GOTO        L_coleta_3580
L_coleta_3579:
;reg des.c,1445 :: 		}
	GOTO        L_coleta_3575
L_coleta_3576:
;reg des.c,1446 :: 		if (pou==57){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31220
	MOVLW       57
	XORWF       _pou+0, 0 
L__coleta_31220:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3582
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_3582:
;reg des.c,1447 :: 		while(pou<71)
L_coleta_3583:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31221
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_31221:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3584
;reg des.c,1449 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1450 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1451 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1452 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1453 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1454 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31222
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31222
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31222
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31222:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3587
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31223
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31223
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31223
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31223:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3587
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31224
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31224
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31224
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31224:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3587
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31225
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31225
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31225
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31225:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3587
L__coleta_3885:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr68_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr68_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3588:
	GOTO        L_coleta_3588
L_coleta_3587:
;reg des.c,1455 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1456 :: 		}
	GOTO        L_coleta_3583
L_coleta_3584:
;reg des.c,1457 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1458 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31226
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_31226:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3591
;reg des.c,1460 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1461 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1462 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1463 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1464 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1465 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1466 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31227
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31227
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31227
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31227:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3594
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31228
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31228
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31228
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31228:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3594
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31229
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31229
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31229
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31229:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3594
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31230
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31230
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31230
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31230:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3594
L__coleta_3884:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr69_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr69_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3595:
	GOTO        L_coleta_3595
L_coleta_3594:
;reg des.c,1467 :: 		goto contar4;
	GOTO        ___coleta_3_contar4
;reg des.c,1468 :: 		}
L_coleta_3591:
;reg des.c,1469 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31231
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_31231:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3597
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_3597:
;reg des.c,1470 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31232
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_31232:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3599
;reg des.c,1472 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1473 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1474 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1475 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1476 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1477 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1478 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31233
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31233
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31233
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31233:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3602
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31234
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31234
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31234
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31234:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3602
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31235
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31235
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31235
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31235:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3602
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31236
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31236
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31236
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31236:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3602
L__coleta_3883:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr70_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr70_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3603:
	GOTO        L_coleta_3603
L_coleta_3602:
;reg des.c,1479 :: 		goto contar4;
	GOTO        ___coleta_3_contar4
;reg des.c,1480 :: 		}
L_coleta_3599:
;reg des.c,1481 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1482 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31237
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_31237:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3606
;reg des.c,1484 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1485 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1486 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1487 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1488 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1489 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1490 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31238
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31238
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31238
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31238:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3609
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31239
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31239
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31239
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31239:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3609
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31240
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31240
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31240
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31240:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3609
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31241
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31241
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31241
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31241:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3609
L__coleta_3882:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr71_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr71_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3610:
	GOTO        L_coleta_3610
L_coleta_3609:
;reg des.c,1491 :: 		goto contar4;
	GOTO        ___coleta_3_contar4
;reg des.c,1492 :: 		}
L_coleta_3606:
;reg des.c,1493 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31242
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_31242:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3612
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_3612:
;reg des.c,1494 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31243
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_31243:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3614
;reg des.c,1496 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1497 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1498 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1499 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1500 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1501 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1502 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31244
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31244
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31244
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31244:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3617
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31245
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31245
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31245
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31245:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3617
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31246
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31246
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31246
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31246:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3617
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31247
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31247
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31247
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31247:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3617
L__coleta_3881:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr72_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr72_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3618:
	GOTO        L_coleta_3618
L_coleta_3617:
;reg des.c,1503 :: 		goto contar4;
	GOTO        ___coleta_3_contar4
;reg des.c,1504 :: 		}
L_coleta_3614:
;reg des.c,1505 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1506 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31248
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_31248:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3621
;reg des.c,1508 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1509 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1510 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1511 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1512 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1513 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1514 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31249
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31249
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31249
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31249:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3624
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31250
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31250
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31250
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31250:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3624
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31251
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31251
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31251
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31251:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3624
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31252
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31252
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31252
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31252:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3624
L__coleta_3880:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr73_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr73_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3625:
	GOTO        L_coleta_3625
L_coleta_3624:
;reg des.c,1515 :: 		goto contar4;
	GOTO        ___coleta_3_contar4
;reg des.c,1516 :: 		}
L_coleta_3621:
;reg des.c,1517 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1518 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1519 :: 		while(1);
L_coleta_3627:
	GOTO        L_coleta_3627
;reg des.c,1520 :: 		}
L_coleta_3574:
;reg des.c,1521 :: 		contar5:
___coleta_3_contar5:
;reg des.c,1522 :: 		while(pou<58)
L_coleta_3629:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31253
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_31253:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3630
;reg des.c,1524 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1525 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1526 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1527 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1528 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1529 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1530 :: 		}
	GOTO        L_coleta_3629
L_coleta_3630:
;reg des.c,1531 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31254
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_31254:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3631
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_3631:
;reg des.c,1532 :: 		while(pou<71)
L_coleta_3632:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31255
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_31255:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3633
;reg des.c,1534 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1535 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1536 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1537 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1538 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1539 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1540 :: 		}
	GOTO        L_coleta_3632
L_coleta_3633:
;reg des.c,1541 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1542 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31256
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_31256:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3635
;reg des.c,1544 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1545 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1546 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1547 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1548 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1549 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1550 :: 		goto contar5;
	GOTO        ___coleta_3_contar5
;reg des.c,1551 :: 		}
L_coleta_3635:
;reg des.c,1552 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31257
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_31257:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3636
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_3636:
;reg des.c,1553 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31258
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_31258:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3638
;reg des.c,1555 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1556 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1557 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1558 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1559 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1560 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1561 :: 		goto contar5;
	GOTO        ___coleta_3_contar5
;reg des.c,1562 :: 		}
L_coleta_3638:
;reg des.c,1563 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1564 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31259
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_31259:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3640
;reg des.c,1566 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1567 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1568 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1569 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1570 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1571 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1572 :: 		goto contar5;
	GOTO        ___coleta_3_contar5
;reg des.c,1573 :: 		}
L_coleta_3640:
;reg des.c,1574 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31260
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_31260:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3641
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_3641:
;reg des.c,1575 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31261
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_31261:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3643
;reg des.c,1577 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1578 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1579 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1580 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1581 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1582 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1583 :: 		goto contar5;
	GOTO        ___coleta_3_contar5
;reg des.c,1584 :: 		}
L_coleta_3643:
;reg des.c,1585 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1586 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31262
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_31262:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3645
;reg des.c,1588 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1589 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1590 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1591 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1592 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1593 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1594 :: 		goto contar5;
	GOTO        ___coleta_3_contar5
;reg des.c,1595 :: 		}
L_coleta_3645:
;reg des.c,1596 :: 		pom=48;poc=48;pod=48;pou=49;
	MOVLW       48
	MOVWF       _pom+0 
	MOVLW       0
	MOVWF       _pom+1 
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
	MOVLW       49
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1597 :: 		contar6:
___coleta_3_contar6:
;reg des.c,1598 :: 		while(pou<58)
L_coleta_3646:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31263
	MOVLW       58
	SUBWF       _pou+0, 0 
L__coleta_31263:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3647
;reg des.c,1600 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1601 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1602 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1603 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1604 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1605 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31264
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31264
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31264
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31264:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3650
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31265
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31265
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31265
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31265:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3650
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31266
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31266
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31266
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31266:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3650
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31267
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31267
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31267
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31267:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3650
L__coleta_3879:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr74_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr74_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3651:
	GOTO        L_coleta_3651
L_coleta_3650:
;reg des.c,1606 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1607 :: 		}
	GOTO        L_coleta_3646
L_coleta_3647:
;reg des.c,1608 :: 		if (pou==58){pou=65;}
	MOVLW       0
	XORWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31268
	MOVLW       58
	XORWF       _pou+0, 0 
L__coleta_31268:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3653
	MOVLW       65
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
L_coleta_3653:
;reg des.c,1609 :: 		while(pou<71)
L_coleta_3654:
	MOVLW       0
	SUBWF       _pou+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31269
	MOVLW       71
	SUBWF       _pou+0, 0 
L__coleta_31269:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3655
;reg des.c,1611 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1612 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1613 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1614 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1615 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1616 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31270
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31270
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31270
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31270:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3658
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31271
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31271
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31271
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31271:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3658
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31272
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31272
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31272
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31272:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3658
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31273
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31273
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31273
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31273:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3658
L__coleta_3878:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr75_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr75_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3659:
	GOTO        L_coleta_3659
L_coleta_3658:
;reg des.c,1617 :: 		pou++;
	INFSNZ      _pou+0, 1 
	INCF        _pou+1, 1 
;reg des.c,1618 :: 		}
	GOTO        L_coleta_3654
L_coleta_3655:
;reg des.c,1619 :: 		pou=48;
	MOVLW       48
	MOVWF       _pou+0 
	MOVLW       0
	MOVWF       _pou+1 
;reg des.c,1620 :: 		while(pod<57)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31274
	MOVLW       57
	SUBWF       _pod+0, 0 
L__coleta_31274:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3662
;reg des.c,1622 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1623 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1624 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1625 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1626 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1627 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1628 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31275
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31275
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31275
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31275:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3665
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31276
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31276
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31276
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31276:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3665
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31277
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31277
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31277
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31277:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3665
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31278
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31278
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31278
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31278:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3665
L__coleta_3877:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr76_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr76_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3666:
	GOTO        L_coleta_3666
L_coleta_3665:
;reg des.c,1629 :: 		goto contar6;
	GOTO        ___coleta_3_contar6
;reg des.c,1630 :: 		}
L_coleta_3662:
;reg des.c,1631 :: 		if(pod==57){pod=64;}
	MOVLW       0
	XORWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31279
	MOVLW       57
	XORWF       _pod+0, 0 
L__coleta_31279:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3668
	MOVLW       64
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
L_coleta_3668:
;reg des.c,1632 :: 		while(pod<70)
	MOVLW       0
	SUBWF       _pod+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31280
	MOVLW       70
	SUBWF       _pod+0, 0 
L__coleta_31280:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3670
;reg des.c,1634 :: 		pod++;
	INFSNZ      _pod+0, 1 
	INCF        _pod+1, 1 
;reg des.c,1635 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1636 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1637 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1638 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1639 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1640 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31281
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31281
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31281
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31281:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3673
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31282
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31282
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31282
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31282:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3673
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31283
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31283
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31283
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31283:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3673
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31284
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31284
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31284
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31284:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3673
L__coleta_3876:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr77_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr77_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3674:
	GOTO        L_coleta_3674
L_coleta_3673:
;reg des.c,1641 :: 		goto contar6;
	GOTO        ___coleta_3_contar6
;reg des.c,1642 :: 		}
L_coleta_3670:
;reg des.c,1643 :: 		pod=48;
	MOVLW       48
	MOVWF       _pod+0 
	MOVLW       0
	MOVWF       _pod+1 
;reg des.c,1644 :: 		while(poc<57)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31285
	MOVLW       57
	SUBWF       _poc+0, 0 
L__coleta_31285:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3677
;reg des.c,1646 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1647 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1648 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1649 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1650 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1651 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1652 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31286
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31286
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31286
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31286:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3680
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31287
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31287
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31287
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31287:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3680
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31288
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31288
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31288
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31288:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3680
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31289
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31289
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31289
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31289:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3680
L__coleta_3875:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr78_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr78_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3681:
	GOTO        L_coleta_3681
L_coleta_3680:
;reg des.c,1653 :: 		goto contar6;
	GOTO        ___coleta_3_contar6
;reg des.c,1654 :: 		}
L_coleta_3677:
;reg des.c,1655 :: 		if(poc==57){poc=64;}
	MOVLW       0
	XORWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31290
	MOVLW       57
	XORWF       _poc+0, 0 
L__coleta_31290:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3683
	MOVLW       64
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
L_coleta_3683:
;reg des.c,1656 :: 		while(poc<70)
	MOVLW       0
	SUBWF       _poc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31291
	MOVLW       70
	SUBWF       _poc+0, 0 
L__coleta_31291:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3685
;reg des.c,1658 :: 		poc++;
	INFSNZ      _poc+0, 1 
	INCF        _poc+1, 1 
;reg des.c,1659 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1660 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1661 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1662 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1663 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1664 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31292
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31292
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31292
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31292:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3688
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31293
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31293
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31293
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31293:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3688
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31294
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31294
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31294
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31294:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3688
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31295
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31295
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31295
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31295:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3688
L__coleta_3874:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr79_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr79_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3689:
	GOTO        L_coleta_3689
L_coleta_3688:
;reg des.c,1665 :: 		goto contar6;
	GOTO        ___coleta_3_contar6
;reg des.c,1666 :: 		}
L_coleta_3685:
;reg des.c,1667 :: 		poc=48;
	MOVLW       48
	MOVWF       _poc+0 
	MOVLW       0
	MOVWF       _poc+1 
;reg des.c,1668 :: 		while(pom<49)
	MOVLW       0
	SUBWF       _pom+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31296
	MOVLW       49
	SUBWF       _pom+0, 0 
L__coleta_31296:
	BTFSC       STATUS+0, 0 
	GOTO        L_coleta_3692
;reg des.c,1670 :: 		pom++;
	INFSNZ      _pom+0, 1 
	INCF        _pom+1, 1 
;reg des.c,1671 :: 		grava_sd();
	CALL        _grava_sd+0, 0
;reg des.c,1672 :: 		Lcd_Out(2,1,&pom);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pom+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pom+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1673 :: 		Lcd_Out(2,2,&poc);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _poc+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_poc+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1674 :: 		Lcd_Out(2,3,&pod);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pod+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pod+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1675 :: 		Lcd_Out(2,4,&pou);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _pou+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_pou+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1676 :: 		if( pom == conteudo[2] && poc == conteudo[3] && pod == conteudo[4] && pou == conteudo[5]){Lcd_Out(2,7,"FINALIZADA");acerta_cal(); LEDG=1; LEDY=0; while(1);}
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+11, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31297
	MOVF        R0, 0 
	XORWF       _conteudo+10, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31297
	MOVF        _pom+1, 0 
	XORWF       _conteudo+9, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31297
	MOVF        _conteudo+8, 0 
	XORWF       _pom+0, 0 
L__coleta_31297:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3695
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+15, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31298
	MOVF        R0, 0 
	XORWF       _conteudo+14, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31298
	MOVF        _poc+1, 0 
	XORWF       _conteudo+13, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31298
	MOVF        _conteudo+12, 0 
	XORWF       _poc+0, 0 
L__coleta_31298:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3695
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+19, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31299
	MOVF        R0, 0 
	XORWF       _conteudo+18, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31299
	MOVF        _pod+1, 0 
	XORWF       _conteudo+17, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31299
	MOVF        _conteudo+16, 0 
	XORWF       _pod+0, 0 
L__coleta_31299:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3695
	MOVLW       0
	MOVWF       R0 
	XORWF       _conteudo+23, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31300
	MOVF        R0, 0 
	XORWF       _conteudo+22, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31300
	MOVF        _pou+1, 0 
	XORWF       _conteudo+21, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coleta_31300
	MOVF        _conteudo+20, 0 
	XORWF       _pou+0, 0 
L__coleta_31300:
	BTFSS       STATUS+0, 2 
	GOTO        L_coleta_3695
L__coleta_3873:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr80_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr80_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CALL        _acerta_cal+0, 0
	BSF         PORTB+0, 0 
	BCF         PORTB+0, 1 
L_coleta_3696:
	GOTO        L_coleta_3696
L_coleta_3695:
;reg des.c,1677 :: 		goto contar6;
	GOTO        ___coleta_3_contar6
;reg des.c,1678 :: 		}
L_coleta_3692:
;reg des.c,1679 :: 		Lcd_Out(2,7,"FINALIZADA");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr81_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr81_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1680 :: 		acerta_cal();
	CALL        _acerta_cal+0, 0
;reg des.c,1681 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1682 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1683 :: 		while(1);
L_coleta_3698:
	GOTO        L_coleta_3698
;reg des.c,1684 :: 		}
L_end_coleta_3:
	RETURN      0
; end of _coleta_3

_main:

;reg des.c,1690 :: 		void main(void)
;reg des.c,1692 :: 		ADCON1 = 0x0F;                  // Configura os pinos como digitais
	MOVLW       15
	MOVWF       ADCON1+0 
;reg des.c,1693 :: 		CMCON  = 7;                     // Desliga os comparadores
	MOVLW       7
	MOVWF       CMCON+0 
;reg des.c,1694 :: 		TRISA=0b11111111;
	MOVLW       255
	MOVWF       TRISA+0 
;reg des.c,1695 :: 		PORTA=0;                        // Inicializa o PORTA em zero
	CLRF        PORTA+0 
;reg des.c,1696 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;reg des.c,1697 :: 		PORTB=0;
	CLRF        PORTB+0 
;reg des.c,1698 :: 		TRISC=0b10010000;
	MOVLW       144
	MOVWF       TRISC+0 
;reg des.c,1699 :: 		PORTC=0;
	CLRF        PORTC+0 
;reg des.c,1700 :: 		TRISD=0b00100000;
	MOVLW       32
	MOVWF       TRISD+0 
;reg des.c,1701 :: 		PORTD=0;
	CLRF        PORTD+0 
;reg des.c,1702 :: 		TRISF=0b11111110;
	MOVLW       254
	MOVWF       TRISF+0 
;reg des.c,1703 :: 		PORTF=0;
	CLRF        PORTF+0 
;reg des.c,1704 :: 		UART1_Init(115200);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       53
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;reg des.c,1706 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;reg des.c,1707 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1708 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1711 :: 		cont=0;
	CLRF        _cont+0 
	CLRF        _cont+1 
;reg des.c,1712 :: 		u=0;
	CLRF        _u+0 
	CLRF        _u+1 
	CLRF        _u+2 
	CLRF        _u+3 
;reg des.c,1713 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
	CLRF        _i+2 
	CLRF        _i+3 
;reg des.c,1715 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	CLRF        FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;reg des.c,1716 :: 		SPI_Set_Active(&SPI1_Read, &SPI1_Write);
	MOVLW       _SPI1_Read+0
	MOVWF       FARG_SPI_Set_Active_read_ptr+0 
	MOVLW       hi_addr(_SPI1_Read+0)
	MOVWF       FARG_SPI_Set_Active_read_ptr+1 
	MOVLW       FARG_SPI1_Read_buffer+0
	MOVWF       FARG_SPI_Set_Active_read_ptr+2 
	MOVLW       hi_addr(FARG_SPI1_Read_buffer+0)
	MOVWF       FARG_SPI_Set_Active_read_ptr+3 
	MOVLW       _SPI1_Write+0
	MOVWF       FARG_SPI_Set_Active_write_ptr+0 
	MOVLW       hi_addr(_SPI1_Write+0)
	MOVWF       FARG_SPI_Set_Active_write_ptr+1 
	MOVLW       FARG_SPI1_Write_data_+0
	MOVWF       FARG_SPI_Set_Active_write_ptr+2 
	MOVLW       hi_addr(FARG_SPI1_Write_data_+0)
	MOVWF       FARG_SPI_Set_Active_write_ptr+3 
	CALL        _SPI_Set_Active+0, 0
;reg des.c,1717 :: 		Lcd_Out(1,5,"MODO USB");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr82_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr82_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1719 :: 		erro:
___main_erro:
;reg des.c,1720 :: 		if (Mmc_Fat_Init()==255)
	CALL        _Mmc_Fat_Init+0, 0
	MOVF        R0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_main700
;reg des.c,1724 :: 		delay_ms(1000);
	MOVLW       32
	MOVWF       R11, 0
	MOVLW       181
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_main701:
	DECFSZ      R13, 1, 1
	BRA         L_main701
	DECFSZ      R12, 1, 1
	BRA         L_main701
	DECFSZ      R11, 1, 1
	BRA         L_main701
;reg des.c,1725 :: 		goto erro;
	GOTO        ___main_erro
;reg des.c,1726 :: 		}
L_main700:
;reg des.c,1727 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1728 :: 		Lcd_Out(1,4,"MODO COLETA");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr83_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr83_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1729 :: 		delay_ms(2000);             // pega numero da maq
	MOVLW       64
	MOVWF       R11, 0
	MOVLW       106
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main702:
	DECFSZ      R13, 1, 1
	BRA         L_main702
	DECFSZ      R12, 1, 1
	BRA         L_main702
	DECFSZ      R11, 1, 1
	BRA         L_main702
	NOP
	NOP
;reg des.c,1730 :: 		envd:
___main_envd:
;reg des.c,1731 :: 		LEDY=1;
	BSF         PORTB+0, 1 
;reg des.c,1732 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main703:
	DECFSZ      R13, 1, 1
	BRA         L_main703
	DECFSZ      R12, 1, 1
	BRA         L_main703
	NOP
;reg des.c,1733 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1734 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main704:
	DECFSZ      R13, 1, 1
	BRA         L_main704
	DECFSZ      R12, 1, 1
	BRA         L_main704
	NOP
;reg des.c,1735 :: 		Uart1_Write(0x67);
	MOVLW       103
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1736 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main705:
	DECFSZ      R13, 1, 1
	BRA         L_main705
	DECFSZ      R12, 1, 1
	BRA         L_main705
	NOP
;reg des.c,1737 :: 		Uart1_Write(0x75);
	MOVLW       117
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1738 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main706:
	DECFSZ      R13, 1, 1
	BRA         L_main706
	DECFSZ      R12, 1, 1
	BRA         L_main706
	NOP
;reg des.c,1739 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1740 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main707:
	DECFSZ      R13, 1, 1
	BRA         L_main707
	DECFSZ      R12, 1, 1
	BRA         L_main707
	NOP
;reg des.c,1741 :: 		Uart1_Write(0x6E);
	MOVLW       110
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1742 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main708:
	DECFSZ      R13, 1, 1
	BRA         L_main708
	DECFSZ      R12, 1, 1
	BRA         L_main708
	NOP
;reg des.c,1743 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1744 :: 		cont=0;
	CLRF        _cont+0 
	CLRF        _cont+1 
;reg des.c,1745 :: 		volta:
___main_volta:
;reg des.c,1746 :: 		if (UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main709
;reg des.c,1748 :: 		uart_rd = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
	MOVLW       0
	MOVWF       _uart_rd+1 
;reg des.c,1749 :: 		if (uart_rd==0x4D)
	MOVLW       0
	XORWF       _uart_rd+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1302
	MOVLW       77
	XORWF       _uart_rd+0, 0 
L__main1302:
	BTFSS       STATUS+0, 2 
	GOTO        L_main710
;reg des.c,1751 :: 		goto envd;
	GOTO        ___main_envd
;reg des.c,1752 :: 		}
L_main710:
;reg des.c,1753 :: 		conteudo[cont] = uart_rd;
	MOVF        _cont+0, 0 
	MOVWF       R0 
	MOVF        _cont+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _conteudo+0
	ADDWF       R0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_conteudo+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	MOVF        _uart_rd+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        _uart_rd+1, 0 
	MOVWF       POSTINC1+0 
	MOVLW       0
	BTFSC       _uart_rd+1, 7 
	MOVLW       255
	MOVWF       POSTINC1+0 
	MOVWF       POSTINC1+0 
;reg des.c,1754 :: 		cont++;
	INFSNZ      _cont+0, 1 
	INCF        _cont+1, 1 
;reg des.c,1755 :: 		}
L_main709:
;reg des.c,1756 :: 		if (BT1==1 && BT3==1)
	BTFSS       PORTF+0, 1 
	GOTO        L_main713
	BTFSS       PORTF+0, 3 
	GOTO        L_main713
L__main894:
;reg des.c,1757 :: 		{delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main714:
	DECFSZ      R13, 1, 1
	BRA         L_main714
	DECFSZ      R12, 1, 1
	BRA         L_main714
	NOP
;reg des.c,1758 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1759 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main715:
	DECFSZ      R13, 1, 1
	BRA         L_main715
	DECFSZ      R12, 1, 1
	BRA         L_main715
	NOP
;reg des.c,1760 :: 		Uart1_Write(0x67);
	MOVLW       103
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1761 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main716:
	DECFSZ      R13, 1, 1
	BRA         L_main716
	DECFSZ      R12, 1, 1
	BRA         L_main716
	NOP
;reg des.c,1762 :: 		Uart1_Write(0x75);
	MOVLW       117
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1763 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main717:
	DECFSZ      R13, 1, 1
	BRA         L_main717
	DECFSZ      R12, 1, 1
	BRA         L_main717
	NOP
;reg des.c,1764 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1765 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main718:
	DECFSZ      R13, 1, 1
	BRA         L_main718
	DECFSZ      R12, 1, 1
	BRA         L_main718
	NOP
;reg des.c,1766 :: 		Uart1_Write(0x6E);
	MOVLW       110
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1767 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main719:
	DECFSZ      R13, 1, 1
	BRA         L_main719
	DECFSZ      R12, 1, 1
	BRA         L_main719
	NOP
;reg des.c,1768 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1769 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_main720:
	DECFSZ      R13, 1, 1
	BRA         L_main720
	DECFSZ      R12, 1, 1
	BRA         L_main720
	DECFSZ      R11, 1, 1
	BRA         L_main720
	NOP
;reg des.c,1771 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main721:
	DECFSZ      R13, 1, 1
	BRA         L_main721
	DECFSZ      R12, 1, 1
	BRA         L_main721
	NOP
;reg des.c,1772 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1773 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main722:
	DECFSZ      R13, 1, 1
	BRA         L_main722
	DECFSZ      R12, 1, 1
	BRA         L_main722
	NOP
;reg des.c,1774 :: 		Uart1_Write(0x61);
	MOVLW       97
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1775 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main723:
	DECFSZ      R13, 1, 1
	BRA         L_main723
	DECFSZ      R12, 1, 1
	BRA         L_main723
	NOP
;reg des.c,1776 :: 		Uart1_Write(0x63);
	MOVLW       99
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1777 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main724:
	DECFSZ      R13, 1, 1
	BRA         L_main724
	DECFSZ      R12, 1, 1
	BRA         L_main724
	NOP
;reg des.c,1778 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1779 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main725:
	DECFSZ      R13, 1, 1
	BRA         L_main725
	DECFSZ      R12, 1, 1
	BRA         L_main725
	NOP
;reg des.c,1780 :: 		Uart1_Write(0x64);
	MOVLW       100
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1781 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main726:
	DECFSZ      R13, 1, 1
	BRA         L_main726
	DECFSZ      R12, 1, 1
	BRA         L_main726
	NOP
;reg des.c,1782 :: 		Uart1_Write(0x65);
	MOVLW       101
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1783 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main727:
	DECFSZ      R13, 1, 1
	BRA         L_main727
	DECFSZ      R12, 1, 1
	BRA         L_main727
	NOP
;reg des.c,1784 :: 		Uart1_Write(0x73);
	MOVLW       115
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1785 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main728:
	DECFSZ      R13, 1, 1
	BRA         L_main728
	DECFSZ      R12, 1, 1
	BRA         L_main728
	NOP
;reg des.c,1786 :: 		Uart1_Write(0x6F);
	MOVLW       111
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1787 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main729:
	DECFSZ      R13, 1, 1
	BRA         L_main729
	DECFSZ      R12, 1, 1
	BRA         L_main729
	NOP
;reg des.c,1788 :: 		Uart1_Write(0x74);
	MOVLW       116
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1789 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main730:
	DECFSZ      R13, 1, 1
	BRA         L_main730
	DECFSZ      R12, 1, 1
	BRA         L_main730
	NOP
;reg des.c,1790 :: 		Uart1_Write(0x65);
	MOVLW       101
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1791 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main731:
	DECFSZ      R13, 1, 1
	BRA         L_main731
	DECFSZ      R12, 1, 1
	BRA         L_main731
	NOP
;reg des.c,1792 :: 		Uart1_Write(0x63);
	MOVLW       99
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1793 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main732:
	DECFSZ      R13, 1, 1
	BRA         L_main732
	DECFSZ      R12, 1, 1
	BRA         L_main732
	NOP
;reg des.c,1794 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1796 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_main733:
	DECFSZ      R13, 1, 1
	BRA         L_main733
	DECFSZ      R12, 1, 1
	BRA         L_main733
	DECFSZ      R11, 1, 1
	BRA         L_main733
	NOP
;reg des.c,1797 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1798 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main734:
	DECFSZ      R13, 1, 1
	BRA         L_main734
	DECFSZ      R12, 1, 1
	BRA         L_main734
	NOP
;reg des.c,1799 :: 		Uart1_Write(0x73);
	MOVLW       115
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1800 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main735:
	DECFSZ      R13, 1, 1
	BRA         L_main735
	DECFSZ      R12, 1, 1
	BRA         L_main735
	NOP
;reg des.c,1801 :: 		Uart1_Write(0x72);
	MOVLW       114
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1802 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main736:
	DECFSZ      R13, 1, 1
	BRA         L_main736
	DECFSZ      R12, 1, 1
	BRA         L_main736
	NOP
;reg des.c,1803 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1804 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main737:
	DECFSZ      R13, 1, 1
	BRA         L_main737
	DECFSZ      R12, 1, 1
	BRA         L_main737
	NOP
;reg des.c,1805 :: 		Uart1_Write(anot);
	MOVF        _anot+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1806 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main738:
	DECFSZ      R13, 1, 1
	BRA         L_main738
	DECFSZ      R12, 1, 1
	BRA         L_main738
	NOP
;reg des.c,1807 :: 		Uart1_Write(rmes);
	MOVF        _rmes+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1808 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main739:
	DECFSZ      R13, 1, 1
	BRA         L_main739
	DECFSZ      R12, 1, 1
	BRA         L_main739
	NOP
;reg des.c,1809 :: 		Uart1_Write(rdia);
	MOVF        _rdia+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1810 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main740:
	DECFSZ      R13, 1, 1
	BRA         L_main740
	DECFSZ      R12, 1, 1
	BRA         L_main740
	NOP
;reg des.c,1811 :: 		Uart1_Write(rhora);
	MOVF        _rhora+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1812 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main741:
	DECFSZ      R13, 1, 1
	BRA         L_main741
	DECFSZ      R12, 1, 1
	BRA         L_main741
	NOP
;reg des.c,1813 :: 		Uart1_Write(rmin);
	MOVF        _rmin+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1814 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main742:
	DECFSZ      R13, 1, 1
	BRA         L_main742
	DECFSZ      R12, 1, 1
	BRA         L_main742
	NOP
;reg des.c,1815 :: 		Uart1_Write(0x00);
	CLRF        FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1816 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main743:
	DECFSZ      R13, 1, 1
	BRA         L_main743
	DECFSZ      R12, 1, 1
	BRA         L_main743
	NOP
;reg des.c,1817 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1818 :: 		LEDY=1;
	BSF         PORTB+0, 1 
;reg des.c,1819 :: 		delay_ms(1000);
	MOVLW       32
	MOVWF       R11, 0
	MOVLW       181
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_main744:
	DECFSZ      R13, 1, 1
	BRA         L_main744
	DECFSZ      R12, 1, 1
	BRA         L_main744
	DECFSZ      R11, 1, 1
	BRA         L_main744
;reg des.c,1820 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1821 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1822 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1823 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main745:
	DECFSZ      R13, 1, 1
	BRA         L_main745
	DECFSZ      R12, 1, 1
	BRA         L_main745
	NOP
;reg des.c,1824 :: 		Uart1_Write(0x61);
	MOVLW       97
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1825 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main746:
	DECFSZ      R13, 1, 1
	BRA         L_main746
	DECFSZ      R12, 1, 1
	BRA         L_main746
	NOP
;reg des.c,1826 :: 		Uart1_Write(0x74);
	MOVLW       116
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1827 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main747:
	DECFSZ      R13, 1, 1
	BRA         L_main747
	DECFSZ      R12, 1, 1
	BRA         L_main747
	NOP
;reg des.c,1828 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1829 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main748:
	DECFSZ      R13, 1, 1
	BRA         L_main748
	DECFSZ      R12, 1, 1
	BRA         L_main748
	NOP
;reg des.c,1830 :: 		Uart1_Write(0x6E);
	MOVLW       110
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1831 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main749:
	DECFSZ      R13, 1, 1
	BRA         L_main749
	DECFSZ      R12, 1, 1
	BRA         L_main749
	NOP
;reg des.c,1832 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1833 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main750:
	DECFSZ      R13, 1, 1
	BRA         L_main750
	DECFSZ      R12, 1, 1
	BRA         L_main750
	NOP
;reg des.c,1834 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1835 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1836 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1837 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1838 :: 		Lcd_Chr_Cp('F');
	MOVLW       70
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1839 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1840 :: 		Lcd_Chr_Cp('R');
	MOVLW       82
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1841 :: 		Lcd_Chr_Cp('M');
	MOVLW       77
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1842 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1843 :: 		Lcd_Chr_Cp('T');
	MOVLW       84
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1844 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1845 :: 		Lcd_Chr_Cp('N');
	MOVLW       78
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1846 :: 		Lcd_Chr_Cp('D');
	MOVLW       68
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1847 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1848 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1849 :: 		while(1)
L_main751:
;reg des.c,1851 :: 		if(UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main753
;reg des.c,1853 :: 		uart_rd = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
	MOVLW       0
	MOVWF       _uart_rd+1 
;reg des.c,1855 :: 		if (uart_rd==0x4B)
	MOVLW       0
	XORWF       _uart_rd+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1303
	MOVLW       75
	XORWF       _uart_rd+0, 0 
L__main1303:
	BTFSS       STATUS+0, 2 
	GOTO        L_main754
;reg des.c,1857 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1858 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1859 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1860 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1861 :: 		Lcd_Chr_Cp(' ');
	MOVLW       32
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1862 :: 		Lcd_Chr_Cp('F');
	MOVLW       70
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1863 :: 		Lcd_Chr_Cp('I');
	MOVLW       73
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1864 :: 		Lcd_Chr_Cp('N');
	MOVLW       78
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1865 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1866 :: 		Lcd_Chr_Cp('L');
	MOVLW       76
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1867 :: 		Lcd_Chr_Cp('I');
	MOVLW       73
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1868 :: 		Lcd_Chr_Cp('Z');
	MOVLW       90
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1869 :: 		Lcd_Chr_Cp('A');
	MOVLW       65
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1870 :: 		Lcd_Chr_Cp('D');
	MOVLW       68
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1871 :: 		Lcd_Chr_Cp('O');
	MOVLW       79
	MOVWF       FARG_Lcd_Chr_CP_out_char+0 
	CALL        _Lcd_Chr_CP+0, 0
;reg des.c,1872 :: 		while(1);
L_main755:
	GOTO        L_main755
;reg des.c,1873 :: 		}
L_main754:
;reg des.c,1874 :: 		}
L_main753:
;reg des.c,1875 :: 		}
	GOTO        L_main751
;reg des.c,1876 :: 		}
L_main713:
;reg des.c,1877 :: 		while(cont<=39)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cont+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1304
	MOVF        _cont+0, 0 
	SUBLW       39
L__main1304:
	BTFSS       STATUS+0, 0 
	GOTO        L_main758
;reg des.c,1878 :: 		{goto volta; }
	GOTO        ___main_volta
L_main758:
;reg des.c,1879 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1880 :: 		M_Open_File_append();
	CALL        _M_Open_File_Append+0, 0
;reg des.c,1881 :: 		LEDG=1;
	BSF         PORTB+0, 0 
;reg des.c,1882 :: 		LEDY=0;
	BCF         PORTB+0, 1 
;reg des.c,1883 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1884 :: 		Lcd_Out(1,1,"MAQ.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr84_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr84_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1885 :: 		Lcd_Out(1,5,maquina);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _maquina+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_maquina+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1886 :: 		pega_cal();
	CALL        _pega_cal+0, 0
;reg des.c,1887 :: 		Lcd_Out(2,1,calend);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _calend+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_calend+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1889 :: 		delay_ms(500);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       219
	MOVWF       R12, 0
	MOVLW       100
	MOVWF       R13, 0
L_main759:
	DECFSZ      R13, 1, 1
	BRA         L_main759
	DECFSZ      R12, 1, 1
	BRA         L_main759
	DECFSZ      R11, 1, 1
	BRA         L_main759
	NOP
;reg des.c,1891 :: 		LEDG=0;
	BCF         PORTB+0, 0 
;reg des.c,1892 :: 		LEDY=1;
	BSF         PORTB+0, 1 
;reg des.c,1893 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main760:
	DECFSZ      R13, 1, 1
	BRA         L_main760
	DECFSZ      R12, 1, 1
	BRA         L_main760
	NOP
;reg des.c,1894 :: 		Uart1_Write(0x24);
	MOVLW       36
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1895 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main761:
	DECFSZ      R13, 1, 1
	BRA         L_main761
	DECFSZ      R12, 1, 1
	BRA         L_main761
	NOP
;reg des.c,1896 :: 		Uart1_Write(0x61);
	MOVLW       97
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1897 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main762:
	DECFSZ      R13, 1, 1
	BRA         L_main762
	DECFSZ      R12, 1, 1
	BRA         L_main762
	NOP
;reg des.c,1898 :: 		Uart1_Write(0x63);
	MOVLW       99
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1899 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main763:
	DECFSZ      R13, 1, 1
	BRA         L_main763
	DECFSZ      R12, 1, 1
	BRA         L_main763
	NOP
;reg des.c,1900 :: 		Uart1_Write(0x20);
	MOVLW       32
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1901 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main764:
	DECFSZ      R13, 1, 1
	BRA         L_main764
	DECFSZ      R12, 1, 1
	BRA         L_main764
	NOP
;reg des.c,1902 :: 		Uart1_Write(0x64);
	MOVLW       100
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1903 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main765:
	DECFSZ      R13, 1, 1
	BRA         L_main765
	DECFSZ      R12, 1, 1
	BRA         L_main765
	NOP
;reg des.c,1904 :: 		Uart1_Write(0x65);
	MOVLW       101
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1905 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main766:
	DECFSZ      R13, 1, 1
	BRA         L_main766
	DECFSZ      R12, 1, 1
	BRA         L_main766
	NOP
;reg des.c,1906 :: 		Uart1_Write(0x73);
	MOVLW       115
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1907 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main767:
	DECFSZ      R13, 1, 1
	BRA         L_main767
	DECFSZ      R12, 1, 1
	BRA         L_main767
	NOP
;reg des.c,1908 :: 		Uart1_Write(0x6F);
	MOVLW       111
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1909 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main768:
	DECFSZ      R13, 1, 1
	BRA         L_main768
	DECFSZ      R12, 1, 1
	BRA         L_main768
	NOP
;reg des.c,1910 :: 		Uart1_Write(0x74);
	MOVLW       116
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1911 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main769:
	DECFSZ      R13, 1, 1
	BRA         L_main769
	DECFSZ      R12, 1, 1
	BRA         L_main769
	NOP
;reg des.c,1912 :: 		Uart1_Write(0x65);
	MOVLW       101
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1913 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main770:
	DECFSZ      R13, 1, 1
	BRA         L_main770
	DECFSZ      R12, 1, 1
	BRA         L_main770
	NOP
;reg des.c,1914 :: 		Uart1_Write(0x63);
	MOVLW       99
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1915 :: 		delay_ms(1);
	MOVLW       9
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main771:
	DECFSZ      R13, 1, 1
	BRA         L_main771
	DECFSZ      R12, 1, 1
	BRA         L_main771
	NOP
;reg des.c,1916 :: 		Uart1_Write(0x0D);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;reg des.c,1917 :: 		cont=0;
	CLRF        _cont+0 
	CLRF        _cont+1 
;reg des.c,1919 :: 		volta1:
___main_volta1:
;reg des.c,1920 :: 		if (UART1_Data_Ready())
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main772
;reg des.c,1922 :: 		uart_rd = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
	MOVLW       0
	MOVWF       _uart_rd+1 
;reg des.c,1923 :: 		if (uart_rd==0x4B)
	MOVLW       0
	XORWF       _uart_rd+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1305
	MOVLW       75
	XORWF       _uart_rd+0, 0 
L__main1305:
	BTFSS       STATUS+0, 2 
	GOTO        L_main773
;reg des.c,1925 :: 		opr:
___main_opr:
;reg des.c,1926 :: 		while(BT3==0)       // aguarda o botão OK
	BTFSC       PORTF+0, 3 
	GOTO        L_main775
;reg des.c,1927 :: 		{goto opr;}
	GOTO        ___main_opr
L_main775:
;reg des.c,1929 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;reg des.c,1930 :: 		Lcd_Out(2,6,"COLETA2");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr85_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr85_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1931 :: 		Lcd_Out(1,1,"COLETA1  COLETA3");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr86_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr86_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1933 :: 		sel:
___main_sel:
;reg des.c,1934 :: 		Lcd_Out(1,1,"       ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr87_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr87_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1935 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main776:
	DECFSZ      R13, 1, 1
	BRA         L_main776
	DECFSZ      R12, 1, 1
	BRA         L_main776
	DECFSZ      R11, 1, 1
	BRA         L_main776
;reg des.c,1936 :: 		Lcd_Out(1,1,"COLETA1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr88_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr88_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1937 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main777:
	DECFSZ      R13, 1, 1
	BRA         L_main777
	DECFSZ      R12, 1, 1
	BRA         L_main777
	DECFSZ      R11, 1, 1
	BRA         L_main777
;reg des.c,1939 :: 		if (BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_main780
	BTFSC       PORTF+0, 2 
	GOTO        L_main780
	BTFSS       PORTF+0, 3 
	GOTO        L_main780
L__main893:
;reg des.c,1940 :: 		{coleta_1();}
	CALL        _coleta_1+0, 0
L_main780:
;reg des.c,1941 :: 		if (BT1==1 && BT2==0 && BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_main783
	BTFSC       PORTF+0, 2 
	GOTO        L_main783
	BTFSC       PORTF+0, 3 
	GOTO        L_main783
L__main892:
;reg des.c,1942 :: 		{sel1:
___main_sel1:
;reg des.c,1943 :: 		Lcd_Out(2,6,"       ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr89_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr89_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1944 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main784:
	DECFSZ      R13, 1, 1
	BRA         L_main784
	DECFSZ      R12, 1, 1
	BRA         L_main784
	DECFSZ      R11, 1, 1
	BRA         L_main784
;reg des.c,1945 :: 		Lcd_Out(2,6,"COLETA2");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr90_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr90_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1946 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main785:
	DECFSZ      R13, 1, 1
	BRA         L_main785
	DECFSZ      R12, 1, 1
	BRA         L_main785
	DECFSZ      R11, 1, 1
	BRA         L_main785
;reg des.c,1948 :: 		if (BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_main788
	BTFSC       PORTF+0, 2 
	GOTO        L_main788
	BTFSS       PORTF+0, 3 
	GOTO        L_main788
L__main891:
;reg des.c,1949 :: 		{coleta_2();}
	CALL        _coleta_2+0, 0
L_main788:
;reg des.c,1950 :: 		if (BT1==1 && BT2==0 && BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_main791
	BTFSC       PORTF+0, 2 
	GOTO        L_main791
	BTFSC       PORTF+0, 3 
	GOTO        L_main791
L__main890:
;reg des.c,1951 :: 		{ sel2:
___main_sel2:
;reg des.c,1952 :: 		Lcd_Out(1,10,"       ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr91_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr91_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1953 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main792:
	DECFSZ      R13, 1, 1
	BRA         L_main792
	DECFSZ      R12, 1, 1
	BRA         L_main792
	DECFSZ      R11, 1, 1
	BRA         L_main792
;reg des.c,1954 :: 		Lcd_Out(1,10,"COLETA3");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr92_reg_32des+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr92_reg_32des+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;reg des.c,1955 :: 		delay_ms(250);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       238
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main793:
	DECFSZ      R13, 1, 1
	BRA         L_main793
	DECFSZ      R12, 1, 1
	BRA         L_main793
	DECFSZ      R11, 1, 1
	BRA         L_main793
;reg des.c,1957 :: 		if (BT1==0 && BT2==0 && BT3==1)
	BTFSC       PORTF+0, 1 
	GOTO        L_main796
	BTFSC       PORTF+0, 2 
	GOTO        L_main796
	BTFSS       PORTF+0, 3 
	GOTO        L_main796
L__main889:
;reg des.c,1958 :: 		{coleta_3();}
	CALL        _coleta_3+0, 0
L_main796:
;reg des.c,1959 :: 		if (BT1==1 && BT2==0 &BT3==0)
	BTFSS       PORTF+0, 1 
	GOTO        L_main799
	BTFSC       PORTF+0, 2 
	GOTO        L__main1306
	BSF         R3, 0 
	GOTO        L__main1307
L__main1306:
	BCF         R3, 0 
L__main1307:
	BTFSC       PORTF+0, 3 
	GOTO        L__main1308
	BSF         4056, 0 
	GOTO        L__main1309
L__main1308:
	BCF         4056, 0 
L__main1309:
	BTFSS       R3, 0 
	GOTO        L__main1310
	BTFSS       4056, 0 
	GOTO        L__main1310
	BSF         R3, 0 
	GOTO        L__main1311
L__main1310:
	BCF         R3, 0 
L__main1311:
	BTFSS       R3, 0 
	GOTO        L_main799
L__main888:
;reg des.c,1961 :: 		goto sel;
	GOTO        ___main_sel
;reg des.c,1962 :: 		}
L_main799:
;reg des.c,1963 :: 		goto sel2;
	GOTO        ___main_sel2
;reg des.c,1964 :: 		}
L_main791:
;reg des.c,1965 :: 		goto sel1;
	GOTO        ___main_sel1
;reg des.c,1966 :: 		}
L_main783:
;reg des.c,1967 :: 		goto sel;
	GOTO        ___main_sel
;reg des.c,1969 :: 		}
L_main773:
;reg des.c,1970 :: 		arquivo[cont] = uart_rd;
	MOVLW       _arquivo+0
	ADDWF       _cont+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_arquivo+0)
	ADDWFC      _cont+1, 0 
	MOVWF       FSR1H 
	MOVF        _uart_rd+0, 0 
	MOVWF       POSTINC1+0 
;reg des.c,1971 :: 		cont++;
	INFSNZ      _cont+0, 1 
	INCF        _cont+1, 1 
;reg des.c,1972 :: 		}
L_main772:
;reg des.c,1973 :: 		while(cont<=11)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cont+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main1312
	MOVF        _cont+0, 0 
	SUBLW       11
L__main1312:
	BTFSS       STATUS+0, 0 
	GOTO        L_main801
;reg des.c,1974 :: 		{goto volta1; }
	GOTO        ___main_volta1
L_main801:
;reg des.c,1975 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
