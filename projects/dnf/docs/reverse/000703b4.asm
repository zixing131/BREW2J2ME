0x703b4 PUSH            {LR}
0x703b6 LDR             R3, =dword_1536348
0x703b8 LSLS            R2, R0, #2
0x703ba LDR             R2, [R2,R3]
0x703bc LDRH            R3, [R2,#0x20]
0x703be CMP             R3, #0
0x703c0 BEQ             loc_703CE
0x703c2 LDRH            R3, [R2,#0x2C]
0x703c4 CMP             R3, R1
0x703c6 BNE             loc_703CE
0x703c8 LDRH            R1, [R2,#0x2E]
0x703ca BL              sub_7035C
0x703ce POP             {R0}
0x703d0 BX              R0