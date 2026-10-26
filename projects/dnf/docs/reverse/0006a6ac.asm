0x6a6ac PUSH            {R4-R7,LR}
0x6a6ae SUB             SP, SP, #0x30
0x6a6b0 ADD             R5, SP, #0x30+var_28
0x6a6b2 MOVS            R6, R0
0x6a6b4 MOVS            R7, R1
0x6a6b6 MOVS            R0, R5
0x6a6b8 LDR             R1, =aDS_1; "%d %s"
0x6a6ba LDR             R4, =unk_14032CC
0x6a6bc BL              sub_6BB38
0x6a6c0 LDR             R3, [SP,#0x30+arg_4]
0x6a6c2 STR             R3, [SP,#0x30+var_30]
0x6a6c4 LDR             R3, [SP,#0x30+arg_8]
0x6a6c6 MOVS            R0, R6
0x6a6c8 STR             R3, [SP,#0x30+var_2C]
0x6a6ca MOVS            R1, R7
0x6a6cc MOVS            R2, R5
0x6a6ce LDR             R3, [SP,#0x30+arg_0]
0x6a6d0 LDR             R4, =0x72941
0x6a6d2 BL              sub_6BB38
0x6a6d6 ADD             SP, SP, #0x30 ; '0'
0x6a6d8 POP             {R4-R7}
0x6a6da POP             {R0}
0x6a6dc BX              R0