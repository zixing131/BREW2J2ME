0x39ff4 PUSH            {R4-R7,LR}
0x39ff6 SUB             SP, SP, #0x44
0x39ff8 LDR             R3, =aReactiondataBd; "reactionData.bd"
0x39ffa ADD             R0, SP, #0x44+var_1C
0x39ffc MOVS            R1, R0
0x39ffe MOVS            R2, R3
0x3a000 LDM             R2!, {R4-R6}; "reactionData.bd"
0x3a002 STM             R1!, {R4-R6}
0x3a004 LDR             R3, [R3,#(aReactiondataBd+0xC - 0x9641C)]; ".bd"
0x3a006 STR             R3, [SP,#0x44+var_1C+0xC]
0x3a008 MOVS            R3, #0
0x3a00a STR             R3, [SP,#0x44+var_C]
0x3a00c LDR             R3, =0x6CBE1
0x3a00e BL              sub_66A76
0x3a012 STR             R0, [SP,#0x44+var_34]
0x3a014 CMP             R0, #0
0x3a016 BNE             loc_3A01A
0x3a018 B               loc_3A224
0x3a01a MOVS            R1, R0
0x3a01c LDR             R5, =unk_140327C
0x3a01e ADDS            R1, #2
0x3a020 MOVS            R2, #4
0x3a022 ADD             R0, SP, #0x44+var_8
0x3a024 BL              sub_66A7A
0x3a028 LDR             R1, [SP,#0x44+var_34]
0x3a02a MOVS            R2, #4
0x3a02c ADDS            R1, #6
0x3a02e ADD             R0, SP, #0x44+var_4
0x3a030 BL              sub_66A7A
0x3a034 LDR             R0, [SP,#0x44+var_8]
0x3a036 LDR             R6, =unk_14032EC
0x3a038 ADDS            R0, #2
0x3a03a BL              sub_66A7C
0x3a03e STR             R0, [SP,#0x44+var_30]
0x3a040 LDR             R0, [SP,#0x44+var_34]
0x3a042 MOVS            R1, #6
0x3a044 LDR             R3, [SP,#0x44+var_4]
0x3a046 LDR             R2, [SP,#0x44+var_8]
0x3a048 STR             R1, [SP,#0x44+var_44]
0x3a04a LDR             R4, =0x692B5
0x3a04c LDR             R1, [SP,#0x44+var_30]
0x3a04e ADDS            R0, #0xA
0x3a050 BL              sub_66A78
0x3a054 LDR             R4, =byte_1534728
0x3a056 MOVS            R2, #2
0x3a058 MOVS            R0, R4
0x3a05a LDR             R1, [SP,#0x44+var_30]
0x3a05c SUBS            R4, #4
0x3a05e BL              sub_66A7A
0x3a062 LDRB            R0, [R4,#(byte_1534728 - 0x1534724)]
0x3a064 LSLS            R0, R0, #3
0x3a066 ADDS            R0, #2
0x3a068 LDR             R7, [SP,#0x44+var_30]
0x3a06a BL              sub_66A7C
0x3a06e ADDS            R7, #2
0x3a070 MOVS            R2, #0
0x3a072 STR             R0, [R4]
0x3a074 STR             R0, [R4,#(dword_153472C - 0x1534724)]
0x3a076 STR             R2, [SP,#0x44+var_2C]
0x3a078 B               loc_3A0B0
0x3a07a LDR             R3, [SP,#0x44+var_2C]
0x3a07c LDR             R0, [R6,#(dword_153472C - 0x1534724)]
0x3a07e LSLS            R4, R3, #3
0x3a080 MOVS            R1, R7
0x3a082 ADDS            R0, R4, R0
0x3a084 MOVS            R2, #2
0x3a086 BL              sub_66A7A
0x3a08a LDR             R0, [R6,#(dword_153472C - 0x1534724)]
0x3a08c ADDS            R0, R4, R0
0x3a08e LDR             R1, [SP,#0x44+var_38]
0x3a090 MOVS            R2, #2
0x3a092 ADDS            R0, #2
0x3a094 BL              sub_66A7A
0x3a098 LDR             R3, [R6,#(dword_153472C - 0x1534724)]
0x3a09a ADDS            R4, R4, R3
0x3a09c ADDS            R4, #4
0x3a09e ADDS            R1, R7, #4
0x3a0a0 MOVS            R0, R4
0x3a0a2 MOVS            R2, #1
0x3a0a4 BL              sub_66A7A
0x3a0a8 LDR             R4, [SP,#0x44+var_2C]
0x3a0aa ADDS            R4, #1
0x3a0ac STR             R4, [SP,#0x44+var_2C]
0x3a0ae ADDS            R7, #5
0x3a0b0 LDR             R6, =dword_1534724
0x3a0b2 LDR             R4, [SP,#0x44+var_2C]
0x3a0b4 LDRB            R3, [R6,#(byte_1534728 - 0x1534724)]
0x3a0b6 ADDS            R2, R7, #2
0x3a0b8 LDR             R5, =unk_140327C
0x3a0ba STR             R2, [SP,#0x44+var_38]
0x3a0bc CMP             R4, R3
0x3a0be BLT             loc_3A07A
0x3a0c0 LDR             R4, =byte_1533BE8
0x3a0c2 MOVS            R1, R7
0x3a0c4 MOVS            R0, R4
0x3a0c6 MOVS            R2, #2
0x3a0c8 SUBS            R4, #4
0x3a0ca BL              sub_66A7A
0x3a0ce LDRB            R3, [R4,#(byte_1533BE8 - 0x1533BE4)]
0x3a0d0 LSLS            R0, R3, #1
0x3a0d2 ADDS            R0, R0, R3
0x3a0d4 LSLS            R0, R0, #2
0x3a0d6 ADDS            R0, #2
0x3a0d8 LDR             R3, =unk_14032EC
0x3a0da LDR             R6, [SP,#0x44+var_38]
0x3a0dc BL              sub_66A76
0x3a0e0 MOVS            R5, #0
0x3a0e2 MOVS            R7, #0
0x3a0e4 STR             R0, [R4]
0x3a0e6 STR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a0e8 STR             R5, [SP,#0x44+var_28]
0x3a0ea B               loc_3A148
0x3a0ec LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a0ee MOVS            R1, R6
0x3a0f0 ADDS            R0, R7, R0
0x3a0f2 MOVS            R2, #2
0x3a0f4 BL              sub_66A7A
0x3a0f8 LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a0fa ADDS            R0, R7, R0
0x3a0fc LDR             R1, [SP,#0x44+var_3C]
0x3a0fe MOVS            R2, #1
0x3a100 ADDS            R0, #2
0x3a102 BL              sub_66A7A
0x3a106 LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a108 ADDS            R0, R7, R0
0x3a10a ADDS            R1, R6, #3
0x3a10c MOVS            R2, #1
0x3a10e ADDS            R0, #4
0x3a110 BL              sub_66A7A
0x3a114 LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a116 ADDS            R0, R7, R0
0x3a118 ADDS            R1, R6, #4
0x3a11a MOVS            R2, #1
0x3a11c ADDS            R0, #6
0x3a11e BL              sub_66A7A
0x3a122 LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a124 ADDS            R0, R7, R0
0x3a126 ADDS            R1, R6, #5
0x3a128 MOVS            R2, #1
0x3a12a ADDS            R0, #7
0x3a12c BL              sub_66A7A
0x3a130 LDR             R0, [R4,#(dword_1533BEC - 0x1533BE4)]
0x3a132 ADDS            R0, R7, R0
0x3a134 ADDS            R1, R6, #6
0x3a136 MOVS            R2, #1
0x3a138 ADDS            R0, #8
0x3a13a BL              sub_66A7A
0x3a13e LDR             R2, [SP,#0x44+var_28]
0x3a140 ADDS            R2, #1
0x3a142 STR             R2, [SP,#0x44+var_28]
0x3a144 ADDS            R6, #7
0x3a146 ADDS            R7, #0xC
0x3a148 LDR             R4, =dword_1533BE4
0x3a14a ADDS            R2, R6, #2
0x3a14c LDRB            R3, [R4,#(byte_1533BE8 - 0x1533BE4)]
0x3a14e STR             R2, [SP,#0x44+var_3C]
0x3a150 LDR             R2, [SP,#0x44+var_28]
0x3a152 LDR             R5, =unk_140327C
0x3a154 CMP             R2, R3
0x3a156 BLT             loc_3A0EC
0x3a158 LDR             R4, =byte_1534D94
0x3a15a MOVS            R1, R6
0x3a15c MOVS            R0, R4
0x3a15e MOVS            R2, #2
0x3a160 SUBS            R4, #4
0x3a162 BL              sub_66A7A
0x3a166 LDRB            R0, [R4,#(byte_1534D94 - 0x1534D90)]
0x3a168 LSLS            R0, R0, #2
0x3a16a LDR             R3, =unk_14032EC
0x3a16c ADDS            R0, #2
0x3a16e LDR             R7, [SP,#0x44+var_3C]
0x3a170 BL              sub_66A76
0x3a174 MOVS            R3, #0
0x3a176 STR             R0, [R4]
0x3a178 STR             R0, [R4,#(dword_1534D98 - 0x1534D90)]
0x3a17a B               loc_3A1A2
0x3a17c LDR             R2, [SP,#0x44+var_24]
0x3a17e LDR             R0, [R6,#(dword_1534D98 - 0x1534D90)]
0x3a180 LSLS            R4, R2, #2
0x3a182 MOVS            R1, R7
0x3a184 ADDS            R0, R4, R0
0x3a186 MOVS            R2, #1
0x3a188 BL              sub_66A7A
0x3a18c LDR             R3, [R6,#(dword_1534D98 - 0x1534D90)]
0x3a18e ADDS            R4, R4, R3
0x3a190 ADDS            R4, #1
0x3a192 ADDS            R1, R7, #1
0x3a194 MOVS            R0, R4
0x3a196 MOVS            R2, #1
0x3a198 BL              sub_66A7A
0x3a19c LDR             R3, [SP,#0x44+var_24]
0x3a19e LDR             R7, [SP,#0x44+var_40]
0x3a1a0 ADDS            R3, #1
0x3a1a2 STR             R3, [SP,#0x44+var_24]
0x3a1a4 LDR             R6, =dword_1534D90
0x3a1a6 LDR             R2, [SP,#0x44+var_24]
0x3a1a8 LDRB            R3, [R6,#(byte_1534D94 - 0x1534D90)]
0x3a1aa ADDS            R4, R7, #2
0x3a1ac LDR             R5, =unk_140327C
0x3a1ae STR             R4, [SP,#0x44+var_40]
0x3a1b0 CMP             R2, R3
0x3a1b2 BLT             loc_3A17C
0x3a1b4 LDR             R4, =byte_15340C8
0x3a1b6 MOVS            R1, R7
0x3a1b8 MOVS            R0, R4
0x3a1ba MOVS            R2, #2
0x3a1bc SUBS            R4, #4
0x3a1be BL              sub_66A7A
0x3a1c2 LDRB            R0, [R4,#(byte_15340C8 - 0x15340C4)]
0x3a1c4 LSLS            R0, R0, #2
0x3a1c6 LDR             R3, =unk_14032EC
0x3a1c8 ADDS            R0, #2
0x3a1ca LDR             R7, [SP,#0x44+var_40]
0x3a1cc BL              sub_66A76
0x3a1d0 MOVS            R3, #0
0x3a1d2 STR             R0, [R4]
0x3a1d4 STR             R0, [R4,#(dword_15340CC - 0x15340C4)]
0x3a1d6 STR             R3, [SP,#0x44+var_20]
0x3a1d8 B               loc_3A204
0x3a1da LDR             R5, [SP,#0x44+var_20]
0x3a1dc LDR             R0, [R6,#(dword_15340CC - 0x15340C4)]
0x3a1de LSLS            R4, R5, #2
0x3a1e0 MOVS            R1, R7
0x3a1e2 ADDS            R0, R4, R0
0x3a1e4 MOVS            R2, #1
0x3a1e6 LDR             R5, =unk_140327C
0x3a1e8 BL              sub_66A7A
0x3a1ec LDR             R3, [R6,#(dword_15340CC - 0x15340C4)]
0x3a1ee ADDS            R4, R4, R3
0x3a1f0 ADDS            R4, #1
0x3a1f2 ADDS            R1, R7, #1
0x3a1f4 MOVS            R0, R4
0x3a1f6 MOVS            R2, #1
0x3a1f8 BL              sub_66A7A
0x3a1fc LDR             R6, [SP,#0x44+var_20]
0x3a1fe ADDS            R6, #1
0x3a200 STR             R6, [SP,#0x44+var_20]
0x3a202 ADDS            R7, #2
0x3a204 LDR             R6, =dword_15340C4
0x3a206 LDR             R2, [SP,#0x44+var_20]
0x3a208 LDRB            R3, [R6,#(byte_15340C8 - 0x15340C4)]
0x3a20a CMP             R2, R3
0x3a20c BLT             loc_3A1DA
0x3a20e LDR             R3, [SP,#0x44+var_30]
0x3a210 CMP             R3, #0
0x3a212 BEQ             loc_3A21C
0x3a214 MOVS            R0, R3
0x3a216 LDR             R3, =unk_14032FC
0x3a218 BL              sub_66A76
0x3a21c LDR             R0, [SP,#0x44+var_34]
0x3a21e LDR             R3, =unk_14032FC
0x3a220 BL              sub_66A76
0x3a224 ADD             SP, SP, #0x44 ; 'D'
0x3a226 POP             {R4-R7}
0x3a228 POP             {R0}
0x3a22a BX              R0