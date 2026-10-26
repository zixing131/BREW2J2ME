0000576c  PUSH            {R0-R11,LR}
00005770  SUB             SP, SP, #0x14
00005774  LDR             R11, [SP,#0x24+arg_0]
00005778  MOV             R0, #1
0000577c  STR             R0, [SP,#0x24+var_1C]
00005780  SUB             R0, R1, #8
00005784  MOV             R10, R1
00005788  MOV             R1, R0,ASR#31
0000578c  ADD             R0, R0, R1,LSR#28
00005790  MOV             R5, R0,ASR#4
00005794  SUB             R0, R2, #8
00005798  MOV             R1, R0,ASR#31
0000579c  ADD             R0, R0, R1,LSR#28
000057a0  MOV             R7, R0,ASR#4
000057a4  SUB             R0, R3, #8
000057a8  MOV             R1, R0,ASR#31
000057ac  ADD             R0, R0, R1,LSR#28
000057b0  MOV             R6, R0,ASR#4
000057b4  SUB             R0, R11, #8
000057b8  MOV             R1, R0,ASR#31
000057bc  ADD             R0, R0, R1,LSR#28
000057c0  MOV             R8, R0,ASR#4
000057c4  SUB             R0, R3, R10
000057c8  LDR             R4, [SP,#0x24+arg_4]
000057cc  MOV             R1, R0,LSL#12
000057d0  MOV             R0, R4
000057d4  MOV             R9, R2
000057d8  BL              sub_104
000057dc  STR             R0, [SP,#0x24+var_20]
000057e0  SUB             R0, R11, R9
000057e4  MOV             R1, R0,LSL#12
000057e8  MOV             R0, R4
000057ec  BL              sub_104
000057f0  MOV             LR, R9,LSL#8
000057f4  ADD             R9, R5, #1
000057f8  STR             R9, [SP,#0x24+var_14]
000057fc  ADD             R9, R7, #1
00005800  STR             R0, [SP,#0x24+var_24]
00005804  ADD             R0, R6, #1
00005808  STR             R9, [SP,#0x24+var_18]
0000580c  MOV             R3, #0
00005810  MOV             R12, R10,LSL#8
00005814  ADD             R11, R8, #1
00005818  B               loc_58D4
0000581c  MOV             R1, R12,ASR#8
00005820  MOV             R2, R1,ASR#31
00005824  ADD             R1, R1, R2,LSR#28
00005828  MOV             R2, LR,ASR#8
0000582c  MOV             R9, R2,ASR#31
00005830  ADD             R2, R2, R9,LSR#28
00005834  LDR             R9, [SP,#0x24+var_20]
00005838  MOV             R1, R1,ASR#4
0000583c  ADD             R12, R12, R9
00005840  LDR             R9, [SP,#0x24+var_24]
00005844  CMP             R1, R5
00005848  ADD             LR, LR, R9
0000584c  LDRNE           R9, [SP,#0x24+var_14]
00005850  MOV             R2, R2,ASR#4
00005854  ADD             R3, R3, #0x10
00005858  CMPNE           R9, R1
0000585c  BNE             loc_5870
00005860  CMP             R2, R7
00005864  LDRNE           R9, [SP,#0x24+var_18]
00005868  CMPNE           R9, R2
0000586c  BEQ             loc_58D4
00005870  CMP             R1, R6
00005874  CMPNE           R0, R1
00005878  BNE             loc_5888
0000587c  CMP             R2, R8
00005880  CMPNE           R11, R2
00005884  BEQ             loc_58D4
00005888  CMP             R1, #0
0000588c  BLT             loc_58D4
00005890  LDR             R9, [SP,#0x24+var_10]
00005894  LDR             R9, [R9,#0x898]
00005898  LDRH            R10, [R9]
0000589c  CMP             R1, R10,LSL#1
000058a0  BGE             loc_58D4
000058a4  CMP             R2, #0
000058a8  BLT             loc_58D4
000058ac  LDRH            R10, [R9,#2]
000058b0  CMP             R2, R10,LSL#1
000058b4  BGE             loc_58D4
000058b8  LDR             R9, [R9,#0x28]
000058bc  LDR             R2, [R9,R2,LSL#2]
000058c0  LDRB            R1, [R2,R1]
000058c4  TST             R1, #6
000058c8  MOVNE           R0, #0
000058cc  STRNE           R0, [SP,#0x24+var_1C]
000058d0  BNE             loc_58DC
000058d4  CMP             R3, R4
000058d8  BLT             loc_581C
000058dc  LDR             R0, [SP,#0x24+var_1C]
000058e0  ADD             SP, SP, #0x24 ; '$'
000058e4  POP             {R4-R11,LR}
000058e8  BX              LR
