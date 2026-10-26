0x6c9bc PUSH            {R4,R5,LR}
0x6c9be STRB            R2, [R1,#4]
0x6c9c0 STRB            R3, [R1]
0x6c9c2 MOVS            R5, #0
0x6c9c4 MOVS            R3, #0
0x6c9c6 LDRB            R4, [R1,#4]
0x6c9c8 STRB            R5, [R1,#5]
0x6c9ca STRB            R3, [R1,#1]
0x6c9cc LSLS            R2, R4, #3
0x6c9ce STRH            R3, [R1,#8]
0x6c9d0 STRH            R3, [R1,#0xA]
0x6c9d2 ADDS            R2, R2, R4
0x6c9d4 LDR             R3, [R0,#0x18]
0x6c9d6 LSLS            R2, R2, #2
0x6c9d8 ADDS            R3, R2, R3
0x6c9da LDR             R3, [R3,#0x20]
0x6c9dc LDRB            R3, [R3]
0x6c9de STRB            R5, [R1,#2]
0x6c9e0 STRB            R5, [R1,#0xD]
0x6c9e2 STRB            R3, [R1,#3]
0x6c9e4 LDR             R3, [R0,#0x18]
0x6c9e6 ADDS            R3, R2, R3
0x6c9e8 LDRB            R3, [R3,#1]
0x6c9ea STRB            R3, [R1,#7]
0x6c9ec LDR             R3, [R0,#0x18]
0x6c9ee LDRB            R3, [R2,R3]
0x6c9f0 STRB            R3, [R1,#6]
0x6c9f2 POP             {R4,R5}
0x6c9f4 POP             {R0}
0x6c9f6 BX              R0