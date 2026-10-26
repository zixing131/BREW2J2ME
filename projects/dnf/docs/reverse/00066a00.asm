0x66a00 PUSH            {R4,LR}
0x66a02 LDR             R3, =byte_1533780
0x66a04 MOVS            R4, #0
0x66a06 STR             R4, [R3,#(dword_1533788 - 0x1533780)]
0x66a08 STR             R4, [R3,#(dword_1533790 - 0x1533780)]
0x66a0a STRB            R4, [R3,#(byte_153378C - 0x1533780)]
0x66a0c BL              sub_364E0
0x66a10 LDR             R3, =byte_1500076
0x66a12 STRB            R4, [R3]
0x66a14 LDR             R3, =byte_1500077
0x66a16 LDR             R1, =unk_1533CDC
0x66a18 STRB            R4, [R3]
0x66a1a LDR             R0, =0xB0BF
0x66a1c LDR             R3, =0x6E441
0x66a1e BL              sub_66A76
0x66a22 LDR             R4, =unk_153379C
0x66a24 LDR             R1, =0xA43E
0x66a26 MOVS            R0, R4
0x66a28 MOVS            R2, #0
0x66a2a LDR             R3, =0x6EA61
0x66a2c BL              sub_66A76
0x66a30 MOVS            R0, R4
0x66a32 LDR             R1, =byte_153405C
0x66a34 MOVS            R2, #0
0x66a36 MOVS            R3, #1
0x66a38 LDR             R4, =0x6C9BD
0x66a3a BL              sub_66A78
0x66a3e POP             {R4}
0x66a40 POP             {R0}
0x66a42 BX              R0