0x703d8 PUSH            {R4-R6,LR}
0x703da LDR             R5, =unk_1536348
0x703dc MOVS            R6, #0
0x703de B               loc_7044C
0x703e0 LDR             R4, [R5]
0x703e2 MOVS            R3, #0x90
0x703e4 LDRH            R2, [R4,#4]
0x703e6 LSLS            R3, R3, #2
0x703e8 STRH            R2, [R4,R3]
0x703ea LDR             R3, =0x242
0x703ec LDRH            R2, [R4,#6]
0x703ee STRH            R2, [R4,R3]
0x703f0 MOVS            R3, #0x91
0x703f2 LDRB            R2, [R4,#1]
0x703f4 LSLS            R3, R3, #2
0x703f6 STRH            R2, [R4,R3]
0x703f8 MOVS            R3, #0x92
0x703fa MOVS            R2, #0
0x703fc LSLS            R3, R3, #2
0x703fe STRH            R2, [R4,R3]
0x70400 LDR             R3, =0x24A
0x70402 STRH            R2, [R4,R3]
0x70404 ADDS            R3, #0x14
0x70406 STRB            R2, [R4,R3]
0x70408 LDRH            R3, [R4,#0x20]
0x7040a CMP             R3, #0
0x7040c BEQ             loc_7041A
0x7040e LDRH            R1, [R4,#0x1E]
0x70410 MOVS            R0, R6
0x70412 BL              sub_7035C
0x70416 LDRH            R3, [R4,#0x28]
0x70418 B               loc_7041C
0x7041a LDR             R3, =0xFFFFEA60
0x7041c STRH            R3, [R4,#0x24]
0x7041e LDRB            R3, [R4]
0x70420 CMP             R3, #2
0x70422 BNE             loc_70448
0x70424 LDRH            R0, [R4,#0x14]
0x70426 CMP             R0, #0
0x70428 BEQ             loc_70436
0x7042a LDRH            R1, [R4,#0x1A]
0x7042c BL              sub_70314
0x70430 MOVS            R3, #0x238
0x70434 STR             R0, [R4,R3]
0x70436 LDRH            R0, [R4,#0x16]
0x70438 CMP             R0, #0
0x7043a BEQ             loc_70448
0x7043c LDRH            R1, [R4,#0x1C]
0x7043e BL              sub_70314
0x70442 MOVS            R3, #0x23C
0x70446 STR             R0, [R4,R3]
0x70448 ADDS            R6, #1
0x7044a ADDS            R5, #4
0x7044c LDR             R3, =unk_15364FC
0x7044e LDRB            R3, [R3,#(byte_15364FD - 0x15364FC)]
0x70450 CMP             R6, R3
0x70452 BLT             loc_703E0
0x70454 POP             {R4-R6}
0x70456 POP             {R0}
0x70458 BX              R0