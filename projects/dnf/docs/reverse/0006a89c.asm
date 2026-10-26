0x6a89c PUSH            {R4,LR}
0x6a89e SUB             SP, SP, #0x10
0x6a8a0 STR             R0, [SP,#0x10+var_10]
0x6a8a2 STR             R1, [SP,#0x10+var_C]
0x6a8a4 STR             R2, [SP,#0x10+var_8]
0x6a8a6 STR             R3, [SP,#0x10+var_4]
0x6a8a8 MOV             R1, SP
0x6a8aa LDR             R2, [SP,#0x10+arg_0]
0x6a8ac LDR             R3, [SP,#0x10+arg_4]
0x6a8ae MOVS            R0, #0
0x6a8b0 LDR             R4, =0x6796D
0x6a8b2 BL              sub_6BB38
0x6a8b6 ADD             SP, SP, #0x10
0x6a8b8 POP             {R4}
0x6a8ba POP             {R0}
0x6a8bc BX              R0