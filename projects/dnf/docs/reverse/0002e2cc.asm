0x2e2cc PUSH            {R4,R5,LR}
0x2e2ce LDR             R4, =dword_1501D90
0x2e2d0 MOVS            R0, #0
0x2e2d2 MOVS            R1, #0
0x2e2d4 LDR             R3, [R4]
0x2e2d6 LDR             R3, [R3,#0x10]
0x2e2d8 MOVS            R5, #0x92
0x2e2da ADDS            R2, R1, R3
0x2e2dc LSLS            R5, R5, #2
0x2e2de ADDS            R3, R2, R5
0x2e2e0 LDRB            R3, [R3,#3]
0x2e2e2 CMP             R3, #0x28 ; '('
0x2e2e4 BEQ             loc_2E314
0x2e2e6 CMP             R3, #0x33 ; '3'
0x2e2e8 BEQ             loc_2E314
0x2e2ea CMP             R3, #0x3B ; ';'
0x2e2ec BEQ             loc_2E314
0x2e2ee CMP             R3, #0x3C ; '<'
0x2e2f0 BEQ             loc_2E314
0x2e2f2 CMP             R3, #0x3E ; '>'
0x2e2f4 BEQ             loc_2E314
0x2e2f6 CMP             R3, #0x41 ; 'A'
0x2e2f8 BEQ             loc_2E314
0x2e2fa CMP             R3, #0x51 ; 'Q'
0x2e2fc BEQ             loc_2E314
0x2e2fe CMP             R3, #0x52 ; 'R'
0x2e300 BEQ             loc_2E314
0x2e302 MOVS            R3, R2
0x2e304 ADDS            R3, #0x74 ; 't'
0x2e306 MOVS            R2, #0
0x2e308 STRB            R2, [R3]
0x2e30a LDR             R3, [R4]
0x2e30c LDR             R3, [R3,#0x10]
0x2e30e ADDS            R3, R1, R3
0x2e310 ADDS            R3, R3, R5
0x2e312 STRB            R2, [R3]
0x2e314 ADDS            R0, #1
0x2e316 ADDS            R1, #0x24 ; '$'
0x2e318 CMP             R0, #0xD
0x2e31a BNE             loc_2E2D4
0x2e31c LDR             R3, =byte_153AD9C
0x2e31e LDR             R1, =byte_1537CD9
0x2e320 LDRB            R0, [R3]
0x2e322 MOVS            R2, #0
0x2e324 B               loc_2E330
0x2e326 MOVS            R3, #0
0x2e328 STRB            R3, [R1,R2]
0x2e32a ADDS            R3, R2, #1
0x2e32c LSLS            R3, R3, #0x18
0x2e32e LSRS            R2, R3, #0x18
0x2e330 CMP             R2, R0
0x2e332 BNE             loc_2E326
0x2e334 POP             {R4,R5}
0x2e336 POP             {R0}
0x2e338 BX              R0