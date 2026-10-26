00014568  PUSH            {R1-R3,LR}
0001456c  MOV             LR, R2
00014570  MOV             R2, #0xFFFFFFFF
00014574  MOV             R3, #0
00014578  STMEA           SP, {R2,R3}
0001457c  LDR             R2, [R0]
00014580  MOV             R3, #0xFFFFFFFF
00014584  LDR             R12, [R2,#0xC]
00014588  MOV             R2, LR
0001458c  BLX             R12
00014590  POP             {R1-R3,PC}
