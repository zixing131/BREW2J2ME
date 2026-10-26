0x6a854 PUSH            {LR}
0x6a856 SUB             SP, SP, #0x10
0x6a858 STR             R0, [SP,#0x10+var_10]
0x6a85a STR             R1, [SP,#0x10+var_C]
0x6a85c STR             R2, [SP,#0x10+var_8]
0x6a85e STR             R3, [SP,#0x10+var_4]
0x6a860 MOV             R1, SP
0x6a862 LDR             R2, [SP,#0x10+arg_0]
0x6a864 MOVS            R0, #0
0x6a866 LDR             R3, =0x670A1
0x6a868 BL              sub_6BB36
0x6a86c ADD             SP, SP, #0x10
0x6a86e POP             {R0}
0x6a870 BX              R0