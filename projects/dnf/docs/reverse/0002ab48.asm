0x2ab48 PUSH            {R4-R7,LR}
0x2ab4a LDR             R5, =word_15332A0
0x2ab4c MOVS            R3, R5
0x2ab4e ADDS            R3, #0x54 ; 'T'
0x2ab50 LDRB            R4, [R3]
0x2ab52 LSLS            R4, R4, #3
0x2ab54 SUB             SP, SP, #4
0x2ab56 LDR             R3, =unk_14032EC
0x2ab58 ADDS            R0, R4, #2
0x2ab5a BL              sub_2BCB6
0x2ab5e MOVS            R1, #0
0x2ab60 STR             R0, [R5,#(dword_15332F8 - 0x15332A0)]
0x2ab62 STR             R0, [R5,#(dword_15332FC - 0x15332A0)]
0x2ab64 MOVS            R2, R4
0x2ab66 LDR             R3, =unk_140329C
0x2ab68 BL              sub_2BCB6
0x2ab6c ADDS            R5, #0x36 ; '6'
0x2ab6e MOVS            R7, #0
0x2ab70 STR             R5, [SP,#4+var_4]
0x2ab72 B               loc_2ABAE
0x2ab74 LDR             R3, =unk_14032EC
0x2ab76 MOVS            R0, #0x1A
0x2ab78 LDR             R4, [R6,#(dword_15332FC - 0x15332A0)]
0x2ab7a BL              sub_2BCB6
0x2ab7e LSLS            R5, R7, #3
0x2ab80 LDR             R3, [R6,#(dword_15332FC - 0x15332A0)]
0x2ab82 ADDS            R4, R5, R4
0x2ab84 STR             R0, [R4]
0x2ab86 ADDS            R3, R5, R3
0x2ab88 LDR             R0, [R3]
0x2ab8a MOVS            R1, #0
0x2ab8c STR             R0, [R3,#4]
0x2ab8e MOVS            R2, #0x18
0x2ab90 LDR             R3, =unk_140329C
0x2ab92 BL              sub_2BCB6
0x2ab96 LDR             R3, [SP,#4+var_4]
0x2ab98 LDRH            R0, [R3]
0x2ab9a LDR             R3, [R6,#(dword_15332FC - 0x15332A0)]
0x2ab9c ADDS            R3, R3, R5
0x2ab9e LDR             R1, [R3,#4]
0x2aba0 LDR             R3, =0x6E441
0x2aba2 BL              sub_2BCB6
0x2aba6 LDR             R3, [SP,#4+var_4]
0x2aba8 ADDS            R3, #2
0x2abaa STR             R3, [SP,#4+var_4]
0x2abac ADDS            R7, #1
0x2abae LDR             R6, =word_15332A0
0x2abb0 MOVS            R3, R6
0x2abb2 ADDS            R3, #0x54 ; 'T'
0x2abb4 LDRB            R3, [R3]
0x2abb6 CMP             R7, R3
0x2abb8 BLT             loc_2AB74
0x2abba ADD             SP, SP, #4
0x2abbc POP             {R4-R7}
0x2abbe POP             {R0}
0x2abc0 BX              R0