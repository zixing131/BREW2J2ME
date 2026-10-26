0x6c3f4 PUSH            {R4,LR}
0x6c3f6 LDR             R4, =dword_1535E44
0x6c3f8 MOVS            R1, #0
0x6c3fa MOVS            R0, R4
0x6c3fc MOVS            R2, #0x10
0x6c3fe LDR             R3, =unk_140329C
0x6c400 BL              sub_6C778
0x6c404 LDR             R2, =byte_1533BC8
0x6c406 MOVS            R3, #0
0x6c408 SUBS            R4, #4
0x6c40a MOVS            R0, #1
0x6c40c STRB            R3, [R4,#(byte_1535E42 - 0x1535E40)]
0x6c40e STRB            R3, [R4,#(byte_1535E43 - 0x1535E40)]
0x6c410 STRB            R3, [R4]
0x6c412 STRB            R3, [R4,#(byte_1535E41 - 0x1535E40)]
0x6c414 STRB            R3, [R2,#(byte_1533BC9 - 0x1533BC8)]
0x6c416 POP             {R4}
0x6c418 POP             {R1}
0x6c41a BX              R1