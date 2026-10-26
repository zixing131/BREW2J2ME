0001842c  PUSH            {R4-R6,LR}
00018430  MOV             R6, R0
00018434  MOV             R5, R2
00018438  MOV             R4, R1
0001843c  BL              sub_122FC
00018440  LDR             R1, [R6,#0x44]
00018444  CMP             R1, R0
00018448  MOVLS           R0, #2
0001844c  BLS             loc_18490
00018450  ADD             R0, R0, R5
00018454  CMP             R0, R1
00018458  SUBHI           R5, R1, R4
0001845c  MOV             R4, #0
00018460  B               loc_18484
00018464  ADD             R0, R5, R4
00018468  MOV             R1, R0,LSL#16
0001846c  MOV             R1, R1,LSR#16
00018470  MOV             R0, R6
00018474  BL              sub_18498
00018478  CMP             R0, #0
0001847c  BNE             loc_18490
00018480  ADD             R4, R4, #1
00018484  CMP             R4, R5
00018488  BCC             loc_18464
0001848c  MOV             R0, #0
00018490  POP             {R4-R6,LR}
00018494  BX              LR
