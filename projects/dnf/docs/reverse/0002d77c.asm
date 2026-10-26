0x2d77c PUSH            {R4,R5,LR}
0x2d77e LDR             R3, =dword_1501DD4
0x2d780 LDR             R3, [R3]
0x2d782 LSLS            R0, R0, #0x18
0x2d784 LSLS            R1, R1, #0x18
0x2d786 LSLS            R2, R2, #0x18
0x2d788 LSRS            R0, R0, #0x18
0x2d78a LSRS            R5, R1, #0x18
0x2d78c LSRS            R4, R2, #0x18
0x2d78e CMP             R3, #1
0x2d790 BNE             loc_2D810
0x2d792 LDR             R3, =dword_1501C5C
0x2d794 LDR             R3, [R3]
0x2d796 CMP             R3, #1
0x2d798 BEQ             loc_2D79E
0x2d79a CMP             R3, #0
0x2d79c BNE             loc_2D810
0x2d79e LDR             R3, =dword_1501D90
0x2d7a0 LDR             R2, [R3]
0x2d7a2 LDR             R3, =0x1AED
0x2d7a4 LDRB            R3, [R2,R3]
0x2d7a6 CMP             R3, #0
0x2d7a8 BEQ             loc_2D810
0x2d7aa CMP             R3, #1
0x2d7ac BEQ             loc_2D810
0x2d7ae CMP             R0, #0
0x2d7b0 BEQ             loc_2D810
0x2d7b2 CMP             R5, #0
0x2d7b4 BEQ             loc_2D810
0x2d7b6 CMP             R4, #0
0x2d7b8 BEQ             loc_2D810
0x2d7ba LDR             R1, =byte_1533BC8
0x2d7bc LDRB            R3, [R1,#(byte_1533BC9 - 0x1533BC8)]
0x2d7be CMP             R3, R5
0x2d7c0 BNE             loc_2D7E0
0x2d7c2 CMP             R0, #1
0x2d7c4 BEQ             loc_2D7E8
0x2d7c6 CMP             R0, #2
0x2d7c8 BNE             loc_2D808
0x2d7ca LDR             R3, =dword_1534D90
0x2d7cc LDR             R2, [R3,#(dword_1534D98 - 0x1534D90)]
0x2d7ce LSLS            R3, R4, #2
0x2d7d0 ADDS            R3, R3, R2
0x2d7d2 LDRB            R2, [R3,#1]
0x2d7d4 CMP             R2, #0xFF
0x2d7d6 BEQ             loc_2D810
0x2d7d8 LDRB            R3, [R1]
0x2d7da CMP             R3, #1
0x2d7dc BEQ             loc_2D810
0x2d7de B               loc_2D804
0x2d7e0 CMP             R3, R5
0x2d7e2 BCS             loc_2D808
0x2d7e4 CMP             R0, #1
0x2d7e6 BNE             loc_2D7F2
0x2d7e8 LDR             R3, =dword_1534D90
0x2d7ea LDR             R2, [R3,#(dword_1534D98 - 0x1534D90)]
0x2d7ec LSLS            R3, R4, #2
0x2d7ee LDRB            R2, [R3,R2]
0x2d7f0 B               loc_2D800
0x2d7f2 CMP             R0, #2
0x2d7f4 BNE             loc_2D808
0x2d7f6 LDR             R3, =dword_1534D90
0x2d7f8 LDR             R2, [R3,#(dword_1534D98 - 0x1534D90)]
0x2d7fa LSLS            R3, R4, #2
0x2d7fc ADDS            R3, R3, R2
0x2d7fe LDRB            R2, [R3,#1]
0x2d800 CMP             R2, #0xFF
0x2d802 BEQ             loc_2D810
0x2d804 STRB            R2, [R1,#(byte_1533BCD - 0x1533BC8)]
0x2d806 STRB            R0, [R1]
0x2d808 LDR             R2, =byte_1533BC8
0x2d80a MOVS            R3, #1
0x2d80c STRB            R5, [R2,#(byte_1533BC9 - 0x1533BC8)]
0x2d80e STRB            R3, [R2,#(byte_1533BCA - 0x1533BC8)]
0x2d810 POP             {R4,R5}
0x2d812 POP             {R0}
0x2d814 BX              R0