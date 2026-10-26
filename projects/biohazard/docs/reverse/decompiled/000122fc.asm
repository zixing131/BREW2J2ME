000122fc  PUSH            {R4,LR}
00012300  LDR             R2, [R0,#0x50]
00012304  LDR             R12, [R0,#0x44]
00012308  CMP             R2, #0
0001230c  LDRNE           R2, [R0,#0x48]
00012310  CMPNE           R2, #0
00012314  LDRNE           LR, [R0,#0x4C]
00012318  CMPNE           LR, #0
0001231c  CMPNE           R12, #0
00012320  BEQ             loc_12358
00012324  MOV             R2, #0
00012328  SUB             R3, R12, #1
0001232c  ADD             R0, R2, #1
00012330  CMP             R0, R3
00012334  BCC             loc_12364
00012338  LDR             R0, [LR,R2,LSL#2]
0001233c  CMP             R0, R1
00012340  MOVEQ           R0, R2
00012344  BEQ             loc_1235C
00012348  LDR             R0, [LR,R3,LSL#2]
0001234c  CMP             R0, R1
00012350  MOVEQ           R0, R3
00012354  BEQ             loc_1235C
00012358  MOV             R0, R12
0001235c  POP             {R4,LR}
00012360  BX              LR
00012364  ADD             R0, R2, R3
00012368  MOV             R0, R0,LSR#1
0001236c  LDR             R4, [LR,R0,LSL#2]
00012370  CMP             R4, R1
00012374  BEQ             loc_1235C
00012378  MOVCS           R3, R0
0001237c  MOVCC           R2, R0
00012380  B               loc_1232C
