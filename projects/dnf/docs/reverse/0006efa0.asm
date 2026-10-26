0x6efa0 PUSH            {R4,LR}
0x6efa2 LDR             R3, =dword_1536348
0x6efa4 LSLS            R0, R0, #2
0x6efa6 LDR             R0, [R0,R3]
0x6efa8 MOVS            R1, R0
0x6efaa ADDS            R1, #0x30 ; '0'
0x6efac MOVS            R4, #0
0x6efae B               loc_6EFD0
0x6efb0 LDRB            R3, [R1]
0x6efb2 CMP             R3, #0x13
0x6efb4 BNE             loc_6EFBE
0x6efb6 MOVS            R3, #0x250
0x6efba MOVS            R2, #1
0x6efbc STRB            R2, [R0,R3]
0x6efbe LDRB            R3, [R1]
0x6efc0 CMP             R3, #0x14
0x6efc2 BNE             loc_6EFCC
0x6efc4 MOVS            R3, #0x250
0x6efc8 MOVS            R2, #0
0x6efca STRB            R2, [R0,R3]
0x6efcc ADDS            R4, #1
0x6efce ADDS            R1, #0x34 ; '4'
0x6efd0 LDRH            R3, [R0,#0x2A]
0x6efd2 CMP             R4, R3
0x6efd4 BLT             loc_6EFB0
0x6efd6 POP             {R4}
0x6efd8 POP             {R0}
0x6efda BX              R0