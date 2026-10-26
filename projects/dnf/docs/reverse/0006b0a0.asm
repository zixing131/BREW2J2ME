0x6b0a0 PUSH            {R4-R7,LR}
0x6b0a2 SUB             SP, SP, #0x38
0x6b0a4 STR             R3, [SP,#0x38+var_20]
0x6b0a6 LDR             R3, [SP,#0x38+arg_8]
0x6b0a8 LSLS            R3, R3, #0x18
0x6b0aa LSRS            R3, R3, #0x18
0x6b0ac STR             R0, [SP,#0x38+var_14]
0x6b0ae STR             R1, [SP,#0x38+var_18]
0x6b0b0 STR             R2, [SP,#0x38+var_1C]
0x6b0b2 STR             R3, [SP,#0x38+var_24]
0x6b0b4 LDR             R2, [SP,#0x38+arg_C]
0x6b0b6 LDRB            R3, [R2]
0x6b0b8 ADD             R1, SP, #0x38+var_8
0x6b0ba STRB            R3, [R1]
0x6b0bc LDRB            R3, [R2,#1]
0x6b0be STRB            R3, [R1,#1]
0x6b0c0 LDRB            R3, [R2,#2]
0x6b0c2 STRB            R3, [R1,#2]
0x6b0c4 LDRB            R3, [R2,#3]
0x6b0c6 STRB            R3, [R1,#3]
0x6b0c8 ADDS            R3, #1
0x6b0ca LDRB            R2, [R2,#4]
0x6b0cc LDR             R0, [SP,#0x38+arg_4]
0x6b0ce LSLS            R3, R3, #0x18
0x6b0d0 LSRS            R3, R3, #0x18
0x6b0d2 STRB            R2, [R1,#4]
0x6b0d4 STR             R3, [SP,#0x38+var_C]
0x6b0d6 LSLS            R3, R0, #1
0x6b0d8 ADDS            R3, R3, R0
0x6b0da LSLS            R3, R3, #2
0x6b0dc MOVS            R7, #0
0x6b0de MOVS            R6, #0
0x6b0e0 STR             R3, [SP,#0x38+var_10]
0x6b0e2 B               loc_6B13E
0x6b0e4 LDR             R5, [R2,#8]
0x6b0e6 ADDS            R5, R6, R5
0x6b0e8 MOVS            R1, #2
0x6b0ea LDRSH           R3, [R5,R1]
0x6b0ec LDR             R1, [SP,#0x38+var_C]
0x6b0ee MOVS            R2, R1
0x6b0f0 MULS            R2, R3
0x6b0f2 LDR             R3, [SP,#0x38+var_1C]
0x6b0f4 LSLS            R2, R2, #0x10
0x6b0f6 ASRS            R2, R2, #0x10
0x6b0f8 ADDS            R2, R3, R2
0x6b0fa MOVS            R1, #4
0x6b0fc LDRSH           R3, [R5,R1]
0x6b0fe LDR             R1, [SP,#0x38+var_C]
0x6b100 MULS            R3, R1
0x6b102 LDR             R1, [SP,#0x38+var_20]
0x6b104 LSLS            R3, R3, #0x10
0x6b106 LDRB            R0, [R5]
0x6b108 ASRS            R3, R3, #0x10
0x6b10a ADDS            R1, R1, R3
0x6b10c MOVS            R4, #0xCD
0x6b10e LDR             R3, [SP,#0x38+arg_0]
0x6b110 MOV             R12, R1
0x6b112 LSLS            R4, R4, #2
0x6b114 LSLS            R1, R0, #1
0x6b116 ADDS            R1, R1, R0
0x6b118 LDR             R0, [R3,R4]
0x6b11a LSLS            R1, R1, #3
0x6b11c ADDS            R1, R1, R0
0x6b11e STR             R1, [SP,#0x38+var_38]
0x6b120 LDRB            R1, [R5,#1]
0x6b122 STR             R1, [SP,#0x38+var_34]
0x6b124 LDR             R1, [SP,#0x38+var_24]
0x6b126 STR             R1, [SP,#0x38+var_30]
0x6b128 ADD             R1, SP, #0x38+var_8
0x6b12a STR             R1, [SP,#0x38+var_2C]
0x6b12c LDRB            R1, [R5,#6]
0x6b12e LDR             R0, [SP,#0x38+var_14]
0x6b130 STR             R1, [SP,#0x38+var_28]
0x6b132 MOV             R3, R12
0x6b134 LDR             R1, [SP,#0x38+var_18]
0x6b136 BL              sub_6ADB8
0x6b13a ADDS            R7, #1
0x6b13c ADDS            R6, #0xC
0x6b13e LDR             R2, [SP,#0x38+arg_0]
0x6b140 MOVS            R3, #0x330
0x6b144 LDR             R3, [R2,R3]
0x6b146 LDR             R1, [SP,#0x38+var_10]
0x6b148 ADDS            R2, R1, R3
0x6b14a LDRB            R3, [R2]
0x6b14c CMP             R7, R3
0x6b14e BLT             loc_6B0E4
0x6b150 ADD             SP, SP, #0x38 ; '8'
0x6b152 POP             {R4-R7}
0x6b154 POP             {R0}
0x6b156 BX              R0