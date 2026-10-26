0x1f558 PUSH            {R4,LR}
0x1f55a LSLS            R0, R0, #0x10
0x1f55c ASRS            R0, R0, #0x10
0x1f55e LDR             R2, =word_150C9D0
0x1f560 LSLS            R3, R0, #6
0x1f562 SUBS            R3, R3, R0
0x1f564 LDR             R2, [R2,#(dword_150C9D8 - 0x150C9D0)]
0x1f566 LSLS            R3, R3, #2
0x1f568 ADDS            R2, R3, R2
0x1f56a MOVS            R3, R2
0x1f56c ADDS            R3, #0xE4
0x1f56e LDRB            R3, [R3]
0x1f570 LSLS            R3, R3, #0x18
0x1f572 ASRS            R3, R3, #0x18
0x1f574 MOVS            R1, #0
0x1f576 ADDS            R3, #1
0x1f578 BEQ             loc_1F57C
0x1f57a MOVS            R1, #1
0x1f57c MOVS            R3, R2
0x1f57e ADDS            R3, #0xE8
0x1f580 LDRB            R3, [R3]
0x1f582 LSLS            R3, R3, #0x18
0x1f584 ASRS            R3, R3, #0x18
0x1f586 MOVS            R4, R1
0x1f588 ADDS            R3, #1
0x1f58a BEQ             loc_1F58E
0x1f58c ADDS            R4, #1
0x1f58e MOVS            R3, R2
0x1f590 ADDS            R3, #0xEC
0x1f592 LDRB            R3, [R3]
0x1f594 LSLS            R3, R3, #0x18
0x1f596 ASRS            R3, R3, #0x18
0x1f598 ADDS            R3, #1
0x1f59a BEQ             loc_1F5A2
0x1f59c ADDS            R3, R4, #1
0x1f59e LSLS            R3, R3, #0x18
0x1f5a0 LSRS            R4, R3, #0x18
0x1f5a2 LDR             R3, =0x80931
0x1f5a4 BL              sub_22468
0x1f5a8 LSLS            R3, R4, #0x18
0x1f5aa LSLS            R0, R0, #0x10
0x1f5ac ASRS            R3, R3, #0x18
0x1f5ae ASRS            R0, R0, #0x10
0x1f5b0 MOVS            R2, #0
0x1f5b2 CMP             R3, R0
0x1f5b4 BLE             loc_1F5B8
0x1f5b6 MOVS            R2, #1
0x1f5b8 MOVS            R0, R2
0x1f5ba POP             {R4}
0x1f5bc POP             {R1}
0x1f5be BX              R1