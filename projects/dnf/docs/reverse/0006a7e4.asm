0x6a7e4 PUSH            {R4-R7,LR}
0x6a7e6 SUB             SP, SP, #0x18
0x6a7e8 ADD             R4, SP, #0x18+var_14
0x6a7ea MOVS            R5, R0
0x6a7ec MOVS            R6, R1
0x6a7ee MOVS            R7, R3
0x6a7f0 LDR             R1, =(aSSDD_0+0xC); "%d"
0x6a7f2 MOVS            R0, R4
0x6a7f4 LDR             R3, =unk_14032CC
0x6a7f6 BL              sub_6BB36
0x6a7fa LDR             R3, [SP,#0x18+arg_0]
0x6a7fc MOVS            R0, R5
0x6a7fe STR             R3, [SP,#0x18+var_18]
0x6a800 MOVS            R1, R6
0x6a802 MOVS            R2, R4
0x6a804 MOVS            R3, R7
0x6a806 LDR             R4, =0x72819
0x6a808 BL              sub_6BB38
0x6a80c ADD             SP, SP, #0x18
0x6a80e POP             {R4-R7}
0x6a810 POP             {R0}
0x6a812 BX              R0