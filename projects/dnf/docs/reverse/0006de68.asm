0x6de68 PUSH            {R4-R7,LR}
0x6de6a SUB             SP, SP, #0x58
0x6de6c MOV             R4, SP
0x6de6e LSLS            R2, R1, #0x10
0x6de70 ADDS            R4, #0x2E ; '.'
0x6de72 LSRS            R2, R2, #0x10
0x6de74 LDR             R1, =aDFra; "%d.fra"
0x6de76 LDR             R3, =unk_14032CC
0x6de78 MOVS            R7, R0
0x6de7a MOVS            R0, R4
0x6de7c BL              sub_6EACE
0x6de80 MOVS            R0, R4
0x6de82 BL              sub_6CBE0
0x6de86 STR             R0, [SP,#0x58+var_54]
0x6de88 CMP             R0, #0
0x6de8a BNE             loc_6DE8E
0x6de8c B               loc_6E0AE
0x6de8e MOV             R0, SP
0x6de90 LDR             R5, =unk_140327C
0x6de92 LDR             R1, [SP,#0x58+var_54]
0x6de94 MOVS            R2, #2
0x6de96 ADDS            R0, #0x56 ; 'V'
0x6de98 BL              sub_6EAD2
0x6de9c LDR             R1, [SP,#0x58+var_54]
0x6de9e MOVS            R2, #4
0x6dea0 ADDS            R1, #2
0x6dea2 ADD             R0, SP, #0x58+var_C
0x6dea4 BL              sub_6EAD2
0x6dea8 LDR             R1, [SP,#0x58+var_54]
0x6deaa MOVS            R2, #4
0x6deac ADDS            R1, #6
0x6deae ADD             R0, SP, #0x58+var_8
0x6deb0 BL              sub_6EAD2
0x6deb4 LDR             R3, =unk_14032EC
0x6deb6 LDR             R0, [SP,#0x58+var_C]
0x6deb8 BL              sub_6EACE
0x6debc STR             R0, [SP,#0x58+var_50]
0x6debe LDR             R0, [SP,#0x58+var_54]
0x6dec0 MOVS            R1, #6
0x6dec2 LDR             R3, [SP,#0x58+var_8]
0x6dec4 LDR             R2, [SP,#0x58+var_C]
0x6dec6 STR             R1, [SP,#0x58+var_58]
0x6dec8 LDR             R4, =(sub_692B4+1)
0x6deca LDR             R1, [SP,#0x58+var_50]
0x6decc ADDS            R0, #0xA
0x6dece BL              sub_6EAD0
0x6ded2 LDR             R1, [SP,#0x58+var_50]
0x6ded4 MOVS            R2, #1
0x6ded6 MOVS            R0, R7
0x6ded8 BL              sub_6EAD2
0x6dedc LDR             R4, [SP,#0x58+var_50]
0x6dede ADDS            R4, #1
0x6dee0 MOVS            R1, R4
0x6dee2 ADDS            R0, R7, #1
0x6dee4 MOVS            R2, #1
0x6dee6 BL              sub_6EAD2
0x6deea ADDS            R6, R4, #1
0x6deec MOVS            R1, #0
0x6deee STR             R1, [SP,#0x58+var_4C]
0x6def0 STR             R1, [SP,#0x58+var_3C]
0x6def2 B               loc_6DF1A
0x6def4 ADDS            R0, R7, #4
0x6def6 ADDS            R0, R0, R5
0x6def8 MOVS            R1, R6
0x6defa MOVS            R2, #2
0x6defc LDR             R3, =unk_140327C
0x6defe BL              sub_6EACE
0x6df02 ADDS            R6, #2
0x6df04 ADDS            R4, #1
0x6df06 ADDS            R5, #2
0x6df08 LDRB            R3, [R7,#1]
0x6df0a CMP             R4, R3
0x6df0c BLT             loc_6DEF4
0x6df0e LDR             R2, [SP,#0x58+var_4C]
0x6df10 LDR             R3, [SP,#0x58+var_3C]
0x6df12 ADDS            R2, #1
0x6df14 ADDS            R3, #0x14
0x6df16 STR             R2, [SP,#0x58+var_4C]
0x6df18 STR             R3, [SP,#0x58+var_3C]
0x6df1a LDRB            R3, [R7]
0x6df1c LDR             R1, [SP,#0x58+var_4C]
0x6df1e CMP             R1, R3
0x6df20 BLT             loc_6DF28
0x6df22 MOVS            R2, #0
0x6df24 STR             R2, [SP,#0x58+var_34]
0x6df26 B               loc_6DF56
0x6df28 LDR             R5, [SP,#0x58+var_3C]
0x6df2a MOVS            R4, #0
0x6df2c B               loc_6DF08
0x6df2e MOVS            R3, #0x194
0x6df32 ADDS            R0, R7, R3
0x6df34 ADDS            R0, R0, R5
0x6df36 MOVS            R1, R6
0x6df38 MOVS            R2, #1
0x6df3a LDR             R3, =unk_140327C
0x6df3c BL              sub_6EACE
0x6df40 ADDS            R6, #1
0x6df42 ADDS            R4, #1
0x6df44 ADDS            R5, #2
0x6df46 LDRB            R3, [R7,#1]
0x6df48 CMP             R4, R3
0x6df4a BLT             loc_6DF2E
0x6df4c LDR             R1, [SP,#0x58+var_34]
0x6df4e LDR             R2, [SP,#0x58+var_40]
0x6df50 ADDS            R1, #1
0x6df52 STR             R1, [SP,#0x58+var_34]
0x6df54 ADDS            R2, #0x14
0x6df56 STR             R2, [SP,#0x58+var_40]
0x6df58 LDR             R1, [SP,#0x58+var_34]
0x6df5a LDRB            R3, [R7]
0x6df5c CMP             R1, R3
0x6df5e BGE             loc_6DF66
0x6df60 LDR             R5, [SP,#0x58+var_40]
0x6df62 MOVS            R4, #0
0x6df64 B               loc_6DF46
0x6df66 LDR             R2, =0x326
0x6df68 ADDS            R4, R7, R2
0x6df6a MOVS            R1, R6
0x6df6c MOVS            R2, #1
0x6df6e LDR             R3, =unk_140327C
0x6df70 MOVS            R0, R4
0x6df72 BL              sub_6EACE
0x6df76 LDRB            R3, [R4]
0x6df78 LSLS            R0, R3, #1
0x6df7a ADDS            R0, R0, R3
0x6df7c LSLS            R0, R0, #2
0x6df7e LDR             R3, =unk_14032EC
0x6df80 ADDS            R0, #2
0x6df82 BL              sub_6EACE
0x6df86 MOVS            R3, #0x328
0x6df8a STR             R0, [R7,R3]
0x6df8c MOVS            R3, #0x330
0x6df90 STR             R0, [R7,R3]
0x6df92 LDRB            R3, [R4]
0x6df94 LSLS            R2, R3, #1
0x6df96 ADDS            R2, R2, R3
0x6df98 LSLS            R2, R2, #2
0x6df9a LDR             R3, =unk_140329C
0x6df9c MOVS            R1, #0
0x6df9e BL              sub_6EACE
0x6dfa2 ADDS            R6, #1
0x6dfa4 MOVS            R3, #0
0x6dfa6 STR             R3, [SP,#0x58+var_30]
0x6dfa8 B               loc_6E08C
0x6dfaa MOVS            R5, #0x330
0x6dfae LDR             R1, [SP,#0x58+var_44]
0x6dfb0 LDR             R0, [R7,R5]
0x6dfb2 MOVS            R2, #1
0x6dfb4 ADDS            R0, R1, R0
0x6dfb6 LDR             R3, =unk_140327C
0x6dfb8 MOVS            R1, R6
0x6dfba BL              sub_6EACE
0x6dfbe LDR             R2, [SP,#0x58+var_44]
0x6dfc0 LDR             R4, [R7,R5]
0x6dfc2 ADDS            R4, R2, R4
0x6dfc4 LDRB            R3, [R4]
0x6dfc6 LSLS            R0, R3, #1
0x6dfc8 ADDS            R0, R0, R3
0x6dfca LSLS            R0, R0, #2
0x6dfcc LDR             R3, =unk_14032EC
0x6dfce ADDS            R0, #2
0x6dfd0 BL              sub_6EACE
0x6dfd4 LDR             R1, [SP,#0x58+var_44]
0x6dfd6 LDR             R3, [R7,R5]
0x6dfd8 STR             R0, [R4,#4]
0x6dfda ADDS            R3, R1, R3
0x6dfdc LDR             R0, [R3,#4]
0x6dfde STR             R0, [R3,#8]
0x6dfe0 LDRB            R3, [R3]
0x6dfe2 LSLS            R2, R3, #1
0x6dfe4 ADDS            R2, R2, R3
0x6dfe6 LSLS            R2, R2, #2
0x6dfe8 MOVS            R1, #0
0x6dfea LDR             R3, =unk_140329C
0x6dfec BL              sub_6EACE
0x6dff0 ADDS            R6, #1
0x6dff2 MOVS            R2, #0
0x6dff4 STR             R2, [SP,#0x58+var_38]
0x6dff6 STR             R2, [SP,#0x58+var_48]
0x6dff8 B               loc_6E070
0x6dffa LDR             R0, [R2,#8]
0x6dffc LDR             R3, [SP,#0x58+var_48]
0x6dffe LDR             R4, =unk_140327C
0x6e000 MOVS            R1, R6
0x6e002 ADDS            R0, R3, R0
0x6e004 MOVS            R2, #1
0x6e006 BL              sub_6EAD0
0x6e00a LDR             R1, [SP,#0x58+var_44]
0x6e00c LDR             R3, [R7,R5]
0x6e00e ADDS            R3, R3, R1
0x6e010 LDR             R0, [R3,#8]
0x6e012 LDR             R2, [SP,#0x58+var_48]
0x6e014 ADDS            R0, R2, R0
0x6e016 ADDS            R1, R6, #1
0x6e018 MOVS            R2, #1
0x6e01a ADDS            R0, #1
0x6e01c BL              sub_6EAD0
0x6e020 LDR             R1, [SP,#0x58+var_44]
0x6e022 LDR             R3, [R7,R5]
0x6e024 ADDS            R3, R3, R1
0x6e026 LDR             R0, [R3,#8]
0x6e028 LDR             R2, [SP,#0x58+var_48]
0x6e02a ADDS            R0, R2, R0
0x6e02c ADDS            R1, R6, #2
0x6e02e MOVS            R2, #2
0x6e030 ADDS            R0, #2
0x6e032 BL              sub_6EAD0
0x6e036 LDR             R1, [SP,#0x58+var_44]
0x6e038 LDR             R3, [R7,R5]
0x6e03a ADDS            R3, R3, R1
0x6e03c LDR             R0, [R3,#8]
0x6e03e LDR             R2, [SP,#0x58+var_48]
0x6e040 ADDS            R0, R2, R0
0x6e042 ADDS            R1, R6, #4
0x6e044 MOVS            R2, #2
0x6e046 ADDS            R0, #4
0x6e048 BL              sub_6EAD0
0x6e04c LDR             R1, [SP,#0x58+var_44]
0x6e04e LDR             R3, [R7,R5]
0x6e050 ADDS            R3, R3, R1
0x6e052 LDR             R0, [R3,#8]
0x6e054 LDR             R2, [SP,#0x58+var_48]
0x6e056 ADDS            R0, R2, R0
0x6e058 ADDS            R1, R6, #6
0x6e05a ADDS            R0, #6
0x6e05c MOVS            R2, #1
0x6e05e BL              sub_6EAD0
0x6e062 LDR             R3, [SP,#0x58+var_38]
0x6e064 LDR             R1, [SP,#0x58+var_48]
0x6e066 ADDS            R3, #1
0x6e068 ADDS            R1, #0xC
0x6e06a STR             R3, [SP,#0x58+var_38]
0x6e06c STR             R1, [SP,#0x58+var_48]
0x6e06e ADDS            R6, #7
0x6e070 MOVS            R5, #0x330
0x6e074 LDR             R3, [R7,R5]
0x6e076 LDR             R1, [SP,#0x58+var_44]
0x6e078 ADDS            R2, R1, R3
0x6e07a LDRB            R3, [R2]
0x6e07c LDR             R1, [SP,#0x58+var_38]
0x6e07e CMP             R1, R3
0x6e080 BLT             loc_6DFFA
0x6e082 LDR             R2, [SP,#0x58+var_30]
0x6e084 LDR             R3, [SP,#0x58+var_44]
0x6e086 ADDS            R2, #1
0x6e088 STR             R2, [SP,#0x58+var_30]
0x6e08a ADDS            R3, #0xC
0x6e08c STR             R3, [SP,#0x58+var_44]
0x6e08e LDR             R3, =0x326
0x6e090 LDR             R1, [SP,#0x58+var_30]
0x6e092 LDRB            R3, [R7,R3]
0x6e094 CMP             R1, R3
0x6e096 BLT             loc_6DFAA
0x6e098 LDR             R2, [SP,#0x58+var_50]
0x6e09a CMP             R2, #0
0x6e09c BEQ             loc_6E0A6
0x6e09e MOVS            R0, R2
0x6e0a0 LDR             R3, =unk_14032FC
0x6e0a2 BL              sub_6EACE
0x6e0a6 LDR             R0, [SP,#0x58+var_54]
0x6e0a8 LDR             R3, =unk_14032FC
0x6e0aa BL              sub_6EACE
0x6e0ae ADD             SP, SP, #0x58 ; 'X'
0x6e0b0 POP             {R4-R7}
0x6e0b2 POP             {R0}
0x6e0b4 BX              R0