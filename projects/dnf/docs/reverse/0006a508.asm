0x6a508 PUSH            {R4-R7,LR}
0x6a50a SUB             SP, SP, #0x1C
0x6a50c ADD             R4, SP, #0x1C+var_14
0x6a50e MOVS            R5, R0
0x6a510 MOVS            R6, R1
0x6a512 MOVS            R7, R3
0x6a514 LDR             R1, =aD_0; "%d%%"
0x6a516 MOVS            R0, R4
0x6a518 LDR             R3, =unk_14032CC
0x6a51a BL              sub_6BB36
0x6a51e LDR             R3, [SP,#0x1C+arg_0]
0x6a520 STR             R3, [SP,#0x1C+var_1C]
0x6a522 LDR             R3, [SP,#0x1C+arg_4]
0x6a524 MOVS            R0, R5
0x6a526 STR             R3, [SP,#0x1C+var_18]
0x6a528 MOVS            R1, R6
0x6a52a MOVS            R2, R4
0x6a52c MOVS            R3, R7
0x6a52e LDR             R4, =0x72941
0x6a530 BL              sub_6BB38
0x6a534 ADD             SP, SP, #0x1C
0x6a536 POP             {R4-R7}
0x6a538 POP             {R0}
0x6a53a BX              R0