0x6bb40 PUSH            {R4,LR}
0x6bb42 MOVS            R4, R0
0x6bb44 LDR             R0, =dword_1535DD4
0x6bb46 LDR             R1, [R0]
0x6bb48 CMP             R1, #9
0x6bb4a BGT             loc_6BB56
0x6bb4c LDR             R3, =dword_1535DD8
0x6bb4e LSLS            R2, R1, #2
0x6bb50 STR             R4, [R2,R3]
0x6bb52 ADDS            R3, R1, #1
0x6bb54 STR             R3, [R0]
0x6bb56 POP             {R4}
0x6bb58 POP             {R0}
0x6bb5a BX              R0