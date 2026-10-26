0x3a8f4 PUSH            {R4,R5,LR}
0x3a8f6 LDR             R4, =byte_1533780
0x3a8f8 LDRB            R3, [R4,#(byte_153378C - 0x1533780)]
0x3a8fa CMP             R3, #0
0x3a8fc BEQ             loc_3A94A
0x3a8fe LDR             R3, [R4,#(dword_1533784 - 0x1533780)]
0x3a900 CMP             R3, #0
0x3a902 BNE             loc_3A908
0x3a904 MOVS            R3, #1
0x3a906 STR             R3, [R4,#(dword_1533784 - 0x1533780)]
0x3a908 LDR             R3, [R4,#(dword_1533788 - 0x1533780)]
0x3a90a ADDS            R3, #1
0x3a90c STR             R3, [R4,#(dword_1533788 - 0x1533780)]
0x3a90e LDR             R3, =dword_1501D90
0x3a910 LDR             R2, [R3]
0x3a912 LDR             R3, =0x1AE8
0x3a914 LDR             R3, [R2,R3]
0x3a916 LDR             R2, =0xFFFFFF
0x3a918 ANDS            R3, R2
0x3a91a LDR             R2, =0x4290B
0x3a91c CMP             R3, R2
0x3a91e BNE             loc_3A936
0x3a920 LDR             R3, =dword_1500058
0x3a922 LDR             R5, [R3]
0x3a924 CMP             R5, #0
0x3a926 BNE             loc_3A936
0x3a928 LDR             R0, =0x1CF
0x3a92a BL              sub_3A890
0x3a92e MOVS            R0, #8
0x3a930 BL              sub_3592C
0x3a934 STRB            R5, [R4,#(byte_153378C - 0x1533780)]
0x3a936 LDR             R3, =byte_1535594
0x3a938 LDRB            R3, [R3]
0x3a93a CMP             R3, #0
0x3a93c BEQ             loc_3A94A
0x3a93e LDR             R3, =dword_1500058
0x3a940 LDR             R3, [R3]
0x3a942 CMP             R3, #0
0x3a944 BNE             loc_3A94A
0x3a946 BL              sub_2E238
0x3a94a POP             {R4,R5}
0x3a94c POP             {R0}
0x3a94e BX              R0