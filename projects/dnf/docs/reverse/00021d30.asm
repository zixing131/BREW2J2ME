0x21d30 PUSH            {R4-R7,LR}
0x21d32 LSLS            R0, R0, #0x18
0x21d34 SUB             SP, SP, #8
0x21d36 LSRS            R4, R0, #0x18
0x21d38 BL              sub_1F300
0x21d3c LSLS            R0, R0, #0x18
0x21d3e ASRS            R0, R0, #0x18
0x21d40 ADDS            R1, R0, #1
0x21d42 BEQ             loc_21DB0
0x21d44 LSLS            R3, R4, #1
0x21d46 ADDS            R3, R3, R4
0x21d48 LSLS            R7, R3, #3
0x21d4a LDR             R3, =byte_150D160
0x21d4c LDR             R3, [R3,#(dword_150D168 - 0x150D160)]
0x21d4e LSLS            R0, R0, #4
0x21d50 ADDS            R3, R3, R0
0x21d52 LDR             R3, [R3,#0xC]
0x21d54 STR             R0, [SP,#8+var_8]
0x21d56 ADDS            R3, R3, R7
0x21d58 LDRB            R3, [R3,#1]
0x21d5a MOVS            R6, #0
0x21d5c STR             R3, [SP,#8+var_4]
0x21d5e B               loc_21DA6
0x21d60 LDR             R3, =byte_150D160
0x21d62 LDR             R2, [SP,#8+var_8]
0x21d64 LDR             R3, [R3,#(dword_150D168 - 0x150D160)]
0x21d66 ADDS            R3, R3, R2
0x21d68 LDR             R3, [R3,#0xC]
0x21d6a ADDS            R3, R3, R7
0x21d6c LDR             R2, [R3,#8]
0x21d6e LSLS            R3, R6, #1
0x21d70 LDRH            R4, [R3,R2]
0x21d72 LDR             R3, =word_150C9D0
0x21d74 LDR             R2, [R3,#(dword_150C9D8 - 0x150C9D0)]
0x21d76 LSLS            R3, R4, #6
0x21d78 SUBS            R3, R3, R4
0x21d7a LSLS            R3, R3, #2
0x21d7c LDRB            R3, [R3,R2]
0x21d7e CMP             R3, #1
0x21d80 BNE             loc_21DA4
0x21d82 LDR             R3, =byte_150C7A8
0x21d84 LDRSB           R3, [R4,R3]
0x21d86 LSLS            R5, R4, #0x10
0x21d88 CMP             R3, #0
0x21d8a BNE             loc_21DA4
0x21d8c MOVS            R0, R4
0x21d8e BL              sub_1F234
0x21d92 CMP             R0, #0
0x21d94 BNE             loc_21DA4
0x21d96 MOVS            R0, R4
0x21d98 BL              sub_1FA10
0x21d9c CMP             R0, #0
0x21d9e BEQ             loc_21DA4
0x21da0 ASRS            R0, R5, #0x10
0x21da2 B               loc_21DB4
0x21da4 ADDS            R6, #1
0x21da6 LDR             R1, [SP,#8+var_4]
0x21da8 LSLS            R2, R6, #0x18
0x21daa LSLS            R3, R1, #0x18
0x21dac CMP             R3, R2
0x21dae BGT             loc_21D60
0x21db0 MOVS            R0, #1
0x21db2 NEGS            R0, R0
0x21db4 ADD             SP, SP, #8
0x21db6 POP             {R4-R7}
0x21db8 POP             {R1}
0x21dba BX              R1