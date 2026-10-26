00019618  PUSH            {R4-R8,LR}
0001961c  LDR             R12, [R0]
00019620  CMP             R12, #0
00019624  LDRNE           R7, [R0,#8]
00019628  CMPNE           R7, #0
0001962c  LDRNE           R6, [R0,#0xC]
00019630  CMPNE           R6, #0
00019634  BEQ             loc_196CC
00019638  MOV             R4, #0
0001963c  LDR             R5, [R0,#0x1C]
00019640  B               loc_196C4
00019644  ADD             LR, R4, R5
00019648  ADD             LR, LR, LR,LSR#31
0001964c  MOV             LR, LR,ASR#1
00019650  LDR             R8, [R7,LR,LSL#2]
00019654  CMP             R8, R1
00019658  BNE             loc_196BC
0001965c  CMP             LR, #0
00019660  LDRNE           R0, [R6,LR,LSL#2]
00019664  ADDNE           R1, R6, LR,LSL#2
00019668  LDRNE           R1, [R1,#-4]
0001966c  LDREQ           R1, [R0,#4]
00019670  SUBNE           R4, R0, R1
00019674  ADDNE           R1, R1, R12
00019678  SUBEQ           R0, R1, R12
0001967c  LDREQ           R12, [R6]
00019680  SUBEQ           R4, R12, R0
00019684  CMP             R2, #0
00019688  BEQ             loc_196AC
0001968c  CMP             R3, R4
00019690  LDRCS           R0, =(start - 0x1969C)
00019694  ADDCS           R0, PC, R0; start
00019698  LDRCS           R0, [R0,#(dword_8 - 0xC)]
0001969c  ADRCS           LR, loc_196AC
000196a0  LDRCS           R3, [R0,#0x24]
000196a4  MOVCS           R0, R2
000196a8  BXCS            R3
000196ac  MOV             R0, R4,LSL#16
000196b0  MOV             R0, R0,ASR#16
000196b4  POP             {R4-R8,LR}
000196b8  BX              LR
000196bc  ADDLS           R4, LR, #1
000196c0  SUBHI           R5, LR, #1
000196c4  CMP             R4, R5
000196c8  BLE             loc_19644
000196cc  MOV             R0, #0xFFFFFFFF
000196d0  B               loc_196B4
