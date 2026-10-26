0x6e284 PUSH            {R4-R7,LR}
0x6e286 MOVS            R3, #0x32C
0x6e28a LDR             R2, [R0,R3]
0x6e28c MOVS            R4, R0
0x6e28e CMP             R2, #0
0x6e290 BEQ             loc_6E2D4
0x6e292 MOVS            R3, #0x334
0x6e296 MOVS            R6, #0
0x6e298 MOVS            R5, #0
0x6e29a STR             R2, [R0,R3]
0x6e29c B               loc_6E2B0
0x6e29e MOVS            R3, #0x334
0x6e2a2 LDR             R0, [R4,R3]
0x6e2a4 LDR             R3, =(sub_67BC8+1)
0x6e2a6 ADDS            R0, R5, R0
0x6e2a8 BL              sub_6EACE
0x6e2ac ADDS            R6, #1
0x6e2ae ADDS            R5, #0x18
0x6e2b0 LDRB            R3, [R4,#1]
0x6e2b2 CMP             R6, R3
0x6e2b4 BLT             loc_6E29E
0x6e2b6 MOVS            R5, #0x32C
0x6e2ba LDR             R0, [R4,R5]
0x6e2bc CMP             R0, #0
0x6e2be BEQ             loc_6E2CA
0x6e2c0 LDR             R3, =unk_14032FC
0x6e2c2 BL              sub_6EACE
0x6e2c6 MOVS            R3, #0
0x6e2c8 STR             R3, [R4,R5]
0x6e2ca MOVS            R3, #0xCD
0x6e2cc MOVS            R2, #0
0x6e2ce LSLS            R3, R3, #2
0x6e2d0 STR             R2, [R4,R5]
0x6e2d2 STR             R2, [R4,R3]
0x6e2d4 MOVS            R3, #0x328
0x6e2d8 LDR             R2, [R4,R3]
0x6e2da CMP             R2, #0
0x6e2dc BEQ             loc_6E334
0x6e2de MOVS            R3, #0x330
0x6e2e2 MOVS            R7, #0
0x6e2e4 MOVS            R6, #0
0x6e2e6 STR             R2, [R4,R3]
0x6e2e8 B               loc_6E30E
0x6e2ea MOVS            R5, #0x330
0x6e2ee LDR             R3, [R4,R5]
0x6e2f0 ADDS            R3, R6, R3
0x6e2f2 LDR             R0, [R3,#4]
0x6e2f4 CMP             R0, #0
0x6e2f6 BEQ             loc_6E30A
0x6e2f8 STR             R0, [R3,#8]
0x6e2fa LDR             R3, =unk_14032FC
0x6e2fc BL              sub_6EACE
0x6e300 LDR             R3, [R4,R5]
0x6e302 MOVS            R2, #0
0x6e304 ADDS            R3, R3, R6
0x6e306 STR             R2, [R3,#4]
0x6e308 STR             R2, [R3,#8]
0x6e30a ADDS            R7, #1
0x6e30c ADDS            R6, #0xC
0x6e30e LDR             R3, =0x326
0x6e310 LDRB            R3, [R4,R3]
0x6e312 CMP             R7, R3
0x6e314 BLT             loc_6E2EA
0x6e316 MOVS            R5, #0x328
0x6e31a LDR             R0, [R4,R5]
0x6e31c CMP             R0, #0
0x6e31e BEQ             loc_6E32A
0x6e320 LDR             R3, =unk_14032FC
0x6e322 BL              sub_6EACE
0x6e326 MOVS            R3, #0
0x6e328 STR             R3, [R4,R5]
0x6e32a MOVS            R3, #0xCC
0x6e32c MOVS            R2, #0
0x6e32e LSLS            R3, R3, #2
0x6e330 STR             R2, [R4,R5]
0x6e332 STR             R2, [R4,R3]
0x6e334 MOVS            R0, #0
0x6e336 POP             {R4-R7}
0x6e338 POP             {R1}
0x6e33a BX              R1