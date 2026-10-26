00014464  PUSH            {R0-R6,LR}
00014468  MOV             R6, R3
0001446c  ADD             R3, SP, #0x10+arg_0
00014470  MOV             R5, R2
00014474  MOV             R4, R1
00014478  MOV             R12, R0
0001447c  LDM             R3, {R0-R3}
00014480  STMEA           SP, {R0-R3}
00014484  LDR             R0, [R12]
00014488  MOV             R3, R6
0001448c  LDR             LR, [R0,#0x10]
00014490  MOV             R0, R12
00014494  MOV             R12, LR
00014498  MOV             R2, R5
0001449c  MOV             R1, R4
000144a0  BLX             R12
000144a4  ADD             SP, SP, #0x10
000144a8  POP             {R4-R6,PC}
