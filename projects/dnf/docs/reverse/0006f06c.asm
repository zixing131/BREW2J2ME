0x6f06c PUSH            {R4-R7,LR}
0x6f06e SUB             SP, SP, #0x20
0x6f070 ADD             R0, SP, #0x20+var_8
0x6f072 LDR             R3, =(sub_2CD18+1)
0x6f074 BL              sub_71334
0x6f078 LDR             R7, =dword_1501C04
0x6f07a LDR             R2, [R7]
0x6f07c CMP             R2, #0xF0
0x6f07e BNE             loc_6F0D2
0x6f080 LDR             R6, =dword_1501DB8
0x6f082 MOVS            R3, #0xB
0x6f084 MOVS            R4, #0
0x6f086 STR             R3, [SP,#0x20+var_1C]
0x6f088 ADD             R3, SP, #0x20+var_8
0x6f08a STR             R3, [SP,#0x20+var_14]
0x6f08c MOVS            R0, #0xD0
0x6f08e MOVS            R1, #0x1C
0x6f090 MOVS            R2, #0
0x6f092 MOVS            R3, #0
0x6f094 LDR             R5, =(sub_6ADB8+1)
0x6f096 STR             R6, [SP,#0x20+var_20]
0x6f098 STR             R4, [SP,#0x20+var_18]
0x6f09a STR             R4, [SP,#0x20+var_10]
0x6f09c BL              sub_71338
0x6f0a0 LDR             R0, [R7]
0x6f0a2 MOVS            R3, #0x10
0x6f0a4 STR             R3, [SP,#0x20+var_1C]
0x6f0a6 ADD             R3, SP, #0x20+var_8
0x6f0a8 SUBS            R0, #0x1E
0x6f0aa STR             R3, [SP,#0x20+var_14]
0x6f0ac MOVS            R1, #0x16
0x6f0ae MOVS            R3, #0
0x6f0b0 STR             R6, [SP,#0x20+var_20]
0x6f0b2 STR             R4, [SP,#0x20+var_18]
0x6f0b4 STR             R4, [SP,#0x20+var_10]
0x6f0b6 MOVS            R2, #0
0x6f0b8 BL              sub_71338
0x6f0bc LDR             R0, [R7]
0x6f0be MOVS            R3, #0x11
0x6f0c0 STR             R3, [SP,#0x20+var_1C]
0x6f0c2 SUBS            R0, #0x1A
0x6f0c4 ADD             R3, SP, #0x20+var_8
0x6f0c6 MOVS            R1, #0x16
0x6f0c8 STR             R6, [SP,#0x20+var_20]
0x6f0ca STR             R4, [SP,#0x20+var_18]
0x6f0cc STR             R3, [SP,#0x20+var_14]
0x6f0ce STR             R4, [SP,#0x20+var_10]
0x6f0d0 B               loc_6F126
0x6f0d2 MOVS            R3, #0x140
0x6f0d6 CMP             R2, R3
0x6f0d8 BNE             loc_6F12E
0x6f0da LDR             R6, =dword_1501DB8
0x6f0dc MOVS            R3, #0xB
0x6f0de MOVS            R4, #0
0x6f0e0 STR             R3, [SP,#0x20+var_1C]
0x6f0e2 ADD             R3, SP, #0x20+var_8
0x6f0e4 STR             R3, [SP,#0x20+var_14]
0x6f0e6 MOVS            R0, #0xF9
0x6f0e8 MOVS            R1, #0x10
0x6f0ea MOVS            R2, #0
0x6f0ec MOVS            R3, #0
0x6f0ee LDR             R5, =(sub_6ADB8+1)
0x6f0f0 STR             R6, [SP,#0x20+var_20]
0x6f0f2 STR             R4, [SP,#0x20+var_18]
0x6f0f4 STR             R4, [SP,#0x20+var_10]
0x6f0f6 BL              sub_71338
0x6f0fa MOVS            R3, #0x10
0x6f0fc STR             R3, [SP,#0x20+var_1C]
0x6f0fe ADD             R3, SP, #0x20+var_8
0x6f100 STR             R3, [SP,#0x20+var_14]
0x6f102 MOVS            R0, #0xFB
0x6f104 MOVS            R1, #0xA
0x6f106 MOVS            R3, #0
0x6f108 STR             R6, [SP,#0x20+var_20]
0x6f10a STR             R4, [SP,#0x20+var_18]
0x6f10c STR             R4, [SP,#0x20+var_10]
0x6f10e MOVS            R2, #0
0x6f110 BL              sub_71338
0x6f114 MOVS            R3, #0x11
0x6f116 STR             R3, [SP,#0x20+var_1C]
0x6f118 ADD             R3, SP, #0x20+var_8
0x6f11a STR             R6, [SP,#0x20+var_20]
0x6f11c STR             R4, [SP,#0x20+var_18]
0x6f11e STR             R3, [SP,#0x20+var_14]
0x6f120 STR             R4, [SP,#0x20+var_10]
0x6f122 MOVS            R0, #0xFF
0x6f124 MOVS            R1, #0xA
0x6f126 MOVS            R2, #0
0x6f128 MOVS            R3, #0
0x6f12a BL              sub_71338
0x6f12e LDR             R3, =word_15364E2
0x6f130 LDRH            R3, [R3]
0x6f132 CMP             R3, #4
0x6f134 BEQ             loc_6F19A
0x6f136 LDR             R3, =byte_1536760
0x6f138 LDRB            R3, [R3]
0x6f13a CMP             R3, #3
0x6f13c BNE             loc_6F19A
0x6f13e LDR             R3, =dword_1501C04
0x6f140 LDR             R2, [R3]
0x6f142 CMP             R2, #0xF0
0x6f144 BNE             loc_6F152
0x6f146 LDR             R4, =unk_15358E0
0x6f148 MOVS            R3, #0xE4
0x6f14a STRH            R3, [R4,#(word_15358E8 - 0x15358E0)]
0x6f14c MOVS            R3, #0x134
0x6f150 B               loc_6F168
0x6f152 MOVS            R3, #0x140
0x6f156 CMP             R2, R3
0x6f158 BNE             loc_6F19A
0x6f15a LDR             R4, =unk_15358E0
0x6f15c MOVS            R3, #0x10C
0x6f160 STRH            R3, [R4,#(word_15358E8 - 0x15358E0)]
0x6f162 LDR             R3, =dword_1501BF0
0x6f164 LDR             R3, [R3]
0x6f166 SUBS            R3, #0xC
0x6f168 LDR             R5, =dword_1501C30
0x6f16a STRH            R3, [R4,#(word_15358EA - 0x15358E0)]
0x6f16c MOVS            R3, #0x44 ; 'D'
0x6f16e STRB            R3, [R4,#(byte_15358E7 - 0x15358E0)]
0x6f170 MOVS            R1, R4
0x6f172 MOVS            R0, R5
0x6f174 MOVS            R2, #0
0x6f176 LDR             R3, =(sub_6E16C+1)
0x6f178 BL              sub_71334
0x6f17c LDRB            R3, [R4,#(byte_15358EC - 0x15358E0)]
0x6f17e LDRH            R0, [R4,#(word_15358E8 - 0x15358E0)]
0x6f180 LDRH            R1, [R4,#(word_15358EA - 0x15358E0)]
0x6f182 STR             R3, [SP,#0x20+var_20]
0x6f184 MOVS            R3, #0
0x6f186 STR             R3, [SP,#0x20+var_1C]
0x6f188 STR             R3, [SP,#0x20+var_18]
0x6f18a STR             R3, [SP,#0x20+var_14]
0x6f18c STR             R3, [SP,#0x20+var_10]
0x6f18e STR             R3, [SP,#0x20+var_C]
0x6f190 MOVS            R2, R5
0x6f192 MOVS            R3, R4
0x6f194 LDR             R4, =(sub_6B350+1)
0x6f196 BL              sub_71336
0x6f19a ADD             SP, SP, #0x20 ; ' '
0x6f19c POP             {R4-R7}
0x6f19e POP             {R0}
0x6f1a0 BX              R0