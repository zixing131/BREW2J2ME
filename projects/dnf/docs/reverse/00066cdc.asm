0x66cdc PUSH            {R4,R5,LR}
0x66cde LDR             R2, =dword_1535ADC
0x66ce0 MOVS            R3, R2
0x66ce2 ADDS            R3, #0xBC
0x66ce4 MOVS            R5, R1
0x66ce6 LDR             R1, [R3]
0x66ce8 MOVS            R4, R0
0x66cea CMP             R0, R1
0x66cec BLT             loc_66D14
0x66cee ADDS            R3, #4
0x66cf0 LDR             R0, [R3]
0x66cf2 CMP             R5, R0
0x66cf4 BLT             loc_66D14
0x66cf6 ADDS            R3, #4
0x66cf8 LDR             R3, [R3]
0x66cfa ADDS            R3, R1, R3
0x66cfc CMP             R4, R3
0x66cfe BGE             loc_66D14
0x66d00 MOVS            R3, R2
0x66d02 ADDS            R3, #0xC8
0x66d04 LDR             R3, [R3]
0x66d06 ADDS            R3, R0, R3
0x66d08 MOVS            R4, #0
0x66d0a CMP             R5, R3
0x66d0c BLT             loc_66D10
0x66d0e MOVS            R4, #1
0x66d10 MOVS            R0, R4
0x66d12 B               loc_66D16
0x66d14 MOVS            R0, #1
0x66d16 POP             {R4,R5}
0x66d18 POP             {R1}
0x66d1a BX              R1