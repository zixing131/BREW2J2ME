000015f8  PUSH            {R3,LR}
000015fc  CMP             R1, #2
00001600  BEQ             loc_161C
00001604  CMP             R1, #3
00001608  MOVNE           R0, #0
0000160c  BNE             locret_1628
00001610  LDR             R1, [R0,#0xD8]
00001614  BL              sub_182E8
00001618  B               loc_1624
0000161c  ADD             R1, R0, #0xD8
00001620  BL              sub_1837C
00001624  MOV             R0, #1
00001628  POP             {R3,PC}
