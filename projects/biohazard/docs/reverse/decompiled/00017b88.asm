00017b88  PUSH            {R4,LR}
00017b8c  MOV             R4, R0
00017b90  LDR             R0, =(start - 0x17B9C)
00017b94  ADD             R0, PC, R0; start
00017b98  LDR             R0, [R0,#(dword_8 - 0xC)]
00017b9c  LDR             R1, [R0,#0x68]
00017ba0  MOV             R0, #0x280
00017ba4  BLX             R1
00017ba8  STR             R0, [R4]
00017bac  CMP             R0, #0
00017bb0  MOVNE           R0, #0
00017bb4  MOVEQ           R0, #2
00017bb8  POP             {R4,PC}
