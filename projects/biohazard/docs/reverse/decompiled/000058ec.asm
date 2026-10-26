000058ec  PUSH            {R4-R10,LR}
000058f0  MOV             R7, R0
000058f4  MOV             R0, R3
000058f8  LDR             R5, [SP,#arg_0]
000058fc  MOV             R10, R2
00005900  MOV             R9, R1
00005904  MOV             R6, R3
00005908  MOV             R4, #1
0000590c  BL              sub_197A8
00005910  MOV             R8, R0
00005914  MOV             R0, R6
00005918  BL              sub_196D8
0000591c  MOV             R1, R8,LSL#4
00005920  MOV             R2, R1,ASR#8
00005924  MOV             R0, R0,LSL#4
00005928  MOV             R0, R0,ASR#8
0000592c  MOV             R1, #0
00005930  MOV             R3, R9,LSL#8
00005934  MOV             R6, R10,LSL#8
00005938  B               loc_59AC
0000593c  MOV             R12, R3,ASR#8
00005940  MOV             LR, R12,ASR#31
00005944  ADD             R12, R12, LR,LSR#28
00005948  MOV             LR, R6,ASR#8
0000594c  MOV             R8, LR,ASR#31
00005950  ADD             LR, LR, R8,LSR#28
00005954  MOV             R12, R12,ASR#4
00005958  CMP             R12, #0
0000595c  MOV             LR, LR,ASR#4
00005960  ADD             R6, R6, R2
00005964  ADD             R3, R3, R0
00005968  ADD             R1, R1, #0x10
0000596c  BLT             loc_59AC
00005970  LDR             R8, [R7,#0x898]
00005974  LDRH            R9, [R8]
00005978  CMP             R12, R9,LSL#1
0000597c  BGE             loc_59AC
00005980  CMP             LR, #0
00005984  BLT             loc_59AC
00005988  LDRH            R9, [R8,#2]
0000598c  CMP             LR, R9,LSL#1
00005990  BGE             loc_59AC
00005994  LDR             R8, [R8,#0x28]
00005998  LDR             LR, [R8,LR,LSL#2]
0000599c  LDRB            R12, [LR,R12]
000059a0  TST             R12, #2
000059a4  MOVNE           R4, #0
000059a8  BNE             loc_59B4
000059ac  CMP             R1, R5
000059b0  BLT             loc_593C
000059b4  MOV             R0, R4
000059b8  POP             {R4-R10,LR}
000059bc  BX              LR
