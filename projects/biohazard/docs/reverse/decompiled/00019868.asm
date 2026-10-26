00019868  PUSH            {R3-R5,LR}
0001986c  CMP             R0, #0
00019870  MOV             R5, #0
00019874  MOVLT           R5, #1
00019878  RSBLT           R0, R0, #0
0001987c  CMP             R1, #0
00019880  MOV             R4, #0
00019884  MOVLT           R4, #1
00019888  RSBLT           R1, R1, #0
0001988c  CMP             R0, #0
00019890  BNE             loc_198A4
00019894  CMP             R4, #1
00019898  MOVNE           R0, #0x5A ; 'Z'
0001989c  LDREQ           R0, =0x10E
000198a0  B               loc_19918
000198a4  CMP             R1, #0
000198a8  BNE             loc_198BC
000198ac  CMP             R5, #1
000198b0  MOVNE           R0, #0
000198b4  MOVEQ           R0, #0xB4
000198b8  B               loc_19918
000198bc  MOV             R1, R1,LSL#16
000198c0  BL              sub_104
000198c4  LDR             R1, =(dword_27400 - 0x198D8)
000198c8  MOV             R2, R0
000198cc  MOV             R0, #1
000198d0  ADD             R1, PC, R1; dword_27400
000198d4  LDR             R3, [R1,R0,LSL#2]
000198d8  CMP             R3, R2
000198dc  BGT             loc_198F4
000198e0  ADD             R0, R0, #1
000198e4  MOV             R0, R0,LSL#16
000198e8  MOV             R0, R0,ASR#16
000198ec  CMP             R0, #0x5A ; 'Z'
000198f0  BLT             loc_198D4
000198f4  CMP             R5, #0
000198f8  BNE             loc_1990C
000198fc  CMP             R4, #0
00019900  BEQ             loc_19920
00019904  RSB             R0, R0, #0x168
00019908  B               loc_19918
0001990c  CMP             R4, #0
00019910  ADDNE           R0, R0, #0xB4
00019914  RSBEQ           R0, R0, #0xB4
00019918  MOV             R0, R0,LSL#16
0001991c  MOV             R0, R0,ASR#16
00019920  POP             {R3-R5,LR}
00019924  BX              LR
