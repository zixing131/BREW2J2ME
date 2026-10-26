0x6b158 PUSH            {R4-R7,LR}
0x6b15a SUB             SP, SP, #0x3C
0x6b15c STR             R3, [SP,#0x3C+var_24]
0x6b15e LDR             R3, [SP,#0x3C+arg_8]
0x6b160 LSLS            R3, R3, #0x18
0x6b162 LSRS            R3, R3, #0x18
0x6b164 STR             R0, [SP,#0x3C+var_18]
0x6b166 STR             R1, [SP,#0x3C+var_1C]
0x6b168 STR             R2, [SP,#0x3C+var_20]
0x6b16a STR             R3, [SP,#0x3C+var_28]
0x6b16c LDR             R2, [SP,#0x3C+arg_C]
0x6b16e LDRB            R3, [R2]
0x6b170 ADD             R1, SP, #0x3C+var_8
0x6b172 STRB            R3, [R1]
0x6b174 LDRB            R3, [R2,#1]
0x6b176 STRB            R3, [R1,#1]
0x6b178 LDRB            R3, [R2,#2]
0x6b17a STRB            R3, [R1,#2]
0x6b17c LDRB            R3, [R2,#3]
0x6b17e STRB            R3, [R1,#3]
0x6b180 ADDS            R3, #1
0x6b182 LDRB            R2, [R2,#4]
0x6b184 LDR             R0, [SP,#0x3C+arg_4]
0x6b186 LSLS            R3, R3, #0x18
0x6b188 LSRS            R3, R3, #0x18
0x6b18a STRB            R2, [R1,#4]
0x6b18c STR             R3, [SP,#0x3C+var_C]
0x6b18e LSLS            R3, R0, #1
0x6b190 ADDS            R3, R3, R0
0x6b192 LSLS            R3, R3, #2
0x6b194 MOVS            R0, #0
0x6b196 MOVS            R7, #0
0x6b198 STR             R3, [SP,#0x3C+var_14]
0x6b19a STR             R0, [SP,#0x3C+var_10]
0x6b19c B               loc_6B218
0x6b19e LDR             R1, [R2,#8]
0x6b1a0 ADDS            R1, R7, R1
0x6b1a2 MOVS            R0, #2
0x6b1a4 LDRSH           R3, [R1,R0]
0x6b1a6 LDRB            R2, [R1,#1]
0x6b1a8 LDR             R0, [SP,#0x3C+var_C]
0x6b1aa MOV             R12, R2
0x6b1ac MOVS            R2, R0
0x6b1ae MULS            R2, R3
0x6b1b0 MOVS            R0, #4
0x6b1b2 LDRSH           R3, [R1,R0]
0x6b1b4 LDR             R0, [SP,#0x3C+var_C]
0x6b1b6 LDRB            R4, [R1]
0x6b1b8 LDRB            R6, [R1,#6]
0x6b1ba MULS            R3, R0
0x6b1bc LDR             R1, [SP,#0x3C+arg_0]
0x6b1be LDRB            R0, [R1,#2]
0x6b1c0 LSLS            R1, R0, #2
0x6b1c2 ADDS            R1, R1, R0
0x6b1c4 LSLS            R1, R1, #1
0x6b1c6 LDR             R0, [SP,#0x3C+arg_0]
0x6b1c8 ADDS            R1, R1, R4
0x6b1ca LSLS            R1, R1, #1
0x6b1cc ADDS            R1, R1, R0
0x6b1ce MOVS            R0, #0x194
0x6b1d2 ADDS            R1, R1, R0
0x6b1d4 LDRH            R1, [R1]
0x6b1d6 ADD             R5, SP, #0x3C+var_8
0x6b1d8 STRB            R1, [R5,#4]
0x6b1da LDR             R1, [SP,#0x3C+var_20]
0x6b1dc LSLS            R2, R2, #0x10
0x6b1de LDR             R0, [SP,#0x3C+var_24]
0x6b1e0 ASRS            R2, R2, #0x10
0x6b1e2 LSLS            R3, R3, #0x10
0x6b1e4 ADDS            R2, R1, R2
0x6b1e6 ASRS            R3, R3, #0x10
0x6b1e8 LSLS            R1, R4, #1
0x6b1ea ADDS            R3, R0, R3
0x6b1ec ADDS            R1, R1, R4
0x6b1ee MOVS            R0, #0xCD
0x6b1f0 LDR             R4, [SP,#0x3C+arg_0]
0x6b1f2 LSLS            R0, R0, #2
0x6b1f4 LDR             R0, [R4,R0]
0x6b1f6 LSLS            R1, R1, #3
0x6b1f8 ADDS            R1, R1, R0
0x6b1fa STR             R1, [SP,#0x3C+var_3C]
0x6b1fc LDR             R1, [SP,#0x3C+var_28]
0x6b1fe MOV             R0, R12
0x6b200 STR             R0, [SP,#0x3C+var_38]
0x6b202 STR             R1, [SP,#0x3C+var_34]
0x6b204 LDR             R0, [SP,#0x3C+var_18]
0x6b206 LDR             R1, [SP,#0x3C+var_1C]
0x6b208 STR             R5, [SP,#0x3C+var_30]
0x6b20a STR             R6, [SP,#0x3C+var_2C]
0x6b20c BL              sub_6ADB8
0x6b210 LDR             R2, [SP,#0x3C+var_10]
0x6b212 ADDS            R2, #1
0x6b214 STR             R2, [SP,#0x3C+var_10]
0x6b216 ADDS            R7, #0xC
0x6b218 MOVS            R3, #0xCC
0x6b21a LDR             R4, [SP,#0x3C+arg_0]
0x6b21c LSLS            R3, R3, #2
0x6b21e LDR             R3, [R4,R3]
0x6b220 LDR             R0, [SP,#0x3C+var_14]
0x6b222 ADDS            R2, R0, R3
0x6b224 LDRB            R3, [R2]
0x6b226 LDR             R1, [SP,#0x3C+var_10]
0x6b228 CMP             R1, R3
0x6b22a BLT             loc_6B19E
0x6b22c ADD             SP, SP, #0x3C ; '<'
0x6b22e POP             {R4-R7}
0x6b230 POP             {R0}
0x6b232 BX              R0