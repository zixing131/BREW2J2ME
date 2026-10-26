0x66e20 PUSH            {R4,LR}
0x66e22 CMP             R0, #0
0x66e24 BEQ             loc_66E52
0x66e26 LDR             R3, =dword_1535ADC
0x66e28 MOVS            R4, R3
0x66e2a ADDS            R4, #0xFC
0x66e2c LDR             R2, [R4,#(dword_1535C38 - 0x1535BD8)]
0x66e2e CMP             R2, #0
0x66e30 BGE             loc_66E34
0x66e32 NEGS            R2, R2
0x66e34 LDR             R3, [R3,#(dword_1535AF4 - 0x1535ADC)]
0x66e36 CMP             R2, R3
0x66e38 BGT             loc_66E52
0x66e3a BL              sub_66D8C
0x66e3e MOVS            R2, #0
0x66e40 STR             R0, [R4,#(dword_1535C3C - 0x1535BD8)]
0x66e42 CMP             R0, #0
0x66e44 BNE             loc_66E48
0x66e46 MOVS            R2, #1
0x66e48 MOVS            R3, #1
0x66e4a EORS            R3, R2
0x66e4c LSLS            R3, R3, #0x18
0x66e4e LSRS            R0, R3, #0x18
0x66e50 B               loc_66E54
0x66e52 MOVS            R0, #0
0x66e54 POP             {R4}
0x66e56 POP             {R1}
0x66e58 BX              R1