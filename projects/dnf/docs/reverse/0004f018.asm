0x4f018 PUSH            {R4-R7,LR}
0x4f01a LDR             R3, =dword_1501D90
0x4f01c LDR             R3, [R3]
0x4f01e LDR             R3, [R3,#0x10]
0x4f020 SUB             SP, SP, #0xC
0x4f022 MOVS            R0, #0
0x4f024 STR             R3, [SP,#0xC+var_8]
0x4f026 STR             R0, [SP,#0xC+var_4]
0x4f028 B               loc_4F11E
0x4f02a MOVS            R3, #0xE2
0x4f02c LDR             R0, [SP,#0xC+var_4]
0x4f02e LSLS            R3, R3, #1
0x4f030 LDR             R3, [R1,R3]; dword_1533464
0x4f032 LSLS            R2, R0, #4
0x4f034 ADDS            R0, R2, R3
0x4f036 LDRB            R3, [R0]
0x4f038 CMP             R3, #2
0x4f03a BNE             loc_4F118
0x4f03c LDR             R1, [SP,#0xC+var_8]
0x4f03e LDRH            R3, [R1,#0x3A]
0x4f040 MOVS            R1, #6
0x4f042 LDRSH           R2, [R0,R1]
0x4f044 LSLS            R3, R3, #0x10
0x4f046 ASRS            R1, R3, #0x10
0x4f048 CMP             R2, R1
0x4f04a BGT             loc_4F118
0x4f04c MOVS            R2, #0xA
0x4f04e LDRSH           R3, [R0,R2]
0x4f050 CMP             R3, R1
0x4f052 BLT             loc_4F118
0x4f054 LDR             R1, [SP,#0xC+var_8]
0x4f056 LDRH            R3, [R1,#0x3C]
0x4f058 MOVS            R1, #8
0x4f05a LDRSH           R2, [R0,R1]
0x4f05c LSLS            R3, R3, #0x10
0x4f05e ASRS            R1, R3, #0x10
0x4f060 CMP             R2, R1
0x4f062 BGT             loc_4F118
0x4f064 MOVS            R2, #0xC
0x4f066 LDRSH           R3, [R0,R2]
0x4f068 CMP             R3, R1
0x4f06a BLT             loc_4F118
0x4f06c LDR             R3, =dword_1501D90
0x4f06e LDR             R2, [R3]
0x4f070 LDR             R3, =0x1AE8
0x4f072 LDRB            R3, [R2,R3]
0x4f074 CMP             R3, #0
0x4f076 BEQ             loc_4F084
0x4f078 LSLS            R3, R3, #0x18
0x4f07a ASRS            R3, R3, #0x18
0x4f07c CMP             R3, #0x14
0x4f07e BEQ             loc_4F084
0x4f080 CMP             R3, #0xB
0x4f082 BNE             loc_4F118
0x4f084 LDRB            R3, [R0,#4]
0x4f086 SUBS            R3, #0x64 ; 'd'
0x4f088 LSLS            R3, R3, #0x18
0x4f08a LSRS            R5, R3, #0x18
0x4f08c MOVS            R0, R5
0x4f08e LDR             R7, =(sub_1F3E0+1)
0x4f090 BL              sub_66A7E
0x4f094 LSLS            R0, R0, #0x18
0x4f096 LSRS            R0, R0, #0x18
0x4f098 LDR             R3, =(sub_1F2C4+1)
0x4f09a BL              sub_66A76
0x4f09e CMP             R0, #0
0x4f0a0 BEQ             loc_4F118
0x4f0a2 LDR             R3, =word_15332A0
0x4f0a4 MOVS            R6, #0xD4
0x4f0a6 STR             R3, [SP,#0xC+var_C]
0x4f0a8 LSLS            R6, R6, #1
0x4f0aa MOVS            R0, R5
0x4f0ac LDR             R4, [R3,R6]; dword_1533448
0x4f0ae BL              sub_66A7E
0x4f0b2 LSLS            R0, R0, #0x18
0x4f0b4 ASRS            R0, R0, #0x18
0x4f0b6 LSLS            R3, R0, #1
0x4f0b8 ADDS            R3, R3, R0
0x4f0ba LSLS            R3, R3, #2
0x4f0bc ADDS            R3, R3, R4
0x4f0be LDRB            R3, [R3,#7]
0x4f0c0 LSLS            R3, R3, #0x18
0x4f0c2 ASRS            R3, R3, #0x18
0x4f0c4 CMP             R3, #2
0x4f0c6 BEQ             loc_4F0E8
0x4f0c8 LDR             R0, [SP,#0xC+var_C]
0x4f0ca LDR             R4, [R0,R6]; dword_1533448
0x4f0cc MOVS            R0, R5
0x4f0ce BL              sub_66A7E
0x4f0d2 LSLS            R0, R0, #0x18
0x4f0d4 ASRS            R0, R0, #0x18
0x4f0d6 LSLS            R3, R0, #1
0x4f0d8 ADDS            R3, R3, R0
0x4f0da LSLS            R3, R3, #2
0x4f0dc ADDS            R3, R3, R4
0x4f0de LDRB            R3, [R3,#7]
0x4f0e0 LSLS            R3, R3, #0x18
0x4f0e2 ASRS            R3, R3, #0x18
0x4f0e4 CMP             R3, #3
0x4f0e6 BNE             loc_4F0F4
0x4f0e8 LSLS            R0, R5, #0x18
0x4f0ea ASRS            R0, R0, #0x18
0x4f0ec MOVS            R1, #0
0x4f0ee BL              sub_4EE2C
0x4f0f2 B               loc_4F118
0x4f0f4 CMP             R5, #0x1E
0x4f0f6 BEQ             loc_4F118
0x4f0f8 CMP             R5, #0x20 ; ' '
0x4f0fa BEQ             loc_4F118
0x4f0fc CMP             R5, #0x21 ; '!'
0x4f0fe BEQ             loc_4F118
0x4f100 MOVS            R0, R5
0x4f102 BL              sub_4ED6C
0x4f106 LDR             R3, =byte_1500064
0x4f108 MOVS            R2, #0
0x4f10a STRB            R2, [R3]
0x4f10c MOVS            R0, #1
0x4f10e MOVS            R1, #0x19
0x4f110 MOVS            R3, #0
0x4f112 LDR             R4, =(sub_1404+1)
0x4f114 BL              sub_66A78
0x4f118 LDR             R1, [SP,#0xC+var_4]
0x4f11a ADDS            R1, #1
0x4f11c STR             R1, [SP,#0xC+var_4]
0x4f11e LDR             R1, =word_15332A0
0x4f120 MOVS            R3, #(byte_153345C - 0x15332A0)
0x4f124 LDRB            R3, [R1,R3]; byte_153345C
0x4f126 LDR             R2, [SP,#0xC+var_4]
0x4f128 CMP             R2, R3
0x4f12a BGE             loc_4F12E
0x4f12c B               loc_4F02A
0x4f12e ADD             SP, SP, #0xC
0x4f130 POP             {R4-R7}
0x4f132 POP             {R0}
0x4f134 BX              R0