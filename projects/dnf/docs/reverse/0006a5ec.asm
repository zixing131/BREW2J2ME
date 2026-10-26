0x6a5ec PUSH            {R4-R7,LR}
0x6a5ee SUB             SP, SP, #0x1C
0x6a5f0 ADD             R4, SP, #0x1C+var_14
0x6a5f2 MOVS            R5, R0
0x6a5f4 MOVS            R6, R1
0x6a5f6 MOVS            R7, R3
0x6a5f8 LDR             R1, =dword_97D8C
0x6a5fa MOVS            R0, R4
0x6a5fc LDR             R3, =unk_14032CC
0x6a5fe BL              sub_6BB36
0x6a602 LDR             R3, [SP,#0x1C+arg_0]
0x6a604 STR             R3, [SP,#0x1C+var_1C]
0x6a606 LDR             R3, [SP,#0x1C+arg_4]
0x6a608 MOVS            R0, R5
0x6a60a STR             R3, [SP,#0x1C+var_18]
0x6a60c MOVS            R1, R6
0x6a60e MOVS            R2, R4
0x6a610 MOVS            R3, R7
0x6a612 LDR             R4, =0x72941
0x6a614 BL              sub_6BB38
0x6a618 ADD             SP, SP, #0x1C
0x6a61a POP             {R4-R7}
0x6a61c POP             {R0}
0x6a61e BX              R0