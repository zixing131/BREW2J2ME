0x6b350 PUSH            {R4-R7,LR}
0x6b352 SUB             SP, SP, #0x44
0x6b354 STR             R1, [SP,#0x44+var_1C]
0x6b356 LDR             R4, [SP,#0x44+arg_10]
0x6b358 LDR             R1, [SP,#0x44+arg_8]
0x6b35a STR             R0, [SP,#0x44+var_18]
0x6b35c MOVS            R7, R2
0x6b35e MOVS            R6, R3
0x6b360 LDR             R2, [SP,#0x44+arg_4]
0x6b362 LDR             R3, [SP,#0x44+arg_0]
0x6b364 LDR             R0, [SP,#0x44+arg_C]
0x6b366 LDR             R5, [SP,#0x44+arg_14]
0x6b368 LSLS            R1, R1, #0x18
0x6b36a LSLS            R4, R4, #0x18
0x6b36c LSRS            R1, R1, #0x18
0x6b36e LSRS            R4, R4, #0x18
0x6b370 LSLS            R3, R3, #0x18
0x6b372 LSLS            R2, R2, #0x18
0x6b374 LSLS            R0, R0, #0x18
0x6b376 LSLS            R5, R5, #0x18
0x6b378 LSRS            R3, R3, #0x18
0x6b37a LSRS            R2, R2, #0x18
0x6b37c STR             R1, [SP,#0x44+var_28]
0x6b37e LSRS            R0, R0, #0x18
0x6b380 STR             R4, [SP,#0x44+var_30]
0x6b382 LSRS            R5, R5, #0x18
0x6b384 MOVS            R1, #0
0x6b386 MOVS            R4, #0
0x6b388 STR             R3, [SP,#0x44+var_20]
0x6b38a STR             R2, [SP,#0x44+var_24]
0x6b38c STR             R0, [SP,#0x44+var_2C]
0x6b38e STR             R5, [SP,#0x44+var_34]
0x6b390 STR             R1, [SP,#0x44+var_14]
0x6b392 B               loc_6B458
0x6b394 LDR             R3, [R2,#0x40]
0x6b396 ADDS            R3, R4, R3
0x6b398 LDRB            R2, [R3]
0x6b39a STR             R2, [SP,#0x44+var_C]
0x6b39c LDRH            R2, [R3,#4]
0x6b39e LDRH            R5, [R3,#2]
0x6b3a0 STR             R2, [SP,#0x44+var_10]
0x6b3a2 LDR             R2, [SP,#0x44+var_28]
0x6b3a4 MOV             R12, R5
0x6b3a6 ADD             R5, SP, #0x44+var_8
0x6b3a8 CMP             R2, #0
0x6b3aa BEQ             loc_6B3BC
0x6b3ac STRB            R2, [R5]
0x6b3ae MOV             R1, SP
0x6b3b0 LDRB            R1, [R1,#0x44+var_2C]
0x6b3b2 STRB            R1, [R5,#1]
0x6b3b4 MOV             R2, SP
0x6b3b6 LDRB            R2, [R2,#0x44+var_30]
0x6b3b8 STRB            R2, [R5,#2]
0x6b3ba B               loc_6B3D8
0x6b3bc LDRB            R3, [R3,#6]
0x6b3be STRB            R3, [R5]
0x6b3c0 LDR             R3, [R0,#0x20]
0x6b3c2 ADDS            R3, R1, R3
0x6b3c4 LDR             R3, [R3,#0x40]
0x6b3c6 ADDS            R3, R3, R4
0x6b3c8 LDRB            R3, [R3,#7]
0x6b3ca STRB            R3, [R5,#1]
0x6b3cc LDR             R3, [R0,#0x20]
0x6b3ce ADDS            R3, R1, R3
0x6b3d0 LDR             R3, [R3,#0x40]
0x6b3d2 ADDS            R3, R3, R4
0x6b3d4 LDRB            R3, [R3,#8]
0x6b3d6 STRB            R3, [R5,#2]
0x6b3d8 LDR             R3, [SP,#0x44+var_34]
0x6b3da ADD             R5, SP, #0x44+var_8
0x6b3dc CMP             R3, #0
0x6b3de BNE             loc_6B3FE
0x6b3e0 LDRB            R2, [R6,#4]
0x6b3e2 LSLS            R3, R2, #3
0x6b3e4 LDR             R1, [R7,#0x18]
0x6b3e6 ADDS            R3, R3, R2
0x6b3e8 LSLS            R3, R3, #2
0x6b3ea LDRB            R2, [R6,#5]
0x6b3ec ADDS            R3, R3, R1
0x6b3ee LDR             R1, [R3,#0x20]
0x6b3f0 LSLS            R3, R2, #4
0x6b3f2 ADDS            R3, R3, R2
0x6b3f4 LSLS            R3, R3, #2
0x6b3f6 ADDS            R3, R3, R1
0x6b3f8 LDR             R3, [R3,#0x40]
0x6b3fa ADDS            R3, R3, R4
0x6b3fc LDRB            R3, [R3,#9]
0x6b3fe STRB            R3, [R5,#3]
0x6b400 LDR             R2, [SP,#0x44+var_24]
0x6b402 ADD             R5, SP, #0x44+var_8
0x6b404 CMP             R2, #0
0x6b406 BEQ             loc_6B40C
0x6b408 STRB            R2, [R5,#4]
0x6b40a B               loc_6B42C
0x6b40c LDRB            R2, [R6,#4]
0x6b40e LSLS            R3, R2, #3
0x6b410 LDR             R1, [R7,#0x18]
0x6b412 ADDS            R3, R3, R2
0x6b414 LSLS            R3, R3, #2
0x6b416 LDRB            R2, [R6,#5]
0x6b418 ADDS            R3, R3, R1
0x6b41a LDR             R1, [R3,#0x20]
0x6b41c LSLS            R3, R2, #4
0x6b41e ADDS            R3, R3, R2
0x6b420 LSLS            R3, R3, #2
0x6b422 ADDS            R3, R3, R1
0x6b424 LDR             R3, [R3,#0x40]
0x6b426 ADDS            R3, R3, R4
0x6b428 LDRB            R3, [R3,#0xA]
0x6b42a STRB            R3, [R5,#4]
0x6b42c LDR             R1, [SP,#0x44+var_10]
0x6b42e LSLS            R3, R1, #0x10
0x6b430 LDR             R1, [R7,#0x1C]
0x6b432 STR             R1, [SP,#0x44+var_44]
0x6b434 LDR             R1, [SP,#0x44+var_20]
0x6b436 MOV             R5, R12
0x6b438 LSLS            R2, R5, #0x10
0x6b43a STR             R1, [SP,#0x44+var_3C]
0x6b43c LDR             R5, [SP,#0x44+var_C]
0x6b43e ADD             R1, SP, #0x44+var_8
0x6b440 ASRS            R2, R2, #0x10
0x6b442 STR             R1, [SP,#0x44+var_38]
0x6b444 ASRS            R3, R3, #0x10
0x6b446 LDR             R0, [SP,#0x44+var_18]
0x6b448 LDR             R1, [SP,#0x44+var_1C]
0x6b44a STR             R5, [SP,#0x44+var_40]
0x6b44c BL              sub_6B158
0x6b450 LDR             R2, [SP,#0x44+var_14]
0x6b452 ADDS            R2, #1
0x6b454 STR             R2, [SP,#0x44+var_14]
0x6b456 ADDS            R4, #0xC
0x6b458 LDRB            R2, [R6,#4]
0x6b45a LSLS            R3, R2, #3
0x6b45c LDR             R1, [R7,#0x18]
0x6b45e ADDS            R3, R3, R2
0x6b460 LDRB            R2, [R6,#5]
0x6b462 LSLS            R3, R3, #2
0x6b464 ADDS            R0, R3, R1
0x6b466 LSLS            R3, R2, #4
0x6b468 ADDS            R3, R3, R2
0x6b46a LSLS            R1, R3, #2
0x6b46c LDR             R3, [R0,#0x20]
0x6b46e ADDS            R2, R1, R3
0x6b470 LDRB            R3, [R2,#1]
0x6b472 LDR             R5, [SP,#0x44+var_14]
0x6b474 CMP             R5, R3
0x6b476 BLT             loc_6B394
0x6b478 ADD             SP, SP, #0x44 ; 'D'
0x6b47a POP             {R4-R7}
0x6b47c POP             {R0}
0x6b47e BX              R0