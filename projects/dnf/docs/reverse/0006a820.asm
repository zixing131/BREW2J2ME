0x6a820 PUSH            {LR}
0x6a822 SUB             SP, SP, #0x10
0x6a824 MOVS            R3, #0
0x6a826 STR             R3, [SP,#0x10+var_10]
0x6a828 STR             R3, [SP,#0x10+var_C]
0x6a82a LDR             R3, =dword_1501C04
0x6a82c LDR             R3, [R3]
0x6a82e STR             R3, [SP,#0x10+var_8]
0x6a830 LDR             R3, =dword_1501BF0
0x6a832 LDR             R3, [R3]
0x6a834 MOVS            R2, R0
0x6a836 STR             R3, [SP,#0x10+var_4]
0x6a838 MOV             R1, SP
0x6a83a MOVS            R0, #0
0x6a83c LDR             R3, =(sub_670A0+1)
0x6a83e BL              sub_6BB36
0x6a842 ADD             SP, SP, #0x10
0x6a844 POP             {R0}
0x6a846 BX              R0