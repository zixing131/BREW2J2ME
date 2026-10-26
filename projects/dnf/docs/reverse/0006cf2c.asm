0x6cf2c PUSH            {R4-R7,LR}
0x6cf2e SUB             SP, SP, #0x50
0x6cf30 MOV             R3, SP
0x6cf32 MOVS            R1, #0
0x6cf34 ADDS            R3, #0x4F ; 'O'
0x6cf36 MOV             R4, SP
0x6cf38 STRB            R1, [R3]
0x6cf3a LSLS            R2, R0, #0x18
0x6cf3c SUBS            R3, #1
0x6cf3e ADDS            R4, #0x26 ; '&'
0x6cf40 STRB            R1, [R3]
0x6cf42 LSRS            R2, R2, #0x18
0x6cf44 LDR             R1, =aDEtc; "%d.etc"
0x6cf46 LDR             R3, =unk_14032CC
0x6cf48 MOVS            R0, R4
0x6cf4a BL              sub_6EACE
0x6cf4e MOVS            R0, R4
0x6cf50 BL              sub_6CBE0
0x6cf54 STR             R0, [SP,#0x50+var_40]
0x6cf56 CMP             R0, #0
0x6cf58 BNE             loc_6CF5C
0x6cf5a B               loc_6D0C2
0x6cf5c LDR             R4, =unk_140327C
0x6cf5e LDR             R1, [SP,#0x50+var_40]
0x6cf60 MOVS            R2, #2
0x6cf62 ADD             R0, SP, #0x50+var_4
0x6cf64 BL              sub_6EAD0
0x6cf68 LDR             R1, [SP,#0x50+var_40]
0x6cf6a MOVS            R2, #4
0x6cf6c ADDS            R1, #2
0x6cf6e ADD             R0, SP, #0x50+var_C
0x6cf70 BL              sub_6EAD0
0x6cf74 LDR             R1, [SP,#0x50+var_40]
0x6cf76 MOVS            R2, #4
0x6cf78 ADDS            R1, #6
0x6cf7a ADD             R0, SP, #0x50+var_8
0x6cf7c BL              sub_6EAD0
0x6cf80 LDR             R3, =unk_14032EC
0x6cf82 LDR             R0, [SP,#0x50+var_C]
0x6cf84 BL              sub_6EACE
0x6cf88 STR             R0, [SP,#0x50+var_3C]
0x6cf8a MOVS            R5, R0
0x6cf8c LDR             R0, [SP,#0x50+var_40]
0x6cf8e MOVS            R1, #6
0x6cf90 LDR             R2, [SP,#0x50+var_C]
0x6cf92 STR             R1, [SP,#0x50+var_50]
0x6cf94 ADDS            R0, #0xA
0x6cf96 LDR             R3, [SP,#0x50+var_8]
0x6cf98 MOVS            R1, R5
0x6cf9a LDR             R4, =(sub_692B4+1)
0x6cf9c BL              sub_6EAD0
0x6cfa0 MOVS            R2, #0
0x6cfa2 STR             R2, [SP,#0x50+var_38]
0x6cfa4 STR             R2, [SP,#0x50+var_4C]
0x6cfa6 MOV             R7, SP
0x6cfa8 ADDS            R7, #0x4E ; 'N'
0x6cfaa MOVS            R1, R5
0x6cfac MOVS            R0, R7
0x6cfae MOVS            R2, #1
0x6cfb0 LDR             R3, =unk_140327C
0x6cfb2 BL              sub_6EACE
0x6cfb6 LDRB            R6, [R7]
0x6cfb8 ADDS            R5, #1
0x6cfba CMP             R6, #0
0x6cfbc BEQ             loc_6D09A
0x6cfbe LDR             R3, =dword_1501D90
0x6cfc0 LSLS            R6, R6, #3
0x6cfc2 LDR             R4, [R3]
0x6cfc4 STR             R3, [SP,#0x50+var_44]
0x6cfc6 ADDS            R0, R6, #2
0x6cfc8 LDR             R3, =unk_14032EC
0x6cfca BL              sub_6EACE
0x6cfce LDR             R2, [SP,#0x50+var_4C]
0x6cfd0 ADDS            R4, R2, R4
0x6cfd2 LDR             R2, [SP,#0x50+var_44]
0x6cfd4 LDR             R3, [R2]
0x6cfd6 LDR             R2, [SP,#0x50+var_4C]
0x6cfd8 ADDS            R4, #0xFC
0x6cfda STR             R0, [R4,#0xC]
0x6cfdc ADDS            R3, R2, R3
0x6cfde ADDS            R3, #0xFC
0x6cfe0 LDR             R0, [R3,#0xC]
0x6cfe2 MOVS            R2, R6
0x6cfe4 STR             R0, [R3,#0x10]
0x6cfe6 MOVS            R1, #0
0x6cfe8 LDR             R3, =unk_140329C
0x6cfea BL              sub_6EACE
0x6cfee LDR             R2, [SP,#0x50+var_44]
0x6cff0 LDR             R3, [R2]
0x6cff2 LDR             R2, [SP,#0x50+var_4C]
0x6cff4 ADDS            R3, R2, R3
0x6cff6 MOVS            R2, #0x104
0x6cffa ADDS            R3, R3, R2
0x6cffc LDRB            R2, [R7]
0x6cffe STRB            R2, [R3]
0x6d000 MOVS            R3, #0
0x6d002 B               loc_6D082
0x6d004 LDR             R3, =unk_140327C
0x6d006 MOV             R0, SP
0x6d008 MOVS            R1, R5
0x6d00a MOVS            R2, #1
0x6d00c STR             R3, [SP,#0x50+var_48]
0x6d00e ADDS            R0, #0x4F ; 'O'
0x6d010 BL              sub_6EACE
0x6d014 LDR             R2, [SP,#0x50+var_34]
0x6d016 LDR             R3, [R7]
0x6d018 LSLS            R6, R2, #3
0x6d01a LDR             R2, [SP,#0x50+var_4C]
0x6d01c ADDS            R3, R2, R3
0x6d01e ADDS            R5, #1
0x6d020 ADDS            R3, #0xFC
0x6d022 STR             R5, [SP,#0x50+var_30]
0x6d024 LDR             R4, [R3,#0x10]
0x6d026 MOVS            R3, #0x4F ; 'O'
0x6d028 ADD             R3, SP
0x6d02a LDRB            R0, [R3]
0x6d02c LDR             R3, =unk_14032EC
0x6d02e ADDS            R0, #1
0x6d030 BL              sub_6EACE
0x6d034 LDR             R2, [SP,#0x50+var_4C]
0x6d036 LDR             R3, [R7]
0x6d038 ADDS            R3, R2, R3
0x6d03a ADDS            R3, #0xFC
0x6d03c LDR             R3, [R3,#0x10]
0x6d03e ADDS            R4, R6, R4
0x6d040 STR             R0, [R4]
0x6d042 ADDS            R3, R6, R3
0x6d044 LDR             R0, [R3]
0x6d046 STR             R0, [R3,#4]
0x6d048 MOVS            R3, #0x4F ; 'O'
0x6d04a ADD             R3, SP
0x6d04c LDRB            R2, [R3]
0x6d04e MOVS            R1, #0
0x6d050 ADDS            R2, #1
0x6d052 LDR             R3, =unk_140329C
0x6d054 BL              sub_6EACE
0x6d058 LDR             R2, [SP,#0x50+var_4C]
0x6d05a LDR             R3, [R7]
0x6d05c ADDS            R3, R2, R3
0x6d05e ADDS            R3, #0xFC
0x6d060 LDR             R3, [R3,#0x10]
0x6d062 ADDS            R3, R3, R6
0x6d064 LDR             R0, [R3,#4]
0x6d066 MOVS            R3, #0x4F ; 'O'
0x6d068 ADD             R3, SP
0x6d06a LDRB            R2, [R3]
0x6d06c LDR             R1, [SP,#0x50+var_30]
0x6d06e LDR             R3, [SP,#0x50+var_48]
0x6d070 BL              sub_6EACE
0x6d074 MOVS            R2, #0x4F ; 'O'
0x6d076 ADD             R2, SP
0x6d078 LDRB            R3, [R2]
0x6d07a LDR             R2, [SP,#0x50+var_30]
0x6d07c ADDS            R5, R2, R3
0x6d07e LDR             R3, [SP,#0x50+var_34]
0x6d080 ADDS            R3, #1
0x6d082 LDR             R7, =dword_1501D90
0x6d084 STR             R3, [SP,#0x50+var_34]
0x6d086 LDR             R2, [SP,#0x50+var_4C]
0x6d088 LDR             R3, [R7]
0x6d08a ADDS            R3, R2, R3
0x6d08c MOVS            R2, #0x104
0x6d090 ADDS            R3, R3, R2
0x6d092 LDRB            R3, [R3]
0x6d094 LDR             R2, [SP,#0x50+var_34]
0x6d096 CMP             R2, R3
0x6d098 BLT             loc_6D004
0x6d09a LDR             R3, [SP,#0x50+var_38]
0x6d09c LDR             R2, [SP,#0x50+var_4C]
0x6d09e ADDS            R3, #1
0x6d0a0 ADDS            R2, #0xC
0x6d0a2 STR             R3, [SP,#0x50+var_38]
0x6d0a4 STR             R2, [SP,#0x50+var_4C]
0x6d0a6 CMP             R3, #0x14
0x6d0a8 BEQ             loc_6D0AC
0x6d0aa B               loc_6CFA6
0x6d0ac LDR             R3, [SP,#0x50+var_3C]
0x6d0ae CMP             R3, #0
0x6d0b0 BEQ             loc_6D0BA
0x6d0b2 MOVS            R0, R3
0x6d0b4 LDR             R3, =unk_14032FC
0x6d0b6 BL              sub_6EACE
0x6d0ba LDR             R0, [SP,#0x50+var_40]
0x6d0bc LDR             R3, =unk_14032FC
0x6d0be BL              sub_6EACE
0x6d0c2 ADD             SP, SP, #0x50 ; 'P'
0x6d0c4 POP             {R4-R7}
0x6d0c6 POP             {R0}
0x6d0c8 BX              R0