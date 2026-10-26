0x3a264 PUSH            {R4-R6,LR}
0x3a266 LSLS            R0, R0, #0x10
0x3a268 LSRS            R0, R0, #0x10
0x3a26a LDR             R5, =dword_1501D90
0x3a26c LSLS            R3, R0, #6
0x3a26e SUBS            R3, R3, R0
0x3a270 LSLS            R6, R3, #2
0x3a272 LDR             R4, =word_150C9D0
0x3a274 LDR             R3, [R5]
0x3a276 LDR             R0, [R3,#0x10]
0x3a278 LDR             R3, [R4,#(dword_150C9D8 - 0x150C9D0)]
0x3a27a ADDS            R3, R3, R6
0x3a27c ADDS            R3, #0xD8
0x3a27e LDR             R1, [R3]
0x3a280 LDR             R3, =0x7CF21
0x3a282 BL              sub_66A76
0x3a286 LDR             R3, [R4,#(dword_150C9D8 - 0x150C9D0)]
0x3a288 ADDS            R2, R6, R3
0x3a28a MOVS            R3, R2
0x3a28c ADDS            R3, #0xDC
0x3a28e LDR             R1, [R3]
0x3a290 LDR             R5, [R5]
0x3a292 CMP             R1, #0
0x3a294 BEQ             loc_3A2A4
0x3a296 LDR             R2, [R5,#0x10]
0x3a298 LDR             R3, [R2,#0x18]
0x3a29a ADDS            R3, R3, R1
0x3a29c STR             R3, [R2,#0x18]
0x3a29e BL              sub_2E7A0
0x3a2a2 B               loc_3A2B2
0x3a2a4 LDR             R1, [R5,#0x10]
0x3a2a6 MOVS            R3, R2
0x3a2a8 ADDS            R3, #0xE0
0x3a2aa LDRB            R2, [R3]
0x3a2ac LDR             R3, [R1,#0x20]
0x3a2ae ADDS            R3, R3, R2
0x3a2b0 STR             R3, [R1,#0x20]
0x3a2b2 LDR             R4, =unk_1534754
0x3a2b4 MOVS            R5, #0
0x3a2b6 LDR             R3, =word_150C9D0
0x3a2b8 LDR             R2, [R3,#(dword_150C9D8 - 0x150C9D0)]
0x3a2ba LSLS            R3, R5, #2
0x3a2bc ADDS            R3, R3, R2
0x3a2be ADDS            R3, R3, R6
0x3a2c0 ADDS            R3, #0xE4
0x3a2c2 LDRB            R3, [R3]
0x3a2c4 LSLS            R3, R3, #0x18
0x3a2c6 ASRS            R3, R3, #0x18
0x3a2c8 ADDS            R3, #1
0x3a2ca BEQ             loc_3A2E0
0x3a2cc MOVS            R0, R4
0x3a2ce LDR             R3, =0x80711
0x3a2d0 BL              sub_66A76
0x3a2d4 CMP             R0, #0
0x3a2d6 BEQ             loc_3A2E0
0x3a2d8 MOVS            R0, R4
0x3a2da LDR             R3, =0x81329
0x3a2dc BL              sub_66A76
0x3a2e0 ADDS            R5, #1
0x3a2e2 ADDS            R4, #0x3C ; '<'
0x3a2e4 CMP             R5, #2
0x3a2e6 BNE             loc_3A2B6
0x3a2e8 LDR             R3, =byte_15340F4
0x3a2ea LDRB            R3, [R3]
0x3a2ec CMP             R3, #0
0x3a2ee BEQ             loc_3A322
0x3a2f0 LDR             R5, =byte_150C6BC
0x3a2f2 LDRB            R3, [R5,#(byte_150C6CB - 0x150C6BC)]
0x3a2f4 LSLS            R3, R3, #0x18
0x3a2f6 ASRS            R3, R3, #0x18
0x3a2f8 ADDS            R2, R3, #1
0x3a2fa BEQ             loc_3A322
0x3a2fc LSLS            R0, R3, #4
0x3a2fe SUBS            R0, R0, R3
0x3a300 LDR             R4, =unk_1535928
0x3a302 LSLS            R0, R0, #2
0x3a304 ADDS            R0, R0, R4
0x3a306 LDR             R3, =0x80711
0x3a308 BL              sub_66A76
0x3a30c CMP             R0, #0
0x3a30e BEQ             loc_3A322
0x3a310 MOVS            R3, #(byte_150C6CB - 0x150C6BC)
0x3a312 LDRSB           R3, [R5,R3]; byte_150C6CB
0x3a314 LSLS            R0, R3, #4
0x3a316 SUBS            R0, R0, R3
0x3a318 LSLS            R0, R0, #2
0x3a31a ADDS            R0, R0, R4
0x3a31c LDR             R3, =0x81329
0x3a31e BL              sub_66A76
0x3a322 POP             {R4-R6}
0x3a324 POP             {R0}
0x3a326 BX              R0