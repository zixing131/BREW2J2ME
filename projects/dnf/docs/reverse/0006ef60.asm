0x6ef60 PUSH            {R4,LR}
0x6ef62 LDR             R3, =dword_1536348
0x6ef64 LSLS            R0, R0, #2
0x6ef66 LDR             R0, [R0,R3]
0x6ef68 MOVS            R1, R0
0x6ef6a ADDS            R1, #0x30 ; '0'
0x6ef6c MOVS            R4, #0
0x6ef6e B               loc_6EF90
0x6ef70 LDRB            R3, [R1]
0x6ef72 CMP             R3, #0x13
0x6ef74 BNE             loc_6EF7E
0x6ef76 MOVS            R3, #0x250
0x6ef7a MOVS            R2, #1
0x6ef7c STRB            R2, [R0,R3]
0x6ef7e LDRB            R3, [R1]
0x6ef80 CMP             R3, #0x14
0x6ef82 BNE             loc_6EF8C
0x6ef84 MOVS            R3, #0x250
0x6ef88 MOVS            R2, #0
0x6ef8a STRB            R2, [R0,R3]
0x6ef8c ADDS            R4, #1
0x6ef8e ADDS            R1, #0x34 ; '4'
0x6ef90 LDRH            R3, [R0,#0x2A]
0x6ef92 CMP             R4, R3
0x6ef94 BLT             loc_6EF70
0x6ef96 POP             {R4}
0x6ef98 POP             {R0}
0x6ef9a BX              R0