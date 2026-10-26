0x1fa10 PUSH            {R4-R7,LR}
0x1fa12 LSLS            R0, R0, #0x10
0x1fa14 LSRS            R0, R0, #0x10
0x1fa16 LSLS            R3, R0, #6
0x1fa18 SUBS            R3, R3, R0
0x1fa1a LSLS            R7, R3, #2
0x1fa1c MOVS            R6, #0
0x1fa1e LDR             R5, =word_150C9D0
0x1fa20 LDR             R3, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x1fa22 LSLS            R4, R6, #3
0x1fa24 ADDS            R3, R7, R3
0x1fa26 ADDS            R3, R4, R3
0x1fa28 MOVS            R1, R3
0x1fa2a ADDS            R1, #0xA8
0x1fa2c LDRB            R3, [R1]
0x1fa2e CMP             R3, #1
0x1fa30 BNE             loc_1FA40
0x1fa32 LDRH            R3, [R1,#2]
0x1fa34 LDR             R2, =byte_150C7A8
0x1fa36 LDRSB           R2, [R2,R3]
0x1fa38 LDRB            R3, [R1,#1]
0x1fa3a CMP             R2, R3
0x1fa3c BEQ             loc_1FA76
0x1fa3e B               loc_1FA80
0x1fa40 CMP             R3, #2
0x1fa42 BNE             loc_1FA56
0x1fa44 LDR             R3, =dword_1501D90
0x1fa46 LDR             R3, [R3]
0x1fa48 LDR             R2, [R3,#0x10]
0x1fa4a LDR             R3, =0x19C5
0x1fa4c LDRB            R2, [R2,R3]
0x1fa4e LDRB            R3, [R1,#1]
0x1fa50 CMP             R2, R3
0x1fa52 BCS             loc_1FA76
0x1fa54 B               loc_1FA80
0x1fa56 CMP             R3, #3
0x1fa58 BNE             loc_1FA76
0x1fa5a LDRB            R0, [R1,#1]
0x1fa5c LDR             R3, =0x807F1
0x1fa5e LDRB            R1, [R1,#2]
0x1fa60 BL              sub_22468
0x1fa64 LDR             R3, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x1fa66 ADDS            R3, R4, R3
0x1fa68 ADDS            R3, R3, R7
0x1fa6a ADDS            R3, #0xAC
0x1fa6c LSLS            R0, R0, #0x10
0x1fa6e LDRB            R3, [R3]
0x1fa70 ASRS            R0, R0, #0x10
0x1fa72 CMP             R0, R3
0x1fa74 BLT             loc_1FA80
0x1fa76 ADDS            R6, #1
0x1fa78 CMP             R6, #3
0x1fa7a BNE             loc_1FA1E
0x1fa7c MOVS            R0, #1
0x1fa7e B               loc_1FA82
0x1fa80 MOVS            R0, #0
0x1fa82 POP             {R4-R7}
0x1fa84 POP             {R1}
0x1fa86 BX              R1