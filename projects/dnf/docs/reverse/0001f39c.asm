0x1f39c PUSH            {R4-R6,LR}
0x1f39e LSLS            R0, R0, #0x18
0x1f3a0 LSRS            R6, R0, #0x18
0x1f3a2 BL              sub_1F300
0x1f3a6 LSLS            R0, R0, #0x18
0x1f3a8 ASRS            R0, R0, #0x18
0x1f3aa ADDS            R3, R0, #1
0x1f3ac BEQ             loc_1F3D0
0x1f3ae LDR             R3, =byte_150D160
0x1f3b0 LDR             R3, [R3,#(dword_150D168 - 0x150D160)]
0x1f3b2 LSLS            R2, R0, #4
0x1f3b4 ADDS            R2, R2, R3
0x1f3b6 LDRB            R5, [R2]
0x1f3b8 MOVS            R4, #0
0x1f3ba MOVS            R1, #0
0x1f3bc B               loc_1F3CA
0x1f3be LDR             R3, [R2,#0xC]
0x1f3c0 LDRB            R3, [R3,R1]
0x1f3c2 ADDS            R4, R0, #1
0x1f3c4 ADDS            R1, #0x18
0x1f3c6 CMP             R3, R6
0x1f3c8 BEQ             loc_1F3D4
0x1f3ca MOVS            R0, R4
0x1f3cc CMP             R4, R5
0x1f3ce BLT             loc_1F3BE
0x1f3d0 MOVS            R0, #1
0x1f3d2 NEGS            R0, R0
0x1f3d4 POP             {R4-R6}
0x1f3d6 POP             {R1}
0x1f3d8 BX              R1