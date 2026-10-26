0x6a878 PUSH            {LR}
0x6a87a SUB             SP, SP, #0x10
0x6a87c STR             R0, [SP,#0x10+var_10]
0x6a87e STR             R1, [SP,#0x10+var_C]
0x6a880 STR             R2, [SP,#0x10+var_8]
0x6a882 STR             R3, [SP,#0x10+var_4]
0x6a884 MOV             R1, SP
0x6a886 LDR             R2, [SP,#0x10+arg_0]
0x6a888 MOVS            R0, #0
0x6a88a LDR             R3, =(sub_67934+1)
0x6a88c BL              sub_6BB36
0x6a890 ADD             SP, SP, #0x10
0x6a892 POP             {R0}
0x6a894 BX              R0