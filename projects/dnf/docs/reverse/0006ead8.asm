0x6ead8 PUSH            {R4,LR}
0x6eada LDR             R3, =dword_1536348
0x6eadc LSLS            R0, R0, #2
0x6eade LDR             R0, [R0,R3]
0x6eae0 MOVS            R1, R0
0x6eae2 ADDS            R1, #0x34 ; '4'
0x6eae4 MOVS            R4, #0
0x6eae6 B               loc_6EB0A
0x6eae8 LDR             R2, [R1]
0x6eaea MOVS            R3, #0x240
0x6eaee STRH            R2, [R0,R3]
0x6eaf0 LDR             R2, [R1,#4]
0x6eaf2 LDR             R3, =0x242
0x6eaf4 STRH            R2, [R0,R3]
0x6eaf6 LDRB            R3, [R1,#9]
0x6eaf8 LSLS            R3, R3, #0x18
0x6eafa ASRS            R2, R3, #0x18
0x6eafc CMP             R2, #0
0x6eafe BLT             loc_6EB06
0x6eb00 MOVS            R3, #0x248
0x6eb04 STRH            R2, [R0,R3]
0x6eb06 ADDS            R4, #1
0x6eb08 ADDS            R1, #0x34 ; '4'
0x6eb0a LDRH            R3, [R0,#0x2A]
0x6eb0c CMP             R4, R3
0x6eb0e BLT             loc_6EAE8
0x6eb10 POP             {R4}
0x6eb12 POP             {R0}
0x6eb14 BX              R0