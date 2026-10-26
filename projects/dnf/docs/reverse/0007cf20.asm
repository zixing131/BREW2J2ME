0x7cf20 PUSH            {R4-R7,LR}
0x7cf22 SUB             SP, SP, #8
0x7cf24 MOVS            R6, R0
0x7cf26 CMP             R1, #0
0x7cf28 BGT             loc_7CF2C
0x7cf2a B               loc_7D0F4
0x7cf2c LDR             R3, =0x19C5
0x7cf2e LDRB            R3, [R0,R3]
0x7cf30 CMP             R3, #0x3B ; ';'
0x7cf32 BLS             loc_7CF36
0x7cf34 B               loc_7D0F4
0x7cf36 LDR             R2, [R0,#0x10]
0x7cf38 ADDS            R1, R2, R1
0x7cf3a STR             R2, [SP,#8+var_8]
0x7cf3c STR             R1, [SP,#8+var_4]
0x7cf3e CMP             R3, #0x11
0x7cf40 BHI             loc_7CF46
0x7cf42 MOVS            R5, #0x21 ; '!'
0x7cf44 B               loc_7CF50
0x7cf46 CMP             R3, #0x27 ; '''
0x7cf48 BHI             loc_7CF4E
0x7cf4a MOVS            R5, #0x24 ; '$'
0x7cf4c B               loc_7CF50
0x7cf4e MOVS            R5, #0x28 ; '('
0x7cf50 LDR             R4, [R6,#0x14]
0x7cf52 LDR             R3, [SP,#8+var_4]
0x7cf54 LDR             R7, =0x8BFE9
0x7cf56 CMP             R3, R4
0x7cf58 BCS             loc_7CF5C
0x7cf5a B               loc_7D0B2
0x7cf5c MOVS            R1, R5
0x7cf5e MOVS            R0, R4
0x7cf60 BL              sub_8070E
0x7cf64 MOVS            R1, R0
0x7cf66 ADDS            R1, #1
0x7cf68 LDR             R0, [SP,#8+var_8]
0x7cf6a BL              sub_8070E
0x7cf6e SUBS            R0, R5, R0
0x7cf70 LSLS            R0, R0, #0x10
0x7cf72 LSRS            R0, R0, #0x10
0x7cf74 MOVS            R2, R0
0x7cf76 LSLS            R0, R0, #0x10
0x7cf78 CMP             R0, #0
0x7cf7a BGE             loc_7CF7E
0x7cf7c MOVS            R2, #0
0x7cf7e LDRH            R3, [R6,#2]
0x7cf80 LSLS            R2, R2, #0x18
0x7cf82 LSRS            R2, R2, #0x18
0x7cf84 ADDS            R3, R2, R3
0x7cf86 STRH            R3, [R6,#2]
0x7cf88 LDRH            R3, [R6,#4]
0x7cf8a ADDS            R2, R2, R3
0x7cf8c STRH            R2, [R6,#4]
0x7cf8e LDR             R2, =0x19C5
0x7cf90 LDR             R1, [SP,#8+var_4]
0x7cf92 LDRB            R3, [R6,R2]
0x7cf94 SUBS            R7, R1, R4
0x7cf96 ADDS            R3, #1
0x7cf98 STRB            R3, [R6,R2]
0x7cf9a STR             R7, [R6,#0x10]
0x7cf9c LDRB            R4, [R6,R2]
0x7cf9e MOVS            R3, #0xE6
0x7cfa0 MOVS            R2, R4
0x7cfa2 MULS            R2, R4
0x7cfa4 MULS            R3, R4
0x7cfa6 MOVS            R1, #0x64 ; 'd'
0x7cfa8 MOVS            R0, R3
0x7cfaa MULS            R0, R2
0x7cfac LDR             R3, =0x8C065
0x7cfae BL              sub_80706
0x7cfb2 MOVS            R3, #0x2BC
0x7cfb6 MULS            R3, R4
0x7cfb8 ADDS            R0, R0, R3
0x7cfba STR             R0, [R6,#0x14]
0x7cfbc CMP             R7, R0
0x7cfbe BCC             loc_7CFC4
0x7cfc0 SUBS            R3, R0, #1
0x7cfc2 STR             R3, [R6,#0x10]
0x7cfc4 MOVS            R3, R6
0x7cfc6 ADDS            R3, #0x32 ; '2'
0x7cfc8 LDRB            R3, [R3]
0x7cfca LSLS            R3, R3, #0x18
0x7cfcc ASRS            R3, R3, #0x18
0x7cfce CMP             R3, #0
0x7cfd0 BEQ             loc_7CFFA
0x7cfd2 LDR             R3, =dword_1501D90
0x7cfd4 LDR             R3, [R3]
0x7cfd6 LDR             R3, [R3,#0x10]
0x7cfd8 ADDS            R3, #0x32 ; '2'
0x7cfda LDRB            R3, [R3]
0x7cfdc LSLS            R3, R3, #0x18
0x7cfde ASRS            R3, R3, #0x18
0x7cfe0 LDR             R2, =0x80000003
0x7cfe2 SUBS            R3, #1
0x7cfe4 ANDS            R2, R3
0x7cfe6 CMP             R2, #0
0x7cfe8 BGE             loc_7CFF4
0x7cfea MOVS            R3, #4
0x7cfec SUBS            R2, #1
0x7cfee NEGS            R3, R3
0x7cff0 ORRS            R2, R3
0x7cff2 ADDS            R2, #1
0x7cff4 ADDS            R3, R2, #1
0x7cff6 LSLS            R3, R3, #0x18
0x7cff8 LSRS            R3, R3, #0x18
0x7cffa LSLS            R2, R3, #1
0x7cffc LDR             R4, =byte_1402FA4
0x7cffe ADDS            R2, R2, R3
0x7d000 LDR             R5, =0x19C5
0x7d002 LSLS            R2, R2, #1
0x7d004 LDRB            R0, [R6,R5]
0x7d006 LDRB            R3, [R2,R4]
0x7d008 MOVS            R1, R0
0x7d00a MULS            R1, R3
0x7d00c LDR             R3, =0x424
0x7d00e STRH            R1, [R6,R3]
0x7d010 ADDS            R2, R2, R4
0x7d012 LDRB            R3, [R2,#1]
0x7d014 MOVS            R1, R0
0x7d016 MULS            R1, R3
0x7d018 LDR             R3, =0x426
0x7d01a STRH            R1, [R6,R3]
0x7d01c LDRB            R3, [R2,#2]
0x7d01e MOVS            R1, R0
0x7d020 MULS            R1, R3
0x7d022 MOVS            R3, #0x428
0x7d026 STRH            R1, [R6,R3]
0x7d028 LDRB            R3, [R2,#3]
0x7d02a MOVS            R2, R0
0x7d02c MULS            R2, R3
0x7d02e LDR             R3, =0x42A
0x7d030 MOVS            R1, #0
0x7d032 STRH            R2, [R6,R3]
0x7d034 MOVS            R0, #0
0x7d036 MOVS            R2, #0
0x7d038 BL              sub_79E14
0x7d03c LDR             R3, =0x19B4
0x7d03e MOVS            R1, #0
0x7d040 STR             R0, [R6,R3]
0x7d042 MOVS            R2, #0
0x7d044 MOVS            R0, #0
0x7d046 BL              sub_79C88
0x7d04a STR             R0, [R6,#8]
0x7d04c BL              sub_773A4
0x7d050 BL              sub_773DC
0x7d054 LDR             R3, =dword_1501D90
0x7d056 LDR             R3, [R3]
0x7d058 LDR             R3, [R3,#0x10]
0x7d05a MOVS            R0, #1
0x7d05c MOVS            R1, #0x3A ; ':'
0x7d05e LDRSH           R2, [R3,R1]
0x7d060 LDR             R4, =(sub_350D4+1)
0x7d062 MOVS            R1, #0x3C ; '<'
0x7d064 LDRSH           R3, [R3,R1]
0x7d066 MOVS            R1, #0
0x7d068 BL              sub_80708
0x7d06c LDRB            R3, [R6,R5]
0x7d06e CMP             R3, #0x11
0x7d070 BHI             loc_7D076
0x7d072 MOVS            R1, #0x21 ; '!'
0x7d074 B               loc_7D080
0x7d076 CMP             R3, #0x27 ; '''
0x7d078 BHI             loc_7D07E
0x7d07a MOVS            R1, #0x24 ; '$'
0x7d07c B               loc_7D080
0x7d07e MOVS            R1, #0x28 ; '('
0x7d080 LDR             R4, =0x8BFE9
0x7d082 LDR             R0, [R6,#0x14]
0x7d084 BL              sub_80708
0x7d088 MOVS            R1, R0
0x7d08a ADDS            R1, #1
0x7d08c MOVS            R0, R7
0x7d08e BL              sub_80708
0x7d092 LSLS            R0, R0, #0x10
0x7d094 LSRS            R0, R0, #0x10
0x7d096 MOVS            R3, R0
0x7d098 LSLS            R0, R0, #0x10
0x7d09a CMP             R0, #0
0x7d09c BGE             loc_7D0A0
0x7d09e MOVS            R3, #0
0x7d0a0 LDRH            R2, [R6,#2]
0x7d0a2 LSLS            R3, R3, #0x18
0x7d0a4 LSRS            R3, R3, #0x18
0x7d0a6 ADDS            R2, R3, R2
0x7d0a8 STRH            R2, [R6,#2]
0x7d0aa LDRH            R2, [R6,#4]
0x7d0ac ADDS            R3, R3, R2
0x7d0ae STRH            R3, [R6,#4]
0x7d0b0 B               loc_7D0F4
0x7d0b2 MOVS            R1, R5
0x7d0b4 MOVS            R0, R4
0x7d0b6 BL              sub_8070E
0x7d0ba MOVS            R4, R0
0x7d0bc ADDS            R4, #1
0x7d0be MOVS            R1, R4
0x7d0c0 LDR             R0, [SP,#8+var_4]
0x7d0c2 BL              sub_8070E
0x7d0c6 MOVS            R1, R4
0x7d0c8 MOVS            R5, R0
0x7d0ca LDR             R0, [SP,#8+var_8]
0x7d0cc BL              sub_8070E
0x7d0d0 SUBS            R5, R5, R0
0x7d0d2 LSLS            R5, R5, #0x10
0x7d0d4 LSRS            R5, R5, #0x10
0x7d0d6 MOVS            R3, R5
0x7d0d8 LSLS            R5, R5, #0x10
0x7d0da CMP             R5, #0
0x7d0dc BGE             loc_7D0E0
0x7d0de MOVS            R3, #0
0x7d0e0 LDRH            R2, [R6,#2]
0x7d0e2 LSLS            R3, R3, #0x18
0x7d0e4 LSRS            R3, R3, #0x18
0x7d0e6 ADDS            R2, R3, R2
0x7d0e8 STRH            R2, [R6,#2]
0x7d0ea LDRH            R2, [R6,#4]
0x7d0ec ADDS            R3, R3, R2
0x7d0ee LDR             R2, [SP,#8+var_4]
0x7d0f0 STRH            R3, [R6,#4]
0x7d0f2 STR             R2, [R6,#0x10]
0x7d0f4 ADD             SP, SP, #8
0x7d0f6 POP             {R4-R7}
0x7d0f8 POP             {R0}
0x7d0fa BX              R0