0x2aac0 PUSH            {R4-R7,LR}
0x2aac2 LDR             R5, =word_15332A0
0x2aac4 ADDS            R3, R5, #5
0x2aac6 LDRB            R4, [R3,#(byte_15332C4 - 0x15332A5)]
0x2aac8 LSLS            R4, R4, #3
0x2aaca SUB             SP, SP, #4
0x2aacc LDR             R3, =unk_14032EC
0x2aace ADDS            R0, R4, #2
0x2aad0 BL              sub_2BCB6
0x2aad4 MOVS            R1, #0
0x2aad6 STR             R0, [R5,#(dword_15332C8 - 0x15332A0)]
0x2aad8 STR             R0, [R5,#(dword_15332CC - 0x15332A0)]
0x2aada MOVS            R2, R4
0x2aadc LDR             R3, =unk_140329C
0x2aade BL              sub_2BCB6
0x2aae2 ADDS            R5, #8
0x2aae4 MOVS            R7, #0
0x2aae6 STR             R5, [SP,#4+var_4]
0x2aae8 B               loc_2AB24
0x2aaea LDR             R3, =unk_14032EC
0x2aaec MOVS            R0, #0x1A
0x2aaee LDR             R4, [R6,#(dword_15332CC - 0x15332A0)]
0x2aaf0 BL              sub_2BCB6
0x2aaf4 LSLS            R5, R7, #3
0x2aaf6 LDR             R3, [R6,#(dword_15332CC - 0x15332A0)]
0x2aaf8 ADDS            R4, R5, R4
0x2aafa STR             R0, [R4]
0x2aafc ADDS            R3, R5, R3
0x2aafe LDR             R0, [R3]
0x2ab00 MOVS            R1, #0
0x2ab02 STR             R0, [R3,#4]
0x2ab04 MOVS            R2, #0x18
0x2ab06 LDR             R3, =unk_140329C
0x2ab08 BL              sub_2BCB6
0x2ab0c LDR             R3, [SP,#4+var_4]
0x2ab0e LDRH            R0, [R3]
0x2ab10 LDR             R3, [R6,#(dword_15332CC - 0x15332A0)]
0x2ab12 ADDS            R3, R3, R5
0x2ab14 LDR             R1, [R3,#4]
0x2ab16 LDR             R3, =0x6E441
0x2ab18 BL              sub_2BCB6
0x2ab1c LDR             R3, [SP,#4+var_4]
0x2ab1e ADDS            R3, #2
0x2ab20 STR             R3, [SP,#4+var_4]
0x2ab22 ADDS            R7, #1
0x2ab24 LDR             R6, =word_15332A0
0x2ab26 ADDS            R3, R6, #5
0x2ab28 LDRB            R3, [R3,#(byte_15332C4 - 0x15332A5)]
0x2ab2a CMP             R7, R3
0x2ab2c BLT             loc_2AAEA
0x2ab2e ADD             SP, SP, #4
0x2ab30 POP             {R4-R7}
0x2ab32 POP             {R0}
0x2ab34 BX              R0