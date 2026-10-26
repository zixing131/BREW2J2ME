0x7d128 PUSH            {LR}
0x7d12a LDR             R3, =dword_1501D90
0x7d12c LSLS            R1, R1, #0x18
0x7d12e LDR             R3, [R3]
0x7d130 LSRS            R1, R1, #0x18
0x7d132 MOVS            R2, R0
0x7d134 LDR             R0, [R3,#0x10]
0x7d136 CMP             R1, #9
0x7d138 BNE             loc_7D140
0x7d13a LDRH            R1, [R2,#2]
0x7d13c BL              sub_7CF20
0x7d140 POP             {R0}
0x7d142 BX              R0