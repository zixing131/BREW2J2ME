0x67c98 PUSH            {R4,R5,LR}
0x67c9a LDR             R4, [R0,#0x1C]
0x67c9c ADDS            R2, R2, R4
0x67c9e LDR             R4, [R0,#0x14]
0x67ca0 MULS            R4, R2
0x67ca2 LDR             R2, [R0,#0x18]
0x67ca4 LDR             R5, [R0]
0x67ca6 ADDS            R1, R1, R2
0x67ca8 LSLS            R1, R1, #1
0x67caa ADDS            R1, R1, R5
0x67cac STRH            R3, [R1,R4]
0x67cae POP             {R4,R5}
0x67cb0 POP             {R0}
0x67cb2 BX              R0