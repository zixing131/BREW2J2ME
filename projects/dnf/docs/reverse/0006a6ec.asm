0x6a6ec PUSH            {R4-R7,LR}
0x6a6ee SUB             SP, SP, #0x1C
0x6a6f0 ADD             R4, SP, #0x1C+var_14
0x6a6f2 MOVS            R5, R0
0x6a6f4 MOVS            R6, R1
0x6a6f6 MOVS            R7, R3
0x6a6f8 LDR             R1, =(aSSDD_0+0xC); "%d"
0x6a6fa MOVS            R0, R4
0x6a6fc LDR             R3, =unk_14032CC
0x6a6fe BL              sub_6BB36
0x6a702 LDR             R3, [SP,#0x1C+arg_0]
0x6a704 STR             R3, [SP,#0x1C+var_1C]
0x6a706 LDR             R3, [SP,#0x1C+arg_4]
0x6a708 MOVS            R0, R5
0x6a70a STR             R3, [SP,#0x1C+var_18]
0x6a70c MOVS            R1, R6
0x6a70e MOVS            R2, R4
0x6a710 MOVS            R3, R7
0x6a712 LDR             R4, =0x72941
0x6a714 BL              sub_6BB38
0x6a718 ADD             SP, SP, #0x1C
0x6a71a POP             {R4-R7}
0x6a71c POP             {R0}
0x6a71e BX              R0