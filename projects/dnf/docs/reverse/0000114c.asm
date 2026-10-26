0x114c PUSH            {R4,LR}
0x114e LDR             R4, =unk_1501BE8
0x1150 LDR             R1, =0x12E9
0x1152 MOVS            R0, R4
0x1154 LDR             R3, =unk_140337C
0x1156 BL              sub_1400
0x115a LDR             R3, =dword_1501BEC
0x115c LDR             R3, [R3]
0x115e MOVS            R0, R4
0x1160 MOVS            R1, R3
0x1162 ASRS            R2, R3, #0x1F
0x1164 LDR             R4, =unk_14033AC
0x1166 MOVS            R3, #0
0x1168 BL              sub_1402
0x116c POP             {R4}
0x116e POP             {R0}
0x1170 BX              R0