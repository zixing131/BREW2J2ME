0x6a9a4 PUSH            {R4,LR}
0x6a9a6 SUB             SP, SP, #0x10
0x6a9a8 STR             R0, [SP,#0x10+var_8]
0x6a9aa STR             R1, [SP,#0x10+var_4]
0x6a9ac STR             R0, [SP,#0x10+var_10]
0x6a9ae STR             R2, [SP,#0x10+var_C]
0x6a9b0 ADD             R1, SP, #0x10+var_8
0x6a9b2 MOV             R2, SP
0x6a9b4 MOVS            R0, #0
0x6a9b6 LDR             R4, =(sub_67918+1)
0x6a9b8 BL              sub_6BB38
0x6a9bc ADD             SP, SP, #0x10
0x6a9be POP             {R4}
0x6a9c0 POP             {R0}
0x6a9c2 BX              R0