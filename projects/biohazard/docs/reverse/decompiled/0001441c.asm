0001441c  PUSH            {R0-R6,LR}
00014420  MOV             R6, R3
00014424  ADD             R3, SP, #0x10+arg_0
00014428  MOV             R5, R2
0001442c  MOV             R4, R1
00014430  MOV             R12, R0
00014434  LDM             R3, {R0-R3}
00014438  STMEA           SP, {R0-R3}
0001443c  LDR             R0, [R12]
00014440  MOV             R3, R6
00014444  LDR             LR, [R0,#0x10]
00014448  MOV             R0, R12
0001444c  MOV             R12, LR
00014450  MOV             R2, R5
00014454  MOV             R1, R4
00014458  BLX             R12
0001445c  ADD             SP, SP, #0x10
00014460  POP             {R4-R6,PC}
