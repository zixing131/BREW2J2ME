0x6eb20 PUSH            {R4-R6,LR}
0x6eb22 LDR             R3, =dword_1536348
0x6eb24 LSLS            R0, R0, #2
0x6eb26 LDR             R1, [R0,R3]
0x6eb28 LDR             R3, =0x251
0x6eb2a MOVS            R2, #0
0x6eb2c MOVS            R0, R1
0x6eb2e MOVS            R4, R1
0x6eb30 LDR             R6, =dword_153653C
0x6eb32 STRB            R2, [R1,R3]
0x6eb34 ADDS            R0, #0x30 ; '0'
0x6eb36 SUBS            R3, #0xB
0x6eb38 MOVS            R5, #0
0x6eb3a ADDS            R4, #0x57 ; 'W'
0x6eb3c STRH            R2, [R1,R3]
0x6eb3e B               loc_6EC7C
0x6eb40 LDRB            R3, [R0,#1]
0x6eb42 CMP             R3, #0
0x6eb44 BEQ             loc_6EB5E
0x6eb46 LDRB            R3, [R0]
0x6eb48 CMP             R3, #2
0x6eb4a BNE             loc_6EB5E
0x6eb4c LDR             R2, [R0,#0x30]
0x6eb4e MOVS            R3, #0x244
0x6eb52 STRH            R2, [R1,R3]
0x6eb54 LDR             R3, =0x246
0x6eb56 MOVS            R2, #1
0x6eb58 STRH            R2, [R1,R3]
0x6eb5a MOVS            R3, #0
0x6eb5c STRB            R3, [R0,#1]
0x6eb5e LDRB            R3, [R0]
0x6eb60 CMP             R3, #6
0x6eb62 BNE             loc_6EB8E
0x6eb64 LDRB            R3, [R0,#0xF]
0x6eb66 LSLS            R3, R3, #0x18
0x6eb68 ASRS            R2, R3, #0x18
0x6eb6a CMP             R2, #1
0x6eb6c BEQ             loc_6EB88
0x6eb6e CMP             R2, #1
0x6eb70 BGT             loc_6EB78
0x6eb72 CMP             R2, #0
0x6eb74 BEQ             loc_6EB8A
0x6eb76 B               loc_6EB8E
0x6eb78 CMP             R2, #2
0x6eb7a BEQ             loc_6EB84
0x6eb7c CMP             R2, #3
0x6eb7e BNE             loc_6EB8E
0x6eb80 MOVS            R2, #7
0x6eb82 B               loc_6EB8A
0x6eb84 MOVS            R2, #0xF
0x6eb86 B               loc_6EB8A
0x6eb88 MOVS            R2, #0x17
0x6eb8a LDR             R3, =0x24A
0x6eb8c STRH            R2, [R1,R3]
0x6eb8e LDRB            R3, [R0]
0x6eb90 CMP             R3, #0x1C
0x6eb92 BNE             loc_6EB9C
0x6eb94 MOVS            R3, #0x9B
0x6eb96 LDRB            R2, [R4,#2]
0x6eb98 LSLS            R3, R3, #2
0x6eb9a STRB            R2, [R1,R3]
0x6eb9c LDRB            R3, [R0]
0x6eb9e CMP             R3, #0x19
0x6eba0 BNE             loc_6EBB6
0x6eba2 LDR             R3, =0x269
0x6eba4 MOVS            R2, #1
0x6eba6 STRB            R2, [R1,R3]
0x6eba8 LDRB            R2, [R4]
0x6ebaa SUBS            R3, #2
0x6ebac STRB            R2, [R1,R3]
0x6ebae MOVS            R3, #0x9A
0x6ebb0 LDRB            R2, [R4,#1]
0x6ebb2 LSLS            R3, R3, #2
0x6ebb4 STRB            R2, [R1,R3]
0x6ebb6 LDRB            R3, [R0]
0x6ebb8 CMP             R3, #0x1A
0x6ebba BNE             loc_6EBD0
0x6ebbc LDR             R3, =0x269
0x6ebbe MOVS            R2, #0
0x6ebc0 STRB            R2, [R1,R3]
0x6ebc2 MOVS            R2, #1
0x6ebc4 NEGS            R2, R2
0x6ebc6 SUBS            R3, #2
0x6ebc8 STRB            R2, [R1,R3]
0x6ebca MOVS            R3, #0x268
0x6ebce STRB            R2, [R1,R3]
0x6ebd0 LDRB            R3, [R0]
0x6ebd2 CMP             R3, #0x15
0x6ebd4 BNE             loc_6EBE2
0x6ebd6 LDR             R3, =0x26A
0x6ebd8 MOVS            R2, #1
0x6ebda STRB            R2, [R1,R3]
0x6ebdc LDRB            R2, [R0,#0xC]
0x6ebde ADDS            R3, #1
0x6ebe0 STRB            R2, [R1,R3]
0x6ebe2 LDRB            R3, [R0]
0x6ebe4 CMP             R3, #0x16
0x6ebe6 BNE             loc_6EBF6
0x6ebe8 LDR             R3, =0x26A
0x6ebea MOVS            R2, #0
0x6ebec STRB            R2, [R1,R3]
0x6ebee MOVS            R3, #1
0x6ebf0 LDR             R2, =0x26B
0x6ebf2 NEGS            R3, R3
0x6ebf4 STRB            R3, [R1,R2]
0x6ebf6 LDRB            R3, [R0]
0x6ebf8 CMP             R3, #0x17
0x6ebfa BNE             loc_6EC16
0x6ebfc LDR             R3, =0x266
0x6ebfe MOVS            R2, #1
0x6ec00 STRB            R2, [R1,R3]
0x6ec02 LDRB            R2, [R4,#7]
0x6ec04 SUBS            R3, #4
0x6ec06 STRB            R2, [R1,R3]
0x6ec08 LDRB            R2, [R4,#8]
0x6ec0a ADDS            R3, #1
0x6ec0c STRB            R2, [R1,R3]
0x6ec0e MOVS            R3, #0x99
0x6ec10 LDRH            R2, [R1,#0x28]
0x6ec12 LSLS            R3, R3, #2
0x6ec14 STRH            R2, [R1,R3]
0x6ec16 LDRB            R3, [R0]
0x6ec18 CMP             R3, #0x18
0x6ec1a BNE             loc_6EC22
0x6ec1c LDR             R3, =0x266
0x6ec1e MOVS            R2, #0
0x6ec20 STRB            R2, [R1,R3]
0x6ec22 LDRB            R3, [R0,#1]
0x6ec24 CMP             R3, #0
0x6ec26 BEQ             loc_6EC5E
0x6ec28 LDRB            R3, [R0]
0x6ec2a CMP             R3, #0x12
0x6ec2c BNE             loc_6EC86
0x6ec2e LDR             R2, =0x251
0x6ec30 MOVS            R3, #1
0x6ec32 STRB            R3, [R1,R2]
0x6ec34 B               loc_6EC46
0x6ec36 LDRH            R2, [R1,#0x28]
0x6ec38 LDR             R3, [R6]
0x6ec3a CMP             R2, R3
0x6ec3c BGT             loc_6EC6A
0x6ec3e MOVS            R3, #0x250
0x6ec42 MOVS            R2, #1
0x6ec44 STRB            R2, [R1,R3]
0x6ec46 MOVS            R3, #0
0x6ec48 STRB            R3, [R0,#1]
0x6ec4a B               loc_6EC5E
0x6ec4c LDRH            R2, [R1,#0x28]
0x6ec4e LDR             R3, [R6]
0x6ec50 CMP             R2, R3
0x6ec52 BGT             loc_6EC76
0x6ec54 MOVS            R3, #0x94
0x6ec56 MOVS            R2, #0
0x6ec58 LSLS            R3, R3, #2
0x6ec5a STRB            R2, [R1,R3]
0x6ec5c STRB            R2, [R0,#1]
0x6ec5e LDRB            R3, [R0]
0x6ec60 CMP             R3, #0x1D
0x6ec62 BNE             loc_6EC6A
0x6ec64 LDR             R3, =0x252
0x6ec66 MOVS            R2, #1
0x6ec68 STRB            R2, [R1,R3]
0x6ec6a LDRB            R3, [R0]
0x6ec6c CMP             R3, #0x1E
0x6ec6e BNE             loc_6EC76
0x6ec70 LDR             R3, =0x252
0x6ec72 MOVS            R2, #0
0x6ec74 STRB            R2, [R1,R3]
0x6ec76 ADDS            R5, #1
0x6ec78 ADDS            R0, #0x34 ; '4'
0x6ec7a ADDS            R4, #0x34 ; '4'
0x6ec7c LDRH            R3, [R1,#0x2A]
0x6ec7e CMP             R5, R3
0x6ec80 BGE             loc_6EC84
0x6ec82 B               loc_6EB40
0x6ec84 B               loc_6EC90
0x6ec86 CMP             R3, #0x13
0x6ec88 BEQ             loc_6EC36
0x6ec8a CMP             R3, #0x14
0x6ec8c BNE             loc_6EC5E
0x6ec8e B               loc_6EC4C
0x6ec90 POP             {R4-R6}
0x6ec92 POP             {R0}
0x6ec94 BX              R0