0x67fa0 PUSH            {R4-R7,LR}
0x67fa2 MOVS            R5, R1
0x67fa4 MOVS            R1, R2
0x67fa6 LDR             R2, [R5,#8]
0x67fa8 SUB             SP, SP, #0x38
0x67faa MOVS            R7, R0
0x67fac STR             R2, [SP,#0x38+var_20]
0x67fae MOVS            R0, R3
0x67fb0 CMP             R2, #0
0x67fb2 BLE             loc_68082
0x67fb4 LDR             R3, [R5,#0xC]
0x67fb6 STR             R3, [SP,#0x38+var_24]
0x67fb8 CMP             R3, #0
0x67fba BLE             loc_68082
0x67fbc LDR             R3, [R7,#0x18]
0x67fbe LDR             R2, [R5]
0x67fc0 ADDS            R2, R2, R3
0x67fc2 STR             R2, [R5]
0x67fc4 LDR             R3, [R7,#0x1C]
0x67fc6 MOV             R12, R2
0x67fc8 LDR             R2, [R5,#4]
0x67fca ADDS            R6, R2, R3
0x67fcc STR             R6, [R5,#4]
0x67fce LDR             R4, [R7]
0x67fd0 LDR             R2, [R7,#0x14]
0x67fd2 STR             R7, [SP,#0x38+var_8]
0x67fd4 STR             R1, [SP,#0x38+var_4]
0x67fd6 STR             R4, [SP,#0x38+var_1C]
0x67fd8 STR             R2, [SP,#0x38+var_18]
0x67fda LDRB            R3, [R1,#8]
0x67fdc STR             R3, [SP,#0x38+var_28]
0x67fde LSLS            R3, R3, #0x1F
0x67fe0 BMI             loc_68038
0x67fe2 LDR             R4, [R1]
0x67fe4 STR             R4, [SP,#0x38+var_30]
0x67fe6 LDRH            R2, [R4,#4]
0x67fe8 STR             R2, [SP,#0x38+var_14]
0x67fea MOVS            R4, #0xC
0x67fec LDRSH           R3, [R1,R4]
0x67fee MOVS            R4, R3
0x67ff0 MULS            R4, R2
0x67ff2 LDR             R3, [SP,#0x38+var_30]
0x67ff4 LDR             R2, [R3,#0xC]
0x67ff6 ADDS            R2, R4, R2
0x67ff8 STR             R2, [SP,#0x38+var_2C]
0x67ffa MOVS            R4, #0xA
0x67ffc LDRSH           R2, [R1,R4]
0x67ffe LDR             R1, [SP,#0x38+var_2C]
0x68000 ADDS            R2, R1, R2
0x68002 STR             R2, [SP,#0x38+var_10]
0x68004 LDR             R2, [SP,#0x38+var_28]
0x68006 LSLS            R2, R2, #0x1E
0x68008 BPL             loc_68038
0x6800a CMP             R0, #0
0x6800c BNE             loc_68012
0x6800e LDR             R3, =0x684D9
0x68010 B               loc_68036
0x68012 CMP             R0, #1
0x68014 BNE             loc_6801C
0x68016 LDR             R4, =0x6850D
0x68018 STR             R4, [SP,#0x38+var_C]
0x6801a B               loc_68038
0x6801c CMP             R0, #2
0x6801e BNE             loc_68026
0x68020 LDR             R1, =0x68635
0x68022 STR             R1, [SP,#0x38+var_C]
0x68024 B               loc_68038
0x68026 CMP             R0, #3
0x68028 BNE             loc_68030
0x6802a LDR             R2, =0x6872D
0x6802c STR             R2, [SP,#0x38+var_C]
0x6802e B               loc_68038
0x68030 CMP             R0, #4
0x68032 BNE             loc_68038
0x68034 LDR             R3, =0x687E1
0x68036 STR             R3, [SP,#0x38+var_C]
0x68038 LDR             R4, [SP,#0x38+var_24]
0x6803a LDR             R1, [SP,#0x38+var_18]
0x6803c ADDS            R2, R6, R4
0x6803e SUBS            R2, #1
0x68040 MULS            R2, R1
0x68042 LDR             R3, [SP,#0x38+var_20]
0x68044 ADD             R3, R12
0x68046 LSLS            R3, R3, #1
0x68048 ADDS            R3, R3, R2
0x6804a LDR             R2, [SP,#0x38+var_1C]
0x6804c MOVS            R6, #0
0x6804e ADDS            R3, R2, R3
0x68050 STR             R3, [SP,#0x38+var_28]
0x68052 B               loc_6807C
0x68054 LDR             R3, [SP,#0x38+arg_0]
0x68056 LDR             R4, [SP,#0x38+arg_4]
0x68058 LDR             R1, [R5,#8]
0x6805a STR             R3, [SP,#0x38+var_38]
0x6805c STR             R4, [SP,#0x38+var_34]
0x6805e LDR             R2, [SP,#0x38+var_28]
0x68060 LDR             R3, [SP,#0x38+var_10]
0x68062 ADD             R0, SP, #0x38+var_8
0x68064 LDR             R4, [SP,#0x38+var_C]
0x68066 BL              sub_68DD0
0x6806a LDR             R3, [R7,#0x14]
0x6806c LDR             R1, [SP,#0x38+var_28]
0x6806e LDR             R2, [SP,#0x38+var_10]
0x68070 SUBS            R1, R1, R3
0x68072 LDR             R3, [SP,#0x38+var_14]
0x68074 ADDS            R2, R2, R3
0x68076 STR             R1, [SP,#0x38+var_28]
0x68078 STR             R2, [SP,#0x38+var_10]
0x6807a ADDS            R6, #1
0x6807c LDR             R3, [R5,#0xC]
0x6807e CMP             R6, R3
0x68080 BLT             loc_68054
0x68082 ADD             SP, SP, #0x38 ; '8'
0x68084 POP             {R4-R7}
0x68086 POP             {R0}
0x68088 BX              R0