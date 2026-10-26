0x84374 PUSH            {R4-R7,LR}
0x84376 SUB             SP, SP, #0x50
0x84378 MOV             R4, SP
0x8437a LSLS            R2, R0, #0x10
0x8437c ADDS            R4, #0x22 ; '"'
0x8437e LSRS            R2, R2, #0x10
0x84380 LDR             R1, =aDBd; "%d.bd"
0x84382 LDR             R3, =unk_14032CC
0x84384 MOVS            R0, R4
0x84386 BL              sub_8A950
0x8438a MOVS            R0, R4
0x8438c LDR             R3, =(sub_6CBE0+1)
0x8438e BL              sub_8A950
0x84392 STR             R0, [SP,#0x50+var_48]
0x84394 CMP             R0, #0
0x84396 BNE             loc_8439A
0x84398 B               loc_844A4
0x8439a MOV             R0, SP
0x8439c LDR             R5, =unk_140327C
0x8439e LDR             R1, [SP,#0x50+var_48]
0x843a0 MOVS            R2, #2
0x843a2 ADDS            R0, #0x4E ; 'N'
0x843a4 BL              sub_8A954
0x843a8 LDR             R1, [SP,#0x50+var_48]
0x843aa MOVS            R2, #4
0x843ac ADDS            R1, #2
0x843ae ADD             R0, SP, #0x50+var_10
0x843b0 BL              sub_8A954
0x843b4 LDR             R1, [SP,#0x50+var_48]
0x843b6 MOVS            R2, #4
0x843b8 ADDS            R1, #6
0x843ba ADD             R0, SP, #0x50+var_C
0x843bc BL              sub_8A954
0x843c0 LDR             R0, [SP,#0x50+var_10]
0x843c2 LDR             R3, =unk_14032EC
0x843c4 ADDS            R0, #2
0x843c6 BL              sub_8A950
0x843ca STR             R0, [SP,#0x50+var_44]
0x843cc LDR             R0, [SP,#0x50+var_48]
0x843ce MOVS            R1, #6
0x843d0 LDR             R3, [SP,#0x50+var_C]
0x843d2 LDR             R2, [SP,#0x50+var_10]
0x843d4 STR             R1, [SP,#0x50+var_50]
0x843d6 LDR             R4, =(sub_692B4+1)
0x843d8 LDR             R1, [SP,#0x50+var_44]
0x843da ADDS            R0, #0xA
0x843dc BL              sub_8A952
0x843e0 LDR             R1, [SP,#0x50+var_44]
0x843e2 MOVS            R2, #2
0x843e4 ADD             R0, SP, #0x50+var_4
0x843e6 BL              sub_8A954
0x843ea LDR             R4, [SP,#0x50+var_44]
0x843ec MOV             R0, SP
0x843ee ADDS            R4, #2
0x843f0 MOVS            R1, R4
0x843f2 MOVS            R2, #2
0x843f4 ADDS            R0, #0x4A ; 'J'
0x843f6 BL              sub_8A954
0x843fa LDR             R2, =unk_1538860
0x843fc MOVS            R0, #0
0x843fe ADDS            R4, #2
0x84400 STR             R4, [SP,#0x50+var_34]
0x84402 STR             R0, [SP,#0x50+var_40]
0x84404 STR             R2, [SP,#0x50+var_38]
0x84406 STR             R0, [SP,#0x50+var_4C]
0x84408 B               loc_84480
0x8440a LDR             R0, [SP,#0x50+var_4C]
0x8440c MOVS            R3, #0
0x8440e STR             R3, [SP,#0x50+var_3C]
0x84410 LSLS            R3, R0, #2
0x84412 MOVS            R7, R3
0x84414 ADDS            R7, #8
0x84416 MOV             R3, SP
0x84418 ADDS            R3, #0x4A ; 'J'
0x8441a MOVS            R2, #0
0x8441c LDRSH           R1, [R3,R2]
0x8441e LDR             R3, [SP,#0x50+var_38]
0x84420 LDR             R0, [SP,#0x50+var_3C]
0x84422 LDR             R2, [R3]
0x84424 LSLS            R3, R0, #4
0x84426 ADDS            R3, R3, R2
0x84428 ADDS            R3, #0x54 ; 'T'
0x8442a LDRB            R3, [R3,#3]
0x8442c MOVS            R4, R3
0x8442e MULS            R4, R1
0x84430 LDR             R2, [SP,#0x50+var_34]
0x84432 LDR             R5, =unk_1538860
0x84434 LSLS            R4, R4, #0x10
0x84436 ASRS            R4, R4, #0x10
0x84438 ADDS            R5, R7, R5
0x8443a ADDS            R4, R2, R4
0x8443c MOVS            R1, R4
0x8443e LDR             R6, =unk_140327C
0x84440 MOVS            R0, R5
0x84442 MOVS            R2, #1
0x84444 ADDS            R4, #1
0x84446 BL              sub_8A956
0x8444a MOVS            R1, R4
0x8444c ADDS            R0, R5, #1
0x8444e MOVS            R2, #1
0x84450 ADDS            R5, #2
0x84452 ADDS            R4, #1
0x84454 BL              sub_8A956
0x84458 MOVS            R0, R5
0x8445a MOVS            R1, R4
0x8445c MOVS            R2, #1
0x8445e BL              sub_8A956
0x84462 LDR             R3, [SP,#0x50+var_3C]
0x84464 ADDS            R3, #1
0x84466 STR             R3, [SP,#0x50+var_3C]
0x84468 ADDS            R7, #4
0x8446a CMP             R3, #3
0x8446c BNE             loc_84416
0x8446e LDR             R0, [SP,#0x50+var_40]
0x84470 LDR             R2, [SP,#0x50+var_4C]
0x84472 LDR             R3, [SP,#0x50+var_38]
0x84474 ADDS            R0, #1
0x84476 ADDS            R2, #0x28 ; '('
0x84478 ADDS            R3, #0xA0
0x8447a STR             R0, [SP,#0x50+var_40]
0x8447c STR             R2, [SP,#0x50+var_4C]
0x8447e STR             R3, [SP,#0x50+var_38]
0x84480 LDR             R3, =word_15332A0
0x84482 MOVS            R2, #(byte_153341C - 0x15332A0)
0x84486 LDRB            R3, [R3,R2]; byte_153341C
0x84488 LDR             R0, [SP,#0x50+var_40]
0x8448a CMP             R0, R3
0x8448c BLT             loc_8440A
0x8448e LDR             R2, [SP,#0x50+var_44]
0x84490 CMP             R2, #0
0x84492 BEQ             loc_8449C
0x84494 MOVS            R0, R2
0x84496 LDR             R3, =unk_14032FC
0x84498 BL              sub_8A950
0x8449c LDR             R0, [SP,#0x50+var_48]
0x8449e LDR             R3, =unk_14032FC
0x844a0 BL              sub_8A950
0x844a4 ADD             SP, SP, #0x50 ; 'P'
0x844a6 POP             {R4-R7}
0x844a8 POP             {R0}
0x844aa BX              R0