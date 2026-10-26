00024d7c  PUSH            {R4-R7,LR}
00024d80  MOV             R4, R0
00024d84  LDR             R0, =(start - 0x24D94)
00024d88  SUB             SP, SP, #0x1C
00024d8c  ADD             R0, PC, R0; start
00024d90  LDR             R0, [R0,#(dword_8 - 0xC)]
00024d94  ADR             LR, loc_24DA0
00024d98  LDR             R0, [R0,#0xC0]
00024d9c  BX              R0
00024da0  MOV             R5, R0
00024da4  LDR             R0, [R4]
00024da8  LDR             R1, [R4,#0xC]
00024dac  LDR             R0, [R0,#8]
00024db0  ADD             R1, R1, R1,LSL#2
00024db4  ADD             R0, R0, R1,LSL#2
00024db8  LDRH            R1, [R0]
00024dbc  ADD             R2, R4, #0x12
00024dc0  MOV             R6, R2
00024dc4  LDR             R0, [R5,#0x28]
00024dc8  MOV             R3, #0x20 ; ' '
00024dcc  BL              sub_19618
00024dd0  MOV             R7, #1
00024dd4  STR             R7, [SP,#0x1C+var_1C]
00024dd8  LDR             R0, [R4,#0xC]
00024ddc  ADD             R0, R0, #0x1F4
00024de0  STMFA           SP, {R0,R6}
00024de4  MOV             R0, #0
00024de8  STR             R0, [SP,#0x1C+var_10]
00024dec  MOV             R0, #0x64 ; 'd'
00024df0  STR             R0, [SP,#0x1C+var_C]
00024df4  LDR             R0, =0x2179780
00024df8  STR             R0, [SP,#0x1C+var_8]
00024dfc  ADD             R0, R5, #0x400
00024e00  ADD             R0, R0, #0x338
00024e04  STR             R0, [SP,#0x1C+var_4]
00024e08  LDR             R0, =(sub_153C - 0x24E14)
00024e0c  ADD             R0, PC, R0; sub_153C
00024e10  STR             R0, [R4,#0x13C]
00024e14  STR             R4, [R4,#0x140]
00024e18  LDR             R0, [R5,#0x734]
00024e1c  ADD             R3, R4, #0x148
00024e20  ADD             R2, R4, #0x12C
00024e24  MOV             R1, SP
00024e28  BL              sub_14BDC
00024e2c  STRB            R7, [R5,#0x758]
00024e30  ADD             SP, SP, #0x1C
00024e34  POP             {R4-R7,LR}
00024e38  BX              LR
