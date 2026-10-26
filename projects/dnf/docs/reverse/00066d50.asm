0x66d50 LDR             R1, =dword_1535ADC
0x66d52 MOVS            R2, R1
0x66d54 ADDS            R2, #0xFC
0x66d56 MOVS            R3, #0
0x66d58 STR             R3, [R2,#(dword_1535C3C - 0x1535BD8)]
0x66d5a STR             R3, [R2,#(dword_1535C38 - 0x1535BD8)]
0x66d5c LDR             R3, [R1,#(dword_1535AF8 - 0x1535ADC)]
0x66d5e MOVS            R2, #2
0x66d60 BICS            R3, R2
0x66d62 STR             R3, [R1,#(dword_1535AF8 - 0x1535ADC)]
0x66d64 BX              LR