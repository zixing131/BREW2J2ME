0x8cce0 LDR             R3, =dword_15000C0
0x8cce2 STM             R3!, {R0-R2}
0x8cce4 MOVS            R2, #0x200
0x8cce8 LDR             R1, =unk_1400000
0x8ccea ADDS            R0, R0, R2
0x8ccec STR             R1, [R0,#0x14]
0x8ccee BX              LR