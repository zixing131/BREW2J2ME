00021584  PUSH            {R0-R11,LR}
00021588  SUB             SP, SP, #0xC
0002158c  LDR             R0, [SP,#0x1C+var_C]
00021590  ADD             R8, SP, #0x1C+arg_4
00021594  ADD             R9, SP, #0x1C+arg_C
00021598  LDM             R9, {R7,R9}
0002159c  LDM             R8, {R6,R8}
000215a0  LDRSH           R4, [R0]
000215a4  LDR             R0, [SP,#0x1C+var_8]
000215a8  ADD             R3, SP, #0x1C+var_18
000215ac  LDRSH           R5, [R0]
000215b0  LDR             R0, [SP,#0x1C+var_4]
000215b4  SUB             R2, R4, R6
000215b8  LDRSH           R1, [R0]
000215bc  LDR             R0, [SP,#0x1C+arg_0]
000215c0  LDRSH           R0, [R0]
000215c4  STR             R3, [SP,#0x1C+var_1C]
000215c8  SUB             R10, R1, R4
000215cc  SUB             R11, R0, R5
000215d0  MOV             R0, #0
000215d4  STR             R0, [SP,#0x1C+var_14]
000215d8  MOV             R0, #0x10000
000215dc  STR             R0, [SP,#0x1C+var_18]
000215e0  LDR             R0, [SP,#0x1C+var_10]
000215e4  RSB             R1, R10, #0
000215e8  ADD             R3, SP, #0x1C+var_14
000215ec  BL              sub_21508
000215f0  CMP             R0, #0
000215f4  BEQ             loc_21714
000215f8  ADD             R3, SP, #0x1C+var_18
000215fc  STR             R3, [SP,#0x1C+var_1C]
00021600  ADD             R3, SP, #0x1C+var_14
00021604  SUB             R2, R8, R4
00021608  MOV             R1, R10
0002160c  LDR             R0, [SP,#0x1C+var_10]
00021610  BL              sub_21508
00021614  CMP             R0, #0
00021618  BEQ             loc_21714
0002161c  ADD             R3, SP, #0x1C+var_18
00021620  STR             R3, [SP,#0x1C+var_1C]
00021624  ADD             R3, SP, #0x1C+var_14
00021628  SUB             R2, R5, R7
0002162c  RSB             R1, R11, #0
00021630  LDR             R0, [SP,#0x1C+var_10]
00021634  BL              sub_21508
00021638  CMP             R0, #0
0002163c  BEQ             loc_21714
00021640  ADD             R3, SP, #0x1C+var_18
00021644  STR             R3, [SP,#0x1C+var_1C]
00021648  ADD             R3, SP, #0x1C+var_14
0002164c  SUB             R2, R9, R5
00021650  MOV             R1, R11
00021654  LDR             R0, [SP,#0x1C+var_10]
00021658  BL              sub_21508
0002165c  CMP             R0, #0
00021660  BEQ             loc_21714
00021664  LDR             R1, [SP,#0x1C+var_18]
00021668  MUL             R0, R1, R10
0002166c  MUL             R2, R1, R11
00021670  ADD             R1, R5, R2,ASR#16
00021674  LDR             R2, [SP,#0x1C+var_14]
00021678  ADD             R0, R4, R0,ASR#16
0002167c  MUL             R3, R2, R10
00021680  ADD             R3, R4, R3,ASR#16
00021684  MUL             R12, R2, R11
00021688  ADD             R2, R5, R12,ASR#16
0002168c  CMP             R3, R6
00021690  MOVLT           R3, R6
00021694  SUB             R12, R8, #1
00021698  BLT             loc_216A4
0002169c  CMP             R3, R8
000216a0  MOVGE           R3, R12
000216a4  CMP             R0, R6
000216a8  MOVLT           R0, R6
000216ac  BLT             loc_216B8
000216b0  CMP             R0, R8
000216b4  MOVGE           R0, R12
000216b8  CMP             R2, R7
000216bc  MOVLT           R2, R7
000216c0  SUB             R12, R9, #1
000216c4  BLT             loc_216D0
000216c8  CMP             R2, R9
000216cc  MOVGE           R2, R12
000216d0  CMP             R1, R7
000216d4  MOVLT           R1, R7
000216d8  BLT             loc_216E4
000216dc  CMP             R1, R9
000216e0  MOVGE           R1, R12
000216e4  LDR             R12, [SP,#0x1C+var_C]
000216e8  STRH            R3, [R12]
000216ec  LDR             R3, [SP,#0x1C+var_8]
000216f0  STRH            R2, [R3]
000216f4  LDR             R2, [SP,#0x1C+var_4]
000216f8  STRH            R0, [R2]
000216fc  LDR             R0, [SP,#0x1C+arg_0]
00021700  STRH            R1, [R0]
00021704  MOV             R0, #1
00021708  ADD             SP, SP, #0x1C
0002170c  POP             {R4-R11,LR}
00021710  BX              LR
00021714  MOV             R0, #0
00021718  B               loc_21708
