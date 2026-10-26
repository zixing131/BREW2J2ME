0x2d8ac PUSH            {R4,R5,LR}
0x2d8ae LDR             R3, =dword_1501DD4
0x2d8b0 LDR             R3, [R3]
0x2d8b2 LSLS            R0, R0, #0x18
0x2d8b4 LSLS            R1, R1, #0x18
0x2d8b6 LSLS            R2, R2, #0x18
0x2d8b8 LSRS            R4, R0, #0x18
0x2d8ba LSRS            R1, R1, #0x18
0x2d8bc LSRS            R0, R2, #0x18
0x2d8be CMP             R3, #1
0x2d8c0 BNE             loc_2D944
0x2d8c2 LDR             R3, =dword_1501C5C
0x2d8c4 LDR             R3, [R3]
0x2d8c6 CMP             R3, #1
0x2d8c8 BEQ             loc_2D8CE
0x2d8ca CMP             R3, #0
0x2d8cc BNE             loc_2D944
0x2d8ce LDR             R3, =dword_1501D90
0x2d8d0 LDR             R2, [R3]
0x2d8d2 LDR             R3, =0x1AED
0x2d8d4 LDRB            R3, [R2,R3]
0x2d8d6 CMP             R3, #0
0x2d8d8 BEQ             loc_2D944
0x2d8da CMP             R3, #1
0x2d8dc BEQ             loc_2D944
0x2d8de CMP             R4, #0
0x2d8e0 BEQ             loc_2D944
0x2d8e2 CMP             R1, #0
0x2d8e4 BEQ             loc_2D944
0x2d8e6 CMP             R0, #1
0x2d8e8 BNE             loc_2D8EE
0x2d8ea MOVS            R5, #0xFF
0x2d8ec B               loc_2D8F0
0x2d8ee MOVS            R5, #1
0x2d8f0 LDR             R3, =dword_1534724
0x2d8f2 LDR             R3, [R3,#(dword_153472C - 0x1534724)]
0x2d8f4 LSLS            R2, R1, #3
0x2d8f6 ADDS            R0, R2, R3
0x2d8f8 MOVS            R2, #0
0x2d8fa LDRSH           R3, [R0,R2]
0x2d8fc CMP             R3, #0
0x2d8fe BGE             loc_2D902
0x2d900 NEGS            R3, R3
0x2d902 LDR             R1, =byte_1533BC8
0x2d904 CMP             R3, #0x1E
0x2d906 BLE             loc_2D91E
0x2d908 MOVS            R2, #(word_1533BDA - 0x1533BC8)
0x2d90a LDRSH           R3, [R1,R2]; word_1533BDA
0x2d90c CMP             R3, #0
0x2d90e BGE             loc_2D912
0x2d910 NEGS            R3, R3
0x2d912 CMP             R3, #0x1E
0x2d914 BLE             loc_2D92C
0x2d916 LDRB            R3, [R1,#(byte_1533BD9 - 0x1533BC8)]
0x2d918 CMP             R3, R4
0x2d91a BHI             loc_2D944
0x2d91c B               loc_2D92C
0x2d91e LDRB            R3, [R1,#(byte_1533BD9 - 0x1533BC8)]
0x2d920 CMP             R3, R4
0x2d922 BHI             loc_2D944
0x2d924 MOVS            R2, #(word_1533BDA - 0x1533BC8)
0x2d926 LDRSH           R3, [R1,R2]; word_1533BDA
0x2d928 CMP             R3, #0x1E
0x2d92a BGT             loc_2D944
0x2d92c MOVS            R3, #1
0x2d92e STRB            R4, [R1,#(byte_1533BD9 - 0x1533BC8)]
0x2d930 STRB            R3, [R1,#(byte_1533BD8 - 0x1533BC8)]
0x2d932 LDRB            R3, [R0,#4]
0x2d934 STRB            R3, [R1,#(byte_1533BDE - 0x1533BC8)]
0x2d936 LSLS            R3, R5, #0x18
0x2d938 LDRH            R2, [R0]
0x2d93a ASRS            R3, R3, #0x18
0x2d93c MULS            R3, R2
0x2d93e STRH            R3, [R1,#(word_1533BDA - 0x1533BC8)]
0x2d940 LDRH            R3, [R0,#2]
0x2d942 STRH            R3, [R1,#(word_1533BDC - 0x1533BC8)]
0x2d944 POP             {R4,R5}
0x2d946 POP             {R0}
0x2d948 BX              R0