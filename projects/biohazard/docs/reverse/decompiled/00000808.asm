00000808  PUSH            {R3,LR}
0000080c  LDR             R12, [R0,#0xC]
00000810  MOV             LR, R2
00000814  MOV             R2, R0
00000818  CMP             R12, #0
0000081c  ADDEQ           SP, SP, #4
00000820  MOV             R0, LR
00000824  POPEQ           {LR}
00000828  BEQ             sub_75C
0000082c  ADDNE           SP, SP, #4
00000830  POPNE           {LR}
00000834  BXNE            R12
00000838  BX              LR
