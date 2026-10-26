00005dd4  PUSH            {R4,LR}
00005dd8  SUB             R0, R1, #1
00005ddc  MOV             R4, R0,LSL#16
00005de0  LDR             R0, =(start - 0x5DF0)
00005de4  MOV             R4, R4,ASR#16
00005de8  ADD             R0, PC, R0; start
00005dec  LDR             R0, [R0,#(dword_8 - 0xC)]
00005df0  ADR             LR, loc_5DFC
00005df4  LDR             R0, [R0,#0xC0]
00005df8  BX              R0
00005dfc  LDR             R0, [R0,#0x760]
00005e00  MOV             R1, R4
00005e04  LDR             R0, [R0,#0x194]
00005e08  POP             {R4,LR}
00005e0c  B               sub_5C00
