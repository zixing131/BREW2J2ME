0x2ace8 PUSH            {R4-R7,LR}
0x2acea LDR             R5, =word_15332A0
0x2acec MOVS            R3, #(byte_15333E4 - 0x15332A0)
0x2acf0 LDRB            R4, [R5,R3]; byte_15333E4
0x2acf2 SUB             SP, SP, #4
0x2acf4 CMP             R4, #0
0x2acf6 BEQ             loc_2AD66
0x2acf8 LSLS            R4, R4, #3
0x2acfa LDR             R3, =unk_14032EC
0x2acfc ADDS            R0, R4, #2
0x2acfe BL              sub_2BCB6
0x2ad02 MOVS            R3, R5
0x2ad04 ADDS            R3, #0xFC
0x2ad06 STR             R0, [R3,#(dword_15333FC - 0x153339C)]
0x2ad08 STR             R0, [R3,#(dword_1533400 - 0x153339C)]
0x2ad0a MOVS            R1, #0
0x2ad0c LDR             R3, =unk_140329C
0x2ad0e MOVS            R2, R4
0x2ad10 BL              sub_2BCB6
0x2ad14 MOVS            R3, #(unk_15333E6 - 0x15332A0)
0x2ad18 MOVS            R7, #0
0x2ad1a ADDS            R3, R5, R3; unk_15333E6
0x2ad1c B               loc_2AD58
0x2ad1e ADDS            R5, #0xFC
0x2ad20 LDR             R3, =unk_14032EC
0x2ad22 MOVS            R0, #0x1A
0x2ad24 LDR             R4, [R5,#(dword_1533400 - 0x153339C)]
0x2ad26 BL              sub_2BCB6
0x2ad2a LSLS            R6, R7, #3
0x2ad2c LDR             R3, [R5,#(dword_1533400 - 0x153339C)]
0x2ad2e ADDS            R4, R6, R4
0x2ad30 STR             R0, [R4]
0x2ad32 ADDS            R3, R6, R3
0x2ad34 LDR             R0, [R3]
0x2ad36 MOVS            R1, #0
0x2ad38 STR             R0, [R3,#4]
0x2ad3a MOVS            R2, #0x18
0x2ad3c LDR             R3, =unk_140329C
0x2ad3e BL              sub_2BCB6
0x2ad42 LDR             R3, [SP,#4+var_4]
0x2ad44 LDRH            R0, [R3]
0x2ad46 LDR             R3, [R5,#(dword_1533400 - 0x153339C)]
0x2ad48 ADDS            R3, R3, R6
0x2ad4a LDR             R1, [R3,#4]
0x2ad4c LDR             R3, =0x6E441
0x2ad4e BL              sub_2BCB6
0x2ad52 LDR             R3, [SP,#4+var_4]
0x2ad54 ADDS            R7, #1
0x2ad56 ADDS            R3, #2
0x2ad58 STR             R3, [SP,#4+var_4]
0x2ad5a LDR             R5, =word_15332A0
0x2ad5c MOVS            R3, #(byte_15333E4 - 0x15332A0)
0x2ad60 LDRB            R3, [R5,R3]; byte_15333E4
0x2ad62 CMP             R7, R3
0x2ad64 BLT             loc_2AD1E
0x2ad66 ADD             SP, SP, #4
0x2ad68 POP             {R4-R7}
0x2ad6a POP             {R0}
0x2ad6c BX              R0