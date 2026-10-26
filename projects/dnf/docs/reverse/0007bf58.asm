0x7bf58 PUSH            {R4-R7,LR}
0x7bf5a LDR             R3, =dword_1501D90
0x7bf5c LSLS            R0, R0, #0x18
0x7bf5e LDR             R3, [R3]
0x7bf60 LSRS            R0, R0, #0x18
0x7bf62 LSLS            R2, R2, #0x18
0x7bf64 SUB             SP, SP, #0x28
0x7bf66 LSRS            R2, R2, #0x18
0x7bf68 LDR             R6, [R3,#0x10]
0x7bf6a LSLS            R3, R0, #2
0x7bf6c STR             R2, [SP,#0x28+var_1C]
0x7bf6e LSLS            R1, R1, #0x18
0x7bf70 LDR             R2, =unk_1538F9C
0x7bf72 ADDS            R3, R3, R0
0x7bf74 LSRS            R1, R1, #0x18
0x7bf76 LSLS            R3, R3, #7
0x7bf78 STR             R1, [SP,#0x28+var_18]
0x7bf7a ADDS            R1, R3, R2
0x7bf7c STR             R0, [SP,#0x28+var_14]
0x7bf7e MOVS            R3, R1
0x7bf80 ADDS            R3, #0xB4
0x7bf82 LDRB            R3, [R3,#3]
0x7bf84 CMP             R3, #0
0x7bf86 BNE             loc_7BF8E
0x7bf88 MOVS            R1, #0
0x7bf8a STR             R1, [SP,#0x28+var_10]
0x7bf8c B               loc_7BFA6
0x7bf8e LDR             R3, =dword_1536B58
0x7bf90 LDR             R2, [R3]
0x7bf92 MOVS            R3, R1
0x7bf94 ADDS            R3, #0xB0
0x7bf96 LDRB            R3, [R3]
0x7bf98 LSLS            R3, R3, #1
0x7bf9a ADDS            R3, R3, R2
0x7bf9c MOVS            R2, #0x12A
0x7bfa0 ADDS            R3, R3, R2
0x7bfa2 LDRH            R3, [R3]
0x7bfa4 STR             R3, [SP,#0x28+var_10]
0x7bfa6 LDR             R5, [SP,#0x28+var_18]
0x7bfa8 MOVS            R3, #0x68 ; 'h'
0x7bfaa MOVS            R2, R5
0x7bfac MULS            R2, R3
0x7bfae LDR             R1, =0x1468
0x7bfb0 ADDS            R3, R2, R6
0x7bfb2 ADDS            R3, R3, R1
0x7bfb4 LDRB            R3, [R3]
0x7bfb6 LSLS            R3, R3, #0x18
0x7bfb8 ASRS            R3, R3, #0x18
0x7bfba CMP             R3, #0x12
0x7bfbc BNE             loc_7BFEA
0x7bfbe LDR             R3, =0x506
0x7bfc0 LDRH            R7, [R6,R3]
0x7bfc2 CMP             R7, #0
0x7bfc4 BNE             loc_7BFC8
0x7bfc6 B               loc_7C0CC
0x7bfc8 LSLS            R3, R5, #3
0x7bfca ADDS            R3, R3, R5
0x7bfcc LSLS            R3, R3, #2
0x7bfce MOVS            R5, #0x92
0x7bfd0 ADDS            R2, R3, R6
0x7bfd2 LSLS            R5, R5, #2
0x7bfd4 ADDS            R3, R2, R5
0x7bfd6 LDRB            R3, [R3]
0x7bfd8 CMP             R3, #1
0x7bfda BNE             loc_7C0CC
0x7bfdc MOVS            R1, #0x240
0x7bfe0 ADDS            R3, R2, R1
0x7bfe2 LDRB            R3, [R3,#2]
0x7bfe4 CMP             R3, #2
0x7bfe6 BNE             loc_7C0CC
0x7bfe8 B               loc_7C0E0
0x7bfea CMP             R3, #9
0x7bfec BNE             loc_7BFF8
0x7bfee LDR             R3, =0x504
0x7bff0 LDRH            R7, [R6,R3]
0x7bff2 CMP             R7, #0
0x7bff4 BEQ             loc_7C0CC
0x7bff6 B               loc_7C0E0
0x7bff8 CMP             R3, #0x14
0x7bffa BNE             loc_7C056
0x7bffc LDR             R5, [SP,#0x28+var_18]
0x7bffe MOVS            R3, #0x1A
0x7c000 MULS            R3, R5
0x7c002 LDR             R1, [SP,#0x28+var_1C]
0x7c004 ADDS            R3, R3, R1
0x7c006 LDR             R5, =dword_14A8
0x7c008 LSLS            R3, R3, #2
0x7c00a ADDS            R3, R3, R6
0x7c00c LDR             R1, =0x14B8
0x7c00e ADDS            R3, R3, R5
0x7c010 LDRH            R5, [R3,#2]
0x7c012 ADDS            R3, R2, R1
0x7c014 ADDS            R4, R6, R3
0x7c016 LDR             R3, =0x8C065
0x7c018 MOVS            R2, #0
0x7c01a STR             R2, [SP,#0x28+var_4]
0x7c01c STR             R3, [SP,#0x28+var_28]
0x7c01e MOVS            R7, R5
0x7c020 LDRB            R3, [R4]
0x7c022 CMP             R3, #0x8A
0x7c024 BNE             loc_7C044
0x7c026 LDR             R3, =0x19E3
0x7c028 LDRB            R2, [R6,R3]
0x7c02a LDRH            R3, [R4,#2]
0x7c02c MULS            R3, R2
0x7c02e LSLS            R3, R3, #0x10
0x7c030 ASRS            R3, R3, #0x10
0x7c032 MOVS            R0, R5
0x7c034 MULS            R0, R3
0x7c036 MOVS            R1, #0x64 ; 'd'
0x7c038 LDR             R2, [SP,#0x28+var_28]
0x7c03a BL              sub_80704
0x7c03e ADDS            R0, R5, R0
0x7c040 LSLS            R0, R0, #0x10
0x7c042 LSRS            R7, R0, #0x10
0x7c044 LDR             R3, [SP,#0x28+var_4]
0x7c046 ADDS            R3, #1
0x7c048 LSLS            R3, R3, #0x18
0x7c04a LSRS            R3, R3, #0x18
0x7c04c STR             R3, [SP,#0x28+var_4]
0x7c04e ADDS            R4, #8
0x7c050 CMP             R3, #3
0x7c052 BEQ             loc_7C0E0
0x7c054 B               loc_7C020
0x7c056 CMP             R3, #0xE
0x7c058 BEQ             loc_7C062
0x7c05a CMP             R3, #0x21 ; '!'
0x7c05c BEQ             loc_7C062
0x7c05e CMP             R3, #0x23 ; '#'
0x7c060 BNE             loc_7C0CC
0x7c062 LDR             R3, =dword_19E4
0x7c064 LDRB            R3, [R6,R3]
0x7c066 CMP             R3, #1
0x7c068 BNE             loc_7C0CC
0x7c06a LDR             R5, [SP,#0x28+var_18]
0x7c06c MOVS            R3, #0x68 ; 'h'
0x7c06e MULS            R3, R5
0x7c070 LDR             R1, =0x14B8
0x7c072 LDR             R2, =0x8C065
0x7c074 MOVS            R7, #0
0x7c076 ADDS            R3, R3, R1
0x7c078 STR             R7, [SP,#0x28+var_C]
0x7c07a STR             R2, [SP,#0x28+var_24]
0x7c07c ADDS            R5, R6, R3
0x7c07e LDRB            R3, [R5]
0x7c080 CMP             R3, #0x91
0x7c082 BNE             loc_7C0B8
0x7c084 LDR             R3, [SP,#0x28+var_C]
0x7c086 LDRH            R2, [R5,#4]
0x7c088 LDR             R1, [SP,#0x28+var_18]
0x7c08a ADDS            R2, R3, R2
0x7c08c MOVS            R3, #0x1A
0x7c08e MULS            R3, R1
0x7c090 LDR             R1, [SP,#0x28+var_1C]
0x7c092 ADDS            R3, R3, R1
0x7c094 LSLS            R3, R3, #2
0x7c096 LDR             R1, =dword_14A8
0x7c098 ADDS            R3, R3, R6
0x7c09a ADDS            R3, R3, R1
0x7c09c LDRH            R4, [R3,#2]
0x7c09e LSLS            R2, R2, #0x10
0x7c0a0 LSRS            R3, R2, #0x10
0x7c0a2 ASRS            R2, R2, #0x10
0x7c0a4 MOVS            R0, R4
0x7c0a6 MULS            R0, R2
0x7c0a8 STR             R3, [SP,#0x28+var_C]
0x7c0aa MOVS            R1, #0x64 ; 'd'
0x7c0ac LDR             R2, [SP,#0x28+var_24]
0x7c0ae BL              sub_80704
0x7c0b2 ADDS            R4, R4, R0
0x7c0b4 LSLS            R4, R4, #0x10
0x7c0b6 LSRS            R7, R4, #0x10
0x7c0b8 LDR             R1, [SP,#0x28+var_18]
0x7c0ba MOVS            R3, #0x68 ; 'h'
0x7c0bc MULS            R3, R1
0x7c0be LDR             R2, =dword_14D0
0x7c0c0 ADDS            R3, R3, R2
0x7c0c2 ADDS            R5, #8
0x7c0c4 ADDS            R3, R6, R3
0x7c0c6 CMP             R5, R3
0x7c0c8 BEQ             loc_7C0E0
0x7c0ca B               loc_7C07E
0x7c0cc LDR             R5, [SP,#0x28+var_18]
0x7c0ce MOVS            R3, #0x1A
0x7c0d0 MULS            R3, R5
0x7c0d2 LDR             R1, [SP,#0x28+var_1C]
0x7c0d4 ADDS            R3, R3, R1
0x7c0d6 LSLS            R3, R3, #2
0x7c0d8 LDR             R2, =dword_14A8
0x7c0da ADDS            R3, R3, R6
0x7c0dc ADDS            R3, R3, R2
0x7c0de LDRH            R7, [R3,#2]
0x7c0e0 LDR             R3, =0x19E3
0x7c0e2 LDRB            R0, [R6,R3]
0x7c0e4 CMP             R0, #0
0x7c0e6 BNE             loc_7C0EE
0x7c0e8 MOVS            R3, #0
0x7c0ea STR             R3, [SP,#0x28+var_8]
0x7c0ec B               loc_7C15C
0x7c0ee LDR             R5, =0x1468
0x7c0f0 MOVS            R4, #0
0x7c0f2 LDR             R3, =0x14B8
0x7c0f4 STR             R4, [SP,#0x28+var_8]
0x7c0f6 ADDS            R1, R6, R5
0x7c0f8 ADDS            R2, R6, R3
0x7c0fa MOVS            R3, #0
0x7c0fc LDRSB           R3, [R1,R3]
0x7c0fe CMP             R3, #0x10
0x7c100 BNE             loc_7C14E
0x7c102 MOVS            R3, #1
0x7c104 LDRSB           R3, [R1,R3]
0x7c106 CMP             R3, #0
0x7c108 BLE             loc_7C14E
0x7c10a MOVS            R3, #2
0x7c10c LDRSB           R3, [R1,R3]
0x7c10e CMP             R3, #0
0x7c110 BLE             loc_7C14E
0x7c112 LDRB            R3, [R2]
0x7c114 CMP             R3, #0x8B
0x7c116 BNE             loc_7C126
0x7c118 LDRH            R3, [R2,#2]
0x7c11a MULS            R3, R0
0x7c11c LDR             R5, [SP,#0x28+var_8]
0x7c11e ADDS            R3, R5, R3
0x7c120 LSLS            R3, R3, #0x10
0x7c122 LSRS            R3, R3, #0x10
0x7c124 STR             R3, [SP,#0x28+var_8]
0x7c126 LDRB            R3, [R2,#8]
0x7c128 CMP             R3, #0x8B
0x7c12a BNE             loc_7C13A
0x7c12c LDRH            R3, [R2,#0xA]
0x7c12e MULS            R3, R0
0x7c130 LDR             R5, [SP,#0x28+var_8]
0x7c132 ADDS            R3, R5, R3
0x7c134 LSLS            R3, R3, #0x10
0x7c136 LSRS            R3, R3, #0x10
0x7c138 STR             R3, [SP,#0x28+var_8]
0x7c13a LDRB            R3, [R2,#0x10]
0x7c13c CMP             R3, #0x8B
0x7c13e BNE             loc_7C14E
0x7c140 LDRH            R3, [R2,#0x12]
0x7c142 MULS            R3, R0
0x7c144 LDR             R5, [SP,#0x28+var_8]
0x7c146 ADDS            R3, R5, R3
0x7c148 LSLS            R3, R3, #0x10
0x7c14a LSRS            R3, R3, #0x10
0x7c14c STR             R3, [SP,#0x28+var_8]
0x7c14e ADDS            R3, R4, #1
0x7c150 LSLS            R3, R3, #0x18
0x7c152 LSRS            R4, R3, #0x18
0x7c154 ADDS            R1, #0x68 ; 'h'
0x7c156 ADDS            R2, #0x68 ; 'h'
0x7c158 CMP             R4, #0xD
0x7c15a BNE             loc_7C0FA
0x7c15c MOVS            R0, #0
0x7c15e BL              sub_7A928
0x7c162 LDR             R3, =0x426
0x7c164 MOVS            R5, R0
0x7c166 MOVS            R1, #0
0x7c168 MOVS            R0, #0
0x7c16a LDRH            R4, [R6,R3]
0x7c16c BL              sub_7A72C
0x7c170 LDR             R1, =dword_1501D90
0x7c172 LDR             R3, [R1]
0x7c174 STR             R1, [SP,#0x28+var_20]
0x7c176 LDR             R6, [R3,#0x10]
0x7c178 LDR             R3, =0x51E
0x7c17a LDRH            R3, [R6,R3]
0x7c17c ADDS            R4, R4, R3
0x7c17e LDR             R3, =0x55E
0x7c180 LDRH            R3, [R6,R3]
0x7c182 ADDS            R4, R4, R3
0x7c184 LDR             R3, =0x55C
0x7c186 LDRH            R3, [R6,R3]
0x7c188 LDR             R2, [SP,#0x28+var_8]
0x7c18a ADDS            R0, R0, R3
0x7c18c ADDS            R0, R0, R2
0x7c18e ADDS            R4, R4, R0
0x7c190 MOVS            R0, R4
0x7c192 MULS            R0, R7
0x7c194 ADDS            R5, R7, R5
0x7c196 MOVS            R1, #0xC8
0x7c198 LDR             R7, =0x8C065
0x7c19a BL              sub_8070E
0x7c19e LDR             R3, =0x4FA
0x7c1a0 LDRH            R3, [R6,R3]
0x7c1a2 ADDS            R5, R5, R0
0x7c1a4 MOVS            R0, R3
0x7c1a6 MULS            R0, R5
0x7c1a8 MOVS            R1, #0x64 ; 'd'
0x7c1aa BL              sub_8070E
0x7c1ae MOVS            R1, #1
0x7c1b0 ADDS            R5, R5, R0
0x7c1b2 LDR             R0, [SP,#0x28+var_14]
0x7c1b4 BL              sub_76CAC
0x7c1b8 MOVS            R3, #0x64 ; 'd'
0x7c1ba SUBS            R3, R3, R0
0x7c1bc MOVS            R0, R3
0x7c1be MULS            R0, R5
0x7c1c0 MOVS            R1, #0x64 ; 'd'
0x7c1c2 BL              sub_8070E
0x7c1c6 MOVS            R5, R0
0x7c1c8 MOVS            R0, #0
0x7c1ca BL              sub_7A88C
0x7c1ce LDR             R3, [SP,#0x28+var_20]
0x7c1d0 LDR             R6, [R3]
0x7c1d2 LDR             R3, =0x48E
0x7c1d4 LDR             R2, [R6,#0x10]
0x7c1d6 LDRH            R3, [R2,R3]
0x7c1d8 MOVS            R1, #0x64 ; 'd'
0x7c1da ADDS            R4, R5, R0
0x7c1dc MOVS            R0, R3
0x7c1de MULS            R0, R5
0x7c1e0 BL              sub_8070E
0x7c1e4 ADDS            R4, R4, R0
0x7c1e6 LDR             R0, [SP,#0x28+var_14]
0x7c1e8 BL              sub_77540
0x7c1ec MOVS            R1, #0x64 ; 'd'
0x7c1ee MULS            R0, R4
0x7c1f0 BL              sub_8070E
0x7c1f4 LDR             R3, =0x1711
0x7c1f6 LDRB            R3, [R6,R3]
0x7c1f8 ADDS            R7, R4, R0
0x7c1fa CMP             R3, #0
0x7c1fc BEQ             loc_7C202
0x7c1fe LDR             R3, =0x171C
0x7c200 LDRB            R3, [R6,R3]
0x7c202 CMP             R3, #0
0x7c204 BGE             loc_7C208
0x7c206 ADDS            R3, #3
0x7c208 ASRS            R4, R3, #2
0x7c20a ADDS            R4, #1
0x7c20c LSLS            R4, R4, #0x10
0x7c20e LSRS            R4, R4, #0x10
0x7c210 LSLS            R0, R4, #1
0x7c212 LDR             R3, =(sub_6C7D4+1)
0x7c214 ADDS            R0, #1
0x7c216 BL              sub_80706
0x7c21a LDR             R1, [SP,#0x28+var_10]
0x7c21c MOVS            R5, R0
0x7c21e LDR             R3, =0x8C065
0x7c220 MOVS            R0, R1
0x7c222 MULS            R0, R7
0x7c224 MOVS            R1, #0x64 ; 'd'
0x7c226 BL              sub_80706
0x7c22a ADDS            R0, R7, R0
0x7c22c SUBS            R0, R0, R4
0x7c22e ADDS            R0, R0, R5
0x7c230 LSLS            R0, R0, #0x10
0x7c232 LSRS            R0, R0, #0x10
0x7c234 CMP             R0, #0
0x7c236 BGT             loc_7C23A
0x7c238 MOVS            R0, #1
0x7c23a ADD             SP, SP, #0x28 ; '('
0x7c23c POP             {R4-R7}
0x7c23e POP             {R1}
0x7c240 BX              R1