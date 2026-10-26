000006c0  PUSH            {R3-R5,LR}
000006c4  LDR             R1, [R0,#8]
000006c8  MOV             R4, R0
000006cc  SUBS            R1, R1, #1
000006d0  STR             R1, [R0,#8]
000006d4  MOVNE           R0, R1
000006d8  BNE             loc_750
000006dc  LDR             R1, [R4,#0x1C]
000006e0  CMP             R1, #0
000006e4  MOVNE           LR, PC
000006e8  BXNE            R1
000006ec  LDR             R0, [R4,#0x14]
000006f0  CMP             R0, #0
000006f4  LDRNE           R1, [R0]
000006f8  ADRNE           LR, loc_704
000006fc  LDRNE           R1, [R1,#4]
00000700  BXNE            R1
00000704  LDR             R0, [R4,#0x10]
00000708  LDR             R1, [R0]
0000070c  ADR             LR, loc_718
00000710  LDR             R1, [R1,#4]
00000714  BX              R1
00000718  LDR             R0, =(start - 0x724)
0000071c  ADD             R0, PC, R0; start
00000720  LDR             R0, [R0,#(dword_8 - 0xC)]
00000724  LDR             R5, [R4,#0xC]
00000728  LDR             R1, [R0,#0x6C]
0000072c  MOV             R0, R4
00000730  MOV             LR, PC
00000734  BX              R1
00000738  LDR             R0, [R5]
0000073c  LDR             R1, [R0,#4]
00000740  MOV             R0, R5
00000744  MOV             LR, PC
00000748  BX              R1
0000074c  MOV             R0, #0
00000750  POP             {R3-R5,LR}
00000754  BX              LR
