0x6e0d8 PUSH            {R4-R6,LR}
0x6e0da LDRB            R3, [R1]
0x6e0dc LSLS            R2, R2, #0x18
0x6e0de MOVS            R5, R0
0x6e0e0 MOVS            R4, R1
0x6e0e2 LSRS            R6, R2, #0x18
0x6e0e4 CMP             R3, #0
0x6e0e6 BEQ             loc_6E158
0x6e0e8 LDRB            R3, [R1,#2]
0x6e0ea CMP             R3, #0
0x6e0ec BNE             loc_6E158
0x6e0ee LDRB            R2, [R1,#4]
0x6e0f0 LSLS            R3, R2, #3
0x6e0f2 LDR             R1, [R0,#0x18]
0x6e0f4 ADDS            R3, R3, R2
0x6e0f6 LSLS            R3, R3, #2
0x6e0f8 LDRB            R2, [R4,#5]
0x6e0fa ADDS            R3, R3, R1
0x6e0fc LDR             R1, [R3,#0x20]
0x6e0fe LSLS            R3, R2, #4
0x6e100 ADDS            R3, R3, R2
0x6e102 LSLS            R3, R3, #2
0x6e104 ADDS            R3, R3, R1
0x6e106 LDRB            R1, [R3,#6]
0x6e108 LDRB            R2, [R4,#0xC]
0x6e10a MOVS            R0, R6
0x6e10c LDR             R3, =(sub_2D8AC+1)
0x6e10e BL              sub_6EACE
0x6e112 LDRB            R2, [R4,#4]
0x6e114 LSLS            R3, R2, #3
0x6e116 LDR             R1, [R5,#0x18]
0x6e118 ADDS            R3, R3, R2
0x6e11a LSLS            R3, R3, #2
0x6e11c LDRB            R2, [R4,#5]
0x6e11e ADDS            R3, R3, R1
0x6e120 LDR             R1, [R3,#0x20]
0x6e122 LSLS            R3, R2, #4
0x6e124 ADDS            R3, R3, R2
0x6e126 LSLS            R3, R3, #2
0x6e128 ADDS            R3, R3, R1
0x6e12a LDRB            R1, [R3,#8]
0x6e12c MOVS            R0, R6
0x6e12e LDR             R3, =(sub_2D830+1)
0x6e130 BL              sub_6EACE
0x6e134 LDRB            R2, [R4,#4]
0x6e136 LSLS            R3, R2, #3
0x6e138 LDR             R1, [R5,#0x18]
0x6e13a ADDS            R3, R3, R2
0x6e13c LSLS            R3, R3, #2
0x6e13e LDRB            R2, [R4,#5]
0x6e140 ADDS            R3, R3, R1
0x6e142 LDR             R1, [R3,#0x20]
0x6e144 LSLS            R3, R2, #4
0x6e146 ADDS            R3, R3, R2
0x6e148 LSLS            R3, R3, #2
0x6e14a ADDS            R3, R3, R1
0x6e14c LDRB            R2, [R3,#7]
0x6e14e MOVS            R0, #2
0x6e150 MOVS            R1, R6
0x6e152 LDR             R3, =(sub_2D77C+1)
0x6e154 BL              sub_6EACE
0x6e158 POP             {R4-R6}
0x6e15a POP             {R0}
0x6e15c BX              R0