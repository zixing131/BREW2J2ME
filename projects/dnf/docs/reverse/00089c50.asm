0x89c50 PUSH            {R4-R7,LR}
0x89c52 LSLS            R1, R1, #0x18
0x89c54 LSRS            R4, R1, #0x18
0x89c56 SUB             SP, SP, #4
0x89c58 LSLS            R3, R4, #2
0x89c5a STR             R0, [SP,#4+var_4]
0x89c5c LDR             R2, =byte_1538F9C
0x89c5e ADDS            R3, R3, R4
0x89c60 LDR             R6, =byte_1537CD9
0x89c62 LSLS            R3, R3, #7
0x89c64 ADDS            R3, R3, R2
0x89c66 LDRB            R2, [R6,R4]
0x89c68 MOVS            R5, R3
0x89c6a LSLS            R3, R2, #2
0x89c6c ADDS            R3, R3, R2
0x89c6e ADDS            R5, #0x20 ; ' '
0x89c70 LDR             R7, =dword_1538860
0x89c72 LSLS            R3, R3, #5
0x89c74 LDRB            R1, [R5]
0x89c76 LDR             R2, [R3,R7]
0x89c78 LSLS            R3, R1, #4
0x89c7a ADDS            R3, R3, R2
0x89c7c ADDS            R3, #0x54 ; 'T'
0x89c7e LDRB            R3, [R3,#2]
0x89c80 CMP             R3, #0xFF
0x89c82 BEQ             loc_89CC0
0x89c84 STRB            R1, [R5,#1]
0x89c86 LDR             R0, [SP,#4+var_4]
0x89c88 MOVS            R1, R4
0x89c8a BL              sub_81EBC
0x89c8e LDRB            R2, [R6,R4]
0x89c90 LSLS            R3, R2, #2
0x89c92 ADDS            R3, R3, R2
0x89c94 LSLS            R3, R3, #5
0x89c96 LDR             R2, [R3,R7]
0x89c98 LDRB            R3, [R5,#1]
0x89c9a LSLS            R3, R3, #4
0x89c9c ADDS            R3, R3, R2
0x89c9e ADDS            R3, #0x54 ; 'T'
0x89ca0 LDRB            R1, [R3,#2]
0x89ca2 MOVS            R0, R4
0x89ca4 MOVS            R2, #1
0x89ca6 BL              sub_8343C
0x89caa LDR             R0, [SP,#4+var_4]
0x89cac MOVS            R1, R4
0x89cae MOVS            R2, #0
0x89cb0 LDRB            R3, [R5,#1]
0x89cb2 BL              sub_87CF0
0x89cb6 MOVS            R0, #1
0x89cb8 MOVS            R1, R4
0x89cba MOVS            R2, #1
0x89cbc BL              sub_82FA0
0x89cc0 ADD             SP, SP, #4
0x89cc2 POP             {R4-R7}
0x89cc4 POP             {R0}
0x89cc6 BX              R0