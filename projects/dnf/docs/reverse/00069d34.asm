0x69d34 PUSH            {R4-R7,LR}
0x69d36 SUB             SP, SP, #0x10
0x69d38 STR             R0, [SP,#0x10+var_10]
0x69d3a LDRH            R3, [R1,#4]
0x69d3c MULS            R3, R2
0x69d3e LDR             R4, [R0]
0x69d40 STRH            R3, [R4,#4]
0x69d42 LDRH            R3, [R1,#6]
0x69d44 MULS            R3, R2
0x69d46 STRH            R3, [R4,#6]
0x69d48 MOVS            R0, #0
0x69d4a LDRSH           R3, [R1,R0]
0x69d4c MULS            R3, R2
0x69d4e STRH            R3, [R4]
0x69d50 MOVS            R5, R2
0x69d52 MOVS            R2, #2
0x69d54 LDRSH           R3, [R1,R2]
0x69d56 MULS            R3, R5
0x69d58 LDRH            R2, [R4,#4]
0x69d5a STRH            R3, [R4,#2]
0x69d5c LDRH            R3, [R4,#6]
0x69d5e MOVS            R7, R3
0x69d60 MULS            R7, R2
0x69d62 LDR             R3, =unk_14032EC
0x69d64 ADDS            R0, R7, #2
0x69d66 MOVS            R6, R1
0x69d68 BL              sub_6BB36
0x69d6c STR             R0, [R4,#8]
0x69d6e LDR             R0, [SP,#0x10+var_10]
0x69d70 LDR             R3, [R0]
0x69d72 LDR             R0, [R3,#8]
0x69d74 CMP             R0, #0
0x69d76 BEQ             loc_69DEE
0x69d78 STR             R0, [R3,#0xC]
0x69d7a MOVS            R2, R7
0x69d7c LDR             R3, =unk_140329C
0x69d7e MOVS            R1, #0
0x69d80 BL              sub_6BB36
0x69d84 LDR             R0, [SP,#0x10+var_10]
0x69d86 LDR             R3, [R0]
0x69d88 LDR             R2, [R6,#0xC]
0x69d8a LDR             R3, [R3,#0xC]
0x69d8c STR             R2, [SP,#0x10+var_8]
0x69d8e MOVS            R2, #0
0x69d90 STR             R3, [SP,#0x10+var_4]
0x69d92 STR             R2, [SP,#0x10+var_C]
0x69d94 B               loc_69DE0
0x69d96 LDR             R0, [SP,#0x10+var_8]
0x69d98 LDRB            R3, [R0]
0x69d9a STRB            R3, [R2,R4]
0x69d9c ADDS            R2, #1
0x69d9e CMP             R2, R5
0x69da0 BNE             loc_69D96
0x69da2 LDR             R2, [SP,#0x10+var_8]
0x69da4 ADDS            R2, #1
0x69da6 STR             R2, [SP,#0x10+var_8]
0x69da8 ADDS            R4, R4, R5
0x69daa ADDS            R1, #1
0x69dac LDRH            R3, [R6,#4]
0x69dae CMP             R1, R3
0x69db0 BCC             loc_69DB6
0x69db2 MOVS            R7, #0
0x69db4 B               loc_69DD2
0x69db6 MOVS            R2, #0
0x69db8 B               loc_69D9E
0x69dba LDR             R0, [SP,#0x10+var_10]
0x69dbc LDR             R3, [R0]
0x69dbe LDR             R1, [SP,#0x10+var_4]
0x69dc0 LDRH            R2, [R3,#4]
0x69dc2 MOVS            R0, R4
0x69dc4 LDR             R3, =unk_140327C
0x69dc6 BL              sub_6BB36
0x69dca LDR             R2, [SP,#0x10+var_10]
0x69dcc LDR             R3, [R2]
0x69dce LDRH            R3, [R3,#4]
0x69dd0 ADDS            R4, R4, R3
0x69dd2 ADDS            R7, #1
0x69dd4 CMP             R7, R5
0x69dd6 BNE             loc_69DBA
0x69dd8 LDR             R3, [SP,#0x10+var_C]
0x69dda ADDS            R3, #1
0x69ddc STR             R3, [SP,#0x10+var_C]
0x69dde STR             R4, [SP,#0x10+var_4]
0x69de0 LDRH            R3, [R6,#6]
0x69de2 LDR             R0, [SP,#0x10+var_C]
0x69de4 CMP             R0, R3
0x69de6 BCS             loc_69DEE
0x69de8 LDR             R4, [SP,#0x10+var_4]
0x69dea MOVS            R1, #0
0x69dec B               loc_69DAC
0x69dee ADD             SP, SP, #0x10
0x69df0 POP             {R4-R7}
0x69df2 POP             {R0}
0x69df4 BX              R0