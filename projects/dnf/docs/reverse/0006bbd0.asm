0x6bbd0 LDR             R3, =dword_1535DD8
0x6bbd2 MOVS            R1, R3
0x6bbd4 ADDS            R1, #0x28 ; '('
0x6bbd6 MOVS            R2, #0
0x6bbd8 STM             R3!, {R2}
0x6bbda CMP             R3, R1
0x6bbdc BNE             loc_6BBD6
0x6bbde LDR             R3, =dword_1535DD4
0x6bbe0 STR             R2, [R3]
0x6bbe2 LDR             R3, =dword_1535E08
0x6bbe4 STR             R2, [R3]
0x6bbe6 BX              LR