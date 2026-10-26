0x66e7c LSLS            R0, R0, #0x18
0x66e7e CMP             R0, #0
0x66e80 BEQ             loc_66E8E
0x66e82 LDR             R3, =dword_1535ADC
0x66e84 ADDS            R3, #0xFC
0x66e86 LDR             R2, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66e88 LDR             R1, [R3,#(dword_1535C3C - 0x1535BD8)]
0x66e8a ADDS            R2, R2, R1
0x66e8c STR             R2, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66e8e LDR             R3, =dword_1535ADC
0x66e90 ADDS            R3, #0xFC
0x66e92 LDR             R2, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66e94 STR             R2, [R3,#(dword_1535C3C - 0x1535BD8)]
0x66e96 MOVS            R2, #0
0x66e98 STR             R2, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66e9a BX              LR