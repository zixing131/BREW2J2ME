0x67c7c PUSH            {R4,LR}
0x67c7e LDR             R3, [R0,#0x1C]
0x67c80 ADDS            R2, R2, R3
0x67c82 LDR             R3, [R0,#0x14]
0x67c84 MULS            R2, R3
0x67c86 LDR             R3, [R0,#0x18]
0x67c88 LDR             R4, [R0]
0x67c8a ADDS            R1, R1, R3
0x67c8c LSLS            R1, R1, #1
0x67c8e ADDS            R1, R1, R4
0x67c90 LDRH            R0, [R1,R2]
0x67c92 POP             {R4}
0x67c94 POP             {R1}
0x67c96 BX              R1