0x8b988 PUSH            {R4-R7,LR}
0x8b98a SUB             SP, SP, #0x30
0x8b98c MOVS            R6, R0
0x8b98e STR             R1, [SP,#0x30+var_10]
0x8b990 ADDS            R0, #8
0x8b992 LDR             R3, =0x8BDF5
0x8b994 BL              sub_8BDE8
0x8b998 MOVS            R3, #0
0x8b99a ADDS            R2, R6, #1
0x8b99c STRB            R3, [R2,#0x1F]
0x8b99e LDR             R7, =unk_140327C
0x8b9a0 LDR             R1, [SP,#0x30+var_10]
0x8b9a2 MOVS            R2, #2
0x8b9a4 MOVS            R0, R6
0x8b9a6 BL              sub_8BDF0
0x8b9aa LDR             R1, [SP,#0x30+var_10]
0x8b9ac MOVS            R2, #1
0x8b9ae ADDS            R1, #2
0x8b9b0 ADDS            R0, R6, #2
0x8b9b2 BL              sub_8BDF0
0x8b9b6 LDR             R1, [SP,#0x30+var_10]
0x8b9b8 MOVS            R2, #1
0x8b9ba ADDS            R1, #3
0x8b9bc ADDS            R0, R6, #3
0x8b9be BL              sub_8BDF0
0x8b9c2 LDR             R1, [SP,#0x30+var_10]
0x8b9c4 MOVS            R2, #1
0x8b9c6 ADDS            R1, #4
0x8b9c8 ADDS            R0, R6, #4
0x8b9ca BL              sub_8BDF0
0x8b9ce LDR             R1, [SP,#0x30+var_10]
0x8b9d0 MOVS            R2, #1
0x8b9d2 ADDS            R1, #5
0x8b9d4 ADDS            R0, R6, #5
0x8b9d6 BL              sub_8BDF0
0x8b9da LDR             R1, [SP,#0x30+var_10]
0x8b9dc ADDS            R0, R6, #6
0x8b9de ADDS            R1, #6
0x8b9e0 MOVS            R2, #1
0x8b9e2 BL              sub_8BDF0
0x8b9e6 LDRB            R3, [R6,#2]
0x8b9e8 CMP             R3, #1
0x8b9ea BEQ             loc_8BA42
0x8b9ec CMP             R3, #1
0x8b9ee BCC             loc_8B9FA
0x8b9f0 CMP             R3, #2
0x8b9f2 BNE             loc_8B9F6
0x8b9f4 B               loc_8BD08
0x8b9f6 MOVS            R0, #7
0x8b9f8 B               loc_8BD54
0x8b9fa LDR             R4, =unk_14032EC
0x8b9fc MOVS            R0, #0xC2
0x8b9fe BL              sub_8BDEA
0x8ba02 STR             R0, [R6,#0x5C]
0x8ba04 STR             R0, [R6,#0x60]
0x8ba06 MOVS            R1, #0
0x8ba08 LDRSH           R0, [R6,R1]
0x8ba0a ADDS            R0, #2
0x8ba0c BL              sub_8BDEA
0x8ba10 LDR             R1, [SP,#0x30+var_10]
0x8ba12 MOVS            R2, #0xBE
0x8ba14 STR             R0, [R6,#0x54]
0x8ba16 STR             R0, [R6,#0x58]
0x8ba18 ADDS            R1, #7
0x8ba1a LDR             R0, [R6,#0x60]
0x8ba1c BL              sub_8BDF0
0x8ba20 LDR             R0, [SP,#0x30+var_10]
0x8ba22 MOVS            R2, #0
0x8ba24 LDRSH           R3, [R6,R2]
0x8ba26 ADDS            R0, #0xC5
0x8ba28 LDR             R2, [R6,#0x60]
0x8ba2a LDR             R1, [R6,#0x58]
0x8ba2c MOVS            R4, #0x5F ; '_'
0x8ba2e STR             R3, [SP,#0x30+var_30]
0x8ba30 STR             R4, [SP,#0x30+var_2C]
0x8ba32 BL              sub_8B31C
0x8ba36 LDR             R3, [R6,#0x60]
0x8ba38 LDRH            R2, [R6]
0x8ba3a ADDS            R3, #0xBE
0x8ba3c ADDS            R0, #0xC5
0x8ba3e STRH            R2, [R3]
0x8ba40 B               loc_8BD54
0x8ba42 MOVS            R0, #0x42 ; 'B'
0x8ba44 LDR             R3, =unk_14032EC
0x8ba46 BL              sub_8BDE8
0x8ba4a LDR             R5, [SP,#0x30+var_10]
0x8ba4c STR             R0, [R6,#0x3C]
0x8ba4e STR             R0, [R6,#0x40]
0x8ba50 ADDS            R5, #7
0x8ba52 MOVS            R7, #0
0x8ba54 LDR             R3, =unk_14032EC
0x8ba56 MOVS            R0, #0x2A ; '*'
0x8ba58 STR             R3, [SP,#0x30+var_14]
0x8ba5a LDR             R4, [R6,#0x40]
0x8ba5c BL              sub_8BDE8
0x8ba60 ADDS            R4, R7, R4
0x8ba62 LDR             R3, [R6,#0x40]
0x8ba64 STR             R0, [R4]
0x8ba66 ADDS            R3, R7, R3
0x8ba68 LDR             R0, [R3]
0x8ba6a MOVS            R1, R5
0x8ba6c STR             R0, [R3,#4]
0x8ba6e MOVS            R2, #0x26 ; '&'
0x8ba70 LDR             R3, =unk_140327C
0x8ba72 ADDS            R7, #8
0x8ba74 BL              sub_8BDE8
0x8ba78 ADDS            R5, #0x26 ; '&'
0x8ba7a CMP             R7, #0x40 ; '@'
0x8ba7c BNE             loc_8BA54
0x8ba7e MOVS            R0, #0x22 ; '"'
0x8ba80 LDR             R4, [SP,#0x30+var_14]
0x8ba82 BL              sub_8BDEA
0x8ba86 LDR             R1, [SP,#0x30+var_10]
0x8ba88 LDR             R2, =0x137
0x8ba8a STR             R0, [R6,#0x44]
0x8ba8c STR             R0, [R6,#0x48]
0x8ba8e ADDS            R5, R1, R2
0x8ba90 MOVS            R7, #0
0x8ba92 LDR             R3, =unk_14032EC
0x8ba94 MOVS            R0, #0x2E ; '.'
0x8ba96 STR             R3, [SP,#0x30+var_18]
0x8ba98 LDR             R4, [R6,#0x48]
0x8ba9a BL              sub_8BDE8
0x8ba9e ADDS            R4, R7, R4
0x8baa0 LDR             R3, [R6,#0x48]
0x8baa2 STR             R0, [R4]
0x8baa4 ADDS            R3, R7, R3
0x8baa6 LDR             R0, [R3]
0x8baa8 MOVS            R1, R5
0x8baaa STR             R0, [R3,#4]
0x8baac MOVS            R2, #0x2A ; '*'
0x8baae LDR             R3, =unk_140327C
0x8bab0 ADDS            R7, #8
0x8bab2 BL              sub_8BDE8
0x8bab6 ADDS            R5, #0x2A ; '*'
0x8bab8 CMP             R7, #0x20 ; ' '
0x8baba BNE             loc_8BA92
0x8babc MOVS            R0, #0x22 ; '"'
0x8babe LDR             R4, [SP,#0x30+var_18]
0x8bac0 BL              sub_8BDEA
0x8bac4 LDR             R1, [SP,#0x30+var_10]
0x8bac6 LDR             R2, =0x1DF
0x8bac8 STR             R0, [R6,#0x4C]
0x8baca STR             R0, [R6,#0x50]
0x8bacc ADDS            R5, R1, R2
0x8bace MOVS            R7, #0
0x8bad0 LDR             R3, =unk_14032EC
0x8bad2 MOVS            R0, #0x3C ; '<'
0x8bad4 STR             R3, [SP,#0x30+var_1C]
0x8bad6 LDR             R4, [R6,#0x50]
0x8bad8 BL              sub_8BDE8
0x8badc ADDS            R4, R7, R4
0x8bade LDR             R3, [R6,#0x50]
0x8bae0 STR             R0, [R4]
0x8bae2 ADDS            R3, R7, R3
0x8bae4 LDR             R0, [R3]
0x8bae6 MOVS            R1, R5
0x8bae8 STR             R0, [R3,#4]
0x8baea MOVS            R2, #0x38 ; '8'
0x8baec LDR             R3, =unk_140327C
0x8baee ADDS            R7, #8
0x8baf0 BL              sub_8BDE8
0x8baf4 ADDS            R5, #0x38 ; '8'
0x8baf6 CMP             R7, #0x20 ; ' '
0x8baf8 BNE             loc_8BAD0
0x8bafa MOVS            R0, #0x42 ; 'B'
0x8bafc LDR             R4, [SP,#0x30+var_1C]
0x8bafe BL              sub_8BDEA
0x8bb02 LDR             R5, =0x2BF
0x8bb04 STR             R0, [R6,#0x24]
0x8bb06 STR             R0, [R6,#0x28]
0x8bb08 STR             R5, [SP,#0x30+var_4]
0x8bb0a MOVS            R7, #0
0x8bb0c LDR             R3, [R6,#0x40]
0x8bb0e ADDS            R3, R7, R3
0x8bb10 LDR             R2, [R3,#0xC]
0x8bb12 LDR             R3, [R3,#4]
0x8bb14 MOVS            R1, #0
0x8bb16 LDRSH           R5, [R2,R1]
0x8bb18 MOVS            R2, #0
0x8bb1a LDRSH           R3, [R3,R2]
0x8bb1c SUBS            R5, R5, R3
0x8bb1e LDR             R3, =unk_14032EC
0x8bb20 ADDS            R0, R5, #2
0x8bb22 STR             R3, [SP,#0x30+var_20]
0x8bb24 LDR             R4, [R6,#0x28]
0x8bb26 BL              sub_8BDE8
0x8bb2a ADDS            R4, R7, R4
0x8bb2c LDR             R3, [R6,#0x28]
0x8bb2e STR             R0, [R4]
0x8bb30 ADDS            R3, R7, R3
0x8bb32 LDR             R1, [R3]
0x8bb34 STR             R1, [R3,#4]
0x8bb36 LDR             R3, [R6,#0x40]
0x8bb38 LDR             R4, [SP,#0x30+var_10]
0x8bb3a LDR             R2, [SP,#0x30+var_4]
0x8bb3c ADDS            R3, R7, R3
0x8bb3e ADDS            R0, R4, R2
0x8bb40 LDR             R2, [R3,#4]
0x8bb42 LDR             R3, [R3,#0xC]
0x8bb44 MOVS            R4, #0
0x8bb46 LDRSH           R3, [R3,R4]
0x8bb48 STR             R5, [SP,#0x30+var_30]
0x8bb4a MOVS            R5, #0x14
0x8bb4c STR             R5, [SP,#0x30+var_2C]
0x8bb4e BL              sub_8B31C
0x8bb52 LDR             R1, [SP,#0x30+var_4]
0x8bb54 ADDS            R7, #8
0x8bb56 ADDS            R1, R1, R0
0x8bb58 STR             R1, [SP,#0x30+var_4]
0x8bb5a CMP             R7, #0x38 ; '8'
0x8bb5c BNE             loc_8BB0C
0x8bb5e LDR             R3, [R6,#0x48]
0x8bb60 LDR             R3, [R3,#4]
0x8bb62 MOVS            R2, #0
0x8bb64 LDRSH           R4, [R3,R2]
0x8bb66 LDR             R3, [R6,#0x40]
0x8bb68 LDR             R3, [R3,#0x3C]
0x8bb6a MOVS            R5, #0
0x8bb6c LDRSH           R3, [R3,R5]
0x8bb6e SUBS            R4, R4, R3
0x8bb70 ADDS            R0, R4, #2
0x8bb72 LDR             R1, [SP,#0x30+var_20]
0x8bb74 LDR             R5, [R6,#0x28]
0x8bb76 BL              sub_8BDE4
0x8bb7a LDR             R3, [R6,#0x28]
0x8bb7c STR             R0, [R5,#0x38]
0x8bb7e LDR             R2, [R3,#0x38]
0x8bb80 STR             R2, [R3,#0x3C]
0x8bb82 LDR             R5, [SP,#0x30+var_4]
0x8bb84 LDR             R1, [R3,#0x3C]
0x8bb86 LDR             R2, [SP,#0x30+var_10]
0x8bb88 LDR             R3, [R6,#0x40]
0x8bb8a ADDS            R0, R2, R5
0x8bb8c LDR             R2, [R3,#0x3C]
0x8bb8e LDR             R3, [R6,#0x48]
0x8bb90 LDR             R3, [R3,#4]
0x8bb92 MOVS            R5, #0
0x8bb94 LDRSH           R3, [R3,R5]
0x8bb96 STR             R4, [SP,#0x30+var_30]
0x8bb98 MOVS            R4, #0x14
0x8bb9a STR             R4, [SP,#0x30+var_2C]
0x8bb9c BL              sub_8B31C
0x8bba0 LDR             R5, [SP,#0x30+var_4]
0x8bba2 ADDS            R0, R5, R0
0x8bba4 STR             R0, [SP,#0x30+var_8]
0x8bba6 LDR             R1, [SP,#0x30+var_20]
0x8bba8 MOVS            R0, #0x22 ; '"'
0x8bbaa BL              sub_8BDE4
0x8bbae STR             R0, [R6,#0x2C]
0x8bbb0 STR             R0, [R6,#0x30]
0x8bbb2 MOVS            R7, #0
0x8bbb4 LDR             R3, [R6,#0x48]
0x8bbb6 ADDS            R3, R7, R3
0x8bbb8 LDR             R2, [R3,#0xC]
0x8bbba LDR             R3, [R3,#4]
0x8bbbc MOVS            R4, #0
0x8bbbe LDRSH           R5, [R2,R4]
0x8bbc0 MOVS            R1, #0
0x8bbc2 LDRSH           R3, [R3,R1]
0x8bbc4 LDR             R2, =unk_14032EC
0x8bbc6 SUBS            R5, R5, R3
0x8bbc8 ADDS            R0, R5, #2
0x8bbca STR             R2, [SP,#0x30+var_24]
0x8bbcc LDR             R4, [R6,#0x30]
0x8bbce BL              sub_8BDE6
0x8bbd2 ADDS            R4, R7, R4
0x8bbd4 LDR             R3, [R6,#0x30]
0x8bbd6 STR             R0, [R4]
0x8bbd8 ADDS            R3, R7, R3
0x8bbda LDR             R1, [R3]
0x8bbdc STR             R1, [R3,#4]
0x8bbde LDR             R3, [R6,#0x48]
0x8bbe0 LDR             R4, [SP,#0x30+var_10]
0x8bbe2 LDR             R2, [SP,#0x30+var_8]
0x8bbe4 ADDS            R3, R7, R3
0x8bbe6 ADDS            R0, R4, R2
0x8bbe8 LDR             R2, [R3,#4]
0x8bbea LDR             R3, [R3,#0xC]
0x8bbec MOVS            R4, #0
0x8bbee LDRSH           R3, [R3,R4]
0x8bbf0 STR             R5, [SP,#0x30+var_30]
0x8bbf2 MOVS            R5, #0x16
0x8bbf4 STR             R5, [SP,#0x30+var_2C]
0x8bbf6 BL              sub_8B31C
0x8bbfa LDR             R1, [SP,#0x30+var_8]
0x8bbfc ADDS            R7, #8
0x8bbfe ADDS            R1, R1, R0
0x8bc00 STR             R1, [SP,#0x30+var_8]
0x8bc02 CMP             R7, #0x18
0x8bc04 BNE             loc_8BBB4
0x8bc06 LDR             R3, [R6,#0x50]
0x8bc08 LDR             R3, [R3,#4]
0x8bc0a MOVS            R2, #0
0x8bc0c LDRSH           R4, [R3,R2]
0x8bc0e LDR             R3, [R6,#0x48]
0x8bc10 LDR             R3, [R3,#0x1C]
0x8bc12 MOVS            R5, #0
0x8bc14 LDRSH           R3, [R3,R5]
0x8bc16 SUBS            R4, R4, R3
0x8bc18 ADDS            R0, R4, #2
0x8bc1a LDR             R1, [SP,#0x30+var_24]
0x8bc1c LDR             R5, [R6,#0x30]
0x8bc1e BL              sub_8BDE4
0x8bc22 LDR             R3, [R6,#0x30]
0x8bc24 STR             R0, [R5,#0x18]
0x8bc26 LDR             R2, [R3,#0x18]
0x8bc28 STR             R2, [R3,#0x1C]
0x8bc2a LDR             R5, [SP,#0x30+var_8]
0x8bc2c LDR             R1, [R3,#0x1C]
0x8bc2e LDR             R2, [SP,#0x30+var_10]
0x8bc30 LDR             R3, [R6,#0x48]
0x8bc32 ADDS            R0, R2, R5
0x8bc34 LDR             R2, [R3,#0x1C]
0x8bc36 LDR             R3, [R6,#0x50]
0x8bc38 LDR             R3, [R3,#4]
0x8bc3a MOVS            R5, #0
0x8bc3c LDRSH           R3, [R3,R5]
0x8bc3e STR             R4, [SP,#0x30+var_30]
0x8bc40 MOVS            R4, #0x16
0x8bc42 STR             R4, [SP,#0x30+var_2C]
0x8bc44 BL              sub_8B31C
0x8bc48 LDR             R5, [SP,#0x30+var_8]
0x8bc4a ADDS            R0, R5, R0
0x8bc4c STR             R0, [SP,#0x30+var_C]
0x8bc4e LDR             R1, [SP,#0x30+var_24]
0x8bc50 MOVS            R0, #0x22 ; '"'
0x8bc52 BL              sub_8BDE4
0x8bc56 STR             R0, [R6,#0x34]
0x8bc58 STR             R0, [R6,#0x38]
0x8bc5a MOVS            R7, #0
0x8bc5c LDR             R3, [R6,#0x50]
0x8bc5e ADDS            R3, R7, R3
0x8bc60 LDR             R2, [R3,#0xC]
0x8bc62 LDR             R3, [R3,#4]
0x8bc64 MOVS            R4, #0
0x8bc66 LDRSH           R5, [R2,R4]
0x8bc68 MOVS            R1, #0
0x8bc6a LDRSH           R3, [R3,R1]
0x8bc6c LDR             R2, =unk_14032EC
0x8bc6e SUBS            R5, R5, R3
0x8bc70 ADDS            R0, R5, #2
0x8bc72 STR             R2, [SP,#0x30+var_28]
0x8bc74 LDR             R4, [R6,#0x38]
0x8bc76 BL              sub_8BDE6
0x8bc7a ADDS            R4, R7, R4
0x8bc7c LDR             R3, [R6,#0x38]
0x8bc7e STR             R0, [R4]
0x8bc80 ADDS            R3, R7, R3
0x8bc82 LDR             R1, [R3]
0x8bc84 STR             R1, [R3,#4]
0x8bc86 LDR             R3, [R6,#0x50]
0x8bc88 LDR             R4, [SP,#0x30+var_10]
0x8bc8a LDR             R2, [SP,#0x30+var_C]
0x8bc8c ADDS            R3, R7, R3
0x8bc8e ADDS            R0, R4, R2
0x8bc90 LDR             R2, [R3,#4]
0x8bc92 LDR             R3, [R3,#0xC]
0x8bc94 MOVS            R4, #0
0x8bc96 LDRSH           R3, [R3,R4]
0x8bc98 STR             R5, [SP,#0x30+var_30]
0x8bc9a MOVS            R5, #0x1D
0x8bc9c STR             R5, [SP,#0x30+var_2C]
0x8bc9e BL              sub_8B31C
0x8bca2 LDR             R1, [SP,#0x30+var_C]
0x8bca4 ADDS            R7, #8
0x8bca6 ADDS            R1, R1, R0
0x8bca8 STR             R1, [SP,#0x30+var_C]
0x8bcaa CMP             R7, #0x18
0x8bcac BNE             loc_8BC5C
0x8bcae LDR             R3, [R6,#0x50]
0x8bcb0 LDR             R3, [R3,#0x1C]
0x8bcb2 MOVS            R2, #0
0x8bcb4 LDRSH           R4, [R6,R2]
0x8bcb6 MOVS            R5, #0
0x8bcb8 LDRSH           R3, [R3,R5]
0x8bcba SUBS            R4, R4, R3
0x8bcbc ADDS            R0, R4, #2
0x8bcbe LDR             R1, [SP,#0x30+var_28]
0x8bcc0 LDR             R5, [R6,#0x38]
0x8bcc2 BL              sub_8BDE4
0x8bcc6 LDR             R3, [R6,#0x38]
0x8bcc8 STR             R0, [R5,#0x18]
0x8bcca LDR             R2, [R3,#0x18]
0x8bccc STR             R2, [R3,#0x1C]
0x8bcce LDR             R5, [SP,#0x30+var_C]
0x8bcd0 LDR             R1, [R3,#0x1C]
0x8bcd2 LDR             R2, [SP,#0x30+var_10]
0x8bcd4 LDR             R3, [R6,#0x50]
0x8bcd6 ADDS            R0, R2, R5
0x8bcd8 LDR             R2, [R3,#0x1C]
0x8bcda MOVS            R5, #0
0x8bcdc LDRSH           R3, [R6,R5]
0x8bcde STR             R4, [SP,#0x30+var_30]
0x8bce0 MOVS            R4, #0x1D
0x8bce2 STR             R4, [SP,#0x30+var_2C]
0x8bce4 BL              sub_8B31C
0x8bce8 LDR             R5, [SP,#0x30+var_C]
0x8bcea ADDS            R0, R5, R0
0x8bcec B               loc_8BD54
0x8bd08 MOVS            R0, #0xCE
0x8bd0a LDR             R4, =unk_14032EC
0x8bd0c LSLS            R0, R0, #1
0x8bd0e BL              sub_8BDEA
0x8bd12 MOVS            R5, #0xCC
0x8bd14 LDR             R1, [SP,#0x30+var_10]
0x8bd16 LSLS            R5, R5, #1
0x8bd18 ADDS            R1, #7
0x8bd1a MOVS            R2, R5
0x8bd1c STR             R0, [R6,#0x6C]
0x8bd1e STR             R0, [R6,#0x70]
0x8bd20 BL              sub_8BDF0
0x8bd24 MOVS            R1, #0
0x8bd26 LDRSH           R0, [R6,R1]
0x8bd28 ADDS            R0, #2
0x8bd2a BL              sub_8BDEA
0x8bd2e MOVS            R2, #0
0x8bd30 LDRSH           R3, [R6,R2]
0x8bd32 LDR             R4, [SP,#0x30+var_10]
0x8bd34 LDR             R2, =0x19F
0x8bd36 MOVS            R1, R0
0x8bd38 STR             R0, [R6,#0x64]
0x8bd3a STR             R0, [R6,#0x68]
0x8bd3c ADDS            R0, R4, R2
0x8bd3e LDR             R2, [R6,#0x70]
0x8bd40 MOVS            R4, #0xCC
0x8bd42 STR             R3, [SP,#0x30+var_30]
0x8bd44 STR             R4, [SP,#0x30+var_2C]
0x8bd46 BL              sub_8B31C
0x8bd4a LDR             R3, =0x19F
0x8bd4c LDR             R2, [R6,#0x70]
0x8bd4e ADDS            R0, R0, R3
0x8bd50 LDRH            R3, [R6]
0x8bd52 STRH            R3, [R2,R5]
0x8bd54 ADD             SP, SP, #0x30 ; '0'
0x8bd56 POP             {R4-R7}
0x8bd58 POP             {R1}
0x8bd5a BX              R1