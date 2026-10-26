0x66b34 PUSH            {R4,R5,LR}
0x66b36 LDR             R5, =dword_1535ADC
0x66b38 MOVS            R4, R0
0x66b3a MOVS            R0, R5
0x66b3c ADDS            R0, #0xCC
0x66b3e STR             R4, [R0]
0x66b40 MOVS            R4, R5
0x66b42 ADDS            R4, #0xD0
0x66b44 STR             R1, [R4]
0x66b46 MOVS            R1, R5
0x66b48 ADDS            R1, #0xD4
0x66b4a ADDS            R5, #0xD8
0x66b4c STR             R3, [R5]
0x66b4e STR             R2, [R1]
0x66b50 POP             {R4,R5}
0x66b52 POP             {R1}
0x66b54 BX              R1