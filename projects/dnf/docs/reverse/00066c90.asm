0x66c90 PUSH            {R4-R6,LR}
0x66c92 LDR             R2, =dword_1535ADC
0x66c94 MOVS            R3, R2
0x66c96 ADDS            R3, #0xBC
0x66c98 LDR             R5, [R3]
0x66c9a ADDS            R3, #4
0x66c9c LDR             R6, [R3]
0x66c9e ADDS            R2, #0xC4
0x66ca0 ADDS            R3, #8
0x66ca2 LDR             R4, [R3]
0x66ca4 LDR             R3, [R2]
0x66ca6 LDR             R1, [R0]
0x66ca8 ADDS            R3, R5, R3
0x66caa CMP             R1, R3
0x66cac BGE             loc_66CCE
0x66cae LDR             R2, [R0,#4]
0x66cb0 ADDS            R3, R6, R4
0x66cb2 CMP             R2, R3
0x66cb4 BGE             loc_66CCE
0x66cb6 LDR             R3, [R0,#8]
0x66cb8 ADDS            R3, R1, R3
0x66cba CMP             R3, R5
0x66cbc BLE             loc_66CCE
0x66cbe LDR             R3, [R0,#0xC]
0x66cc0 ADDS            R3, R2, R3
0x66cc2 MOVS            R1, #0
0x66cc4 CMP             R3, R6
0x66cc6 BGT             loc_66CCA
0x66cc8 MOVS            R1, #1
0x66cca MOVS            R0, R1
0x66ccc B               loc_66CD0
0x66cce MOVS            R0, #1
0x66cd0 POP             {R4-R6}
0x66cd2 POP             {R1}
0x66cd4 BX              R1