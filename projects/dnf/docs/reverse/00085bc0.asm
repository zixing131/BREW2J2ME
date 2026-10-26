0x85bc0 PUSH            {R4-R7,LR}
0x85bc2 LSLS            R0, R0, #0x18
0x85bc4 LDR             R2, =byte_1538F34
0x85bc6 MOVS            R3, #0
0x85bc8 SUB             SP, SP, #0x1C
0x85bca LSRS            R6, R0, #0x18
0x85bcc MOVS            R5, #0
0x85bce STRB            R3, [R2]
0x85bd0 B               loc_85BFA
0x85bd2 LSLS            R2, R1, #2
0x85bd4 LDR             R3, =dword_1538860
0x85bd6 ADDS            R2, R2, R1
0x85bd8 LSLS            R2, R2, #5
0x85bda ADDS            R4, R2, R3
0x85bdc LDR             R3, [R4,#4]
0x85bde CMP             R3, #0
0x85be0 BNE             loc_85BF8
0x85be2 LDR             R3, =unk_14032EC
0x85be4 MOVS            R0, #0xA2
0x85be6 BL              sub_8A950
0x85bea MOVS            R1, #0
0x85bec STR             R0, [R4,#4]
0x85bee STR             R0, [R4]
0x85bf0 MOVS            R2, #0xA0
0x85bf2 LDR             R3, =unk_140329C
0x85bf4 BL              sub_8A950
0x85bf8 ADDS            R5, #1
0x85bfa LSLS            R3, R5, #0x18
0x85bfc LSRS            R1, R3, #0x18
0x85bfe LDR             R2, =word_15332A0
0x85c00 MOVS            R3, #(byte_153341C - 0x15332A0)
0x85c04 LDRB            R3, [R2,R3]; byte_153341C
0x85c06 CMP             R3, R1
0x85c08 BHI             loc_85BD2
0x85c0a MOVS            R0, #6
0x85c0c BL              sub_844D0
0x85c10 BL              sub_84D38
0x85c14 CMP             R6, #1
0x85c16 BNE             loc_85C1C
0x85c18 BL              sub_8201C
0x85c1c MOVS            R0, #5
0x85c1e BL              sub_84374
0x85c22 MOVS            R0, #7
0x85c24 BL              sub_840D8
0x85c28 LDR             R3, =(sub_62B00+1)
0x85c2a BL              sub_8A950
0x85c2e MOVS            R0, #9
0x85c30 BL              sub_83B0C
0x85c34 MOVS            R0, #2
0x85c36 BL              sub_83D44
0x85c3a MOVS            R1, #0
0x85c3c STR             R1, [SP,#0x1C+var_4]
0x85c3e B               loc_85D24
0x85c40 LSLS            R3, R6, #2
0x85c42 LDR             R2, =dword_1538860
0x85c44 ADDS            R3, R3, R6
0x85c46 LSLS            R3, R3, #5
0x85c48 LDR             R1, [SP,#0x1C+var_10]
0x85c4a STR             R3, [SP,#0x1C+var_1C]
0x85c4c LDR             R3, [R3,R2]
0x85c4e LSLS            R7, R1, #4
0x85c50 ADDS            R3, R7, R3
0x85c52 LDR             R1, [R3,#0x60]
0x85c54 STR             R2, [SP,#0x1C+var_18]
0x85c56 CMP             R1, #0
0x85c58 BLE             loc_85C6A
0x85c5a LSLS            R1, R1, #0x10
0x85c5c LSRS            R1, R1, #0x10
0x85c5e MOVS            R0, #7
0x85c60 MOVS            R2, #0
0x85c62 LDR             R3, [SP,#0x1C+var_8]
0x85c64 LDR             R4, =(sub_73EE8+1)
0x85c66 BL              sub_8A952
0x85c6a LDR             R2, [SP,#0x1C+var_1C]
0x85c6c LDR             R1, [SP,#0x1C+var_18]
0x85c6e LDR             R3, [R2,R1]
0x85c70 ADDS            R3, R7, R3
0x85c72 ADDS            R3, #0x5C ; '\'
0x85c74 LDRB            R3, [R3,#2]
0x85c76 CMP             R3, #0xFF
0x85c78 BEQ             loc_85CA2
0x85c7a LDR             R2, [SP,#0x1C+var_C]
0x85c7c LDRB            R3, [R2]
0x85c7e SUBS            R3, #3
0x85c80 LSLS            R3, R3, #0x18
0x85c82 LSRS            R3, R3, #0x18
0x85c84 CMP             R3, #3
0x85c86 BLS             loc_85C96
0x85c88 LDRB            R0, [R5]
0x85c8a LDRH            R1, [R5,#2]
0x85c8c LDRB            R2, [R5,#5]
0x85c8e LDRB            R3, [R5,#1]
0x85c90 LDR             R4, =(sub_73EE8+1)
0x85c92 BL              sub_8A952
0x85c96 LDR             R3, [SP,#0x1C+var_C]
0x85c98 LDRB            R2, [R3]
0x85c9a CMP             R2, #1
0x85c9c BNE             loc_85CA2
0x85c9e LDR             R3, =byte_1538F34
0x85ca0 STRB            R2, [R3]
0x85ca2 LDR             R3, [SP,#0x1C+var_8]
0x85ca4 LDR             R1, [SP,#0x1C+var_10]
0x85ca6 LDR             R2, [SP,#0x1C+var_C]
0x85ca8 ADDS            R3, #1
0x85caa LSLS            R3, R3, #0x18
0x85cac ADDS            R1, #1
0x85cae ADDS            R2, #0x10
0x85cb0 LSRS            R3, R3, #0x18
0x85cb2 STR             R1, [SP,#0x1C+var_10]
0x85cb4 STR             R2, [SP,#0x1C+var_C]
0x85cb6 ADDS            R5, #0xC
0x85cb8 STR             R3, [SP,#0x1C+var_8]
0x85cba CMP             R1, #3
0x85cbc BNE             loc_85C40
0x85cbe LSLS            R3, R6, #2
0x85cc0 ADDS            R3, R3, R6
0x85cc2 LSLS            R3, R3, #5
0x85cc4 LDR             R1, =dword_1538860
0x85cc6 MOVS            R2, R3
0x85cc8 ADDS            R3, #0x88
0x85cca ADDS            R5, R3, R1
0x85ccc MOVS            R3, #0
0x85cce ADDS            R2, #0x44 ; 'D'
0x85cd0 STR             R3, [SP,#0x1C+var_14]
0x85cd2 ADDS            R7, R2, R1
0x85cd4 LSLS            R3, R6, #2
0x85cd6 LDR             R2, =dword_1538860
0x85cd8 ADDS            R3, R3, R6
0x85cda LSLS            R3, R3, #5
0x85cdc LDR             R1, [SP,#0x1C+var_14]
0x85cde LDR             R2, [R3,R2]
0x85ce0 LSLS            R3, R1, #3
0x85ce2 ADDS            R3, R3, R2
0x85ce4 ADDS            R3, #0x88
0x85ce6 LDRB            R3, [R3,#1]
0x85ce8 CMP             R3, #0xFF
0x85cea BEQ             loc_85D10
0x85cec LDRB            R3, [R7]
0x85cee SUBS            R3, #3
0x85cf0 LSLS            R3, R3, #0x18
0x85cf2 LSRS            R3, R3, #0x18
0x85cf4 CMP             R3, #3
0x85cf6 BLS             loc_85D06
0x85cf8 LDRB            R0, [R5]
0x85cfa LDRH            R1, [R5,#2]
0x85cfc LDRB            R2, [R5,#5]
0x85cfe LDRB            R3, [R5,#1]
0x85d00 LDR             R4, =(sub_73EE8+1)
0x85d02 BL              sub_8A952
0x85d06 LDRB            R2, [R7]
0x85d08 CMP             R2, #1
0x85d0a BNE             loc_85D10
0x85d0c LDR             R3, =byte_1538F34
0x85d0e STRB            R2, [R3]
0x85d10 LDR             R2, [SP,#0x1C+var_14]
0x85d12 ADDS            R2, #1
0x85d14 STR             R2, [SP,#0x1C+var_14]
0x85d16 ADDS            R7, #0x10
0x85d18 ADDS            R5, #0xC
0x85d1a CMP             R2, #2
0x85d1c BNE             loc_85CD4
0x85d1e LDR             R3, [SP,#0x1C+var_4]
0x85d20 ADDS            R3, #1
0x85d22 STR             R3, [SP,#0x1C+var_4]
0x85d24 LDR             R1, [SP,#0x1C+var_4]
0x85d26 LSLS            R3, R1, #0x18
0x85d28 LSRS            R6, R3, #0x18
0x85d2a LDR             R2, =word_15332A0
0x85d2c MOVS            R3, #(byte_153341C - 0x15332A0)
0x85d30 LDRB            R3, [R2,R3]; byte_153341C
0x85d32 CMP             R3, R6
0x85d34 BLS             loc_85D5A
0x85d36 LSLS            R3, R6, #1
0x85d38 ADDS            R3, R3, R6
0x85d3a LSLS            R3, R3, #0x18
0x85d3c LSRS            R3, R3, #0x18
0x85d3e STR             R3, [SP,#0x1C+var_8]
0x85d40 LSLS            R3, R6, #2
0x85d42 ADDS            R3, R3, R6
0x85d44 LSLS            R3, R3, #5
0x85d46 MOVS            R2, R3
0x85d48 LDR             R1, =dword_1538860
0x85d4a ADDS            R2, #0x14
0x85d4c ADDS            R2, R2, R1
0x85d4e ADDS            R3, #0x64 ; 'd'
0x85d50 STR             R2, [SP,#0x1C+var_C]
0x85d52 ADDS            R5, R3, R1
0x85d54 MOVS            R2, #0
0x85d56 STR             R2, [SP,#0x1C+var_10]
0x85d58 B               loc_85C40
0x85d5a LDR             R3, =(sub_62B00+1)
0x85d5c BL              sub_8A950
0x85d60 MOVS            R4, #0
0x85d62 B               loc_85D80
0x85d64 MOVS            R3, #(dword_1533424 - 0x15332A0)
0x85d68 LDR             R2, [R2,R3]; dword_1533424
0x85d6a LSLS            R0, R1, #3
0x85d6c ADDS            R2, R0, R2
0x85d6e LDR             R3, =unk_1538AE4
0x85d70 ADDS            R0, R0, R1
0x85d72 LSLS            R0, R0, #2
0x85d74 ADDS            R0, R0, R3
0x85d76 LDRH            R1, [R2,#2]
0x85d78 LDR             R3, =(sub_6EA60+1)
0x85d7a LDRB            R2, [R2,#4]
0x85d7c BL              sub_8A950
0x85d80 LSLS            R3, R4, #0x18
0x85d82 LSRS            R1, R3, #0x18
0x85d84 LDR             R2, =word_15332A0
0x85d86 MOVS            R3, #(byte_153341C - 0x15332A0)
0x85d8a LDRB            R3, [R2,R3]; byte_153341C
0x85d8c ADDS            R4, #1
0x85d8e CMP             R3, R1
0x85d90 BHI             loc_85D64
0x85d92 LDR             R4, =unk_1538F38
0x85d94 MOVS            R0, R4
0x85d96 LDR             R3, =(sub_67BC8+1)
0x85d98 BL              sub_8A950
0x85d9c MOVS            R0, R4
0x85d9e LDR             R3, =unk_140329C
0x85da0 MOVS            R1, #0
0x85da2 MOVS            R2, #0x18
0x85da4 BL              sub_8A950
0x85da8 LDR             R3, =byte_1538F98
0x85daa ADDS            R4, #0x18
0x85dac CMP             R4, R3
0x85dae BNE             loc_85D94
0x85db0 MOVS            R5, #0
0x85db2 B               loc_85DD6
0x85db4 LSLS            R3, R4, #2
0x85db6 LDR             R2, =dword_1538860
0x85db8 ADDS            R3, R3, R4
0x85dba LSLS            R3, R3, #5
0x85dbc LDR             R3, [R3,R2]
0x85dbe LDRB            R3, [R3,#2]
0x85dc0 LDR             R1, =word_14030C6
0x85dc2 LSLS            R3, R3, #1
0x85dc4 LDRH            R0, [R3,R1]
0x85dc6 LSLS            R1, R4, #1
0x85dc8 LDR             R3, =unk_1538F38
0x85dca ADDS            R1, R1, R4
0x85dcc LSLS            R1, R1, #3
0x85dce ADDS            R1, R1, R3
0x85dd0 LDR             R3, =(sub_6E440+1)
0x85dd2 BL              sub_8A950
0x85dd6 LSLS            R3, R5, #0x18
0x85dd8 LSRS            R4, R3, #0x18
0x85dda LDR             R2, =word_15332A0
0x85ddc MOVS            R3, #(byte_153341C - 0x15332A0)
0x85de0 LDRB            R3, [R2,R3]; byte_153341C
0x85de2 ADDS            R5, #1
0x85de4 CMP             R3, R4
0x85de6 BHI             loc_85DB4
0x85de8 ADD             SP, SP, #0x1C
0x85dea POP             {R4-R7}
0x85dec POP             {R0}
0x85dee BX              R0