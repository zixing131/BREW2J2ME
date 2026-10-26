0x7271c PUSH            {R4,R5,LR}
0x7271e LDR             R2, =dword_1536C28
0x72720 MOVS            R3, #2
0x72722 SUB             SP, SP, #4
0x72724 LDRB            R5, [R0]
0x72726 LDRB            R4, [R0,#1]
0x72728 MOVS            R1, R0
0x7272a STR             R3, [R2]
0x7272c MOV             R0, SP
0x7272e MOVS            R2, #2
0x72730 LDR             R3, =(sub_6BC30+1)
0x72732 BL              sub_75958
0x72736 CMP             R0, #0
0x72738 BGT             loc_72742
0x7273a LSLS            R3, R5, #8
0x7273c MOVS            R0, R3
0x7273e ORRS            R0, R4
0x72740 B               loc_72744
0x72742 LDR             R0, [SP,#4+var_4]
0x72744 ADD             SP, SP, #4
0x72746 POP             {R4,R5}
0x72748 POP             {R1}
0x7274a BX              R1