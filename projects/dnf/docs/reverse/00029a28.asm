0x29a28 PUSH            {R4-R7,LR}
0x29a2a LDR             R3, =dword_1501D90
0x29a2c LDR             R3, [R3]
0x29a2e LDR             R1, [R3,#0x10]
0x29a30 MOVS            R0, #0x3A ; ':'
0x29a32 LDRSH           R3, [R1,R0]
0x29a34 SUB             SP, SP, #0x70
0x29a36 CMP             R3, #0
0x29a38 BGE             loc_29A3C
0x29a3a ADDS            R3, #0xF
0x29a3c LDR             R2, =word_15332A0
0x29a3e LSLS            R3, R3, #0xC
0x29a40 LSRS            R3, R3, #0x10
0x29a42 STR             R3, [SP,#0x70+var_24]
0x29a44 STR             R2, [SP,#0x70+var_34]
0x29a46 LDR             R3, =byte_15332D1
0x29a48 LDRB            R0, [R3]
0x29a4a LDRH            R3, [R2,#(word_15332A2 - 0x15332A0)]
0x29a4c LSRS            R2, R3, #4
0x29a4e MOVS            R4, #0x3C ; '<'
0x29a50 LDRSH           R3, [R1,R4]
0x29a52 CMP             R3, #0
0x29a54 BGE             loc_29A58
0x29a56 ADDS            R3, #0xF
0x29a58 ASRS            R3, R3, #4
0x29a5a SUBS            R3, R2, R3
0x29a5c SUBS            R3, R0, R3
0x29a5e LDR             R7, =unk_150D7F4
0x29a60 LSLS            R3, R3, #0x10
0x29a62 LSRS            R3, R3, #0x10
0x29a64 STR             R3, [SP,#0x70+var_20]
0x29a66 LDR             R1, [R7,#(dword_150D808 - 0x150D7F4)]
0x29a68 LDR             R3, =dword_1501C14
0x29a6a LDR             R2, [R3]
0x29a6c LDRH            R3, [R1,#4]
0x29a6e LSRS            R3, R3, #1
0x29a70 SUBS            R2, R2, R3
0x29a72 LDR             R0, =dword_1501BFC
0x29a74 LSLS            R2, R2, #0x10
0x29a76 LSRS            R2, R2, #0x10
0x29a78 STR             R0, [SP,#0x70+var_38]
0x29a7a STR             R2, [SP,#0x70+var_1C]
0x29a7c LDR             R3, [R0]
0x29a7e LDRH            R2, [R1,#6]
0x29a80 SUBS            R3, R3, R2
0x29a82 LSLS            R3, R3, #0x10
0x29a84 LSRS            R3, R3, #0x10
0x29a86 STR             R3, [SP,#0x70+var_18]
0x29a88 ADD             R0, SP, #0x70+var_8
0x29a8a LDR             R3, =(sub_2CD18+1)
0x29a8c BL              sub_2BCB6
0x29a90 LDR             R1, [SP,#0x70+var_1C]
0x29a92 LDR             R2, [SP,#0x70+var_18]
0x29a94 LSLS            R5, R1, #0x10
0x29a96 MOVS            R4, #0
0x29a98 ASRS            R5, R5, #0x10
0x29a9a LSLS            R1, R2, #0x10
0x29a9c ADD             R3, SP, #0x70+var_8
0x29a9e ASRS            R1, R1, #0x10
0x29aa0 STR             R4, [SP,#0x70+var_6C]
0x29aa2 STR             R4, [SP,#0x70+var_68]
0x29aa4 STR             R3, [SP,#0x70+var_64]
0x29aa6 STR             R4, [SP,#0x70+var_60]
0x29aa8 MOVS            R0, R5
0x29aaa MOVS            R2, #0
0x29aac MOVS            R3, #0
0x29aae LDR             R6, =(sub_6ADB8+1)
0x29ab0 STR             R7, [SP,#0x70+var_70]
0x29ab2 BL              sub_2BCBC
0x29ab6 LDR             R0, [SP,#0x70+var_38]
0x29ab8 LDR             R1, [R0]
0x29aba MOVS            R3, #1
0x29abc ADD             R2, SP, #0x70+var_8
0x29abe LSLS            R1, R1, #0x10
0x29ac0 STR             R3, [SP,#0x70+var_6C]
0x29ac2 STR             R4, [SP,#0x70+var_68]
0x29ac4 STR             R2, [SP,#0x70+var_64]
0x29ac6 STR             R4, [SP,#0x70+var_60]
0x29ac8 MOVS            R2, #0
0x29aca MOVS            R3, #0
0x29acc ASRS            R1, R1, #0x10
0x29ace STR             R7, [SP,#0x70+var_70]
0x29ad0 MOVS            R0, R5
0x29ad2 BL              sub_2BCBC
0x29ad6 LDR             R3, =byte_15332D1
0x29ad8 LDR             R4, [SP,#0x70+var_20]
0x29ada LDRB            R2, [R3]
0x29adc LSLS            R3, R4, #0x10
0x29ade ASRS            R3, R3, #0x10
0x29ae0 CMP             R3, R2
0x29ae2 BLT             loc_29AEC
0x29ae4 SUBS            R3, R2, #1
0x29ae6 LSLS            R3, R3, #0x10
0x29ae8 LSRS            R3, R3, #0x10
0x29aea STR             R3, [SP,#0x70+var_20]
0x29aec LDR             R3, [SP,#0x70+var_34]
0x29aee LDR             R0, [SP,#0x70+var_24]
0x29af0 ADDS            R3, #0x32 ; '2'
0x29af2 LDRB            R2, [R3]
0x29af4 LSLS            R3, R0, #0x10
0x29af6 ASRS            R3, R3, #0x10
0x29af8 CMP             R3, R2
0x29afa BLT             loc_29B04
0x29afc SUBS            R3, R2, #1
0x29afe LSLS            R3, R3, #0x10
0x29b00 LSRS            R3, R3, #0x10
0x29b02 STR             R3, [SP,#0x70+var_24]
0x29b04 LDR             R5, =unk_1401AE0
0x29b06 MOVS            R3, #3
0x29b08 LDRSB           R3, [R5,R3]
0x29b0a LDRH            R4, [R5]
0x29b0c CMP             R3, #1
0x29b0e BNE             loc_29B3E
0x29b10 LDR             R2, =dword_1501C14
0x29b12 SUBS            R3, R5, #2
0x29b14 LDRH            R0, [R3]
0x29b16 LDR             R3, [R2]
0x29b18 ADDS            R0, R0, R3
0x29b1a LDR             R3, =dword_1501BFC
0x29b1c LDR             R1, [R3]
0x29b1e LDR             R3, =unk_1533708
0x29b20 STR             R3, [SP,#0x70+var_70]
0x29b22 MOVS            R3, #9
0x29b24 ADDS            R1, R1, R4
0x29b26 MOVS            R2, #0
0x29b28 STR             R3, [SP,#0x70+var_6C]
0x29b2a ADD             R3, SP, #0x70+var_8
0x29b2c STR             R3, [SP,#0x70+var_64]
0x29b2e SUBS            R0, #0x7A ; 'z'
0x29b30 SUBS            R1, #0x91
0x29b32 STR             R2, [SP,#0x70+var_68]
0x29b34 STR             R2, [SP,#0x70+var_60]
0x29b36 MOVS            R3, #0
0x29b38 LDR             R4, =(sub_6ADB8+1)
0x29b3a BL              sub_2BCB8
0x29b3e LDR             R3, =unk_1401D9C
0x29b40 ADDS            R5, #0x14
0x29b42 CMP             R5, R3
0x29b44 BNE             loc_29B06
0x29b46 LDR             R1, =dword_1501C14
0x29b48 LDR             R2, =dword_1501BFC
0x29b4a LDR             R3, =unk_1533708
0x29b4c MOVS            R4, #0
0x29b4e LDR             R0, [R1]
0x29b50 STR             R1, [SP,#0x70+var_3C]
0x29b52 LDR             R1, [R2]
0x29b54 STR             R4, [SP,#0x70+var_68]
0x29b56 STR             R4, [SP,#0x70+var_60]
0x29b58 LDR             R4, =(sub_6ADB8+1)
0x29b5a STR             R2, [SP,#0x70+var_40]
0x29b5c STR             R3, [SP,#0x70+var_44]
0x29b5e STR             R3, [SP,#0x70+var_70]
0x29b60 ADD             R2, SP, #0x70+var_8
0x29b62 MOVS            R3, #0xB
0x29b64 ADDS            R0, #0x16
0x29b66 ADDS            R1, #0x73 ; 's'
0x29b68 STR             R3, [SP,#0x70+var_6C]
0x29b6a STR             R2, [SP,#0x70+var_64]
0x29b6c MOVS            R3, #0
0x29b6e MOVS            R2, #0
0x29b70 STR             R4, [SP,#0x70+var_48]
0x29b72 BL              sub_2BCB8
0x29b76 LDR             R1, [SP,#0x70+var_3C]
0x29b78 LDR             R2, [SP,#0x70+var_40]
0x29b7a LDR             R3, [SP,#0x70+var_44]
0x29b7c LDR             R0, [R1]
0x29b7e LDR             R1, [R2]
0x29b80 MOVS            R4, #0
0x29b82 STR             R3, [SP,#0x70+var_70]
0x29b84 ADD             R2, SP, #0x70+var_8
0x29b86 MOVS            R3, #7
0x29b88 ADDS            R0, #0x23 ; '#'
0x29b8a ADDS            R1, #0x77 ; 'w'
0x29b8c STR             R3, [SP,#0x70+var_6C]
0x29b8e STR             R4, [SP,#0x70+var_68]
0x29b90 STR             R2, [SP,#0x70+var_64]
0x29b92 STR             R4, [SP,#0x70+var_60]
0x29b94 MOVS            R2, #0
0x29b96 MOVS            R3, #0
0x29b98 LDR             R4, [SP,#0x70+var_48]
0x29b9a BL              sub_2BCB8
0x29b9e LDR             R1, [SP,#0x70+var_3C]
0x29ba0 LDR             R2, [SP,#0x70+var_40]
0x29ba2 LDR             R3, [SP,#0x70+var_44]
0x29ba4 LDR             R0, [R1]
0x29ba6 LDR             R1, [R2]
0x29ba8 MOVS            R4, #0
0x29baa STR             R3, [SP,#0x70+var_70]
0x29bac ADD             R2, SP, #0x70+var_8
0x29bae MOVS            R3, #8
0x29bb0 ADDS            R0, #0x64 ; 'd'
0x29bb2 ADDS            R1, #0x77 ; 'w'
0x29bb4 STR             R3, [SP,#0x70+var_6C]
0x29bb6 STR             R4, [SP,#0x70+var_68]
0x29bb8 STR             R2, [SP,#0x70+var_64]
0x29bba STR             R4, [SP,#0x70+var_60]
0x29bbc MOVS            R2, #0
0x29bbe MOVS            R3, #0
0x29bc0 LDR             R4, [SP,#0x70+var_48]
0x29bc2 BL              sub_2BCB8
0x29bc6 LDR             R0, =byte_150004E
0x29bc8 STR             R0, [SP,#0x70+var_4C]
0x29bca LDRB            R2, [R0]
0x29bcc LSLS            R3, R2, #2
0x29bce ADDS            R3, R3, R2
0x29bd0 LDR             R1, =unk_1401AD8
0x29bd2 LSLS            R3, R3, #2
0x29bd4 ADDS            R3, R3, R1
0x29bd6 MOVS            R7, #0xB
0x29bd8 LDRSB           R7, [R3,R7]
0x29bda CMP             R7, #1
0x29bdc BNE             loc_29C28
0x29bde LDR             R2, [SP,#0x70+var_3C]
0x29be0 LDR             R4, [SP,#0x70+var_40]
0x29be2 LDR             R0, [R2]
0x29be4 LDR             R1, [R4]
0x29be6 LDR             R5, =0xFFFFFF00
0x29be8 MOVS            R2, #0x11
0x29bea LDR             R3, [R3,#0xC]
0x29bec ADDS            R1, #0x76 ; 'v'
0x29bee STR             R2, [SP,#0x70+var_70]
0x29bf0 ADDS            R0, #0x4B ; 'K'
0x29bf2 MOVS            R2, #0x32 ; '2'
0x29bf4 STR             R7, [SP,#0x70+var_6C]
0x29bf6 STR             R5, [SP,#0x70+var_68]
0x29bf8 LDR             R4, =(sub_695C4+1)
0x29bfa BL              sub_2BCB8
0x29bfe LDR             R3, [SP,#0x70+var_3C]
0x29c00 LDR             R2, [SP,#0x70+var_40]
0x29c02 LDR             R0, [R3]
0x29c04 LDR             R3, [SP,#0x70+var_4C]
0x29c06 LDR             R1, [R2]
0x29c08 LDRB            R2, [R3]
0x29c0a LSLS            R3, R2, #2
0x29c0c ADDS            R3, R3, R2
0x29c0e LDR             R2, =unk_1401AD8
0x29c10 LSLS            R3, R3, #2
0x29c12 ADDS            R3, R3, R2
0x29c14 MOVS            R2, #0x11
0x29c16 LDR             R3, [R3,#0x10]
0x29c18 ADDS            R0, #0x4B ; 'K'
0x29c1a STR             R2, [SP,#0x70+var_70]
0x29c1c ADDS            R1, #0x87
0x29c1e STR             R7, [SP,#0x70+var_6C]
0x29c20 STR             R5, [SP,#0x70+var_68]
0x29c22 MOVS            R2, #0x78 ; 'x'
0x29c24 BL              sub_2BCB8
0x29c28 LDR             R2, [SP,#0x70+var_40]
0x29c2a LDR             R4, [SP,#0x70+var_3C]
0x29c2c LDR             R1, [R2]
0x29c2e MOVS            R2, #0x11
0x29c30 LDR             R0, [R4]
0x29c32 STR             R2, [SP,#0x70+var_70]
0x29c34 LDR             R2, =0x62CBF300
0x29c36 MOVS            R4, #0
0x29c38 LDR             R3, =dword_90CEC
0x29c3a ADDS            R1, #0x66 ; 'f'
0x29c3c STR             R4, [SP,#0x70+var_6C]
0x29c3e STR             R2, [SP,#0x70+var_68]
0x29c40 LDR             R4, =(sub_695C4+1)
0x29c42 MOVS            R2, #0x32 ; '2'
0x29c44 ADDS            R0, #0x36 ; '6'
0x29c46 BL              sub_2BCB8
0x29c4a LDR             R0, [SP,#0x70+var_4C]
0x29c4c LDRB            R2, [R0]
0x29c4e LSLS            R3, R2, #2
0x29c50 LDR             R1, =unk_1401AD8
0x29c52 ADDS            R3, R3, R2
0x29c54 LDR             R4, [SP,#0x70+var_3C]
0x29c56 LSLS            R3, R3, #2
0x29c58 ADDS            R3, R3, R1
0x29c5a LDR             R2, [R4]
0x29c5c LDRH            R0, [R3,#6]
0x29c5e ADDS            R0, R0, R2
0x29c60 LDR             R2, [SP,#0x70+var_40]
0x29c62 LDRH            R1, [R3,#8]
0x29c64 LDR             R3, [R2]
0x29c66 ADDS            R1, R1, R3
0x29c68 LDR             R3, [SP,#0x70+var_44]
0x29c6a MOVS            R4, #0
0x29c6c STR             R3, [SP,#0x70+var_70]
0x29c6e ADD             R2, SP, #0x70+var_8
0x29c70 MOVS            R3, #0xA
0x29c72 SUBS            R0, #0x7A ; 'z'
0x29c74 STR             R3, [SP,#0x70+var_6C]
0x29c76 STR             R4, [SP,#0x70+var_68]
0x29c78 STR             R2, [SP,#0x70+var_64]
0x29c7a STR             R4, [SP,#0x70+var_60]
0x29c7c SUBS            R1, #0x91
0x29c7e MOVS            R2, #0
0x29c80 MOVS            R3, #0
0x29c82 LDR             R4, [SP,#0x70+var_48]
0x29c84 BL              sub_2BCB8
0x29c88 MOVS            R0, #0
0x29c8a STR             R0, [SP,#0x70+var_2C]
0x29c8c STR             R0, [SP,#0x70+var_30]
0x29c8e B               loc_29E32
0x29c90 LDR             R2, [SP,#0x70+var_30]
0x29c92 LDR             R6, =byte_1401A68
0x29c94 LSLS            R5, R2, #4
0x29c96 LDR             R2, =0x1AE9
0x29c98 LDRB            R3, [R5,R6]
0x29c9a LDRB            R2, [R4,R2]
0x29c9c CMP             R3, R2
0x29c9e BEQ             loc_29CA2
0x29ca0 B               loc_29E1C
0x29ca2 ADDS            R2, R5, R6
0x29ca4 LDRH            R3, [R2,#4]
0x29ca6 LDR             R0, [SP,#0x70+var_1C]
0x29ca8 ADDS            R3, R0, R3
0x29caa ADDS            R3, R3, R1
0x29cac LSLS            R3, R3, #0x10
0x29cae LSRS            R0, R3, #0x10
0x29cb0 LDRH            R3, [R2,#6]
0x29cb2 LDR             R2, [SP,#0x70+var_18]
0x29cb4 ADDS            R3, R2, R3
0x29cb6 LSLS            R3, R3, #0x10
0x29cb8 LSRS            R3, R3, #0x10
0x29cba STR             R3, [SP,#0x70+var_58]
0x29cbc LDR             R3, [SP,#0x70+var_24]
0x29cbe LSLS            R3, R3, #0x10
0x29cc0 ASRS            R2, R3, #0x10
0x29cc2 STR             R3, [SP,#0x70+var_54]
0x29cc4 CMP             R2, R1
0x29cc6 BEQ             loc_29CCA
0x29cc8 B               loc_29E1C
0x29cca LDR             R3, [SP,#0x70+var_20]
0x29ccc LSLS            R3, R3, #0x10
0x29cce STR             R3, [SP,#0x70+var_54]
0x29cd0 ASRS            R2, R3, #0x10
0x29cd2 LDR             R3, [SP,#0x70+var_2C]
0x29cd4 CMP             R2, R3
0x29cd6 BEQ             loc_29CDA
0x29cd8 B               loc_29E1C
0x29cda SUBS            R3, R0, #3
0x29cdc LSLS            R3, R3, #0x10
0x29cde LSRS            R3, R3, #0x10
0x29ce0 STR             R3, [SP,#0x70+var_14]
0x29ce2 LDR             R3, [SP,#0x70+var_58]
0x29ce4 ADD             R3, R12
0x29ce6 LSLS            R3, R3, #0x10
0x29ce8 LSRS            R3, R3, #0x10
0x29cea STR             R3, [SP,#0x70+var_10]
0x29cec LDR             R4, =byte_15336F8
0x29cee LDRB            R3, [R4]
0x29cf0 CMP             R3, #0
0x29cf2 BEQ             loc_29D12
0x29cf4 LDRB            R3, [R4,#(byte_1533704 - 0x15336F8)]
0x29cf6 STR             R3, [SP,#0x70+var_70]
0x29cf8 MOVS            R3, #0
0x29cfa STR             R3, [SP,#0x70+var_6C]
0x29cfc STR             R3, [SP,#0x70+var_68]
0x29cfe STR             R3, [SP,#0x70+var_64]
0x29d00 STR             R3, [SP,#0x70+var_60]
0x29d02 STR             R3, [SP,#0x70+var_5C]
0x29d04 LDR             R2, =unk_150D868
0x29d06 MOVS            R3, R4
0x29d08 LDR             R0, [SP,#0x70+var_14]
0x29d0a LDR             R1, [SP,#0x70+var_10]
0x29d0c LDR             R4, =(sub_6B350+1)
0x29d0e BL              sub_2BCB8
0x29d12 LDR             R3, =unk_1533708
0x29d14 MOVS            R2, #0
0x29d16 STR             R3, [SP,#0x70+var_70]
0x29d18 ADD             R3, SP, #0x70+var_8
0x29d1a STR             R3, [SP,#0x70+var_64]
0x29d1c LDR             R4, =(sub_6ADB8+1)
0x29d1e MOVS            R3, #0
0x29d20 STR             R2, [SP,#0x70+var_6C]
0x29d22 STR             R2, [SP,#0x70+var_68]
0x29d24 STR             R2, [SP,#0x70+var_60]
0x29d26 LDR             R0, [SP,#0x70+var_14]
0x29d28 LDR             R1, [SP,#0x70+var_10]
0x29d2a BL              sub_2BCB8
0x29d2e MOVS            R3, R5
0x29d30 MOVS            R4, #0
0x29d32 ADDS            R3, #8
0x29d34 STR             R4, [SP,#0x70+var_28]
0x29d36 ADDS            R5, R3, R6
0x29d38 LDRB            R3, [R5]
0x29d3a LSLS            R3, R3, #0x18
0x29d3c ASRS            R2, R3, #0x18
0x29d3e ADDS            R0, R2, #1
0x29d40 BEQ             loc_29E28
0x29d42 LSLS            R3, R2, #2
0x29d44 ADDS            R3, R3, R2
0x29d46 LDR             R7, =unk_1401AD8
0x29d48 LSLS            R3, R3, #2
0x29d4a ADDS            R1, R3, R7
0x29d4c LDRH            R0, [R1,#6]
0x29d4e LDR             R2, [SP,#0x70+var_14]
0x29d50 SUBS            R3, R2, R0
0x29d52 ADDS            R3, #5
0x29d54 CMP             R3, #6
0x29d56 BHI             loc_29DAC
0x29d58 MOVS            R2, R1
0x29d5a LDR             R4, [SP,#0x70+var_10]
0x29d5c LDRH            R1, [R1,#8]
0x29d5e SUBS            R3, R4, R1
0x29d60 SUBS            R3, #0xB
0x29d62 ADDS            R2, #8
0x29d64 CMP             R3, #0xD
0x29d66 BHI             loc_29DAC
0x29d68 MOVS            R6, #3
0x29d6a LDRSB           R6, [R2,R6]
0x29d6c CMP             R6, #1
0x29d6e BNE             loc_29DAC
0x29d70 MOVS            R3, #0
0x29d72 STR             R3, [SP,#0x70+var_70]
0x29d74 MOVS            R3, #2
0x29d76 SUBS            R0, #0x16
0x29d78 SUBS            R1, #0xA
0x29d7a STR             R3, [SP,#0x70+var_6C]
0x29d7c MOVS            R2, #0x2C ; ','
0x29d7e MOVS            R3, #0xE
0x29d80 LDR             R4, =(sub_6A89C+1)
0x29d82 BL              sub_2BCB8
0x29d86 MOVS            R2, #0
0x29d88 LDRSB           R2, [R5,R2]
0x29d8a LSLS            R3, R2, #2
0x29d8c ADDS            R3, R3, R2
0x29d8e LSLS            R3, R3, #2
0x29d90 ADDS            R3, R3, R7
0x29d92 MOVS            R2, #0x11
0x29d94 LDRH            R1, [R3,#8]
0x29d96 LDRH            R0, [R3,#6]
0x29d98 LDR             R3, [R3,#0xC]
0x29d9a STR             R2, [SP,#0x70+var_70]
0x29d9c LDR             R2, =0xFFFFFF00
0x29d9e SUBS            R1, #9
0x29da0 STR             R2, [SP,#0x70+var_68]
0x29da2 STR             R6, [SP,#0x70+var_6C]
0x29da4 MOVS            R2, #0x32 ; '2'
0x29da6 LDR             R4, =(sub_695C4+1)
0x29da8 BL              sub_2BCB8
0x29dac LDR             R3, [SP,#0x70+var_28]
0x29dae ADDS            R3, #1
0x29db0 LSLS            R3, R3, #0x18
0x29db2 LSRS            R3, R3, #0x18
0x29db4 STR             R3, [SP,#0x70+var_28]
0x29db6 ADDS            R5, #1
0x29db8 CMP             R3, #7
0x29dba BEQ             loc_29E28
0x29dbc B               loc_29D38
0x29e1c ADDS            R3, R1, #1
0x29e1e LSLS            R3, R3, #0x18
0x29e20 LSRS            R1, R3, #0x18
0x29e22 CMP             R1, R7
0x29e24 BEQ             loc_29E28
0x29e26 B               loc_29C90
0x29e28 LDR             R3, [SP,#0x70+var_2C]
0x29e2a ADDS            R3, #1
0x29e2c LSLS            R3, R3, #0x18
0x29e2e LSRS            R3, R3, #0x18
0x29e30 STR             R3, [SP,#0x70+var_2C]
0x29e32 LDR             R0, [SP,#0x70+var_30]
0x29e34 LDR             R3, =byte_1401A68
0x29e36 LSLS            R2, R0, #4
0x29e38 ADDS            R2, R2, R3
0x29e3a LDRB            R3, [R2,#1]
0x29e3c LDR             R1, [SP,#0x70+var_2C]
0x29e3e CMP             R3, R1
0x29e40 BLS             loc_29E50
0x29e42 LDR             R3, =dword_1501D90
0x29e44 LSLS            R1, R1, #1
0x29e46 LDRB            R7, [R2,#2]
0x29e48 LDR             R4, [R3]
0x29e4a MOV             R12, R1
0x29e4c MOVS            R1, #0
0x29e4e B               loc_29E22
0x29e50 LDR             R3, [SP,#0x70+var_30]
0x29e52 ADDS            R3, #1
0x29e54 LSLS            R3, R3, #0x18
0x29e56 LSRS            R3, R3, #0x18
0x29e58 STR             R3, [SP,#0x70+var_30]
0x29e5a CMP             R3, #6
0x29e5c BHI             loc_29E64
0x29e5e MOVS            R2, #0
0x29e60 STR             R2, [SP,#0x70+var_2C]
0x29e62 B               loc_29E32
0x29e64 LDR             R3, =0x6E16D
0x29e66 LDR             R0, =unk_150D868
0x29e68 LDR             R1, =byte_15336F8
0x29e6a MOVS            R2, #0
0x29e6c BL              sub_2BCB6
0x29e70 LDR             R7, =unk_1401AE3
0x29e72 SUBS            R3, R7, #5
0x29e74 STR             R3, [SP,#0x70+var_C]
0x29e76 SUBS            R5, R7, #3
0x29e78 MOVS            R4, #3
0x29e7a LDRSB           R4, [R5,R4]
0x29e7c STR             R4, [SP,#0x70+var_50]
0x29e7e CMP             R4, #1
0x29e80 BEQ             loc_29E84
0x29e82 B               loc_29FD6
0x29e84 MOVS            R3, #2
0x29e86 LDRSB           R3, [R5,R3]
0x29e88 SUBS            R6, R7, #1
0x29e8a CMP             R3, #2
0x29e8c BNE             loc_29EBE
0x29e8e LDR             R1, [SP,#0x70+var_C]
0x29e90 LDR             R3, =dword_1501C14
0x29e92 LDRH            R0, [R1]
0x29e94 LDR             R3, [R3]
0x29e96 ADDS            R0, R0, R3
0x29e98 LDR             R3, =dword_1501BFC
0x29e9a LDRH            R1, [R5]
0x29e9c LDR             R3, [R3]
0x29e9e ADDS            R1, R1, R3
0x29ea0 LDR             R3, =unk_1533708
0x29ea2 STR             R3, [SP,#0x70+var_70]
0x29ea4 MOVS            R3, #3
0x29ea6 MOVS            R2, #0
0x29ea8 STR             R3, [SP,#0x70+var_6C]
0x29eaa ADD             R3, SP, #0x70+var_8
0x29eac STR             R3, [SP,#0x70+var_64]
0x29eae SUBS            R0, #0x7C ; '|'
0x29eb0 SUBS            R1, #0xA0
0x29eb2 STR             R2, [SP,#0x70+var_68]
0x29eb4 STR             R2, [SP,#0x70+var_60]
0x29eb6 MOVS            R3, #0
0x29eb8 LDR             R4, =(sub_6ADB8+1)
0x29eba BL              sub_2BCB8
0x29ebe MOVS            R3, #0
0x29ec0 LDRSB           R3, [R6,R3]
0x29ec2 CMP             R3, #3
0x29ec4 BNE             loc_29EF6
0x29ec6 LDR             R2, [SP,#0x70+var_C]
0x29ec8 LDR             R3, =dword_1501C14
0x29eca LDRH            R0, [R2]
0x29ecc LDR             R3, [R3]
0x29ece ADDS            R0, R0, R3
0x29ed0 LDR             R3, =dword_1501BFC
0x29ed2 LDRH            R1, [R5]
0x29ed4 LDR             R3, [R3]
0x29ed6 ADDS            R1, R1, R3
0x29ed8 LDR             R3, =unk_1533708
0x29eda STR             R3, [SP,#0x70+var_70]
0x29edc MOVS            R3, #2
0x29ede MOVS            R2, #0
0x29ee0 STR             R3, [SP,#0x70+var_6C]
0x29ee2 ADD             R3, SP, #0x70+var_8
0x29ee4 STR             R3, [SP,#0x70+var_64]
0x29ee6 SUBS            R0, #0x7C ; '|'
0x29ee8 SUBS            R1, #0xA0
0x29eea STR             R2, [SP,#0x70+var_68]
0x29eec STR             R2, [SP,#0x70+var_60]
0x29eee MOVS            R3, #0
0x29ef0 LDR             R4, =(sub_6ADB8+1)
0x29ef2 BL              sub_2BCB8
0x29ef6 MOVS            R3, #0
0x29ef8 LDRSB           R3, [R6,R3]
0x29efa CMP             R3, #4
0x29efc BNE             loc_29F2E
0x29efe LDR             R4, [SP,#0x70+var_C]
0x29f00 LDR             R3, =dword_1501C14
0x29f02 LDRH            R0, [R4]
0x29f04 LDR             R3, [R3]
0x29f06 ADDS            R0, R0, R3
0x29f08 LDR             R3, =dword_1501BFC
0x29f0a LDRH            R1, [R5]
0x29f0c LDR             R3, [R3]
0x29f0e LDR             R2, [SP,#0x70+var_50]
0x29f10 ADDS            R1, R1, R3
0x29f12 LDR             R3, =unk_1533708
0x29f14 STR             R2, [SP,#0x70+var_6C]
0x29f16 STR             R3, [SP,#0x70+var_70]
0x29f18 MOVS            R2, #0
0x29f1a ADD             R3, SP, #0x70+var_8
0x29f1c STR             R3, [SP,#0x70+var_64]
0x29f1e SUBS            R0, #0x7C ; '|'
0x29f20 SUBS            R1, #0xA0
0x29f22 STR             R2, [SP,#0x70+var_68]
0x29f24 STR             R2, [SP,#0x70+var_60]
0x29f26 MOVS            R3, #0
0x29f28 LDR             R4, =(sub_6ADB8+1)
0x29f2a BL              sub_2BCB8
0x29f2e MOVS            R3, #0
0x29f30 LDRSB           R3, [R6,R3]
0x29f32 CMP             R3, #5
0x29f34 BNE             loc_29F66
0x29f36 LDR             R4, [SP,#0x70+var_C]
0x29f38 LDR             R3, =dword_1501C14
0x29f3a LDRH            R0, [R4]
0x29f3c LDR             R3, [R3]
0x29f3e ADDS            R0, R0, R3
0x29f40 LDR             R3, =dword_1501BFC
0x29f42 LDRH            R1, [R5]
0x29f44 LDR             R3, [R3]
0x29f46 ADDS            R1, R1, R3
0x29f48 LDR             R3, =unk_1533708
0x29f4a STR             R3, [SP,#0x70+var_70]
0x29f4c MOVS            R3, #0x12
0x29f4e MOVS            R2, #0
0x29f50 STR             R3, [SP,#0x70+var_6C]
0x29f52 ADD             R3, SP, #0x70+var_8
0x29f54 STR             R3, [SP,#0x70+var_64]
0x29f56 SUBS            R0, #0x7C ; '|'
0x29f58 SUBS            R1, #0xA0
0x29f5a STR             R2, [SP,#0x70+var_68]
0x29f5c STR             R2, [SP,#0x70+var_60]
0x29f5e MOVS            R3, #0
0x29f60 LDR             R4, =(sub_6ADB8+1)
0x29f62 BL              sub_2BCB8
0x29f66 MOVS            R3, #0
0x29f68 LDRSB           R3, [R6,R3]
0x29f6a CMP             R3, #1
0x29f6c BNE             loc_29FD6
0x29f6e LDR             R4, =byte_15336F8
0x29f70 LDRB            R3, [R4]
0x29f72 CMP             R3, #0
0x29f74 BEQ             loc_29FA6
0x29f76 LDR             R1, [SP,#0x70+var_C]
0x29f78 LDR             R3, =dword_1501C14
0x29f7a LDRH            R0, [R1]
0x29f7c LDR             R3, [R3]
0x29f7e ADDS            R0, R0, R3
0x29f80 LDR             R3, =dword_1501BFC
0x29f82 LDRH            R1, [R5]
0x29f84 LDR             R3, [R3]
0x29f86 ADDS            R1, R1, R3
0x29f88 LDRB            R3, [R4,#(byte_1533704 - 0x15336F8)]
0x29f8a STR             R3, [SP,#0x70+var_70]
0x29f8c MOVS            R3, #0
0x29f8e STR             R3, [SP,#0x70+var_6C]
0x29f90 STR             R3, [SP,#0x70+var_68]
0x29f92 STR             R3, [SP,#0x70+var_64]
0x29f94 STR             R3, [SP,#0x70+var_60]
0x29f96 STR             R3, [SP,#0x70+var_5C]
0x29f98 SUBS            R0, #0x7A ; 'z'
0x29f9a MOVS            R3, R4
0x29f9c SUBS            R1, #0xA0
0x29f9e LDR             R2, =unk_150D868
0x29fa0 LDR             R4, =(sub_6B350+1)
0x29fa2 BL              sub_2BCB8
0x29fa6 LDR             R2, [SP,#0x70+var_C]
0x29fa8 LDR             R3, =dword_1501C14
0x29faa LDRH            R0, [R2]
0x29fac LDR             R3, [R3]
0x29fae ADDS            R0, R0, R3
0x29fb0 LDR             R3, =dword_1501BFC
0x29fb2 LDRH            R1, [R5]
0x29fb4 LDR             R3, [R3]
0x29fb6 ADDS            R1, R1, R3
0x29fb8 LDR             R3, =unk_1533708
0x29fba STR             R3, [SP,#0x70+var_70]
0x29fbc MOVS            R3, #5
0x29fbe MOVS            R2, #0
0x29fc0 STR             R3, [SP,#0x70+var_6C]
0x29fc2 ADD             R3, SP, #0x70+var_8
0x29fc4 STR             R3, [SP,#0x70+var_64]
0x29fc6 SUBS            R0, #0x7C ; '|'
0x29fc8 SUBS            R1, #0xA0
0x29fca STR             R2, [SP,#0x70+var_68]
0x29fcc STR             R2, [SP,#0x70+var_60]
0x29fce MOVS            R3, #0
0x29fd0 LDR             R4, =(sub_6ADB8+1)
0x29fd2 BL              sub_2BCB8
0x29fd6 LDR             R3, [SP,#0x70+var_C]
0x29fd8 ADDS            R3, #0x14
0x29fda STR             R3, [SP,#0x70+var_C]
0x29fdc LDR             R3, =unk_1401D9F
0x29fde ADDS            R7, #0x14
0x29fe0 ADDS            R5, #0x14
0x29fe2 CMP             R7, R3
0x29fe4 BEQ             loc_29FE8
0x29fe6 B               loc_29E78
0x29fe8 LDR             R3, =0x2E7C9
0x29fea BL              sub_2BCB6
0x29fee ADD             SP, SP, #0x70 ; 'p'
0x29ff0 POP             {R4-R7}
0x29ff2 POP             {R0}
0x29ff4 BX              R0