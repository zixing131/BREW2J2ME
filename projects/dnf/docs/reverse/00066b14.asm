0x66b14 PUSH            {R4,LR}
0x66b16 LDR             R4, =dword_1535ADC
0x66b18 LDR             R3, [R0]
0x66b1a LDR             R2, [R4,#(dword_1535B20 - 0x1535ADC)]
0x66b1c ADDS            R3, R3, R2
0x66b1e STR             R3, [R0]
0x66b20 LDR             R3, [R1]
0x66b22 LDR             R2, [R4,#(dword_1535B24 - 0x1535ADC)]
0x66b24 ADDS            R3, R3, R2
0x66b26 STR             R3, [R1]
0x66b28 POP             {R4}
0x66b2a POP             {R0}
0x66b2c BX              R0