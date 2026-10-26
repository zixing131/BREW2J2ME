0x6a7a8 PUSH            {R4-R7,LR}
0x6a7aa SUB             SP, SP, #0x2C
0x6a7ac ADD             R5, SP, #0x2C+var_28
0x6a7ae MOVS            R6, R0
0x6a7b0 MOVS            R7, R1
0x6a7b2 MOVS            R0, R5
0x6a7b4 LDR             R1, =aDS_2; "%d%s"
0x6a7b6 LDR             R4, =unk_14032CC
0x6a7b8 BL              sub_6BB38
0x6a7bc LDR             R3, [SP,#0x2C+arg_4]
0x6a7be MOVS            R0, R6
0x6a7c0 STR             R3, [SP,#0x2C+var_2C]
0x6a7c2 MOVS            R1, R7
0x6a7c4 MOVS            R2, R5
0x6a7c6 LDR             R3, [SP,#0x2C+arg_0]
0x6a7c8 LDR             R4, =0x72819
0x6a7ca BL              sub_6BB38
0x6a7ce ADD             SP, SP, #0x2C ; ','
0x6a7d0 POP             {R4-R7}
0x6a7d2 POP             {R0}
0x6a7d4 BX              R0