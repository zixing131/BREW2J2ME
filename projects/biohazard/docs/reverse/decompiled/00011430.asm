00011430  PUSH            {R0-R11,LR}
00011434  SUB             SP, SP, #0x2C
00011438  LDR             R8, [SP,#0x3C+arg_8]
0001143c  LDR             R9, [SP,#0x3C+arg_10]
00011440  LDR             R10, [SP,#0x3C+arg_4]
00011444  MOV             R7, R0
00011448  LDR             R0, [R0,#0x14]
0001144c  CMP             R0, #0
00011450  MOVEQ           R0, #7
00011454  BEQ             loc_11650
00011458  AND             R0, R8, #1
0001145c  STR             R0, [SP,#0x3C+var_2C]
00011460  LDR             R0, [SP,#0x3C+arg_0]
00011464  MOV             R3, #0
00011468  SUB             R0, R0, R10,LSL#1
0001146c  SUB             R0, R0, #1
00011470  MOV             R0, R0,LSL#16
00011474  MOV             R0, R0,ASR#16
00011478  STMEA           SP, {R0,R8,R9}
0001147c  LDR             R1, [SP,#0x3C+var_8]
00011480  STR             R3, [SP,#0x3C+var_30]
00011484  ADD             R0, R1, R10
00011488  STR             R0, [SP,#0x3C+var_14]
0001148c  ADD             R0, R0, #1
00011490  MOV             R2, R0,LSL#16
00011494  MOV             R2, R2,ASR#16
00011498  MOV             R0, R7
0001149c  LDR             R1, [SP,#0x3C+var_C]
000114a0  LDR             R3, [SP,#0x3C+var_4]
000114a4  BL              sub_10C58
000114a8  MOV             R0, #3
000114ac  SUB             R0, R0, R10,LSL#1
000114b0  MOV             R6, R0,LSL#16
000114b4  LDR             R0, [SP,#0x3C+arg_0]
000114b8  LDR             R1, [SP,#0x3C+var_8]
000114bc  MOV             R5, R10,LSL#16
000114c0  ADD             R0, R1, R0
000114c4  SUB             R0, R0, R10
000114c8  STR             R0, [SP,#0x3C+var_18]
000114cc  LDR             R0, [SP,#0x3C+var_C]
000114d0  MOV             R5, R5,ASR#16
000114d4  ADD             R0, R0, R10
000114d8  STR             R0, [SP,#0x3C+var_1C]
000114dc  LDR             R0, [SP,#0x3C+var_4]
000114e0  MOV             R6, R6,ASR#16
000114e4  SUB             R0, R0, R10,LSL#1
000114e8  STR             R0, [SP,#0x3C+var_20]
000114ec  MOV             R4, #0
000114f0  B               loc_11618
000114f4  STMEA           SP, {R8,R9}
000114f8  LDR             R0, [SP,#0x3C+var_20]
000114fc  ADD             R0, R0, R5,LSL#1
00011500  MOV             R0, R0,LSL#16
00011504  MOV             R0, R0,ASR#16
00011508  STR             R0, [SP,#0x3C+var_24]
0001150c  LDR             R0, [SP,#0x3C+var_14]
00011510  LDR             R3, [SP,#0x3C+var_24]
00011514  SUB             R0, R0, R4
00011518  MOV             R2, R0,LSL#16
0001151c  LDR             R0, [SP,#0x3C+var_1C]
00011520  MOV             R2, R2,ASR#16
00011524  SUB             R0, R0, R5
00011528  MOV             R11, R0,LSL#16
0001152c  MOV             R11, R11,ASR#16
00011530  MOV             R1, R11
00011534  MOV             R0, R7
00011538  BL              sub_109D0
0001153c  STMEA           SP, {R8,R9}
00011540  LDR             R0, [SP,#0x3C+var_18]
00011544  LDR             R3, [SP,#0x3C+var_24]
00011548  ADD             R0, R0, R4
0001154c  MOV             R2, R0,LSL#16
00011550  MOV             R2, R2,ASR#16
00011554  MOV             R0, R7
00011558  MOV             R1, R11
0001155c  BL              sub_109D0
00011560  CMP             R6, #0
00011564  ADDLT           R0, R6, R4,LSL#2
00011568  ADDLT           R0, R0, #6
0001156c  MOVLT           R6, R0,LSL#16
00011570  MOVLT           R6, R6,ASR#16
00011574  BLT             loc_1160C
00011578  SUB             R0, R4, R5
0001157c  ADD             R0, R6, R0,LSL#2
00011580  ADD             R0, R0, #0xA
00011584  MOV             R6, R0,LSL#16
00011588  MOV             R6, R6,ASR#16
0001158c  CMP             R4, R5
00011590  BGE             loc_11600
00011594  STMEA           SP, {R8,R9}
00011598  LDR             R0, [SP,#0x3C+var_20]
0001159c  ADD             R0, R0, R4,LSL#1
000115a0  MOV             R0, R0,LSL#16
000115a4  MOV             R0, R0,ASR#16
000115a8  STR             R0, [SP,#0x3C+var_28]
000115ac  LDR             R0, [SP,#0x3C+var_14]
000115b0  LDR             R3, [SP,#0x3C+var_28]
000115b4  SUB             R0, R0, R5
000115b8  MOV             R2, R0,LSL#16
000115bc  LDR             R0, [SP,#0x3C+var_1C]
000115c0  MOV             R2, R2,ASR#16
000115c4  SUB             R0, R0, R4
000115c8  MOV             R11, R0,LSL#16
000115cc  MOV             R11, R11,ASR#16
000115d0  MOV             R1, R11
000115d4  MOV             R0, R7
000115d8  BL              sub_109D0
000115dc  STMEA           SP, {R8,R9}
000115e0  LDR             R0, [SP,#0x3C+var_18]
000115e4  LDR             R3, [SP,#0x3C+var_28]
000115e8  ADD             R0, R0, R5
000115ec  MOV             R2, R0,LSL#16
000115f0  MOV             R2, R2,ASR#16
000115f4  MOV             R0, R7
000115f8  MOV             R1, R11
000115fc  BL              sub_109D0
00011600  SUB             R0, R5, #1
00011604  MOV             R5, R0,LSL#16
00011608  MOV             R5, R5,ASR#16
0001160c  ADD             R0, R4, #1
00011610  MOV             R4, R0,LSL#16
00011614  MOV             R4, R4,ASR#16
00011618  CMP             R4, R5
0001161c  BLE             loc_114F4
00011620  LDR             R0, [SP,#0x3C+var_2C]
00011624  CMP             R0, #0
00011628  BEQ             loc_1164C
0001162c  LDR             R1, [SP,#0x3C+arg_0]
00011630  LDR             R3, [SP,#0x3C+arg_C]
00011634  STMEA           SP, {R1,R10}
00011638  STR             R3, [SP,#0x3C+var_34]
0001163c  ADD             R3, SP, #0x3C+var_C
00011640  LDM             R3, {R1-R3}
00011644  MOV             R0, R7
00011648  BL              sub_B6F0
0001164c  MOV             R0, #0
00011650  ADD             SP, SP, #0x3C ; '<'
00011654  POP             {R4-R11,LR}
00011658  BX              LR
