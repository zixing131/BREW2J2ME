00020328  PUSH            {R3,LR}
0002032c  LDR             R1, [R0,#0x13C]
00020330  CMP             R1, #5
00020334  MOVNE           R0, #0
00020338  BNE             loc_20344
0002033c  BL              sub_1B614
00020340  MOV             R0, #1
00020344  POP             {R3,LR}
00020348  BX              LR
