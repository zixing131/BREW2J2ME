0x6a9ec PUSH            {R4-R7,LR}
0x6a9ee ADDS            R2, R0, R2
0x6a9f0 MOVS            R5, R3
0x6a9f2 MOVS            R3, R2
0x6a9f4 SUB             SP, SP, #0xC
0x6a9f6 ADDS            R6, R0, #1
0x6a9f8 MOVS            R4, R1
0x6a9fa SUBS            R3, #1
0x6a9fc MOVS            R7, R0
0x6a9fe STR             R2, [SP,#0xC+var_C]
0x6aa00 MOVS            R0, R6
0x6aa02 STR             R3, [SP,#0xC+var_8]
0x6aa04 MOVS            R1, R3
0x6aa06 MOVS            R2, R4
0x6aa08 LDR             R3, [SP,#0xC+arg_0]
0x6aa0a ADDS            R5, R4, R5
0x6aa0c BL              sub_6A9C8
0x6aa10 STR             R5, [SP,#0xC+var_4]
0x6aa12 SUBS            R5, #1
0x6aa14 ADDS            R4, #1
0x6aa16 MOVS            R0, R6
0x6aa18 LDR             R1, [SP,#0xC+var_8]
0x6aa1a MOVS            R2, R5
0x6aa1c LDR             R3, [SP,#0xC+arg_0]
0x6aa1e BL              sub_6A9C8
0x6aa22 MOVS            R0, R7
0x6aa24 MOVS            R1, R4
0x6aa26 MOVS            R2, R5
0x6aa28 LDR             R3, [SP,#0xC+arg_0]
0x6aa2a BL              sub_6A9A4
0x6aa2e LDR             R0, [SP,#0xC+var_8]
0x6aa30 MOVS            R1, R4
0x6aa32 MOVS            R2, R5
0x6aa34 LDR             R3, [SP,#0xC+arg_0]
0x6aa36 BL              sub_6A9A4
0x6aa3a ADDS            R1, R7, #2
0x6aa3c MOVS            R0, R6
0x6aa3e MOVS            R2, R4
0x6aa40 LDR             R3, [SP,#0xC+arg_0]
0x6aa42 BL              sub_6A9C8
0x6aa46 LDR             R5, [SP,#0xC+var_C]
0x6aa48 SUBS            R5, #2
0x6aa4a MOVS            R0, R5
0x6aa4c LDR             R1, [SP,#0xC+var_8]
0x6aa4e MOVS            R2, R4
0x6aa50 LDR             R3, [SP,#0xC+arg_0]
0x6aa52 BL              sub_6A9C8
0x6aa56 LDR             R4, [SP,#0xC+var_4]
0x6aa58 SUBS            R4, #2
0x6aa5a MOVS            R0, R6
0x6aa5c MOVS            R1, R6
0x6aa5e MOVS            R2, R4
0x6aa60 LDR             R3, [SP,#0xC+arg_0]
0x6aa62 BL              sub_6A9C8
0x6aa66 MOVS            R0, R5
0x6aa68 LDR             R1, [SP,#0xC+var_8]
0x6aa6a LDR             R3, [SP,#0xC+arg_0]
0x6aa6c MOVS            R2, R4
0x6aa6e BL              sub_6A9C8
0x6aa72 ADD             SP, SP, #0xC
0x6aa74 POP             {R4-R7}
0x6aa76 POP             {R0}
0x6aa78 BX              R0