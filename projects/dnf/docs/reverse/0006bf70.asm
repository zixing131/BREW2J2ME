0x6bf70 PUSH            {R4-R7,LR}
0x6bf72 LDR             R3, =0x146B
0x6bf74 SUB             SP, SP, #0x28
0x6bf76 STR             R0, [SP,#0x28+var_28]
0x6bf78 CMP             R1, R3
0x6bf7a BHI             loc_6BF80
0x6bf7c MOVS            R0, #2
0x6bf7e B               loc_6C1E8
0x6bf80 MOVS            R1, #0
0x6bf82 MOVS            R3, #0x80
0x6bf84 LDR             R0, [SP,#0x28+var_28]
0x6bf86 LSLS            R3, R3, #3
0x6bf88 STRH            R3, [R1,R0]
0x6bf8a LDR             R3, =0x146C
0x6bf8c ADDS            R1, #2
0x6bf8e CMP             R1, R3
0x6bf90 BNE             loc_6BF82
0x6bf92 MOVS            R3, #0
0x6bf94 STR             R3, [SP,#0x28+var_4]
0x6bf96 MOVS            R3, #1
0x6bf98 NEGS            R3, R3
0x6bf9a STR             R2, [SP,#0x28+var_C]
0x6bf9c STR             R3, [SP,#0x28+var_8]
0x6bf9e MOVS            R0, #0
0x6bfa0 LDR             R3, [SP,#0x28+var_C]
0x6bfa2 LDR             R2, [SP,#0x28+var_4]
0x6bfa4 LDRB            R1, [R3]
0x6bfa6 LSLS            R2, R2, #8
0x6bfa8 ORRS            R2, R1
0x6bfaa ADDS            R3, #1
0x6bfac ADDS            R0, #1
0x6bfae STR             R2, [SP,#0x28+var_4]
0x6bfb0 STR             R3, [SP,#0x28+var_C]
0x6bfb2 CMP             R0, #5
0x6bfb4 BNE             loc_6BFA0
0x6bfb6 LDR             R1, [SP,#0x28+arg_8]
0x6bfb8 MOVS            R2, #1
0x6bfba MOVS            R3, #0
0x6bfbc MOVS            R4, #0
0x6bfbe MOVS            R7, #0
0x6bfc0 STR             R3, [R1]
0x6bfc2 STR             R3, [SP,#0x28+var_24]
0x6bfc4 STR             R2, [SP,#0x28+var_10]
0x6bfc6 STR             R2, [SP,#0x28+var_20]
0x6bfc8 STR             R2, [SP,#0x28+var_1C]
0x6bfca STR             R2, [SP,#0x28+var_18]
0x6bfcc STR             R4, [SP,#0x28+var_14]
0x6bfce B               loc_6C1D2
0x6bfd0 LDR             R5, [SP,#0x28+var_24]
0x6bfd2 LDR             R0, [SP,#0x28+var_28]
0x6bfd4 LSLS            R3, R5, #5
0x6bfd6 ADDS            R6, R0, R3
0x6bfd8 ADD             R5, SP, #0x28+var_C
0x6bfda MOVS            R0, R6
0x6bfdc MOVS            R1, R5
0x6bfde BL              sub_6BDC4
0x6bfe2 CMP             R0, #0
0x6bfe4 BNE             loc_6C03E
0x6bfe6 ASRS            R2, R4, #8
0x6bfe8 LSLS            R3, R2, #1
0x6bfea ADDS            R3, R3, R2
0x6bfec LDR             R1, [SP,#0x28+var_28]
0x6bfee LSLS            R3, R3, #9
0x6bff0 LDR             R2, =0xE6C
0x6bff2 ADDS            R3, R1, R3
0x6bff4 ADDS            R0, R3, R2
0x6bff6 LDR             R3, [SP,#0x28+var_24]
0x6bff8 CMP             R3, #3
0x6bffa BGT             loc_6C002
0x6bffc MOVS            R4, #0
0x6bffe STR             R4, [SP,#0x28+var_24]
0x6c000 B               loc_6C014
0x6c002 LDR             R5, [SP,#0x28+var_24]
0x6c004 CMP             R5, #9
0x6c006 BGT             loc_6C00E
0x6c008 SUBS            R5, #3
0x6c00a STR             R5, [SP,#0x28+var_24]
0x6c00c B               loc_6C014
0x6c00e LDR             R1, [SP,#0x28+var_24]
0x6c010 SUBS            R1, #6
0x6c012 STR             R1, [SP,#0x28+var_24]
0x6c014 ADD             R1, SP, #0x28+var_C
0x6c016 CMP             R7, #0
0x6c018 BEQ             loc_6C02A
0x6c01a LDR             R2, [SP,#0x28+var_14]
0x6c01c LDR             R4, [SP,#0x28+var_10]
0x6c01e LDR             R5, [SP,#0x28+arg_0]
0x6c020 SUBS            R3, R2, R4
0x6c022 LDRB            R2, [R5,R3]
0x6c024 BL              sub_6BEC8
0x6c028 B               loc_6C02E
0x6c02a BL              sub_6BEA4
0x6c02e LDR             R1, [SP,#0x28+var_14]
0x6c030 MOVS            R4, R0
0x6c032 MOVS            R3, R1
0x6c034 LDR             R0, [SP,#0x28+arg_0]
0x6c036 ADDS            R3, #1
0x6c038 MOVS            R7, #0
0x6c03a STRB            R4, [R0,R1]
0x6c03c B               loc_6C1D0
0x6c03e LDR             R2, [SP,#0x28+var_24]
0x6c040 LDR             R0, [SP,#0x28+var_28]
0x6c042 LSLS            R3, R2, #1
0x6c044 MOVS            R1, #0x180
0x6c048 ADDS            R4, R0, R3
0x6c04a ADDS            R0, R4, R1
0x6c04c MOVS            R1, R5
0x6c04e BL              sub_6BDC4
0x6c052 CMP             R0, #0
0x6c054 BEQ             loc_6C104
0x6c056 MOVS            R2, #0x198
0x6c05a ADDS            R0, R4, R2
0x6c05c MOVS            R1, R5
0x6c05e BL              sub_6BDC4
0x6c062 CMP             R0, #0
0x6c064 BNE             loc_6C0A0
0x6c066 MOVS            R3, #0x1E0
0x6c06a ADDS            R0, R6, R3
0x6c06c MOVS            R1, R5
0x6c06e BL              sub_6BDC4
0x6c072 CMP             R0, #0
0x6c074 BNE             loc_6C0E4
0x6c076 LDR             R4, [SP,#0x28+var_14]
0x6c078 CMP             R4, #0
0x6c07a BNE             loc_6C07E
0x6c07c B               loc_6C1E6
0x6c07e LDR             R5, [SP,#0x28+var_24]
0x6c080 CMP             R5, #6
0x6c082 BGT             loc_6C08A
0x6c084 MOVS            R0, #9
0x6c086 STR             R0, [SP,#0x28+var_24]
0x6c088 B               loc_6C08E
0x6c08a MOVS            R1, #0xB
0x6c08c STR             R1, [SP,#0x28+var_24]
0x6c08e LDR             R2, [SP,#0x28+var_14]
0x6c090 LDR             R4, [SP,#0x28+var_10]
0x6c092 LDR             R5, [SP,#0x28+arg_0]
0x6c094 SUBS            R3, R2, R4
0x6c096 LDRB            R4, [R5,R3]
0x6c098 MOVS            R3, R2
0x6c09a ADDS            R3, #1
0x6c09c STRB            R4, [R5,R2]
0x6c09e B               loc_6C1CE
0x6c0a0 MOVS            R1, #0x1B0
0x6c0a4 ADDS            R0, R4, R1
0x6c0a6 MOVS            R1, R5
0x6c0a8 BL              sub_6BDC4
0x6c0ac CMP             R0, #0
0x6c0ae BNE             loc_6C0B8
0x6c0b0 LDR             R2, [SP,#0x28+var_20]
0x6c0b2 LDR             R3, [SP,#0x28+var_10]
0x6c0b4 STR             R3, [SP,#0x28+var_20]
0x6c0b6 B               loc_6C0E2
0x6c0b8 MOVS            R1, #0x1C8
0x6c0bc ADDS            R0, R4, R1
0x6c0be MOVS            R1, R5
0x6c0c0 BL              sub_6BDC4
0x6c0c4 CMP             R0, #0
0x6c0c6 BNE             loc_6C0D4
0x6c0c8 LDR             R3, [SP,#0x28+var_20]
0x6c0ca LDR             R2, [SP,#0x28+var_1C]
0x6c0cc LDR             R4, [SP,#0x28+var_10]
0x6c0ce STR             R3, [SP,#0x28+var_1C]
0x6c0d0 STR             R4, [SP,#0x28+var_20]
0x6c0d2 B               loc_6C0E2
0x6c0d4 LDR             R5, [SP,#0x28+var_1C]
0x6c0d6 LDR             R0, [SP,#0x28+var_20]
0x6c0d8 LDR             R1, [SP,#0x28+var_10]
0x6c0da LDR             R2, [SP,#0x28+var_18]
0x6c0dc STR             R0, [SP,#0x28+var_1C]
0x6c0de STR             R5, [SP,#0x28+var_18]
0x6c0e0 STR             R1, [SP,#0x28+var_20]
0x6c0e2 STR             R2, [SP,#0x28+var_10]
0x6c0e4 LDR             R2, [SP,#0x28+var_28]
0x6c0e6 LDR             R3, =0xA68
0x6c0e8 ADD             R1, SP, #0x28+var_C
0x6c0ea ADDS            R0, R2, R3
0x6c0ec BL              sub_6BF20
0x6c0f0 LDR             R4, [SP,#0x28+var_24]
0x6c0f2 MOVS            R7, R0
0x6c0f4 CMP             R4, #6
0x6c0f6 BGT             loc_6C0FE
0x6c0f8 MOVS            R5, #8
0x6c0fa STR             R5, [SP,#0x28+var_24]
0x6c0fc B               loc_6C19C
0x6c0fe MOVS            R0, #0xB
0x6c100 STR             R0, [SP,#0x28+var_24]
0x6c102 B               loc_6C19C
0x6c104 LDR             R1, [SP,#0x28+var_24]
0x6c106 CMP             R1, #6
0x6c108 BGT             loc_6C110
0x6c10a MOVS            R2, #7
0x6c10c STR             R2, [SP,#0x28+var_24]
0x6c10e B               loc_6C114
0x6c110 MOVS            R3, #0xA
0x6c112 STR             R3, [SP,#0x28+var_24]
0x6c114 LDR             R4, [SP,#0x28+var_28]
0x6c116 LDR             R5, =0x664
0x6c118 ADD             R1, SP, #0x28+var_C
0x6c11a ADDS            R0, R4, R5
0x6c11c BL              sub_6BF20
0x6c120 MOVS            R7, R0
0x6c122 CMP             R7, #3
0x6c124 BLE             loc_6C128
0x6c126 MOVS            R0, #3
0x6c128 LDR             R1, [SP,#0x28+var_28]
0x6c12a LSLS            R0, R0, #7
0x6c12c MOVS            R2, #0xD8
0x6c12e ADDS            R0, R1, R0
0x6c130 LSLS            R2, R2, #2
0x6c132 ADDS            R0, R0, R2
0x6c134 MOVS            R1, #6
0x6c136 ADD             R2, SP, #0x28+var_C
0x6c138 BL              sub_6BE38
0x6c13c MOVS            R4, R0
0x6c13e CMP             R0, #3
0x6c140 BLE             loc_6C18C
0x6c142 MOVS            R3, #1
0x6c144 ANDS            R3, R0
0x6c146 MOVS            R2, #2
0x6c148 ASRS            R1, R0, #1
0x6c14a ORRS            R3, R2
0x6c14c SUBS            R6, R1, #1
0x6c14e MOVS            R5, R3
0x6c150 LSLS            R5, R6
0x6c152 CMP             R0, #0xD
0x6c154 BGT             loc_6C16E
0x6c156 LDR             R3, [SP,#0x28+var_28]
0x6c158 LSLS            R0, R5, #1
0x6c15a ADDS            R0, R3, R0
0x6c15c LSLS            R3, R4, #1
0x6c15e LDR             R4, =0x55E
0x6c160 SUBS            R0, R0, R3
0x6c162 ADDS            R0, R0, R4
0x6c164 MOVS            R1, R6
0x6c166 ADD             R2, SP, #0x28+var_C
0x6c168 BL              sub_6BE6C
0x6c16c B               loc_6C18A
0x6c16e SUBS            R1, #5
0x6c170 ADD             R0, SP, #0x28+var_C
0x6c172 BL              sub_6BD7C
0x6c176 LDR             R1, [SP,#0x28+var_28]
0x6c178 LDR             R2, =0x644
0x6c17a MOVS            R4, R0
0x6c17c ADDS            R0, R1, R2
0x6c17e MOVS            R1, #4
0x6c180 ADD             R2, SP, #0x28+var_C
0x6c182 BL              sub_6BE6C
0x6c186 LSLS            R4, R4, #4
0x6c188 ADDS            R0, R0, R4
0x6c18a ADDS            R0, R5, R0
0x6c18c LDR             R3, [SP,#0x28+var_1C]
0x6c18e LDR             R4, [SP,#0x28+var_20]
0x6c190 LDR             R5, [SP,#0x28+var_10]
0x6c192 ADDS            R0, #1
0x6c194 STR             R3, [SP,#0x28+var_18]
0x6c196 STR             R4, [SP,#0x28+var_1C]
0x6c198 STR             R5, [SP,#0x28+var_20]
0x6c19a STR             R0, [SP,#0x28+var_10]
0x6c19c LDR             R0, [SP,#0x28+var_10]
0x6c19e CMP             R0, #0
0x6c1a0 BEQ             loc_6C1DC
0x6c1a2 LDR             R1, [SP,#0x28+var_14]
0x6c1a4 CMP             R0, R1
0x6c1a6 BHI             loc_6C1E6
0x6c1a8 LDR             R2, [SP,#0x28+var_10]
0x6c1aa LDR             R4, [SP,#0x28+arg_0]
0x6c1ac LDR             R5, [SP,#0x28+var_14]
0x6c1ae SUBS            R3, R1, R2
0x6c1b0 ADDS            R1, R4, R3
0x6c1b2 ADDS            R0, R7, #2
0x6c1b4 ADDS            R2, R4, R5
0x6c1b6 MOVS            R3, R5
0x6c1b8 LDRB            R4, [R1]
0x6c1ba SUBS            R0, #1
0x6c1bc STRB            R4, [R2]
0x6c1be ADDS            R3, #1
0x6c1c0 CMP             R0, #0
0x6c1c2 BLE             loc_6C1CE
0x6c1c4 LDR             R5, [SP,#0x28+arg_4]
0x6c1c6 ADDS            R1, #1
0x6c1c8 ADDS            R2, #1
0x6c1ca CMP             R3, R5
0x6c1cc BNE             loc_6C1B8
0x6c1ce MOVS            R7, #1
0x6c1d0 STR             R3, [SP,#0x28+var_14]
0x6c1d2 LDR             R0, [SP,#0x28+var_14]
0x6c1d4 LDR             R1, [SP,#0x28+arg_4]
0x6c1d6 CMP             R0, R1
0x6c1d8 BCS             loc_6C1DC
0x6c1da B               loc_6BFD0
0x6c1dc LDR             R2, [SP,#0x28+var_14]
0x6c1de LDR             R3, [SP,#0x28+arg_8]
0x6c1e0 MOVS            R0, #0
0x6c1e2 STR             R2, [R3]
0x6c1e4 B               loc_6C1E8
0x6c1e6 MOVS            R0, #1
0x6c1e8 ADD             SP, SP, #0x28 ; '('
0x6c1ea POP             {R4-R7}
0x6c1ec POP             {R1}
0x6c1ee BX              R1