0x702bc PUSH            {R4,LR}
0x702be MOVS            R2, #0xC8
0x702c0 LDR             R4, =unk_140329C
0x702c2 LSLS            R2, R2, #1
0x702c4 MOVS            R1, #0
0x702c6 LDR             R0, =dword_1536348
0x702c8 BL              sub_71336
0x702cc MOVS            R1, #0
0x702ce MOVS            R2, #0xC
0x702d0 LDR             R0, =unk_15364FC
0x702d2 BL              sub_71336
0x702d6 MOVS            R2, #0x3E8
0x702da MOVS            R1, #0
0x702dc LDR             R0, =unk_1535F5C
0x702de BL              sub_71336
0x702e2 LDR             R3, =dword_153653C
0x702e4 MOVS            R2, #0
0x702e6 STR             R2, [R3]
0x702e8 LDR             R3, =byte_15000B9
0x702ea STRB            R2, [R3]
0x702ec LDR             R3, =byte_1536760
0x702ee STRB            R2, [R3]
0x702f0 POP             {R4}
0x702f2 POP             {R0}
0x702f4 BX              R0