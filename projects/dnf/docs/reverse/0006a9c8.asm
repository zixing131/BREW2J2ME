0x6a9c8 PUSH            {R4,LR}
0x6a9ca SUB             SP, SP, #0x10
0x6a9cc STR             R0, [SP,#0x10+var_8]
0x6a9ce STR             R2, [SP,#0x10+var_4]
0x6a9d0 STR             R1, [SP,#0x10+var_10]
0x6a9d2 STR             R2, [SP,#0x10+var_C]
0x6a9d4 ADD             R1, SP, #0x10+var_8
0x6a9d6 MOV             R2, SP
0x6a9d8 MOVS            R0, #0
0x6a9da LDR             R4, =(sub_67918+1)
0x6a9dc BL              sub_6BB38
0x6a9e0 ADD             SP, SP, #0x10
0x6a9e2 POP             {R4}
0x6a9e4 POP             {R0}
0x6a9e6 BX              R0