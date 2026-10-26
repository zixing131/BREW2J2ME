0x2fb10 PUSH            {R4-R7,LR}
0x2fb12 LSLS            R0, R0, #0x18
0x2fb14 LSLS            R1, R1, #0x10
0x2fb16 SUB             SP, SP, #4
0x2fb18 LSRS            R0, R0, #0x18
0x2fb1a LSRS            R7, R1, #0x10
0x2fb1c MOVS            R6, #0
0x2fb1e STR             R0, [SP,#4+var_4]
0x2fb20 B               loc_2FB3E
0x2fb22 LDR             R0, [SP,#4+var_4]
0x2fb24 MOVS            R1, R4
0x2fb26 MOVS            R2, R7
0x2fb28 BL              sub_2F9BC
0x2fb2c ADDS            R6, #1
0x2fb2e CMP             R0, #0
0x2fb30 BEQ             loc_2FB3E
0x2fb32 LSLS            R3, R4, #3
0x2fb34 LDR             R2, [R5,#(dword_150C798 - 0x150C790)]
0x2fb36 SUBS            R3, R3, R4
0x2fb38 LSLS            R3, R3, #2
0x2fb3a LDRSB           R0, [R3,R2]
0x2fb3c B               loc_2FB4E
0x2fb3e LDR             R5, =word_150C790
0x2fb40 LSLS            R3, R6, #0x18
0x2fb42 LSRS            R4, R3, #0x18
0x2fb44 LDRH            R3, [R5]
0x2fb46 CMP             R3, R4
0x2fb48 BHI             loc_2FB22
0x2fb4a MOVS            R0, #1
0x2fb4c NEGS            R0, R0
0x2fb4e ADD             SP, SP, #4
0x2fb50 POP             {R4-R7}
0x2fb52 POP             {R1}
0x2fb54 BX              R1