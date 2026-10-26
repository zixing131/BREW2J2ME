000143d4  PUSH            {R0-R6,LR}
000143d8  MOV             R6, R3
000143dc  ADD             R3, SP, #0x10+arg_0
000143e0  MOV             R5, R2
000143e4  MOV             R4, R1
000143e8  MOV             R12, R0
000143ec  LDM             R3, {R0-R3}
000143f0  STMEA           SP, {R0-R3}
000143f4  LDR             R0, [R12]
000143f8  MOV             R3, R6
000143fc  LDR             LR, [R0,#0x10]
00014400  MOV             R0, R12
00014404  MOV             R12, LR
00014408  MOV             R2, R5
0001440c  MOV             R1, R4
00014410  BLX             R12
00014414  ADD             SP, SP, #0x10
00014418  POP             {R4-R6,PC}
