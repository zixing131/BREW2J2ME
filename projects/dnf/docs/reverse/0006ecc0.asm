0x6ecc0 PUSH            {R4-R6,LR}
0x6ecc2 LDR             R3, =dword_1536348
0x6ecc4 LSLS            R0, R0, #2
0x6ecc6 LDR             R0, [R0,R3]
0x6ecc8 LDR             R3, =0x253
0x6ecca MOVS            R2, #0
0x6eccc STRB            R2, [R0,R3]
0x6ecce MOVS            R3, #0x254
0x6ecd2 STRB            R2, [R0,R3]
0x6ecd4 LDR             R3, =0x255
0x6ecd6 STRB            R2, [R0,R3]
0x6ecd8 ADDS            R3, #1
0x6ecda STRB            R2, [R0,R3]
0x6ecdc ADDS            R3, #1
0x6ecde STRB            R2, [R0,R3]
0x6ece0 MOVS            R3, #0x258
0x6ece4 STRB            R2, [R0,R3]
0x6ece6 LDR             R3, =0x259
0x6ece8 STRB            R2, [R0,R3]
0x6ecea ADDS            R3, #1
0x6ecec STRB            R2, [R0,R3]
0x6ecee LDR             R3, =dword_1501C04
0x6ecf0 LDR             R2, [R3]
0x6ecf2 CMP             R2, #0xF0
0x6ecf4 BNE             loc_6ED10
0x6ecf6 MOVS            R3, #0x240
0x6ecfa LDRH            R3, [R0,R3]
0x6ecfc LDR             R2, =word_1534730
0x6ecfe NEGS            R3, R3
0x6ed00 STRH            R3, [R2]
0x6ed02 LDR             R3, =0x242
0x6ed04 LDRH            R2, [R0,R3]
0x6ed06 LDR             R1, =word_15346FC
0x6ed08 MOVS            R3, #0x28 ; '('
0x6ed0a SUBS            R3, R3, R2
0x6ed0c STRH            R3, [R1]
0x6ed0e B               loc_6ED3A
0x6ed10 MOVS            R3, #0x140
0x6ed14 LDR             R1, =word_1534730
0x6ed16 LDR             R4, =word_15346FC
0x6ed18 CMP             R2, R3
0x6ed1a BNE             loc_6ED28
0x6ed1c MOVS            R3, #0x240
0x6ed20 LDRH            R2, [R0,R3]
0x6ed22 MOVS            R3, #0x28 ; '('
0x6ed24 SUBS            R3, R3, R2
0x6ed26 B               loc_6ED30
0x6ed28 MOVS            R3, #0x240
0x6ed2c LDRH            R3, [R0,R3]
0x6ed2e NEGS            R3, R3
0x6ed30 STRH            R3, [R1]
0x6ed32 LDR             R3, =0x242
0x6ed34 LDRH            R3, [R0,R3]
0x6ed36 NEGS            R3, R3
0x6ed38 STRH            R3, [R4]
0x6ed3a LDR             R4, =dword_153653C
0x6ed3c LDRH            R2, [R0,#0x28]
0x6ed3e LDR             R3, [R4]
0x6ed40 CMP             R2, R3
0x6ed42 BEQ             loc_6ED4C
0x6ed44 LDRH            R2, [R0,#0x2C]
0x6ed46 LDR             R3, =off_EA60
0x6ed48 CMP             R2, R3
0x6ed4a BEQ             loc_6EE3A
0x6ed4c MOVS            R1, R0
0x6ed4e MOVS            R6, R4
0x6ed50 MOVS            R4, R0
0x6ed52 ADDS            R1, #0x30 ; '0'
0x6ed54 MOVS            R5, #0
0x6ed56 ADDS            R4, #0x5E ; '^'
0x6ed58 B               loc_6EE34
0x6ed5a LDRB            R3, [R1]
0x6ed5c CMP             R3, #0x17
0x6ed5e BNE             loc_6ED7A
0x6ed60 LDR             R3, =0x266
0x6ed62 MOVS            R2, #1
0x6ed64 STRB            R2, [R0,R3]
0x6ed66 LDRB            R2, [R4]
0x6ed68 SUBS            R3, #4
0x6ed6a STRB            R2, [R0,R3]
0x6ed6c LDRB            R2, [R4,#1]
0x6ed6e ADDS            R3, #1
0x6ed70 STRB            R2, [R0,R3]
0x6ed72 MOVS            R3, #0x99
0x6ed74 LDRH            R2, [R0,#0x28]
0x6ed76 LSLS            R3, R3, #2
0x6ed78 STRH            R2, [R0,R3]
0x6ed7a LDRB            R3, [R1]
0x6ed7c CMP             R3, #0x18
0x6ed7e BNE             loc_6ED86
0x6ed80 LDR             R3, =0x266
0x6ed82 MOVS            R2, #0
0x6ed84 STRB            R2, [R0,R3]
0x6ed86 LDRB            R3, [R1]
0x6ed88 CMP             R3, #0xA
0x6ed8a BNE             loc_6EDA0
0x6ed8c LDRH            R2, [R0,#0x28]
0x6ed8e LDR             R3, [R6]
0x6ed90 CMP             R2, R3
0x6ed92 BNE             loc_6EDCA
0x6ed94 LDR             R3, =0x253
0x6ed96 MOVS            R2, #1
0x6ed98 STRB            R2, [R0,R3]
0x6ed9a MOVS            R3, #0x254
0x6ed9e STRB            R5, [R0,R3]
0x6eda0 LDRB            R3, [R1]
0x6eda2 CMP             R3, #0xB
0x6eda4 BNE             loc_6EDB8
0x6eda6 LDRH            R2, [R0,#0x28]
0x6eda8 LDR             R3, [R6]
0x6edaa CMP             R2, R3
0x6edac BNE             loc_6EDDA
0x6edae LDR             R2, =0x255
0x6edb0 MOVS            R3, #1
0x6edb2 STRB            R3, [R0,R2]
0x6edb4 LDR             R3, =0x256
0x6edb6 STRB            R5, [R0,R3]
0x6edb8 LDRB            R3, [R1]
0x6edba CMP             R3, #0xD
0x6edbc BNE             loc_6EDCA
0x6edbe LDR             R3, =0x257
0x6edc0 MOVS            R2, #1
0x6edc2 STRB            R2, [R0,R3]
0x6edc4 MOVS            R3, #0x258
0x6edc8 STRB            R5, [R0,R3]
0x6edca LDRB            R3, [R1]
0x6edcc CMP             R3, #0xE
0x6edce BNE             loc_6EDDA
0x6edd0 LDR             R2, =0x259
0x6edd2 MOVS            R3, #1
0x6edd4 STRB            R3, [R0,R2]
0x6edd6 LDR             R3, =0x25A
0x6edd8 STRB            R5, [R0,R3]
0x6edda LDRB            R3, [R1]
0x6eddc CMP             R3, #0x13
0x6edde BNE             loc_6EDE8
0x6ede0 MOVS            R3, #0x250
0x6ede4 MOVS            R2, #1
0x6ede6 STRB            R2, [R0,R3]
0x6ede8 LDRB            R3, [R1]
0x6edea CMP             R3, #0x14
0x6edec BNE             loc_6EDF6
0x6edee MOVS            R3, #0x250
0x6edf2 MOVS            R2, #0
0x6edf4 STRB            R2, [R0,R3]
0x6edf6 LDRB            R3, [R1]
0x6edf8 CMP             R3, #0x1D
0x6edfa BNE             loc_6EE04
0x6edfc MOVS            R3, #0x250
0x6ee00 MOVS            R2, #2
0x6ee02 STRB            R2, [R0,R3]
0x6ee04 LDRB            R3, [R1]
0x6ee06 CMP             R3, #0x1E
0x6ee08 BNE             loc_6EE12
0x6ee0a MOVS            R3, #0x250
0x6ee0e MOVS            R2, #0
0x6ee10 STRB            R2, [R0,R3]
0x6ee12 LDRB            R3, [R1]
0x6ee14 CMP             R3, #0x1F
0x6ee16 BNE             loc_6EE20
0x6ee18 MOVS            R3, #0x250
0x6ee1c MOVS            R2, #3
0x6ee1e STRB            R2, [R0,R3]
0x6ee20 LDRB            R3, [R1]
0x6ee22 CMP             R3, #0x20 ; ' '
0x6ee24 BNE             loc_6EE2E
0x6ee26 MOVS            R3, #0x250
0x6ee2a MOVS            R2, #0
0x6ee2c STRB            R2, [R0,R3]
0x6ee2e ADDS            R5, #1
0x6ee30 ADDS            R1, #0x34 ; '4'
0x6ee32 ADDS            R4, #0x34 ; '4'
0x6ee34 LDRH            R3, [R0,#0x2A]
0x6ee36 CMP             R5, R3
0x6ee38 BLT             loc_6ED5A
0x6ee3a POP             {R4-R6}
0x6ee3c POP             {R0}
0x6ee3e BX              R0