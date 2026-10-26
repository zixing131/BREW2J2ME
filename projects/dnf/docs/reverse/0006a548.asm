0x6a548 PUSH            {R4-R7,LR}
0x6a54a SUB             SP, SP, #0x24
0x6a54c MOVS            R7, R0
0x6a54e STR             R1, [SP,#0x24+var_18]
0x6a550 STR             R3, [SP,#0x24+var_1C]
0x6a552 MOVS            R0, R2
0x6a554 LDR             R3, =0x8C065
0x6a556 MOVS            R1, #0xA
0x6a558 MOVS            R4, R2
0x6a55a BL              sub_6BB36
0x6a55e LDR             R3, =0x8C1C1
0x6a560 MOVS            R5, R0
0x6a562 MOVS            R1, #0xA
0x6a564 MOVS            R0, R4
0x6a566 BL              sub_6BB36
0x6a56a LDR             R6, =aDD_2; "%d.%d%%"
0x6a56c MOVS            R2, R5
0x6a56e MOVS            R1, R6
0x6a570 MOVS            R3, R0
0x6a572 LDR             R4, =unk_14032CC
0x6a574 ADD             R0, SP, #0x24+var_14
0x6a576 BL              sub_6BB38
0x6a57a LDR             R3, [SP,#0x24+arg_0]
0x6a57c STR             R3, [SP,#0x24+var_24]
0x6a57e LDR             R3, [SP,#0x24+arg_4]
0x6a580 MOVS            R0, R7
0x6a582 STR             R3, [SP,#0x24+var_20]
0x6a584 LDR             R1, [SP,#0x24+var_18]
0x6a586 ADD             R2, SP, #0x24+var_14
0x6a588 LDR             R3, [SP,#0x24+var_1C]
0x6a58a LDR             R4, =0x72941
0x6a58c BL              sub_6BB38
0x6a590 ADD             SP, SP, #0x24 ; '$'
0x6a592 POP             {R4-R7}
0x6a594 POP             {R0}
0x6a596 BX              R0