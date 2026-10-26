0x6a72c PUSH            {R4-R6,LR}
0x6a72e SUB             SP, SP, #0x1C
0x6a730 ADD             R4, SP, #0x1C+var_14
0x6a732 MOVS            R5, R0
0x6a734 MOVS            R6, R1
0x6a736 MOVS            R0, R4
0x6a738 MOVS            R1, R2
0x6a73a MOVS            R2, R3
0x6a73c LDR             R3, =unk_14032CC
0x6a73e BL              sub_6BB36
0x6a742 MOVS            R3, #0
0x6a744 STR             R3, [SP,#0x1C+var_1C]
0x6a746 LDR             R3, =0xFFFFFF00
0x6a748 MOVS            R0, R5
0x6a74a STR             R3, [SP,#0x1C+var_18]
0x6a74c MOVS            R1, R6
0x6a74e MOVS            R2, R4
0x6a750 LDR             R3, [SP,#0x1C+arg_0]
0x6a752 LDR             R4, =0x72941
0x6a754 BL              sub_6BB38
0x6a758 ADD             SP, SP, #0x1C
0x6a75a POP             {R4-R6}
0x6a75c POP             {R0}
0x6a75e BX              R0