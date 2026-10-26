0x6a97c PUSH            {R4,LR}
0x6a97e SUB             SP, SP, #0x10
0x6a980 STR             R0, [SP,#0x10+var_8]
0x6a982 STR             R2, [SP,#0x10+var_4]
0x6a984 STR             R1, [SP,#0x10+var_10]
0x6a986 STR             R3, [SP,#0x10+var_C]
0x6a988 ADD             R1, SP, #0x10+var_8
0x6a98a MOV             R2, SP
0x6a98c LDR             R3, [SP,#0x10+arg_0]
0x6a98e MOVS            R0, #0
0x6a990 LDR             R4, =(sub_67918+1)
0x6a992 BL              sub_6BB38
0x6a996 ADD             SP, SP, #0x10
0x6a998 POP             {R4}
0x6a99a POP             {R0}
0x6a99c BX              R0