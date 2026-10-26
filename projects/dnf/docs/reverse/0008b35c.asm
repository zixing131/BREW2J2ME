0x8b35c PUSH            {R4-R6,LR}
0x8b35e MOVS            R3, R0
0x8b360 ADDS            R3, #0x8C
0x8b362 LDR             R3, [R3]
0x8b364 MOVS            R5, R0
0x8b366 CMP             R3, #0
0x8b368 BEQ             loc_8B3A8
0x8b36a MOVS            R4, #0
0x8b36c MOVS            R6, R5
0x8b36e ADDS            R6, #0x90
0x8b370 LDR             R3, [R6]
0x8b372 LDR             R0, [R3,R4]
0x8b374 CMP             R0, #0
0x8b376 BEQ             loc_8B388
0x8b378 LDR             R3, =unk_14032FC
0x8b37a BL              sub_8BDE8
0x8b37e LDR             R3, [R6]
0x8b380 MOVS            R2, #0
0x8b382 ADDS            R3, R3, R4
0x8b384 STR             R2, [R3]
0x8b386 STR             R2, [R3,#4]
0x8b388 ADDS            R4, #8
0x8b38a CMP             R4, #0x20 ; ' '
0x8b38c BNE             loc_8B36C
0x8b38e MOVS            R4, R5
0x8b390 ADDS            R4, #0x8C
0x8b392 LDR             R0, [R4]
0x8b394 CMP             R0, #0
0x8b396 BEQ             loc_8B3A2
0x8b398 LDR             R3, =unk_14032FC
0x8b39a BL              sub_8BDE8
0x8b39e MOVS            R3, #0
0x8b3a0 STR             R3, [R4]
0x8b3a2 MOVS            R3, #0
0x8b3a4 STR             R3, [R4]
0x8b3a6 STR             R3, [R6]
0x8b3a8 MOVS            R3, R5
0x8b3aa ADDS            R3, #0x94
0x8b3ac LDR             R3, [R3]
0x8b3ae CMP             R3, #0
0x8b3b0 BEQ             loc_8B3F0
0x8b3b2 MOVS            R4, #0
0x8b3b4 MOVS            R6, R5
0x8b3b6 ADDS            R6, #0x98
0x8b3b8 LDR             R3, [R6]
0x8b3ba LDR             R0, [R3,R4]
0x8b3bc CMP             R0, #0
0x8b3be BEQ             loc_8B3D0
0x8b3c0 LDR             R3, =unk_14032FC
0x8b3c2 BL              sub_8BDE8
0x8b3c6 LDR             R3, [R6]
0x8b3c8 MOVS            R2, #0
0x8b3ca ADDS            R3, R3, R4
0x8b3cc STR             R2, [R3]
0x8b3ce STR             R2, [R3,#4]
0x8b3d0 ADDS            R4, #8
0x8b3d2 CMP             R4, #0x20 ; ' '
0x8b3d4 BNE             loc_8B3B4
0x8b3d6 MOVS            R4, R5
0x8b3d8 ADDS            R4, #0x94
0x8b3da LDR             R0, [R4]
0x8b3dc CMP             R0, #0
0x8b3de BEQ             loc_8B3EA
0x8b3e0 LDR             R3, =unk_14032FC
0x8b3e2 BL              sub_8BDE8
0x8b3e6 MOVS            R3, #0
0x8b3e8 STR             R3, [R4]
0x8b3ea MOVS            R3, #0
0x8b3ec STR             R3, [R4]
0x8b3ee STR             R3, [R6]
0x8b3f0 MOVS            R4, R5
0x8b3f2 ADDS            R4, #0xA0
0x8b3f4 LDR             R0, [R4]
0x8b3f6 CMP             R0, #0
0x8b3f8 BEQ             loc_8B40A
0x8b3fa LDR             R3, =unk_14032FC
0x8b3fc BL              sub_8BDE8
0x8b400 MOVS            R3, R5
0x8b402 MOVS            R2, #0
0x8b404 ADDS            R3, #0xA4
0x8b406 STR             R2, [R4]
0x8b408 STR             R2, [R3]
0x8b40a MOVS            R2, R5
0x8b40c ADDS            R2, #0x9C
0x8b40e MOVS            R3, #0
0x8b410 STRB            R3, [R2]
0x8b412 POP             {R4-R6}
0x8b414 POP             {R0}
0x8b416 BX              R0