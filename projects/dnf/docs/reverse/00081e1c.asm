0x81e1c PUSH            {R4-R7,LR}
0x81e1e LSLS            R1, R1, #0x18
0x81e20 LSRS            R1, R1, #0x18
0x81e22 LSLS            R3, R3, #0x10
0x81e24 LSLS            R2, R2, #0x10
0x81e26 LSRS            R6, R3, #0x10
0x81e28 LSLS            R3, R1, #2
0x81e2a LSRS            R5, R2, #0x10
0x81e2c ADDS            R3, R3, R1
0x81e2e LDR             R2, =unk_1538F9C
0x81e30 LSLS            R3, R3, #7
0x81e32 ADDS            R3, R3, R2
0x81e34 ADDS            R3, #0x40 ; '@'
0x81e36 LDRB            R3, [R3]
0x81e38 MOVS            R4, R0
0x81e3a CMP             R3, #1
0x81e3c BNE             loc_81E46
0x81e3e LDR             R3, =byte_153407C
0x81e40 LDRH            R0, [R3,#(word_1534080 - 0x153407C)]
0x81e42 LDRH            R4, [R3,#(word_1534082 - 0x153407C)]
0x81e44 B               loc_81E4A
0x81e46 LDRH            R0, [R0,#0x3A]
0x81e48 LDRH            R4, [R4,#0x3C]
0x81e4a LSLS            R3, R1, #2
0x81e4c LDR             R2, =unk_1538F9C
0x81e4e ADDS            R3, R3, R1
0x81e50 LSLS            R3, R3, #7
0x81e52 ADDS            R3, R3, R2
0x81e54 MOVS            R1, R3
0x81e56 MOVS            R7, #0x10
0x81e58 LDRSH           R2, [R3,R7]
0x81e5a LSLS            R3, R0, #0x10
0x81e5c ASRS            R3, R3, #0x10
0x81e5e ADDS            R1, #0x10
0x81e60 SUBS            R2, R2, R3
0x81e62 BPL             loc_81E66
0x81e64 NEGS            R2, R2
0x81e66 CMP             R2, R5
0x81e68 BLE             loc_81E6E
0x81e6a MOVS            R0, #0
0x81e6c B               loc_81E84
0x81e6e MOVS            R3, #2
0x81e70 LDRSH           R2, [R1,R3]
0x81e72 LSLS            R3, R4, #0x10
0x81e74 ASRS            R3, R3, #0x10
0x81e76 MOVS            R0, #0
0x81e78 SUBS            R2, R2, R3
0x81e7a BPL             loc_81E7E
0x81e7c NEGS            R2, R2
0x81e7e CMP             R2, R6
0x81e80 BGT             loc_81E84
0x81e82 MOVS            R0, #1
0x81e84 POP             {R4-R7}
0x81e86 POP             {R1}
0x81e88 BX              R1