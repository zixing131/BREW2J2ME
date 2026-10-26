0x209f8 PUSH            {R4-R7,LR}
0x209fa SUB             SP, SP, #0x1C
0x209fc BL              sub_20444
0x20a00 LDR             R0, =aDiary; "diary"
0x20a02 LDR             R3, =0x6CBE1
0x20a04 BL              sub_22468
0x20a08 STR             R0, [SP,#0x1C+var_18]
0x20a0a CMP             R0, #0
0x20a0c BNE             loc_20A10
0x20a0e B               loc_20B52
0x20a10 MOV             R0, SP
0x20a12 LDR             R5, =unk_140327C
0x20a14 LDR             R1, [SP,#0x1C+var_18]
0x20a16 MOVS            R2, #2
0x20a18 ADDS            R0, #0x1A
0x20a1a BL              sub_2246C
0x20a1e LDR             R1, [SP,#0x1C+var_18]
0x20a20 MOVS            R2, #4
0x20a22 ADDS            R1, #2
0x20a24 ADD             R0, SP, #0x1C+var_C
0x20a26 BL              sub_2246C
0x20a2a LDR             R1, [SP,#0x1C+var_18]
0x20a2c MOVS            R2, #4
0x20a2e ADDS            R1, #6
0x20a30 ADD             R0, SP, #0x1C+var_8
0x20a32 BL              sub_2246C
0x20a36 LDR             R0, [SP,#0x1C+var_C]
0x20a38 LDR             R6, =unk_14032EC
0x20a3a ADDS            R0, #2
0x20a3c BL              sub_2246E
0x20a40 STR             R0, [SP,#0x1C+var_14]
0x20a42 LDR             R0, [SP,#0x1C+var_18]
0x20a44 MOVS            R1, #6
0x20a46 LDR             R3, [SP,#0x1C+var_8]
0x20a48 LDR             R2, [SP,#0x1C+var_C]
0x20a4a STR             R1, [SP,#0x1C+var_1C]
0x20a4c LDR             R4, =0x692B5
0x20a4e LDR             R1, [SP,#0x1C+var_14]
0x20a50 ADDS            R0, #0xA
0x20a52 BL              sub_2246A
0x20a56 LDR             R4, =word_150C9C4
0x20a58 LDR             R1, [SP,#0x1C+var_14]
0x20a5a MOVS            R2, #2
0x20a5c MOVS            R0, R4
0x20a5e BL              sub_2246C
0x20a62 LDRH            R2, [R4]
0x20a64 MOVS            R3, #0x374
0x20a68 MOVS            R0, R2
0x20a6a MULS            R0, R3
0x20a6c ADDS            R0, #2
0x20a6e LDR             R7, [SP,#0x1C+var_14]
0x20a70 BL              sub_2246E
0x20a74 ADDS            R7, #2
0x20a76 MOVS            R2, #0
0x20a78 MOVS            R6, #0
0x20a7a STR             R0, [R4,#(dword_150C9C8 - 0x150C9C4)]
0x20a7c STR             R0, [R4,#(dword_150C9CC - 0x150C9C4)]
0x20a7e STR             R2, [SP,#0x1C+var_10]
0x20a80 B               loc_20B32
0x20a82 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20a84 LDR             R4, =unk_140327C
0x20a86 MOVS            R1, R7
0x20a88 ADDS            R0, R6, R0
0x20a8a MOVS            R2, #0x16
0x20a8c BL              sub_2246A
0x20a90 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20a92 MOVS            R1, R7
0x20a94 ADDS            R0, R6, R0
0x20a96 ADDS            R1, #0x16
0x20a98 LDR             R2, =0x352
0x20a9a ADDS            R0, #0x16
0x20a9c BL              sub_2246A
0x20aa0 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20aa2 MOVS            R3, #0x368
0x20aa6 ADDS            R0, R6, R0
0x20aa8 ADDS            R1, R7, R3
0x20aaa ADDS            R0, R0, R3
0x20aac MOVS            R2, #1
0x20aae BL              sub_2246A
0x20ab2 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20ab4 LDR             R3, =0x369
0x20ab6 LDR             R2, =0x36A
0x20ab8 ADDS            R0, R6, R0
0x20aba ADDS            R1, R7, R3
0x20abc ADDS            R0, R0, R2
0x20abe MOVS            R2, #2
0x20ac0 BL              sub_2246A
0x20ac4 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20ac6 LDR             R3, =0x36B
0x20ac8 MOVS            R2, #0xDB
0x20aca ADDS            R0, R6, R0
0x20acc LSLS            R2, R2, #2
0x20ace ADDS            R1, R7, R3
0x20ad0 ADDS            R0, R0, R2
0x20ad2 MOVS            R2, #2
0x20ad4 BL              sub_2246A
0x20ad8 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20ada LDR             R3, =0x36D
0x20adc LDR             R2, =0x36E
0x20ade ADDS            R0, R6, R0
0x20ae0 ADDS            R1, R7, R3
0x20ae2 ADDS            R0, R0, R2
0x20ae4 MOVS            R2, #1
0x20ae6 BL              sub_2246A
0x20aea LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20aec LDR             R3, =0x36E
0x20aee MOVS            R2, #0xDC
0x20af0 ADDS            R0, R6, R0
0x20af2 LSLS            R2, R2, #2
0x20af4 ADDS            R1, R7, R3
0x20af6 ADDS            R0, R0, R2
0x20af8 MOVS            R2, #2
0x20afa BL              sub_2246A
0x20afe LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20b00 LDR             R2, =0x372
0x20b02 MOVS            R3, #0x370
0x20b06 ADDS            R0, R6, R0
0x20b08 ADDS            R1, R7, R3
0x20b0a ADDS            R0, R0, R2
0x20b0c MOVS            R2, #1
0x20b0e BL              sub_2246A
0x20b12 LDR             R0, [R5,#(dword_150C9CC - 0x150C9C4)]
0x20b14 LDR             R3, =0x371
0x20b16 LDR             R2, =0x373
0x20b18 ADDS            R0, R6, R0
0x20b1a ADDS            R1, R7, R3
0x20b1c ADDS            R0, R0, R2
0x20b1e MOVS            R2, #1
0x20b20 BL              sub_2246A
0x20b24 LDR             R3, [SP,#0x1C+var_10]
0x20b26 LDR             R2, =0x372
0x20b28 ADDS            R3, #1
0x20b2a ADDS            R7, R7, R2
0x20b2c STR             R3, [SP,#0x1C+var_10]
0x20b2e ADDS            R2, #2
0x20b30 ADDS            R6, R6, R2
0x20b32 LDR             R5, =word_150C9C4
0x20b34 LDR             R2, [SP,#0x1C+var_10]
0x20b36 LDRH            R3, [R5]
0x20b38 CMP             R2, R3
0x20b3a BLT             loc_20A82
0x20b3c LDR             R3, [SP,#0x1C+var_14]
0x20b3e CMP             R3, #0
0x20b40 BEQ             loc_20B4A
0x20b42 MOVS            R0, R3
0x20b44 LDR             R3, =unk_14032FC
0x20b46 BL              sub_22468
0x20b4a LDR             R0, [SP,#0x1C+var_18]
0x20b4c LDR             R3, =unk_14032FC
0x20b4e BL              sub_22468
0x20b52 ADD             SP, SP, #0x1C
0x20b54 POP             {R4-R7}
0x20b56 POP             {R0}
0x20b58 BX              R0