0x6a8c4 PUSH            {R4-R7,LR}
0x6a8c6 SUB             SP, SP, #8
0x6a8c8 LDR             R3, =(sub_66AA4+1)
0x6a8ca MOVS            R7, R0
0x6a8cc MOVS            R4, R1
0x6a8ce BL              sub_6BB36
0x6a8d2 MOVS            R6, R0
0x6a8d4 CMP             R4, #0
0x6a8d6 BEQ             loc_6A94A
0x6a8d8 LDR             R3, =dword_1535C88
0x6a8da MOVS            R4, R0
0x6a8dc LDR             R0, [R3]
0x6a8de LDR             R3, =(sub_676B4+1)
0x6a8e0 BL              sub_6BB36
0x6a8e4 ADDS            R4, #0xA
0x6a8e6 LDR             R5, =dword_1535DCC
0x6a8e8 SUBS            R7, R7, R4
0x6a8ea LDR             R4, =dword_1501C04
0x6a8ec STR             R0, [R5]
0x6a8ee LDR             R2, [R4]
0x6a8f0 MOVS            R0, #2
0x6a8f2 MOVS            R3, R6
0x6a8f4 STR             R0, [SP,#8+var_4]
0x6a8f6 MOVS            R0, #1
0x6a8f8 ADDS            R1, R7, #1
0x6a8fa ADDS            R2, #1
0x6a8fc ADDS            R3, #9
0x6a8fe MOVS            R6, #0
0x6a900 NEGS            R0, R0
0x6a902 STR             R6, [SP,#8+var_8]
0x6a904 BL              sub_6A89C
0x6a908 LDR             R1, =dword_1535C84
0x6a90a LDR             R2, [R5]
0x6a90c LDR             R3, [R1]
0x6a90e ADDS            R3, R3, R2
0x6a910 CMP             R3, #0
0x6a912 BGT             loc_6A92C
0x6a914 LDR             R3, [R4]
0x6a916 LDR             R2, =byte_1535C8C
0x6a918 STR             R3, [R1]
0x6a91a LDRB            R3, [R2]
0x6a91c ADDS            R3, #1
0x6a91e LSLS            R3, R3, #0x18
0x6a920 LSRS            R3, R3, #0x18
0x6a922 STRB            R3, [R2]
0x6a924 CMP             R3, #2
0x6a926 BLS             loc_6A92C
0x6a928 LDR             R3, =byte_1535D8C
0x6a92a STRB            R6, [R3]
0x6a92c LDR             R3, =dword_1535C84
0x6a92e LDR             R0, [R3]
0x6a930 SUBS            R0, #3
0x6a932 STR             R0, [R3]
0x6a934 LDR             R3, =dword_1535C88
0x6a936 LDR             R2, [R3]
0x6a938 MOVS            R3, #0
0x6a93a STR             R3, [SP,#8+var_8]
0x6a93c LDR             R3, =0xFFFFFF00
0x6a93e ADDS            R1, R7, #5
0x6a940 STR             R3, [SP,#8+var_4]
0x6a942 LDR             R4, =(sub_676E8+1)
0x6a944 MOVS            R3, #0
0x6a946 BL              sub_6BB38
0x6a94a ADD             SP, SP, #8
0x6a94c POP             {R4-R7}
0x6a94e POP             {R0}
0x6a950 BX              R0