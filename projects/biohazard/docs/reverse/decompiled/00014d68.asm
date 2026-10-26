00014d68  PUSH            {R1-R7,LR}
00014d6c  MOV             R6, R0
00014d70  LDR             R0, =(start - 0x14D84)
00014d74  MOV             R7, R1
00014d78  MOV             R5, R2
00014d7c  ADD             R0, PC, R0; start
00014d80  LDR             R0, [R0,#(dword_8 - 0xC)]
00014d84  LDR             R1, [R0,#0x68]
00014d88  MOV             R0, #0xA0
00014d8c  BLX             R1
00014d90  MOVS            R4, R0
00014d94  MOVEQ           R0, #1
00014d98  BEQ             locret_14DCC
00014d9c  STR             R5, [R4,#4]
00014da0  STR             R7, [R4]
00014da4  LDR             R1, [R5]
00014da8  MOV             R0, R5
00014dac  LDR             R12, [R1,#8]
00014db0  MOV             R1, #0x8000
00014db4  ADD             R3, SP, #0xC+var_8
00014db8  ADD             R2, SP, #0xC+var_4
00014dbc  BLX             R12
00014dc0  STR             R0, [R4,#8]
00014dc4  STR             R4, [R6]
00014dc8  MOV             R0, #0
00014dcc  POP             {R1-R7,PC}
