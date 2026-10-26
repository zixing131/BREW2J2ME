000098bc  PUSH            {R4-R6,LR}
000098c0  SUB             SP, SP, #0x20
000098c4  MOV             LR, R0
000098c8  MOV             R5, R2
000098cc  ADD             R2, SP, #0x20+arg_18
000098d0  LDR             R0, [SP,#0x20+arg_10]
000098d4  MOV             R4, R1
000098d8  LDM             R2, {R1,R2}
000098dc  MOV             R6, R3
000098e0  MOV             R3, #0
000098e4  STR             R3, [SP,#0x20+var_4]
000098e8  LDR             R12, [SP,#0x20+arg_0]
000098ec  STR             R1, [SP,#0x20+var_C]
000098f0  STR             R2, [SP,#0x20+var_8]
000098f4  ADD             R2, SP, #0x20+arg_8
000098f8  ADD             R1, SP, #0x20+arg_4
000098fc  STR             R0, [SP,#0x20+var_10]
00009900  ADD             R3, SP, #0x20+arg_C
00009904  STMFA           SP, {R1-R3}
00009908  STR             R12, [SP,#0x20+var_20]
0000990c  MOV             R3, R6
00009910  MOV             R2, R5
00009914  MOV             R1, R4
00009918  MOV             R0, LR
0000991c  BL              sub_9534
00009920  ADD             SP, SP, #0x20 ; ' '
00009924  POP             {R4-R6,LR}
00009928  BX              LR
