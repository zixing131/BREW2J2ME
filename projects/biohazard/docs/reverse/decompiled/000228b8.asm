000228b8  PUSH            {R4-R8,LR}
000228bc  MOV             R4, R0
000228c0  LDR             R0, [R0,#0x38]
000228c4  CMP             R0, #0
000228c8  BEQ             loc_229B0
000228cc  LDRH            R1, [R0,#8]
000228d0  LDR             R7, =(start - 0x228DC)
000228d4  ADD             R7, PC, R7; start
000228d8  MOV             R8, #0
000228dc  CMP             R1, #0
000228e0  BEQ             loc_22998
000228e4  LDR             R0, [R0,#4]
000228e8  CMP             R0, #0
000228ec  BEQ             loc_22908
000228f0  LDR             R1, [R7,#(dword_8 - 0xC)]
000228f4  ADR             LR, loc_22900
000228f8  LDR             R1, [R1,#0x6C]
000228fc  BX              R1
00022900  LDR             R0, [R4,#0x38]
00022904  STR             R8, [R0,#4]
00022908  MOV             R5, #0
0002290c  B               loc_22954
00022910  LDR             R0, [R0]
00022914  ADD             R6, R5, R5,LSL#1
00022918  ADD             R0, R0, R6,LSL#3
0002291c  LDR             R1, [R0,#0xC]
00022920  CMP             R1, #0
00022924  LDRNE           R0, [R0,#0x10]
00022928  CMPNE           R0, #0
0002292c  BEQ             loc_22950
00022930  LDR             R1, [R7,#(dword_8 - 0xC)]
00022934  ADR             LR, loc_22940
00022938  LDR             R1, [R1,#0x6C]
0002293c  BX              R1
00022940  LDR             R0, [R4,#0x38]
00022944  LDR             R0, [R0]
00022948  ADD             R0, R0, R6,LSL#3
0002294c  STR             R8, [R0,#0x10]
00022950  ADD             R5, R5, #1
00022954  LDR             R0, [R4,#0x38]
00022958  LDRH            R1, [R0,#8]
0002295c  CMP             R1, R5
00022960  BGT             loc_22910
00022964  LDR             R0, [R4,#0x38]
00022968  LDR             R0, [R0]
0002296c  CMP             R0, #0
00022970  BEQ             loc_2298C
00022974  LDR             R1, [R7,#(dword_8 - 0xC)]
00022978  ADR             LR, loc_22984
0002297c  LDR             R1, [R1,#0x6C]
00022980  BX              R1
00022984  LDR             R0, [R4,#0x38]
00022988  STR             R8, [R0]
0002298c  LDR             R0, [R4,#0x38]
00022990  CMP             R0, #0
00022994  BEQ             loc_229B0
00022998  LDR             R1, [R7,#(dword_8 - 0xC)]
0002299c  LDR             R0, [R4,#0x38]
000229a0  LDR             R1, [R1,#0x6C]
000229a4  MOV             LR, PC
000229a8  BX              R1
000229ac  STR             R8, [R4,#0x38]
000229b0  POP             {R4-R8,LR}
000229b4  BX              LR
