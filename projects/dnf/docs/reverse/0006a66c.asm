0x6a66c PUSH            {R4-R7,LR}
0x6a66e SUB             SP, SP, #0x30
0x6a670 ADD             R5, SP, #0x30+var_28
0x6a672 MOVS            R6, R0
0x6a674 MOVS            R7, R1
0x6a676 MOVS            R0, R5
0x6a678 LDR             R1, =aSD; "%s %d"
0x6a67a LDR             R4, =unk_14032CC
0x6a67c BL              sub_6BB38
0x6a680 LDR             R3, [SP,#0x30+arg_4]
0x6a682 STR             R3, [SP,#0x30+var_30]
0x6a684 LDR             R3, [SP,#0x30+arg_8]
0x6a686 MOVS            R0, R6
0x6a688 STR             R3, [SP,#0x30+var_2C]
0x6a68a MOVS            R1, R7
0x6a68c MOVS            R2, R5
0x6a68e LDR             R3, [SP,#0x30+arg_0]
0x6a690 LDR             R4, =0x72941
0x6a692 BL              sub_6BB38
0x6a696 ADD             SP, SP, #0x30 ; '0'
0x6a698 POP             {R4-R7}
0x6a69a POP             {R0}
0x6a69c BX              R0