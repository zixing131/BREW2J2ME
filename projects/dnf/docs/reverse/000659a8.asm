0x659a8 PUSH            {R4-R7,LR}
0x659aa LDR             R3, =dword_1501D90
0x659ac LDR             R3, [R3]
0x659ae LDR             R3, [R3,#0x10]
0x659b0 SUB             SP, SP, #0x10
0x659b2 STR             R3, [SP,#0x10+var_8]
0x659b4 LDR             R3, =byte_150007C
0x659b6 LDRB            R3, [R3]
0x659b8 CMP             R3, #1
0x659ba BNE             loc_659C0
0x659bc BL              sub_3D8E0
0x659c0 MOVS            R0, #0
0x659c2 STR             R0, [SP,#0x10+var_4]
0x659c4 B               loc_65D82
0x659c6 LDR             R1, [SP,#0x10+var_4]
0x659c8 MOVS            R2, #(dword_1533464 - 0x15332A0)
0x659cc LSLS            R1, R1, #4
0x659ce LDR             R3, [R7,R2]; dword_1533464
0x659d0 STR             R1, [SP,#0x10+var_C]
0x659d2 STR             R2, [SP,#0x10+var_10]
0x659d4 ADDS            R0, R1, R3
0x659d6 LDRB            R3, [R0]
0x659d8 CMP             R3, #1
0x659da BEQ             loc_659DE
0x659dc B               loc_65CB0
0x659de LDR             R5, [SP,#0x10+var_8]
0x659e0 LDRH            R3, [R5,#0x3A]
0x659e2 MOVS            R1, #6
0x659e4 LDRSH           R2, [R0,R1]
0x659e6 LSLS            R3, R3, #0x10
0x659e8 ASRS            R1, R3, #0x10
0x659ea CMP             R2, R1
0x659ec BLE             loc_659F0
0x659ee B               loc_65D78
0x659f0 MOVS            R2, #0xA
0x659f2 LDRSH           R3, [R0,R2]
0x659f4 CMP             R3, R1
0x659f6 BGE             loc_659FA
0x659f8 B               loc_65D78
0x659fa LDRH            R3, [R5,#0x3C]
0x659fc MOVS            R5, #8
0x659fe LDRSH           R2, [R0,R5]
0x65a00 LSLS            R3, R3, #0x10
0x65a02 ASRS            R1, R3, #0x10
0x65a04 CMP             R2, R1
0x65a06 BLE             loc_65A0A
0x65a08 B               loc_65D78
0x65a0a MOVS            R2, #0xC
0x65a0c LDRSH           R3, [R0,R2]
0x65a0e CMP             R3, R1
0x65a10 BGE             loc_65A14
0x65a12 B               loc_65D78
0x65a14 LDRB            R3, [R0,#0xE]
0x65a16 CMP             R3, #0
0x65a18 BNE             loc_65A1C
0x65a1a B               loc_65D7C
0x65a1c LDR             R6, =dword_1501D90
0x65a1e LDR             R1, =0x1AE8
0x65a20 LDR             R5, [R6]
0x65a22 LDRB            R3, [R5,R1]
0x65a24 CMP             R3, #0
0x65a26 BEQ             loc_65A2C
0x65a28 CMP             R3, #0x14
0x65a2a BNE             loc_65AF6
0x65a2c LDR             R3, =0x1AE9
0x65a2e LDRB            R3, [R5,R3]
0x65a30 CMP             R3, #0x4F ; 'O'
0x65a32 BNE             loc_65A3C
0x65a34 LDRB            R3, [R0,#2]
0x65a36 CMP             R3, #1
0x65a38 BNE             loc_65A62
0x65a3a B               loc_65A5E
0x65a3c CMP             R3, #1
0x65a3e BNE             loc_65A48
0x65a40 LDRB            R3, [R0,#2]
0x65a42 CMP             R3, #0x4F ; 'O'
0x65a44 BNE             loc_65A62
0x65a46 B               loc_65A5E
0x65a48 CMP             R3, #0
0x65a4a BNE             loc_65A54
0x65a4c LDRB            R3, [R0,#2]
0x65a4e CMP             R3, #4
0x65a50 BNE             loc_65A62
0x65a52 B               loc_65A5E
0x65a54 CMP             R3, #4
0x65a56 BNE             loc_65A62
0x65a58 LDRB            R3, [R0,#2]
0x65a5a CMP             R3, #0
0x65a5c BNE             loc_65A62
0x65a5e BL              sub_2E9EC
0x65a62 MOVS            R0, #0
0x65a64 LDR             R3, =0x721F1
0x65a66 BL              sub_66A76
0x65a6a BL              sub_62B00
0x65a6e BL              sub_62B00
0x65a72 BL              sub_2E2CC
0x65a76 BL              sub_36694
0x65a7a LDR             R0, =word_15332A0
0x65a7c MOVS            R1, #(dword_1533464 - 0x15332A0)
0x65a80 LDR             R3, [R0,R1]; dword_1533464
0x65a82 LDR             R5, [SP,#0x10+var_C]
0x65a84 LDR             R4, =dword_1501D90
0x65a86 ADDS            R3, R3, R5
0x65a88 LDR             R2, [R4]
0x65a8a LDRB            R3, [R3,#2]
0x65a8c LDR             R6, =0x1AE9
0x65a8e STRB            R3, [R2,R6]
0x65a90 LDR             R2, [SP,#0x10+var_C]
0x65a92 LDR             R3, [R0,R1]; dword_1533464
0x65a94 ADDS            R3, R3, R2
0x65a96 LDR             R5, [R4]
0x65a98 LDRB            R2, [R3,#3]
0x65a9a LDR             R3, =0x1AEA
0x65a9c STRB            R2, [R5,R3]
0x65a9e LDR             R2, [SP,#0x10+var_C]
0x65aa0 LDR             R3, [R0,R1]; dword_1533464
0x65aa2 ADDS            R3, R3, R2
0x65aa4 LDR             R5, [R4]
0x65aa6 LDRB            R2, [R3,#4]
0x65aa8 LDR             R3, =0x1AEB
0x65aaa STRB            R2, [R5,R3]
0x65aac LDR             R3, [R0,R1]; dword_1533464
0x65aae LDR             R0, [SP,#0x10+var_C]
0x65ab0 ADDS            R3, R3, R0
0x65ab2 LDR             R5, [R4]
0x65ab4 LDRB            R2, [R3,#5]
0x65ab6 LDR             R3, =0x1AED
0x65ab8 STRB            R2, [R5,R3]
0x65aba LDR             R4, [R4]
0x65abc LDRB            R3, [R4,R6]
0x65abe CMP             R3, #0x4F ; 'O'
0x65ac0 BNE             loc_65AC6
0x65ac2 MOVS            R2, #0x14
0x65ac4 B               loc_65ACC
0x65ac6 CMP             R3, #1
0x65ac8 BNE             loc_65AD0
0x65aca MOVS            R2, #0
0x65acc LDR             R3, =0x1AE8
0x65ace STRB            R2, [R4,R3]
0x65ad0 MOVS            R0, #0
0x65ad2 LDR             R3, =(sub_2B864+1)
0x65ad4 BL              sub_66A76
0x65ad8 BL              sub_396D4
0x65adc LDR             R2, =dword_15377C4
0x65ade MOVS            R3, #0xA
0x65ae0 STR             R3, [R2]
0x65ae2 BL              sub_62B00
0x65ae6 LDR             R2, =dword_153772C
0x65ae8 MOVS            R3, #2
0x65aea STR             R3, [R2]
0x65aec LDR             R2, =dword_1537730
0x65aee MOVS            R3, #1
0x65af0 NEGS            R3, R3
0x65af2 STR             R3, [R2]
0x65af4 B               loc_65D7C
0x65af6 LDR             R4, =dword_150D88C
0x65af8 LDRB            R2, [R4,#(byte_150D899 - 0x150D88C)]
0x65afa LSLS            R3, R2, #2
0x65afc ADDS            R3, R3, R2
0x65afe LDRB            R1, [R4,#(byte_150D898 - 0x150D88C)]
0x65b00 LSLS            R3, R3, #1
0x65b02 ADDS            R3, R3, R4
0x65b04 ADDS            R3, R3, R1
0x65b06 LDRB            R3, [R3,#0x18]
0x65b08 CMP             R3, #0
0x65b0a BNE             loc_65B0E
0x65b0c B               loc_65D7C
0x65b0e LDR             R1, =0x1AED
0x65b10 LDRSB           R3, [R5,R1]
0x65b12 CMP             R3, #7
0x65b14 BNE             loc_65B24
0x65b16 LDRH            R2, [R0,#2]
0x65b18 LDR             R3, =0xFFFF
0x65b1a CMP             R2, R3
0x65b1c BNE             loc_65B20
0x65b1e B               loc_65D7C
0x65b20 BL              sub_34294
0x65b24 MOVS            R0, #0
0x65b26 LDR             R3, =0x721F1
0x65b28 BL              sub_66A76
0x65b2c BL              sub_62B00
0x65b30 BL              sub_2E2BC
0x65b34 LDR             R2, [SP,#0x10+var_10]
0x65b36 LDR             R5, [SP,#0x10+var_C]
0x65b38 LDR             R3, [R7,R2]; dword_1533464
0x65b3a ADDS            R3, R3, R5
0x65b3c LDRB            R0, [R4,#(byte_150D899 - 0x150D88C)]
0x65b3e LDRB            R2, [R3,#5]
0x65b40 LDRB            R1, [R4,#(byte_150D898 - 0x150D88C)]
0x65b42 BL              sub_2C464
0x65b46 BL              sub_62B00
0x65b4a LDR             R3, [R6]
0x65b4c LDR             R0, =0x1AED
0x65b4e LDRSB           R3, [R3,R0]
0x65b50 CMP             R3, #7
0x65b52 BEQ             loc_65B5A
0x65b54 MOVS            R0, #0
0x65b56 BL              sub_3D688
0x65b5a BL              sub_2CB74
0x65b5e BL              sub_2E2CC
0x65b62 BL              sub_36694
0x65b66 BL              sub_62B00
0x65b6a LDR             R2, [SP,#0x10+var_10]
0x65b6c LDR             R5, [SP,#0x10+var_C]
0x65b6e LDR             R3, [R7,R2]; dword_1533464
0x65b70 ADDS            R3, R3, R5
0x65b72 LDRB            R2, [R3,#2]
0x65b74 LDR             R1, [R6]
0x65b76 LDR             R3, =0x1AE9
0x65b78 STRB            R2, [R1,R3]
0x65b7a LDR             R0, [SP,#0x10+var_10]
0x65b7c LDR             R3, [R7,R0]; dword_1533464
0x65b7e ADDS            R3, R3, R5
0x65b80 LDRB            R2, [R3,#3]
0x65b82 LDR             R1, [R6]
0x65b84 LDR             R3, =0x1AEA
0x65b86 STRB            R2, [R1,R3]
0x65b88 LDR             R3, [R7,R0]; dword_1533464
0x65b8a ADDS            R3, R3, R5
0x65b8c LDRB            R2, [R3,#4]
0x65b8e LDR             R1, [R6]
0x65b90 LDR             R3, =0x1AEB
0x65b92 STRB            R2, [R1,R3]
0x65b94 LDR             R1, =0x1AE8
0x65b96 LDR             R3, [R6]
0x65b98 LDR             R2, [R3,R1]
0x65b9a LDR             R3, =0xFFFF00
0x65b9c ANDS            R2, R3
0x65b9e MOVS            R3, #0x13000
0x65ba2 CMP             R2, R3
0x65ba4 BNE             loc_65BC6
0x65ba6 MOVS            R0, #0
0x65ba8 LDR             R3, =(sub_2B864+1)
0x65baa BL              sub_66A76
0x65bae BL              sub_62B00
0x65bb2 LDR             R2, =byte_153407C
0x65bb4 MOVS            R3, #3
0x65bb6 STRB            R3, [R2,#(byte_153407D - 0x153407C)]
0x65bb8 MOVS            R0, #1
0x65bba MOVS            R3, #0
0x65bbc STRB            R3, [R2,#(byte_153407E - 0x153407C)]
0x65bbe NEGS            R0, R0
0x65bc0 BL              sub_3505C
0x65bc4 B               loc_65C42
0x65bc6 MOVS            R0, #0
0x65bc8 MOVS            R1, #0
0x65bca BL              sub_2FB10
0x65bce LSLS            R0, R0, #0x18
0x65bd0 ASRS            R0, R0, #0x18
0x65bd2 CMP             R0, #0
0x65bd4 BLE             loc_65BEC
0x65bd6 LDR             R2, =byte_150C714
0x65bd8 MOVS            R3, #0
0x65bda LSLS            R0, R0, #0x10
0x65bdc STRB            R3, [R2]
0x65bde LSRS            R0, R0, #0x10
0x65be0 LDR             R3, =0x70561
0x65be2 BL              sub_66A76
0x65be6 BL              sub_62B00
0x65bea B               loc_65C42
0x65bec LDR             R2, =0x1AED
0x65bee LDR             R1, [R6]
0x65bf0 LDRB            R3, [R1,R2]
0x65bf2 LSLS            R3, R3, #0x18
0x65bf4 ASRS            R3, R3, #0x18
0x65bf6 LDR             R2, =(sub_2B864+1)
0x65bf8 CMP             R3, #2
0x65bfa BNE             loc_65C06
0x65bfc LDR             R5, =0x1AE8
0x65bfe LDRSB           R3, [R1,R5]
0x65c00 CMP             R3, #0x29 ; ')'
0x65c02 BNE             loc_65C32
0x65c04 B               loc_65C2E
0x65c06 CMP             R3, #3
0x65c08 BNE             loc_65C14
0x65c0a LDR             R0, =0x1AE8
0x65c0c LDRSB           R3, [R1,R0]
0x65c0e CMP             R3, #0x2A ; '*'
0x65c10 BNE             loc_65C32
0x65c12 B               loc_65C2E
0x65c14 CMP             R3, #4
0x65c16 BNE             loc_65C22
0x65c18 LDR             R5, =0x1AE8
0x65c1a LDRSB           R3, [R1,R5]
0x65c1c CMP             R3, #0x2B ; '+'
0x65c1e BNE             loc_65C32
0x65c20 B               loc_65C2E
0x65c22 CMP             R3, #5
0x65c24 BNE             loc_65C32
0x65c26 LDR             R0, =0x1AE8
0x65c28 LDRSB           R3, [R1,R0]
0x65c2a CMP             R3, #0x2C ; ','
0x65c2c BNE             loc_65C32
0x65c2e MOVS            R0, #1
0x65c30 B               loc_65C34
0x65c32 MOVS            R0, #0
0x65c34 BL              sub_66A74
0x65c38 BL              sub_62B00
0x65c3c MOVS            R0, #0
0x65c3e BL              sub_34F90
0x65c42 BL              sub_62B00
0x65c46 BL              sub_39360
0x65c4a BL              sub_39388
0x65c4e BL              sub_398B8
0x65c52 MOVS            R0, #1
0x65c54 BL              sub_30B58
0x65c58 LDR             R2, =dword_15377C4
0x65c5a MOVS            R3, #0xA
0x65c5c STR             R3, [R2]
0x65c5e BL              sub_62B00
0x65c62 B               loc_65D7C
0x65cb0 CMP             R3, #3
0x65cb2 BNE             loc_65D7C
0x65cb4 LDR             R1, [SP,#0x10+var_8]
0x65cb6 LDRH            R3, [R1,#0x3A]
0x65cb8 MOVS            R5, #6
0x65cba LDRSH           R2, [R0,R5]
0x65cbc LSLS            R3, R3, #0x10
0x65cbe ASRS            R1, R3, #0x10
0x65cc0 CMP             R2, R1
0x65cc2 BGT             loc_65D78
0x65cc4 MOVS            R2, #0xA
0x65cc6 LDRSH           R3, [R0,R2]
0x65cc8 CMP             R3, R1
0x65cca BLT             loc_65D78
0x65ccc LDR             R5, [SP,#0x10+var_8]
0x65cce LDRH            R3, [R5,#0x3C]
0x65cd0 MOVS            R1, #8
0x65cd2 LDRSH           R2, [R0,R1]
0x65cd4 LSLS            R3, R3, #0x10
0x65cd6 ASRS            R1, R3, #0x10
0x65cd8 CMP             R2, R1
0x65cda BGT             loc_65D78
0x65cdc MOVS            R2, #0xC
0x65cde LDRSH           R3, [R0,R2]
0x65ce0 CMP             R3, R1
0x65ce2 BLT             loc_65D78
0x65ce4 LDRB            R3, [R0,#0xE]
0x65ce6 CMP             R3, #0
0x65ce8 BEQ             loc_65D7C
0x65cea BL              sub_2E2CC
0x65cee BL              sub_36694
0x65cf2 LDR             R4, =dword_1501D90
0x65cf4 LDR             R3, =0x1AE8
0x65cf6 LDR             R2, [R4]
0x65cf8 LDRB            R3, [R2,R3]
0x65cfa CMP             R3, #0
0x65cfc BEQ             loc_65D02
0x65cfe CMP             R3, #0x14
0x65d00 BNE             loc_65D7C
0x65d02 BL              sub_39360
0x65d06 LDR             R5, [SP,#0x10+var_10]
0x65d08 LDR             R0, [SP,#0x10+var_C]
0x65d0a LDR             R3, [R7,R5]; dword_1533464
0x65d0c ADDS            R3, R3, R0
0x65d0e LDRB            R1, [R3,#5]
0x65d10 CMP             R1, #7
0x65d12 BNE             loc_65D2E
0x65d14 LDR             R0, =0x3EA
0x65d16 LDR             R3, =(sub_1C30C+1)
0x65d18 BL              sub_66A76
0x65d1c MOVS            R1, #0xFC
0x65d1e MOVS            R0, #1
0x65d20 LSLS            R1, R1, #2
0x65d22 MOVS            R2, #0
0x65d24 MOVS            R3, #0
0x65d26 LDR             R4, =(sub_1404+1)
0x65d28 BL              sub_66A78
0x65d2c B               loc_65D7C
0x65d2e LDR             R3, [R4]
0x65d30 LDR             R2, =0x1AED
0x65d32 STRB            R1, [R3,R2]
0x65d34 LDR             R3, [R4]
0x65d36 LDRB            R0, [R3,R2]
0x65d38 LSLS            R3, R0, #0x18
0x65d3a ASRS            R3, R3, #0x18
0x65d3c CMP             R3, #2
0x65d3e BEQ             loc_65D44
0x65d40 CMP             R3, #6
0x65d42 BNE             loc_65D48
0x65d44 MOVS            R0, #0
0x65d46 B               loc_65D4E
0x65d48 SUBS            R0, #2
0x65d4a LSLS            R0, R0, #0x18
0x65d4c ASRS            R0, R0, #0x18
0x65d4e BL              sub_353A0
0x65d52 BL              sub_4EA28
0x65d56 BL              sub_2FCD0
0x65d5a MOVS            R0, #1
0x65d5c MOVS            R1, #1
0x65d5e MOVS            R2, #0
0x65d60 MOVS            R3, #0
0x65d62 LDR             R4, =(sub_1404+1)
0x65d64 BL              sub_66A78
0x65d68 LDR             R3, =dword_1501DA0
0x65d6a MOVS            R4, #0
0x65d6c STR             R4, [R3]
0x65d6e BL              sub_39360
0x65d72 LDR             R3, =word_1535568
0x65d74 STR             R4, [R3,#(dword_153558C - 0x1535568)]
0x65d76 B               loc_65D7C
0x65d78 MOVS            R3, #1
0x65d7a STRB            R3, [R0,#0xE]
0x65d7c LDR             R1, [SP,#0x10+var_4]
0x65d7e ADDS            R1, #1
0x65d80 STR             R1, [SP,#0x10+var_4]
0x65d82 LDR             R7, =word_15332A0
0x65d84 MOVS            R3, #(byte_153345C - 0x15332A0)
0x65d88 LDRB            R3, [R7,R3]; byte_153345C
0x65d8a LDR             R2, [SP,#0x10+var_4]
0x65d8c CMP             R2, R3
0x65d8e BGE             loc_65D92
0x65d90 B               loc_659C6
0x65d92 ADD             SP, SP, #0x10
0x65d94 POP             {R4-R7}
0x65d96 POP             {R0}
0x65d98 BX              R0