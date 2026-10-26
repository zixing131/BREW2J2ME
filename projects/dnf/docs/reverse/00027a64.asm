0x27a64 PUSH            {R4-R7,LR}
0x27a66 SUB             SP, SP, #0x58
0x27a68 MOV             R4, SP
0x27a6a MOVS            R3, #0
0x27a6c LSLS            R2, R0, #0x18
0x27a6e ADDS            R4, #0x26 ; '&'
0x27a70 LSRS            R2, R2, #0x18
0x27a72 STR             R3, [SP,#0x58+var_10]
0x27a74 STR             R3, [SP,#0x58+var_14]
0x27a76 MOVS            R7, R1
0x27a78 LDR             R3, =unk_14032CC
0x27a7a LDR             R1, =aDFob; "%d.fob"
0x27a7c MOVS            R0, R4
0x27a7e BL              sub_2BCB6
0x27a82 MOVS            R0, R4
0x27a84 LDR             R3, =0x6CBE1
0x27a86 BL              sub_2BCB6
0x27a8a STR             R0, [SP,#0x58+var_54]
0x27a8c CMP             R0, #0
0x27a8e BNE             loc_27A92
0x27a90 B               loc_27E36
0x27a92 MOV             R0, SP
0x27a94 LDR             R5, =unk_140327C
0x27a96 LDR             R1, [SP,#0x58+var_54]
0x27a98 MOVS            R2, #2
0x27a9a ADDS            R0, #0x56 ; 'V'
0x27a9c BL              sub_2BCBA
0x27aa0 LDR             R1, [SP,#0x58+var_54]
0x27aa2 MOVS            R2, #4
0x27aa4 ADDS            R1, #2
0x27aa6 ADD             R0, SP, #0x58+var_C
0x27aa8 BL              sub_2BCBA
0x27aac LDR             R1, [SP,#0x58+var_54]
0x27aae MOVS            R2, #4
0x27ab0 ADDS            R1, #6
0x27ab2 ADD             R0, SP, #0x58+var_8
0x27ab4 BL              sub_2BCBA
0x27ab8 LDR             R0, [SP,#0x58+var_C]
0x27aba LDR             R6, =unk_14032EC
0x27abc ADDS            R0, #2
0x27abe BL              sub_2BCBC
0x27ac2 STR             R0, [SP,#0x58+var_50]
0x27ac4 LDR             R0, [SP,#0x58+var_54]
0x27ac6 MOVS            R1, #6
0x27ac8 LDR             R3, [SP,#0x58+var_8]
0x27aca LDR             R2, [SP,#0x58+var_C]
0x27acc STR             R1, [SP,#0x58+var_58]
0x27ace LDR             R4, =0x692B5
0x27ad0 LDR             R1, [SP,#0x58+var_50]
0x27ad2 ADDS            R0, #0xA
0x27ad4 BL              sub_2BCB8
0x27ad8 LDR             R1, [SP,#0x58+var_50]
0x27ada MOVS            R2, #1
0x27adc ADD             R0, SP, #0x58+var_10
0x27ade BL              sub_2BCBA
0x27ae2 LDR             R4, [SP,#0x58+var_50]
0x27ae4 ADDS            R4, #1
0x27ae6 MOVS            R1, R4
0x27ae8 MOVS            R2, #1
0x27aea ADDS            R4, #1
0x27aec ADD             R0, SP, #0x58+var_14
0x27aee BL              sub_2BCBA
0x27af2 STR             R4, [SP,#0x58+var_4C]
0x27af4 LDR             R4, =word_15332A0
0x27af6 ADDS            R2, R7, R4
0x27af8 MOVS            R1, R2
0x27afa LDR             R3, [SP,#0x58+var_10]
0x27afc ADDS            R1, #0x64 ; 'd'
0x27afe STRB            R3, [R1,#1]
0x27b00 LDR             R3, [SP,#0x58+var_14]
0x27b02 LSLS            R3, R3, #0x18
0x27b04 LSRS            R3, R3, #0x18
0x27b06 ADDS            R2, #0x68 ; 'h'
0x27b08 STRB            R3, [R2,#2]
0x27b0a LDRB            R2, [R1,#1]
0x27b0c MULS            R3, R2
0x27b0e LSLS            R5, R3, #3
0x27b10 CMP             R7, #0
0x27b12 BNE             loc_27BAA
0x27b14 ADDS            R0, R5, #2
0x27b16 BL              sub_2BCBC
0x27b1a MOVS            R3, R4
0x27b1c ADDS            R3, #0xEC
0x27b1e STR             R0, [R3]
0x27b20 ADDS            R3, #4
0x27b22 STR             R0, [R3]
0x27b24 MOVS            R2, R5
0x27b26 MOVS            R1, #0
0x27b28 LDR             R3, =unk_140329C
0x27b2a BL              sub_2BCB6
0x27b2e MOVS            R2, #0
0x27b30 STR             R2, [SP,#0x58+var_48]
0x27b32 B               loc_27B9C
0x27b34 LDR             R3, [SP,#0x58+var_48]
0x27b36 MULS            R0, R3
0x27b38 LDR             R4, =word_15332A0
0x27b3a ADDS            R4, #0xF0
0x27b3c LDR             R3, [R4]
0x27b3e ADDS            R0, R0, R7
0x27b40 LSLS            R0, R0, #3
0x27b42 LDR             R5, =unk_140327C
0x27b44 ADDS            R0, R0, R3
0x27b46 LDR             R1, [SP,#0x58+var_4C]
0x27b48 MOVS            R2, #1
0x27b4a BL              sub_2BCBA
0x27b4e LDR             R3, [SP,#0x58+var_14]
0x27b50 LDR             R2, [SP,#0x58+var_48]
0x27b52 MOVS            R0, R3
0x27b54 MULS            R0, R2
0x27b56 LDR             R3, [R4]
0x27b58 ADDS            R0, R0, R7
0x27b5a LDR             R1, [SP,#0x58+var_4C]
0x27b5c LSLS            R0, R0, #3
0x27b5e ADDS            R0, R0, R3
0x27b60 ADDS            R1, #1
0x27b62 MOVS            R2, #1
0x27b64 ADDS            R0, #1
0x27b66 LDR             R6, [SP,#0x58+var_4C]
0x27b68 BL              sub_2BCBA
0x27b6c LDR             R3, [SP,#0x58+var_4C]
0x27b6e ADDS            R3, #3
0x27b70 LDR             R2, [SP,#0x58+var_48]
0x27b72 STR             R3, [SP,#0x58+var_4C]
0x27b74 LDR             R3, [SP,#0x58+var_14]
0x27b76 MOVS            R0, R3
0x27b78 MULS            R0, R2
0x27b7a LDR             R3, [R4]
0x27b7c ADDS            R0, R0, R7
0x27b7e LSLS            R0, R0, #3
0x27b80 ADDS            R0, R0, R3
0x27b82 ADDS            R6, #2
0x27b84 ADDS            R0, #3
0x27b86 MOVS            R1, R6
0x27b88 MOVS            R2, #1
0x27b8a BL              sub_2BCBA
0x27b8e ADDS            R7, #1
0x27b90 LDR             R0, [SP,#0x58+var_14]
0x27b92 CMP             R7, R0
0x27b94 BLT             loc_27B34
0x27b96 LDR             R3, [SP,#0x58+var_48]
0x27b98 ADDS            R3, #1
0x27b9a STR             R3, [SP,#0x58+var_48]
0x27b9c LDR             R3, [SP,#0x58+var_10]
0x27b9e LDR             R2, [SP,#0x58+var_48]
0x27ba0 CMP             R2, R3
0x27ba2 BLT             loc_27BA6
0x27ba4 B               loc_27E20
0x27ba6 MOVS            R7, #0
0x27ba8 B               loc_27B90
0x27baa CMP             R7, #1
0x27bac BNE             loc_27C42
0x27bae ADDS            R0, R5, #2
0x27bb0 BL              sub_2BCBC
0x27bb4 MOVS            R3, R4
0x27bb6 ADDS            R3, #0xF4
0x27bb8 STR             R0, [R3]
0x27bba ADDS            R3, #4
0x27bbc STR             R0, [R3]
0x27bbe MOVS            R1, #0
0x27bc0 LDR             R3, =unk_140329C
0x27bc2 MOVS            R2, R5
0x27bc4 BL              sub_2BCB6
0x27bc8 MOVS            R3, #0
0x27bca B               loc_27C32
0x27bcc LDR             R2, [SP,#0x58+var_44]
0x27bce MULS            R0, R2
0x27bd0 LDR             R4, =word_15332A0
0x27bd2 ADDS            R4, #0xF8
0x27bd4 LDR             R3, [R4]
0x27bd6 ADDS            R0, R0, R7
0x27bd8 LSLS            R0, R0, #3
0x27bda LDR             R5, =unk_140327C
0x27bdc ADDS            R0, R0, R3
0x27bde LDR             R1, [SP,#0x58+var_4C]
0x27be0 MOVS            R2, #1
0x27be2 BL              sub_2BCBA
0x27be6 LDR             R3, [SP,#0x58+var_14]
0x27be8 LDR             R2, [SP,#0x58+var_44]
0x27bea MOVS            R0, R3
0x27bec MULS            R0, R2
0x27bee LDR             R3, [R4]
0x27bf0 ADDS            R0, R0, R7
0x27bf2 LDR             R1, [SP,#0x58+var_4C]
0x27bf4 LSLS            R0, R0, #3
0x27bf6 ADDS            R0, R0, R3
0x27bf8 ADDS            R1, #1
0x27bfa MOVS            R2, #1
0x27bfc ADDS            R0, #1
0x27bfe LDR             R6, [SP,#0x58+var_4C]
0x27c00 BL              sub_2BCBA
0x27c04 LDR             R3, [SP,#0x58+var_4C]
0x27c06 ADDS            R3, #3
0x27c08 LDR             R2, [SP,#0x58+var_44]
0x27c0a STR             R3, [SP,#0x58+var_4C]
0x27c0c LDR             R3, [SP,#0x58+var_14]
0x27c0e MOVS            R0, R3
0x27c10 MULS            R0, R2
0x27c12 LDR             R3, [R4]
0x27c14 ADDS            R0, R0, R7
0x27c16 LSLS            R0, R0, #3
0x27c18 ADDS            R0, R0, R3
0x27c1a ADDS            R6, #2
0x27c1c ADDS            R0, #3
0x27c1e MOVS            R1, R6
0x27c20 MOVS            R2, #1
0x27c22 BL              sub_2BCBA
0x27c26 ADDS            R7, #1
0x27c28 LDR             R0, [SP,#0x58+var_14]
0x27c2a CMP             R7, R0
0x27c2c BLT             loc_27BCC
0x27c2e LDR             R3, [SP,#0x58+var_44]
0x27c30 ADDS            R3, #1
0x27c32 STR             R3, [SP,#0x58+var_44]
0x27c34 LDR             R2, [SP,#0x58+var_44]
0x27c36 LDR             R3, [SP,#0x58+var_10]
0x27c38 CMP             R2, R3
0x27c3a BLT             loc_27C3E
0x27c3c B               loc_27E20
0x27c3e MOVS            R7, #0
0x27c40 B               loc_27C28
0x27c42 CMP             R7, #2
0x27c44 BNE             loc_27CD8
0x27c46 ADDS            R0, R5, #2
0x27c48 BL              sub_2BCBC
0x27c4c MOVS            R3, R4
0x27c4e ADDS            R3, #0xFC
0x27c50 STR             R0, [R3]
0x27c52 STR             R0, [R3,#(dword_15333A0 - 0x153339C)]
0x27c54 MOVS            R1, #0
0x27c56 LDR             R3, =unk_140329C
0x27c58 MOVS            R2, R5
0x27c5a BL              sub_2BCB6
0x27c5e MOVS            R3, #0
0x27c60 B               loc_27CC8
0x27c62 LDR             R2, [SP,#0x58+var_40]
0x27c64 MULS            R0, R2
0x27c66 LDR             R4, =word_15332A0
0x27c68 ADDS            R4, #0xFC
0x27c6a LDR             R3, [R4,#(dword_15333A0 - 0x153339C)]
0x27c6c ADDS            R0, R0, R7
0x27c6e LSLS            R0, R0, #3
0x27c70 LDR             R5, =unk_140327C
0x27c72 ADDS            R0, R0, R3
0x27c74 LDR             R1, [SP,#0x58+var_4C]
0x27c76 MOVS            R2, #1
0x27c78 BL              sub_2BCBA
0x27c7c LDR             R3, [SP,#0x58+var_14]
0x27c7e LDR             R2, [SP,#0x58+var_40]
0x27c80 MOVS            R0, R3
0x27c82 MULS            R0, R2
0x27c84 LDR             R3, [R4,#(dword_15333A0 - 0x153339C)]
0x27c86 ADDS            R0, R0, R7
0x27c88 LDR             R1, [SP,#0x58+var_4C]
0x27c8a LSLS            R0, R0, #3
0x27c8c ADDS            R0, R0, R3
0x27c8e ADDS            R1, #1
0x27c90 MOVS            R2, #1
0x27c92 ADDS            R0, #1
0x27c94 LDR             R6, [SP,#0x58+var_4C]
0x27c96 BL              sub_2BCBA
0x27c9a LDR             R3, [SP,#0x58+var_4C]
0x27c9c ADDS            R3, #3
0x27c9e LDR             R2, [SP,#0x58+var_40]
0x27ca0 STR             R3, [SP,#0x58+var_4C]
0x27ca2 LDR             R3, [SP,#0x58+var_14]
0x27ca4 MOVS            R0, R3
0x27ca6 MULS            R0, R2
0x27ca8 LDR             R3, [R4,#(dword_15333A0 - 0x153339C)]
0x27caa ADDS            R0, R0, R7
0x27cac LSLS            R0, R0, #3
0x27cae ADDS            R0, R0, R3
0x27cb0 ADDS            R6, #2
0x27cb2 ADDS            R0, #3
0x27cb4 MOVS            R1, R6
0x27cb6 MOVS            R2, #1
0x27cb8 BL              sub_2BCBA
0x27cbc ADDS            R7, #1
0x27cbe LDR             R0, [SP,#0x58+var_14]
0x27cc0 CMP             R7, R0
0x27cc2 BLT             loc_27C62
0x27cc4 LDR             R3, [SP,#0x58+var_40]
0x27cc6 ADDS            R3, #1
0x27cc8 STR             R3, [SP,#0x58+var_40]
0x27cca LDR             R2, [SP,#0x58+var_40]
0x27ccc LDR             R3, [SP,#0x58+var_10]
0x27cce CMP             R2, R3
0x27cd0 BLT             loc_27CD4
0x27cd2 B               loc_27E20
0x27cd4 MOVS            R7, #0
0x27cd6 B               loc_27CBE
0x27cd8 CMP             R7, #3
0x27cda BNE             loc_27D6C
0x27cdc ADDS            R0, R5, #2
0x27cde BL              sub_2BCBC
0x27ce2 MOVS            R3, R4
0x27ce4 ADDS            R3, #0xFC
0x27ce6 STR             R0, [R3,#(dword_15333A4 - 0x153339C)]
0x27ce8 STR             R0, [R3,#(dword_15333A8 - 0x153339C)]
0x27cea MOVS            R1, #0
0x27cec LDR             R3, =unk_140329C
0x27cee MOVS            R2, R5
0x27cf0 BL              sub_2BCB6
0x27cf4 MOVS            R3, #0
0x27cf6 B               loc_27D5E
0x27cf8 LDR             R2, [SP,#0x58+var_3C]
0x27cfa MULS            R0, R2
0x27cfc LDR             R4, =word_15332A0
0x27cfe ADDS            R4, #0xFC
0x27d00 LDR             R3, [R4,#(dword_15333A8 - 0x153339C)]
0x27d02 ADDS            R0, R0, R7
0x27d04 LSLS            R0, R0, #3
0x27d06 LDR             R5, =unk_140327C
0x27d08 ADDS            R0, R0, R3
0x27d0a LDR             R1, [SP,#0x58+var_4C]
0x27d0c MOVS            R2, #1
0x27d0e BL              sub_2BCBA
0x27d12 LDR             R3, [SP,#0x58+var_14]
0x27d14 LDR             R2, [SP,#0x58+var_3C]
0x27d16 MOVS            R0, R3
0x27d18 MULS            R0, R2
0x27d1a LDR             R3, [R4,#(dword_15333A8 - 0x153339C)]
0x27d1c ADDS            R0, R0, R7
0x27d1e LDR             R1, [SP,#0x58+var_4C]
0x27d20 LSLS            R0, R0, #3
0x27d22 ADDS            R0, R0, R3
0x27d24 ADDS            R1, #1
0x27d26 MOVS            R2, #1
0x27d28 ADDS            R0, #1
0x27d2a LDR             R6, [SP,#0x58+var_4C]
0x27d2c BL              sub_2BCBA
0x27d30 LDR             R3, [SP,#0x58+var_4C]
0x27d32 ADDS            R3, #3
0x27d34 LDR             R2, [SP,#0x58+var_3C]
0x27d36 STR             R3, [SP,#0x58+var_4C]
0x27d38 LDR             R3, [SP,#0x58+var_14]
0x27d3a MOVS            R0, R3
0x27d3c MULS            R0, R2
0x27d3e LDR             R3, [R4,#(dword_15333A8 - 0x153339C)]
0x27d40 ADDS            R0, R0, R7
0x27d42 LSLS            R0, R0, #3
0x27d44 ADDS            R0, R0, R3
0x27d46 ADDS            R6, #2
0x27d48 ADDS            R0, #3
0x27d4a MOVS            R1, R6
0x27d4c MOVS            R2, #1
0x27d4e BL              sub_2BCBA
0x27d52 ADDS            R7, #1
0x27d54 LDR             R0, [SP,#0x58+var_14]
0x27d56 CMP             R7, R0
0x27d58 BLT             loc_27CF8
0x27d5a LDR             R3, [SP,#0x58+var_3C]
0x27d5c ADDS            R3, #1
0x27d5e STR             R3, [SP,#0x58+var_3C]
0x27d60 LDR             R2, [SP,#0x58+var_3C]
0x27d62 LDR             R3, [SP,#0x58+var_10]
0x27d64 CMP             R2, R3
0x27d66 BGE             loc_27E20
0x27d68 MOVS            R7, #0
0x27d6a B               loc_27D54
0x27d6c CMP             R7, #4
0x27d6e BNE             loc_27E20
0x27d70 ADDS            R0, R5, #2
0x27d72 BL              sub_2BCBC
0x27d76 MOVS            R3, R4
0x27d78 ADDS            R3, #0xFC
0x27d7a STR             R0, [R3,#(dword_15333AC - 0x153339C)]
0x27d7c STR             R0, [R3,#(dword_15333B0 - 0x153339C)]
0x27d7e MOVS            R1, #0
0x27d80 LDR             R3, =unk_140329C
0x27d82 MOVS            R2, R5
0x27d84 BL              sub_2BCB6
0x27d88 MOVS            R3, #0
0x27d8a B               loc_27DF2
0x27d8c LDR             R2, [SP,#0x58+var_38]
0x27d8e MULS            R0, R2
0x27d90 LDR             R4, =word_15332A0
0x27d92 ADDS            R4, #0xFC
0x27d94 LDR             R3, [R4,#(dword_15333B0 - 0x153339C)]
0x27d96 ADDS            R0, R0, R7
0x27d98 LSLS            R0, R0, #3
0x27d9a LDR             R5, =unk_140327C
0x27d9c ADDS            R0, R0, R3
0x27d9e LDR             R1, [SP,#0x58+var_4C]
0x27da0 MOVS            R2, #1
0x27da2 BL              sub_2BCBA
0x27da6 LDR             R3, [SP,#0x58+var_14]
0x27da8 LDR             R2, [SP,#0x58+var_38]
0x27daa MOVS            R0, R3
0x27dac MULS            R0, R2
0x27dae LDR             R3, [R4,#(dword_15333B0 - 0x153339C)]
0x27db0 ADDS            R0, R0, R7
0x27db2 LDR             R1, [SP,#0x58+var_4C]
0x27db4 LSLS            R0, R0, #3
0x27db6 ADDS            R0, R0, R3
0x27db8 ADDS            R1, #1
0x27dba MOVS            R2, #1
0x27dbc ADDS            R0, #1
0x27dbe LDR             R6, [SP,#0x58+var_4C]
0x27dc0 BL              sub_2BCBA
0x27dc4 LDR             R3, [SP,#0x58+var_4C]
0x27dc6 ADDS            R3, #3
0x27dc8 LDR             R2, [SP,#0x58+var_38]
0x27dca STR             R3, [SP,#0x58+var_4C]
0x27dcc LDR             R3, [SP,#0x58+var_14]
0x27dce MOVS            R0, R3
0x27dd0 MULS            R0, R2
0x27dd2 LDR             R3, [R4,#(dword_15333B0 - 0x153339C)]
0x27dd4 ADDS            R0, R0, R7
0x27dd6 LSLS            R0, R0, #3
0x27dd8 ADDS            R0, R0, R3
0x27dda ADDS            R6, #2
0x27ddc ADDS            R0, #3
0x27dde MOVS            R1, R6
0x27de0 MOVS            R2, #1
0x27de2 BL              sub_2BCBA
0x27de6 ADDS            R7, #1
0x27de8 LDR             R0, [SP,#0x58+var_14]
0x27dea CMP             R7, R0
0x27dec BLT             loc_27D8C
0x27dee LDR             R3, [SP,#0x58+var_38]
0x27df0 ADDS            R3, #1
0x27df2 STR             R3, [SP,#0x58+var_38]
0x27df4 LDR             R2, [SP,#0x58+var_38]
0x27df6 LDR             R3, [SP,#0x58+var_10]
0x27df8 CMP             R2, R3
0x27dfa BGE             loc_27E20
0x27dfc MOVS            R7, #0
0x27dfe B               loc_27DE8
0x27e20 LDR             R3, [SP,#0x58+var_50]
0x27e22 CMP             R3, #0
0x27e24 BEQ             loc_27E2E
0x27e26 MOVS            R0, R3
0x27e28 LDR             R3, =unk_14032FC
0x27e2a BL              sub_2BCB6
0x27e2e LDR             R0, [SP,#0x58+var_54]
0x27e30 LDR             R3, =unk_14032FC
0x27e32 BL              sub_2BCB6
0x27e36 ADD             SP, SP, #0x58 ; 'X'
0x27e38 POP             {R4-R7}
0x27e3a POP             {R0}
0x27e3c BX              R0