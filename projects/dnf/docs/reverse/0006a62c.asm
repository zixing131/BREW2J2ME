0x6a62c PUSH            {R4-R7,LR}
0x6a62e SUB             SP, SP, #0x6C
0x6a630 ADD             R5, SP, #0x6C+var_64
0x6a632 MOVS            R6, R0
0x6a634 MOVS            R7, R1
0x6a636 MOVS            R0, R5
0x6a638 LDR             R1, =aSS; "%s %s"
0x6a63a LDR             R4, =unk_14032CC
0x6a63c BL              sub_6BB38
0x6a640 LDR             R3, [SP,#0x6C+arg_4]
0x6a642 STR             R3, [SP,#0x6C+var_6C]
0x6a644 LDR             R3, [SP,#0x6C+arg_8]
0x6a646 MOVS            R0, R6
0x6a648 STR             R3, [SP,#0x6C+var_68]
0x6a64a MOVS            R1, R7
0x6a64c MOVS            R2, R5
0x6a64e LDR             R3, [SP,#0x6C+arg_0]
0x6a650 LDR             R4, =0x72941
0x6a652 BL              sub_6BB38
0x6a656 ADD             SP, SP, #0x6C ; 'l'
0x6a658 POP             {R4-R7}
0x6a65a POP             {R0}
0x6a65c BX              R0