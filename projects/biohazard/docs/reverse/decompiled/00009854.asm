00009854  PUSH            {R4-R6,LR}
00009858  SUB             SP, SP, #0x20
0000985c  MOV             R6, R3
00009860  ADD             R3, SP, #0x20+arg_10
00009864  MOV             LR, R0
00009868  MOV             R5, R2
0000986c  MOV             R4, R1
00009870  LDM             R3, {R0-R3}
00009874  LDR             R12, [SP,#0x20+arg_0]
00009878  STR             R1, [SP,#0x20+var_C]
0000987c  STR             R2, [SP,#0x20+var_8]
00009880  STR             R3, [SP,#0x20+var_4]
00009884  ADD             R3, SP, #0x20+arg_C
00009888  ADD             R2, SP, #0x20+arg_8
0000988c  ADD             R1, SP, #0x20+arg_4
00009890  STR             R0, [SP,#0x20+var_10]
00009894  STMFA           SP, {R1-R3}
00009898  STR             R12, [SP,#0x20+var_20]
0000989c  MOV             R3, R6
000098a0  MOV             R2, R5
000098a4  MOV             R1, R4
000098a8  MOV             R0, LR
000098ac  BL              sub_9534
000098b0  ADD             SP, SP, #0x20 ; ' '
000098b4  POP             {R4-R6,LR}
000098b8  BX              LR
