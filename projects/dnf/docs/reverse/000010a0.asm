0x10a0 PUSH            {LR}
0x10a2 MOVS            R3, #0xFB
0x10a4 MOVS            R2, R0
0x10a6 LSLS            R3, R3, #1
0x10a8 MOVS            R0, R1
0x10aa CMP             R2, R3
0x10ac BEQ             loc_10B6
0x10ae LDR             R3, =0x1F7
0x10b0 CMP             R2, R3
0x10b2 BNE             loc_10F0
0x10b4 B               loc_10BE
0x10b6 LDR             R3, =0x6BB41
0x10b8 BL              sub_1400
0x10bc B               loc_10F0
0x10be CMP             R1, #0x34 ; '4'
0x10c0 BEQ             loc_10DE
0x10c2 CMP             R1, #0x36 ; '6'
0x10c4 BEQ             loc_10DE
0x10c6 ADDS            R3, R1, #3
0x10c8 BEQ             loc_10DE
0x10ca ADDS            R3, R1, #4
0x10cc BEQ             loc_10DE
0x10ce CMP             R1, #0x32 ; '2'
0x10d0 BEQ             loc_10DE
0x10d2 CMP             R1, #0x38 ; '8'
0x10d4 BEQ             loc_10DE
0x10d6 ADDS            R3, R1, #1
0x10d8 BEQ             loc_10DE
0x10da ADDS            R0, #2
0x10dc BNE             loc_10E4
0x10de LDR             R3, =0x6BBD1
0x10e0 BL              sub_1400
0x10e4 LDR             R2, =byte_1535DD0
0x10e6 MOVS            R3, #1
0x10e8 STRB            R3, [R2]
0x10ea LDR             R2, =byte_1537B24
0x10ec MOVS            R3, #2
0x10ee STRB            R3, [R2]
0x10f0 POP             {R0}
0x10f2 BX              R0