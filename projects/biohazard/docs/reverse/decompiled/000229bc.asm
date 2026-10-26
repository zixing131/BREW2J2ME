000229bc  PUSH            {R4-R6,LR}
000229c0  MOV             R4, R0
000229c4  LDRH            R0, [R0,#4]
000229c8  LDR             R5, =(start - 0x229D4)
000229cc  ADD             R5, PC, R5; start
000229d0  CMP             R0, #0
000229d4  LDRNE           R0, [R4,#8]
000229d8  MOV             R6, #0
000229dc  CMPNE           R0, #0
000229e0  BEQ             loc_229F8
000229e4  LDR             R1, [R5,#(dword_8 - 0xC)]
000229e8  ADR             LR, loc_229F4
000229ec  LDR             R1, [R1,#0x6C]
000229f0  BX              R1
000229f4  STR             R6, [R4,#8]
000229f8  LDRH            R0, [R4,#0xC]
000229fc  CMP             R0, #0
00022a00  LDRNE           R0, [R4,#0x10]
00022a04  CMPNE           R0, #0
00022a08  BEQ             loc_22A20
00022a0c  LDR             R1, [R5,#(dword_8 - 0xC)]
00022a10  ADR             LR, loc_22A1C
00022a14  LDR             R1, [R1,#0x6C]
00022a18  BX              R1
00022a1c  STR             R6, [R4,#0x10]
00022a20  POP             {R4-R6,LR}
00022a24  MOV             R0, #1
00022a28  BX              LR
