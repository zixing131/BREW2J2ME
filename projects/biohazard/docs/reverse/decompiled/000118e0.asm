000118e0  MOV             R3, R0
000118e4  LDR             R0, [R0,#0x1C]
000118e8  CMP             R0, #0
000118ec  BEQ             loc_11920
000118f0  MOV             R2, #0
000118f4  LDRH            R3, [R3,#0x20]
000118f8  B               loc_11918
000118fc  ADD             R12, R0, R2,LSL#3
00011900  LDRSH           R12, [R12]
00011904  CMP             R12, R1
00011908  ADDNE           R2, R2, #1
0001190c  BNE             loc_11918
00011910  MOV             R0, #1
00011914  BX              LR
00011918  CMP             R3, R2
0001191c  BGT             loc_118FC
00011920  MOV             R0, #0
00011924  BX              LR
