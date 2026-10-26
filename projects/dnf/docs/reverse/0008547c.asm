0x8547c PUSH            {R4-R7,LR}
0x8547e LSLS            R1, R1, #0x18
0x85480 LSLS            R0, R0, #0x18
0x85482 LSRS            R1, R1, #0x18
0x85484 LSRS            R7, R0, #0x18
0x85486 MOVS            R0, R1
0x85488 BL              sub_829D4
0x8548c LSLS            R0, R0, #0x10
0x8548e LSRS            R0, R0, #0x10
0x85490 CMP             R0, #0
0x85492 BEQ             loc_8553A
0x85494 LDR             R5, =byte_15386AD
0x85496 LDR             R3, =(sub_36410+1)
0x85498 LDRB            R1, [R5]
0x8549a BL              sub_8A950
0x8549e LDRB            R4, [R5]
0x854a0 LDR             R6, =word_1534DE8
0x854a2 LSLS            R4, R4, #4
0x854a4 ADDS            R4, R4, R6
0x854a6 ADDS            R2, R4, #4
0x854a8 MOVS            R3, #0
0x854aa STRB            R3, [R4,#1]
0x854ac STRH            R3, [R2,#2]
0x854ae MOVS            R3, #1
0x854b0 STRB            R3, [R4]
0x854b2 LDRB            R0, [R4,#4]
0x854b4 LDRB            R1, [R2,#1]
0x854b6 LDR             R3, =(sub_2D3B8+1)
0x854b8 BL              sub_8A950
0x854bc LSLS            R2, R7, #2
0x854be LDR             R3, =unk_1538F9C
0x854c0 ADDS            R2, R2, R7
0x854c2 STRB            R0, [R4,#2]
0x854c4 LSLS            R2, R2, #7
0x854c6 ADDS            R2, R2, R3
0x854c8 LDRH            R3, [R2,#2]
0x854ca SUBS            R3, #0xE4
0x854cc LSLS            R3, R3, #0x10
0x854ce LSRS            R3, R3, #0x10
0x854d0 LDRB            R4, [R5]
0x854d2 LDRH            R5, [R2,#0x10]
0x854d4 LDR             R2, =(sub_6C7D4+1)
0x854d6 CMP             R3, #1
0x854d8 BHI             loc_854EC
0x854da MOVS            R0, #0x28 ; '('
0x854dc BL              sub_8A94E
0x854e0 MOVS            R2, R5
0x854e2 LSLS            R3, R4, #4
0x854e4 ADDS            R2, #0x64 ; 'd'
0x854e6 ADDS            R3, R3, R6
0x854e8 ADDS            R0, R0, R2
0x854ea B               loc_854FA
0x854ec MOVS            R0, #0x32 ; '2'
0x854ee BL              sub_8A94E
0x854f2 LSLS            R3, R4, #4
0x854f4 ADDS            R0, R5, R0
0x854f6 ADDS            R3, R3, R6
0x854f8 SUBS            R0, #0x19
0x854fa STRH            R0, [R3,#8]
0x854fc LSLS            R3, R7, #2
0x854fe LDR             R2, =unk_1538F9C
0x85500 ADDS            R3, R3, R7
0x85502 LSLS            R3, R3, #7
0x85504 LDR             R6, =byte_15386AD
0x85506 ADDS            R3, R3, R2
0x85508 LDRH            R4, [R3,#0x12]
0x8550a MOVS            R0, #0x32 ; '2'
0x8550c LDR             R3, =(sub_6C7D4+1)
0x8550e LDRB            R5, [R6]
0x85510 BL              sub_8A950
0x85514 LDR             R3, =word_1534DE8
0x85516 ADDS            R4, R4, R0
0x85518 LSLS            R5, R5, #4
0x8551a ADDS            R5, R5, R3
0x8551c SUBS            R4, #0x19
0x8551e STRH            R4, [R5,#0xA]
0x85520 LDR             R3, =(sub_2C240+1)
0x85522 LDRB            R0, [R6]
0x85524 BL              sub_8A950
0x85528 LDRB            R3, [R6]
0x8552a ADDS            R3, #1
0x8552c LSLS            R3, R3, #0x18
0x8552e LSRS            R3, R3, #0x18
0x85530 STRB            R3, [R6]
0x85532 CMP             R3, #0x77 ; 'w'
0x85534 BLS             loc_8553A
0x85536 MOVS            R3, #0
0x85538 STRB            R3, [R6]
0x8553a POP             {R4-R7}
0x8553c POP             {R0}
0x8553e BX              R0