0x6a76c PUSH            {R4-R7,LR}
0x6a76e SUB             SP, SP, #0x2C
0x6a770 ADD             R5, SP, #0x2C+var_28
0x6a772 MOVS            R6, R0
0x6a774 MOVS            R7, R1
0x6a776 MOVS            R0, R5
0x6a778 LDR             R1, =aSD_0; "%s%d"
0x6a77a LDR             R4, =unk_14032CC
0x6a77c BL              sub_6BB38
0x6a780 LDR             R3, [SP,#0x2C+arg_4]
0x6a782 MOVS            R0, R6
0x6a784 STR             R3, [SP,#0x2C+var_2C]
0x6a786 MOVS            R1, R7
0x6a788 MOVS            R2, R5
0x6a78a LDR             R3, [SP,#0x2C+arg_0]
0x6a78c LDR             R4, =0x72819
0x6a78e BL              sub_6BB38
0x6a792 ADD             SP, SP, #0x2C ; ','
0x6a794 POP             {R4-R7}
0x6a796 POP             {R0}
0x6a798 BX              R0