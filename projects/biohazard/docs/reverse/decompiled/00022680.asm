00022680  PUSH            {R3-R7,LR}
00022684  MOV             R5, R0
00022688  LDR             R0, [R0,#0x14]
0002268c  MOV             R7, #0
00022690  CMP             R0, #0
00022694  BEQ             loc_226F0
00022698  LDR             R6, =(start - 0x226A8)
0002269c  MOV             R4, #0
000226a0  ADD             R6, PC, R6; start
000226a4  B               loc_226CC
000226a8  LDR             R0, [R5,#0x14]
000226ac  ADD             R0, R0, R4,LSL#5
000226b0  LDR             R0, [R0,#8]
000226b4  CMP             R0, #0
000226b8  LDRNE           R1, [R6,#(dword_8 - 0xC)]
000226bc  ADRNE           LR, loc_226C8
000226c0  LDRNE           R1, [R1,#0x6C]
000226c4  BXNE            R1
000226c8  ADD             R4, R4, #1
000226cc  LDR             R0, [R5,#0x10]
000226d0  CMP             R0, R4
000226d4  BHI             loc_226A8
000226d8  LDR             R1, [R6,#(dword_8 - 0xC)]
000226dc  LDR             R0, [R5,#0x14]
000226e0  LDR             R1, [R1,#0x6C]
000226e4  MOV             LR, PC
000226e8  BX              R1
000226ec  STR             R7, [R5,#0x14]
000226f0  STR             R7, [R5,#0x10]
000226f4  POP             {R3-R7,LR}
000226f8  BX              LR
