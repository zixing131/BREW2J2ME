0x1f4f8 PUSH            {R4,LR}
0x1f4fa LSLS            R0, R0, #0x18
0x1f4fc LSRS            R0, R0, #0x18
0x1f4fe LSLS            R3, R0, #1
0x1f500 ADDS            R3, R3, R0
0x1f502 LDR             R2, =byte_150C9DC
0x1f504 LSLS            R3, R3, #5
0x1f506 ADDS            R3, R3, R2
0x1f508 MOVS            R0, #6
0x1f50a LDRSH           R2, [R3,R0]
0x1f50c LSLS            R1, R1, #0x18
0x1f50e LSRS            R4, R1, #0x18
0x1f510 LDR             R1, =word_150C9D0
0x1f512 LSLS            R3, R2, #6
0x1f514 SUBS            R3, R3, R2
0x1f516 LDR             R2, [R1,#(dword_150C9D8 - 0x150C9D0)]
0x1f518 LSLS            R3, R3, #2
0x1f51a ADDS            R3, R3, R2
0x1f51c MOVS            R2, R3
0x1f51e MOVS            R0, R3
0x1f520 ADDS            R2, #0xC0
0x1f522 MOVS            R1, #0
0x1f524 ADDS            R0, #0xC6
0x1f526 LDRB            R3, [R2]
0x1f528 CMP             R3, #1
0x1f52a BNE             loc_1F53C
0x1f52c LDRH            R3, [R2,#2]
0x1f52e CMP             R3, #0x13
0x1f530 BNE             loc_1F53C
0x1f532 LDRH            R3, [R2,#4]
0x1f534 CMP             R3, R4
0x1f536 BNE             loc_1F53C
0x1f538 LDRB            R0, [R0]
0x1f53a B               loc_1F548
0x1f53c ADDS            R1, #1
0x1f53e ADDS            R0, #8
0x1f540 ADDS            R2, #8
0x1f542 CMP             R1, #3
0x1f544 BNE             loc_1F526
0x1f546 MOVS            R0, #0
0x1f548 POP             {R4}
0x1f54a POP             {R1}
0x1f54c BX              R1