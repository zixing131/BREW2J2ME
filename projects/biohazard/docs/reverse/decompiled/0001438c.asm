0001438c  PUSH            {R0-R6,LR}
00014390  MOV             R6, R3
00014394  ADD             R3, SP, #0x10+arg_0
00014398  MOV             R5, R2
0001439c  MOV             R4, R1
000143a0  MOV             R12, R0
000143a4  LDM             R3, {R0-R3}
000143a8  STMEA           SP, {R0-R3}
000143ac  LDR             R0, [R12]
000143b0  MOV             R3, R6
000143b4  LDR             LR, [R0,#0x10]
000143b8  MOV             R0, R12
000143bc  MOV             R12, LR
000143c0  MOV             R2, R5
000143c4  MOV             R1, R4
000143c8  BLX             R12
000143cc  ADD             SP, SP, #0x10
000143d0  POP             {R4-R6,PC}
