0x79de0 PUSH            {LR}
0x79de2 LDR             R3, =dword_1501D90
0x79de4 LSLS            R1, R1, #0x18
0x79de6 LDR             R3, [R3]
0x79de8 LSRS            R1, R1, #0x18
0x79dea MOVS            R2, R0
0x79dec LDR             R0, [R3,#0x10]
0x79dee CMP             R1, #9
0x79df0 BNE             loc_79E06
0x79df2 LDR             R1, =0x19CC
0x79df4 LDRH            R2, [R2,#2]
0x79df6 LDR             R3, [R0,R1]
0x79df8 ADDS            R3, R3, R2
0x79dfa STR             R3, [R0,R1]
0x79dfc MOVS            R2, #0
0x79dfe MOVS            R0, #0
0x79e00 MOVS            R1, #0
0x79e02 BL              sub_79C88
0x79e06 POP             {R0}
0x79e08 BX              R0