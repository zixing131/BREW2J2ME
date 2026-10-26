0x6a5ac PUSH            {R4-R7,LR}
0x6a5ae SUB             SP, SP, #0x1C
0x6a5b0 ADD             R4, SP, #0x1C+var_14
0x6a5b2 MOVS            R5, R0
0x6a5b4 MOVS            R6, R1
0x6a5b6 MOVS            R7, R3
0x6a5b8 LDR             R1, =dword_8FDEC
0x6a5ba MOVS            R0, R4
0x6a5bc LDR             R3, =unk_14032CC
0x6a5be BL              sub_6BB36
0x6a5c2 LDR             R3, [SP,#0x1C+arg_0]
0x6a5c4 STR             R3, [SP,#0x1C+var_1C]
0x6a5c6 LDR             R3, [SP,#0x1C+arg_4]
0x6a5c8 MOVS            R0, R5
0x6a5ca STR             R3, [SP,#0x1C+var_18]
0x6a5cc MOVS            R1, R6
0x6a5ce MOVS            R2, R4
0x6a5d0 MOVS            R3, R7
0x6a5d2 LDR             R4, =0x72941
0x6a5d4 BL              sub_6BB38
0x6a5d8 ADD             SP, SP, #0x1C
0x6a5da POP             {R4-R7}
0x6a5dc POP             {R0}
0x6a5de BX              R0