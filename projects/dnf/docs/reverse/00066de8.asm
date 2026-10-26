0x66de8 PUSH            {R4,LR}
0x66dea CMP             R0, #0
0x66dec BEQ             loc_66E12
0x66dee LDR             R3, =dword_1535ADC
0x66df0 MOVS            R4, R3
0x66df2 ADDS            R4, #0xFC
0x66df4 LDR             R2, [R4,#(dword_1535C3C - 0x1535BD8)]
0x66df6 CMP             R2, #0
0x66df8 BGE             loc_66DFC
0x66dfa NEGS            R2, R2
0x66dfc LDR             R3, [R3,#(dword_1535AF4 - 0x1535ADC)]
0x66dfe SUBS            R3, #1
0x66e00 CMP             R2, R3
0x66e02 BGE             loc_66E12
0x66e04 MOVS            R3, #0
0x66e06 STR             R3, [R4,#(dword_1535C38 - 0x1535BD8)]
0x66e08 BL              sub_66D8C
0x66e0c STR             R0, [R4,#(dword_1535C3C - 0x1535BD8)]
0x66e0e MOVS            R0, #1
0x66e10 B               loc_66E14
0x66e12 MOVS            R0, #0
0x66e14 POP             {R4}
0x66e16 POP             {R1}
0x66e18 BX              R1