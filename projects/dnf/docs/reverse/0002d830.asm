0x2d830 PUSH            {R4,R5,LR}
0x2d832 LDR             R3, =dword_1501DD4
0x2d834 LDR             R4, [R3]
0x2d836 LSLS            R0, R0, #0x18
0x2d838 LSLS            R1, R1, #0x18
0x2d83a LSRS            R0, R0, #0x18
0x2d83c LSRS            R5, R1, #0x18
0x2d83e CMP             R4, #1
0x2d840 BNE             loc_2D88C
0x2d842 LDR             R3, =dword_1501C5C
0x2d844 LDR             R3, [R3]
0x2d846 CMP             R3, #1
0x2d848 BEQ             loc_2D84E
0x2d84a CMP             R3, #0
0x2d84c BNE             loc_2D88C
0x2d84e LDR             R3, =dword_1501D90
0x2d850 LDR             R2, [R3]
0x2d852 LDR             R3, =0x1AED
0x2d854 LDRB            R3, [R2,R3]
0x2d856 CMP             R3, #0
0x2d858 BEQ             loc_2D88C
0x2d85a CMP             R3, #1
0x2d85c BEQ             loc_2D88C
0x2d85e CMP             R0, #0
0x2d860 BEQ             loc_2D88C
0x2d862 CMP             R5, #0
0x2d864 BEQ             loc_2D88C
0x2d866 LDR             R1, =byte_1533BC8
0x2d868 LDRB            R3, [R1,#(byte_1533BD1 - 0x1533BC8)]
0x2d86a CMP             R3, R0
0x2d86c BHI             loc_2D88C
0x2d86e LDR             R3, =dword_15340C4
0x2d870 LDR             R3, [R3,#(dword_15340CC - 0x15340C4)]
0x2d872 STRB            R0, [R1,#(byte_1533BD1 - 0x1533BC8)]
0x2d874 STRB            R4, [R1,#(byte_1533BD0 - 0x1533BC8)]
0x2d876 LSLS            R2, R5, #2
0x2d878 ADDS            R2, R2, R3
0x2d87a LDRB            R3, [R2]
0x2d87c MOVS            R0, #0x64 ; 'd'
0x2d87e MULS            R3, R0
0x2d880 STRH            R3, [R1,#(word_1533BD2 - 0x1533BC8)]
0x2d882 LDRB            R3, [R2,#1]
0x2d884 STRB            R3, [R1,#(byte_1533BD4 - 0x1533BC8)]
0x2d886 CMP             R3, #0x64 ; 'd'
0x2d888 BLS             loc_2D88C
0x2d88a STRB            R0, [R1,#(byte_1533BD4 - 0x1533BC8)]
0x2d88c POP             {R4,R5}
0x2d88e POP             {R0}
0x2d890 BX              R0