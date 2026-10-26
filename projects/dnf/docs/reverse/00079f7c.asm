0x79f7c PUSH            {LR}
0x79f7e LDR             R3, =dword_1501D90
0x79f80 LSLS            R1, R1, #0x18
0x79f82 LDR             R3, [R3]
0x79f84 LSRS            R1, R1, #0x18
0x79f86 MOVS            R2, R0
0x79f88 LDR             R0, [R3,#0x10]
0x79f8a CMP             R1, #9
0x79f8c BNE             loc_79FA2
0x79f8e LDR             R1, =0x19C8
0x79f90 LDRH            R2, [R2,#2]
0x79f92 LDR             R3, [R0,R1]
0x79f94 ADDS            R3, R3, R2
0x79f96 STR             R3, [R0,R1]
0x79f98 MOVS            R2, #0
0x79f9a MOVS            R0, #0
0x79f9c MOVS            R1, #0
0x79f9e BL              sub_79E14
0x79fa2 POP             {R0}
0x79fa4 BX              R0