000153d0  PUSH            {R4-R11,LR}
000153d4  LDR             R11, =(start - 0x153E8)
000153d8  SUB             SP, SP, #0x24
000153dc  MOV             R4, R0
000153e0  ADD             R11, PC, R11; start
000153e4  LDR             R0, [R11,#(dword_8 - 0xC)]
000153e8  ADR             LR, loc_153F4
000153ec  LDR             R0, [R0,#0xC0]
000153f0  BX              R0
000153f4  MOV             R6, R0
000153f8  MOV             R0, R4
000153fc  BL              sub_15A00
00015400  MOV             R0, #0x14
00015404  ADD             R9, R4, #0x100
00015408  STRH            R0, [R9,#0x22]
0001540c  MOV             R5, #0
00015410  ADD             R10, R4, #0xC
00015414  CMP             R5, #3
00015418  BNE             loc_154BC
0001541c  MOV             R3, #0x1F
00015420  STR             R3, [SP,#0x24+var_24]
00015424  LDR             R0, [R6,#0xC]
00015428  ADD             R3, SP, #0x24+var_20
0001542c  LDR             R1, [R0]
00015430  MOV             R2, #8
00015434  LDR             R12, [R1,#0x44]
00015438  MOV             R1, #0
0001543c  MOV             LR, PC
00015440  BX              R12
00015444  CMP             R0, #0
00015448  BEQ             loc_15520
0001544c  LDR             R0, [R11,#(dword_8 - 0xC)]
00015450  ADR             LR, loc_15460
00015454  LDR             R1, [R0,#0x30]
00015458  ADD             R0, SP, #0x24+var_20
0001545c  BX              R1
00015460  CMP             R0, #0x10
00015464  BGE             loc_15520
00015468  LDR             R0, [R11,#(dword_8 - 0xC)]
0001546c  ADR             LR, loc_1547C
00015470  LDR             R1, [R0,#0x30]
00015474  ADD             R0, SP, #0x24+var_20
00015478  BX              R1
0001547c  LDR             R1, [R11,#(dword_8 - 0xC)]
00015480  MOV             R0, R0,LSL#1
00015484  ADD             R0, R0, #4
00015488  LDR             R1, [R1,#0x68]
0001548c  MOV             R7, R0
00015490  MOV             LR, PC
00015494  BX              R1
00015498  STR             R0, [R4,#0xAC]
0001549c  LDR             R1, [R11,#(dword_8 - 0xC)]
000154a0  LDR             R0, [R10,#0xA0]
000154a4  LDR             R3, [R1]
000154a8  ADD             R1, SP, #0x24+var_20
000154ac  MOV             R2, R7
000154b0  MOV             LR, PC
000154b4  BX              R3
000154b8  B               loc_15514
000154bc  ADD             R1, R5, #0x1800
000154c0  ADD             R1, R1, #0x3BC
000154c4  MOV             R8, R1
000154c8  MOV             R3, #0
000154cc  MOV             R2, #0
000154d0  LDR             R0, [R6,#0x28]
000154d4  BL              sub_19618
000154d8  MOV             R7, R0
000154dc  LDR             R0, [R11,#(dword_8 - 0xC)]
000154e0  ADR             LR, loc_154F0
000154e4  LDR             R1, [R0,#0x68]
000154e8  ADD             R0, R7, #4
000154ec  BX              R1
000154f0  ADD             R1, R4, R5,LSL#2
000154f4  STR             R0, [R1,#0xA0]
000154f8  CMP             R0, #0
000154fc  BEQ             loc_15560
00015500  MOV             R2, R0
00015504  LDR             R0, [R6,#0x28]
00015508  MOV             R3, R7
0001550c  MOV             R1, R8
00015510  BL              sub_19618
00015514  MOV             R0, #0
00015518  ADD             R1, R4, R5
0001551c  STRB            R0, [R1,#0x54]
00015520  ADD             R0, R5, #1
00015524  MOV             R5, R0,LSL#16
00015528  LDRH            R0, [R9,#0x22]
0001552c  MOV             R5, R5,ASR#16
00015530  CMP             R0, R5
00015534  BGT             loc_15414
00015538  MOV             R0, #1
0001553c  STRB            R0, [R4,#0x54]
00015540  STRB            R0, [R4,#0x56]
00015544  STRB            R0, [R4,#0x58]
00015548  STRB            R0, [R4,#0x5A]
0001554c  STRB            R0, [R4,#0x5D]
00015550  STRB            R0, [R4,#0x60]
00015554  STRB            R0, [R4,#0x62]
00015558  STRB            R0, [R4,#0x65]
0001555c  STRB            R0, [R4,#0x12C]
00015560  ADD             SP, SP, #0x24 ; '$'
00015564  POP             {R4-R11,LR}
00015568  BX              LR
