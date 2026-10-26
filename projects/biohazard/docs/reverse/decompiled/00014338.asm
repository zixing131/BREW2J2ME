00014338  PUSH            {R4-R6,LR}
0001433c  SUB             SP, SP, #0x18
00014340  MOV             R6, R3
00014344  ADD             R3, SP, #0x18+arg_4
00014348  MOV             R5, R2
0001434c  MOV             R4, R1
00014350  MOV             R12, R0
00014354  LDM             R3, {R0-R3}
00014358  LDR             LR, [SP,#0x18+arg_0]
0001435c  STMFA           SP, {R0-R3}
00014360  STR             LR, [SP,#0x18+var_18]
00014364  LDR             R0, [R12]
00014368  MOV             R3, R6
0001436c  LDR             LR, [R0,#0x18]
00014370  MOV             R0, R12
00014374  MOV             R12, LR
00014378  MOV             R2, R5
0001437c  MOV             R1, R4
00014380  BLX             R12
00014384  ADD             SP, SP, #0x18
00014388  POP             {R4-R6,PC}
