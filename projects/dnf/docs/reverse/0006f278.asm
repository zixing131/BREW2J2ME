0x6f278 PUSH            {R4-R7,LR}
0x6f27a LDR             R3, =dword_1536348
0x6f27c LSLS            R0, R0, #2
0x6f27e LDR             R7, [R0,R3]
0x6f280 LDR             R3, =0x26D
0x6f282 LDRB            R0, [R7,R3]
0x6f284 LSLS            R3, R0, #2
0x6f286 LDR             R2, =byte_1536DA4
0x6f288 ADDS            R3, R3, R0
0x6f28a LSLS            R3, R3, #2
0x6f28c LDRB            R3, [R3,R2]
0x6f28e SUB             SP, SP, #0x28
0x6f290 CMP             R3, #0
0x6f292 BNE             loc_6F296
0x6f294 B               loc_6F416
0x6f296 LDR             R3, =0x24A
0x6f298 LDRH            R4, [R7,R3]
0x6f29a CMP             R4, #0
0x6f29c BNE             loc_6F2A6
0x6f29e MOVS            R1, #0
0x6f2a0 STR             R1, [SP,#0x28+var_8]
0x6f2a2 STR             R1, [SP,#0x28+var_4]
0x6f2a4 B               loc_6F2AC
0x6f2a6 MOVS            R2, #3
0x6f2a8 STR             R4, [SP,#0x28+var_4]
0x6f2aa STR             R2, [SP,#0x28+var_8]
0x6f2ac LDRH            R1, [R7,#0x18]
0x6f2ae LDR             R3, =0x1770
0x6f2b0 CMP             R1, R3
0x6f2b2 BLS             loc_6F31A
0x6f2b4 LDR             R4, =0xFFFFE0C0
0x6f2b6 ADDS            R3, R1, R4
0x6f2b8 LSLS            R3, R3, #0x10
0x6f2ba LDR             R2, =0x3E7
0x6f2bc LSRS            R3, R3, #0x10
0x6f2be CMP             R3, R2
0x6f2c0 BHI             loc_6F2E8
0x6f2c2 LSLS            R3, R0, #2
0x6f2c4 LDR             R2, =byte_1536DA4
0x6f2c6 ADDS            R3, R3, R0
0x6f2c8 LDR             R1, =word_1534730
0x6f2ca LSLS            R3, R3, #2
0x6f2cc ADDS            R3, R3, R2
0x6f2ce LDRH            R2, [R3,#8]
0x6f2d0 LDRH            R1, [R1]
0x6f2d2 ADDS            R1, R1, R2
0x6f2d4 LDR             R2, =word_15346FC
0x6f2d6 LDRH            R3, [R3,#0xA]
0x6f2d8 LDRH            R2, [R2]
0x6f2da ADDS            R2, R2, R3
0x6f2dc LSLS            R1, R1, #0x10
0x6f2de LSLS            R2, R2, #0x10
0x6f2e0 ASRS            R1, R1, #0x10
0x6f2e2 ASRS            R2, R2, #0x10
0x6f2e4 MOVS            R0, #1
0x6f2e6 B               loc_6F33E
0x6f2e8 LDR             R6, =0xFFFFD8F0
0x6f2ea ADDS            R3, R1, R6
0x6f2ec LSLS            R3, R3, #0x10
0x6f2ee LDR             R2, =0x270F
0x6f2f0 LSRS            R3, R3, #0x10
0x6f2f2 CMP             R3, R2
0x6f2f4 BLS             loc_6F31A
0x6f2f6 LDR             R2, =0x5BF0
0x6f2f8 ADDS            R3, R1, R2
0x6f2fa LSLS            R3, R3, #0x10
0x6f2fc LSRS            R3, R3, #0x10
0x6f2fe CMP             R3, #0x17
0x6f300 BLS             loc_6F31A
0x6f302 LDR             R3, =0xA42D
0x6f304 CMP             R1, R3
0x6f306 BEQ             loc_6F31A
0x6f308 ADDS            R3, #3
0x6f30a CMP             R1, R3
0x6f30c BEQ             loc_6F31A
0x6f30e LDR             R4, =0xFFFFB17D
0x6f310 ADDS            R3, R1, R4
0x6f312 LSLS            R3, R3, #0x10
0x6f314 LSRS            R3, R3, #0x10
0x6f316 CMP             R3, #2
0x6f318 BHI             loc_6F344
0x6f31a LSLS            R3, R0, #2
0x6f31c LDR             R2, =byte_1536DA4
0x6f31e ADDS            R3, R3, R0
0x6f320 LDR             R1, =word_1534730
0x6f322 LSLS            R3, R3, #2
0x6f324 ADDS            R3, R3, R2
0x6f326 LDRH            R2, [R3,#8]
0x6f328 LDRH            R1, [R1]
0x6f32a ADDS            R1, R1, R2
0x6f32c LDR             R2, =word_15346FC
0x6f32e LDRH            R3, [R3,#0xA]
0x6f330 LDRH            R2, [R2]
0x6f332 ADDS            R2, R2, R3
0x6f334 LSLS            R1, R1, #0x10
0x6f336 LSLS            R2, R2, #0x10
0x6f338 ASRS            R1, R1, #0x10
0x6f33a ASRS            R2, R2, #0x10
0x6f33c MOVS            R0, #2
0x6f33e LDR             R3, =(sub_31704+1)
0x6f340 BL              sub_71334
0x6f344 LDRH            R5, [R7,#0x18]
0x6f346 LDR             R3, =0xA029
0x6f348 CMP             R5, R3
0x6f34a BNE             loc_6F38C
0x6f34c LDR             R3, =0x26D
0x6f34e LDRB            R2, [R7,R3]
0x6f350 LDR             R3, =word_1534730
0x6f352 MOVS            R6, #(word_1534730 - 0x1534730)
0x6f354 LDRSH           R0, [R3,R6]; word_1534730
0x6f356 LSLS            R3, R2, #2
0x6f358 LDR             R1, =byte_1536DA4
0x6f35a ADDS            R3, R3, R2
0x6f35c LSLS            R3, R3, #2
0x6f35e ADDS            R3, R3, R1
0x6f360 LDRH            R2, [R3,#8]
0x6f362 LDR             R6, [SP,#0x28+var_8]
0x6f364 ADDS            R0, R0, R2
0x6f366 LDR             R2, =word_15346FC
0x6f368 MOVS            R4, #(word_15346FC - 0x15346FC)
0x6f36a LDRSH           R1, [R2,R4]; word_15346FC
0x6f36c LDRH            R2, [R3,#0xA]
0x6f36e LDRB            R4, [R3,#0xC]
0x6f370 STR             R6, [SP,#0x28+var_20]
0x6f372 LDR             R6, [SP,#0x28+var_4]
0x6f374 STR             R4, [SP,#0x28+var_28]
0x6f376 LSLS            R4, R6, #0x18
0x6f378 LSRS            R4, R4, #0x18
0x6f37a ADDS            R1, R1, R2
0x6f37c STR             R4, [SP,#0x28+var_18]
0x6f37e LDR             R2, =dword_1501C30
0x6f380 LDR             R4, =(sub_6B350+1)
0x6f382 MOVS            R5, #0
0x6f384 STR             R5, [SP,#0x28+var_24]
0x6f386 STR             R5, [SP,#0x28+var_1C]
0x6f388 STR             R5, [SP,#0x28+var_14]
0x6f38a B               loc_6F412
0x6f38c LDR             R2, [SP,#0x28+var_8]
0x6f38e LDR             R3, [SP,#0x28+var_4]
0x6f390 LSLS            R2, R2, #0x18
0x6f392 MOV             R12, R2
0x6f394 LDR             R2, =(sub_6B350+1)
0x6f396 LSLS            R3, R3, #0x18
0x6f398 LDR             R4, =byte_1536DA4
0x6f39a LDR             R1, =word_1534730
0x6f39c LDR             R6, =word_15346FC
0x6f39e STR             R3, [SP,#0x28+var_C]
0x6f3a0 STR             R2, [SP,#0x28+var_10]
0x6f3a2 CMP             R5, #0
0x6f3a4 BNE             loc_6F3D0
0x6f3a6 LDR             R3, =0x26D
0x6f3a8 LDRB            R2, [R7,R3]
0x6f3aa MOVS            R3, #(word_1534730 - 0x1534730)
0x6f3ac LDRSH           R0, [R1,R3]; word_1534730
0x6f3ae LSLS            R3, R2, #2
0x6f3b0 ADDS            R3, R3, R2
0x6f3b2 LSLS            R3, R3, #2
0x6f3b4 ADDS            R3, R3, R4
0x6f3b6 LDRH            R2, [R3,#8]
0x6f3b8 MOVS            R4, #(word_15346FC - 0x15346FC)
0x6f3ba LDRSH           R1, [R6,R4]; word_15346FC
0x6f3bc ADDS            R0, R0, R2
0x6f3be LDRH            R2, [R3,#0xA]
0x6f3c0 ADDS            R1, R1, R2
0x6f3c2 LDR             R2, =dword_1501D90
0x6f3c4 LDR             R2, [R2]
0x6f3c6 LDR             R2, [R2,#0x10]
0x6f3c8 LDRB            R4, [R3,#0xC]
0x6f3ca ADDS            R2, #0x44 ; 'D'
0x6f3cc STR             R4, [SP,#0x28+var_28]
0x6f3ce B               loc_6F3FE
0x6f3d0 LDR             R3, =0x26D
0x6f3d2 LDRB            R2, [R7,R3]
0x6f3d4 MOVS            R3, #(word_1534730 - 0x1534730)
0x6f3d6 LDRSH           R0, [R1,R3]; word_1534730
0x6f3d8 LSLS            R3, R2, #2
0x6f3da ADDS            R3, R3, R2
0x6f3dc LSLS            R3, R3, #2
0x6f3de ADDS            R3, R3, R4
0x6f3e0 LDRH            R2, [R3,#8]
0x6f3e2 MOVS            R4, #(word_15346FC - 0x15346FC)
0x6f3e4 LDRSH           R1, [R6,R4]; word_15346FC
0x6f3e6 ADDS            R0, R0, R2
0x6f3e8 LDRB            R4, [R3,#0x10]
0x6f3ea LDRH            R2, [R3,#0xA]
0x6f3ec ADDS            R1, R1, R2
0x6f3ee LSLS            R2, R4, #3
0x6f3f0 ADDS            R2, R2, R4
0x6f3f2 LDR             R4, =unk_153718C
0x6f3f4 LSLS            R2, R2, #2
0x6f3f6 ADDS            R2, R2, R4
0x6f3f8 LDRB            R4, [R3,#0xC]
0x6f3fa STR             R4, [SP,#0x28+var_28]
0x6f3fc MOVS            R5, #0
0x6f3fe MOV             R6, R12
0x6f400 LSRS            R4, R6, #0x18
0x6f402 LDR             R6, [SP,#0x28+var_C]
0x6f404 STR             R4, [SP,#0x28+var_20]
0x6f406 LSRS            R4, R6, #0x18
0x6f408 STR             R4, [SP,#0x28+var_18]
0x6f40a STR             R5, [SP,#0x28+var_24]
0x6f40c STR             R5, [SP,#0x28+var_1C]
0x6f40e STR             R5, [SP,#0x28+var_14]
0x6f410 LDR             R4, [SP,#0x28+var_10]
0x6f412 BL              sub_71336
0x6f416 LDR             R3, =0x252
0x6f418 LDRB            R3, [R7,R3]
0x6f41a CMP             R3, #1
0x6f41c BNE             loc_6F42A
0x6f41e LDR             R2, =byte_1536760
0x6f420 LDRB            R3, [R2]
0x6f422 CMP             R3, #1
0x6f424 BNE             loc_6F42A
0x6f426 MOVS            R3, #4
0x6f428 STRB            R3, [R2]
0x6f42a ADD             SP, SP, #0x28 ; '('
0x6f42c POP             {R4-R7}
0x6f42e POP             {R0}
0x6f430 BX              R0