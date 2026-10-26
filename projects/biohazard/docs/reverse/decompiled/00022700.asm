00022700  PUSH            {R3-R5,LR}
00022704  MOV             R5, #0
00022708  STR             R5, [R0,#8]
0002270c  MOV             R4, R0
00022710  LDR             R0, [R0,#0x80C]
00022714  CMP             R0, #0
00022718  BEQ             loc_22738
0002271c  LDR             R1, =(start - 0x22728)
00022720  ADD             R1, PC, R1; start
00022724  LDR             R1, [R1,#(dword_8 - 0xC)]
00022728  ADR             LR, loc_22734
0002272c  LDR             R1, [R1,#0x6C]
00022730  BX              R1
00022734  STR             R5, [R4,#0x80C]
00022738  POP             {R3-R5,LR}
0002273c  BX              LR
