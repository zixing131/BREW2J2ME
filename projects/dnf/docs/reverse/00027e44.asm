0x27e44 PUSH            {R4-R7,LR}
0x27e46 SUB             SP, SP, #0x50
0x27e48 MOV             R4, SP
0x27e4a MOVS            R3, #0
0x27e4c LSLS            R2, R0, #0x18
0x27e4e ADDS            R4, #0x1E
0x27e50 LSRS            R2, R2, #0x18
0x27e52 STR             R3, [SP,#0x50+var_10]
0x27e54 STR             R3, [SP,#0x50+var_14]
0x27e56 LDR             R1, =aDFor; "%d.for"
0x27e58 LDR             R3, =unk_14032CC
0x27e5a MOVS            R0, R4
0x27e5c BL              sub_2BCB6
0x27e60 MOVS            R0, R4
0x27e62 LDR             R3, =0x6CBE1
0x27e64 BL              sub_2BCB6
0x27e68 STR             R0, [SP,#0x50+var_4C]
0x27e6a CMP             R0, #0
0x27e6c BNE             loc_27E70
0x27e6e B               loc_27FE2
0x27e70 MOV             R0, SP
0x27e72 LDR             R5, =unk_140327C
0x27e74 LDR             R1, [SP,#0x50+var_4C]
0x27e76 MOVS            R2, #2
0x27e78 ADDS            R0, #0x4E ; 'N'
0x27e7a BL              sub_2BCBA
0x27e7e LDR             R1, [SP,#0x50+var_4C]
0x27e80 MOVS            R2, #4
0x27e82 ADDS            R1, #2
0x27e84 ADD             R0, SP, #0x50+var_C
0x27e86 BL              sub_2BCBA
0x27e8a LDR             R1, [SP,#0x50+var_4C]
0x27e8c MOVS            R2, #4
0x27e8e ADDS            R1, #6
0x27e90 ADD             R0, SP, #0x50+var_8
0x27e92 BL              sub_2BCBA
0x27e96 LDR             R0, [SP,#0x50+var_C]
0x27e98 LDR             R6, =unk_14032EC
0x27e9a ADDS            R0, #2
0x27e9c BL              sub_2BCBC
0x27ea0 STR             R0, [SP,#0x50+var_48]
0x27ea2 LDR             R0, [SP,#0x50+var_4C]
0x27ea4 MOVS            R1, #6
0x27ea6 LDR             R3, [SP,#0x50+var_8]
0x27ea8 LDR             R2, [SP,#0x50+var_C]
0x27eaa STR             R1, [SP,#0x50+var_50]
0x27eac LDR             R4, =0x692B5
0x27eae LDR             R1, [SP,#0x50+var_48]
0x27eb0 ADDS            R0, #0xA
0x27eb2 BL              sub_2BCB8
0x27eb6 LDR             R1, [SP,#0x50+var_48]
0x27eb8 MOVS            R2, #1
0x27eba ADD             R0, SP, #0x50+var_10
0x27ebc BL              sub_2BCBA
0x27ec0 LDR             R4, [SP,#0x50+var_48]
0x27ec2 ADDS            R4, #1
0x27ec4 MOVS            R1, R4
0x27ec6 MOVS            R2, #1
0x27ec8 ADD             R0, SP, #0x50+var_14
0x27eca BL              sub_2BCBA
0x27ece LDR             R2, [SP,#0x50+var_10]
0x27ed0 LDR             R3, [SP,#0x50+var_14]
0x27ed2 ADDS            R4, #1
0x27ed4 STR             R4, [SP,#0x50+var_44]
0x27ed6 MOVS            R4, R3
0x27ed8 MULS            R4, R2
0x27eda LSLS            R4, R4, #3
0x27edc ADDS            R0, R4, #2
0x27ede BL              sub_2BCBC
0x27ee2 MOVS            R2, R4
0x27ee4 MOVS            R1, #0
0x27ee6 LDR             R3, =unk_140329C
0x27ee8 MOVS            R7, R0
0x27eea BL              sub_2BCB6
0x27eee MOVS            R2, #0
0x27ef0 STR             R2, [SP,#0x50+var_40]
0x27ef2 B               loc_27F52
0x27ef4 LDR             R3, [SP,#0x50+var_40]
0x27ef6 MULS            R0, R3
0x27ef8 ADDS            R0, R0, R6
0x27efa LSLS            R0, R0, #3
0x27efc LDR             R4, =unk_140327C
0x27efe LDR             R1, [SP,#0x50+var_44]
0x27f00 MOVS            R2, #1
0x27f02 ADDS            R0, R7, R0
0x27f04 BL              sub_2BCB8
0x27f08 LDR             R3, [SP,#0x50+var_14]
0x27f0a LDR             R2, [SP,#0x50+var_40]
0x27f0c MOVS            R0, R3
0x27f0e MULS            R0, R2
0x27f10 ADDS            R0, R0, R6
0x27f12 LDR             R1, [SP,#0x50+var_44]
0x27f14 LSLS            R0, R0, #3
0x27f16 ADDS            R0, R7, R0
0x27f18 ADDS            R1, #1
0x27f1a MOVS            R2, #1
0x27f1c ADDS            R0, #1
0x27f1e LDR             R5, [SP,#0x50+var_44]
0x27f20 BL              sub_2BCB8
0x27f24 LDR             R3, [SP,#0x50+var_44]
0x27f26 ADDS            R3, #3
0x27f28 LDR             R2, [SP,#0x50+var_40]
0x27f2a STR             R3, [SP,#0x50+var_44]
0x27f2c LDR             R3, [SP,#0x50+var_14]
0x27f2e MOVS            R0, R3
0x27f30 MULS            R0, R2
0x27f32 ADDS            R0, R0, R6
0x27f34 LSLS            R0, R0, #3
0x27f36 ADDS            R5, #2
0x27f38 ADDS            R0, R7, R0
0x27f3a ADDS            R0, #3
0x27f3c MOVS            R1, R5
0x27f3e MOVS            R2, #1
0x27f40 BL              sub_2BCB8
0x27f44 ADDS            R6, #1
0x27f46 LDR             R0, [SP,#0x50+var_14]
0x27f48 CMP             R6, R0
0x27f4a BLT             loc_27EF4
0x27f4c LDR             R3, [SP,#0x50+var_40]
0x27f4e ADDS            R3, #1
0x27f50 STR             R3, [SP,#0x50+var_40]
0x27f52 LDR             R3, [SP,#0x50+var_10]
0x27f54 LDR             R2, [SP,#0x50+var_40]
0x27f56 CMP             R2, R3
0x27f58 BLT             loc_27F60
0x27f5a MOVS            R3, #0
0x27f5c STR             R3, [SP,#0x50+var_38]
0x27f5e B               loc_27FB2
0x27f60 MOVS            R6, #0
0x27f62 B               loc_27F46
0x27f64 LDR             R3, =0x8C1C1
0x27f66 LDR             R0, [SP,#0x50+var_38]
0x27f68 LDR             R1, [SP,#0x50+var_10]
0x27f6a BL              sub_2BCB6
0x27f6e MOVS            R6, #0
0x27f70 STR             R0, [SP,#0x50+var_3C]
0x27f72 B               loc_27FA4
0x27f74 LDR             R2, [SP,#0x50+var_38]
0x27f76 MULS            R5, R2
0x27f78 LDR             R3, [R3,#(dword_15332C0 - 0x15332A0)]
0x27f7a ADDS            R5, R5, R6
0x27f7c LSLS            R5, R5, #3
0x27f7e LDR             R1, [SP,#0x50+var_14]
0x27f80 ADDS            R5, R5, R3
0x27f82 LDR             R3, [SP,#0x50+var_3C]
0x27f84 MOVS            R0, R6
0x27f86 MOVS            R4, R1
0x27f88 MULS            R4, R3
0x27f8a LDR             R3, =0x8C1C1
0x27f8c BL              sub_2BCB6
0x27f90 ADDS            R4, R4, R0
0x27f92 LSLS            R4, R4, #3
0x27f94 ADDS            R4, R7, R4
0x27f96 MOVS            R0, R5
0x27f98 MOVS            R1, R4
0x27f9a MOVS            R2, #8
0x27f9c LDR             R3, =unk_140327C
0x27f9e BL              sub_2BCB6
0x27fa2 ADDS            R6, #1
0x27fa4 LDR             R3, =word_15332A0
0x27fa6 LDRB            R5, [R3,#(byte_15332A6 - 0x15332A0)]
0x27fa8 CMP             R6, R5
0x27faa BLT             loc_27F74
0x27fac LDR             R2, [SP,#0x50+var_38]
0x27fae ADDS            R2, #1
0x27fb0 STR             R2, [SP,#0x50+var_38]
0x27fb2 LDR             R3, =word_15332A0
0x27fb4 LDR             R2, [SP,#0x50+var_38]
0x27fb6 LDRB            R3, [R3,#(byte_15332A5 - 0x15332A0)]
0x27fb8 CMP             R2, R3
0x27fba BLT             loc_27F64
0x27fbc CMP             R7, #0
0x27fbe BEQ             loc_27FCC
0x27fc0 CMP             R7, #0
0x27fc2 BLE             loc_27FCC
0x27fc4 MOVS            R0, R7
0x27fc6 LDR             R3, =unk_14032FC
0x27fc8 BL              sub_2BCB6
0x27fcc LDR             R3, [SP,#0x50+var_48]
0x27fce CMP             R3, #0
0x27fd0 BEQ             loc_27FDA
0x27fd2 MOVS            R0, R3
0x27fd4 LDR             R3, =unk_14032FC
0x27fd6 BL              sub_2BCB6
0x27fda LDR             R0, [SP,#0x50+var_4C]
0x27fdc LDR             R3, =unk_14032FC
0x27fde BL              sub_2BCB6
0x27fe2 ADD             SP, SP, #0x50 ; 'P'
0x27fe4 POP             {R4-R7}
0x27fe6 POP             {R0}
0x27fe8 BX              R0