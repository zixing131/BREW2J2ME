0x6c780 PUSH            {R4-R7,LR}
0x6c782 LSLS            R0, R0, #0x10
0x6c784 LSRS            R6, R0, #0x10
0x6c786 LDRH            R0, [R1,#4]
0x6c788 MOVS            R4, R1
0x6c78a MOVS            R7, #0
0x6c78c MOVS            R1, #0
0x6c78e MOVS            R5, #0
0x6c790 B               loc_6C7AC
0x6c792 CMP             R5, #0
0x6c794 BNE             loc_6C7B0
0x6c796 LDR             R2, [R4,#8]
0x6c798 LSLS            R3, R1, #4
0x6c79a ADDS            R2, R3, R2
0x6c79c LDR             R3, [R2]
0x6c79e CMP             R3, R6
0x6c7a0 BNE             loc_6C7A6
0x6c7a2 MOVS            R7, R2
0x6c7a4 MOVS            R5, #1
0x6c7a6 ADDS            R3, R1, #1
0x6c7a8 LSLS            R3, R3, #0x10
0x6c7aa LSRS            R1, R3, #0x10
0x6c7ac CMP             R1, R0
0x6c7ae BNE             loc_6C792
0x6c7b0 MOVS            R0, R7
0x6c7b2 POP             {R4-R7}
0x6c7b4 POP             {R1}
0x6c7b6 BX              R1