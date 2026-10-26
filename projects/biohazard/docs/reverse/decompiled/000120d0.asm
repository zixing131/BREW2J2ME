000120d0  LDR             R0, [R0,#0x898]
000120d4  MOV             R1, #0
000120d8  RSB             R2, R1, R1,LSL#3
000120dc  ADD             R2, R0, R2,LSL#3
000120e0  LDRB            R2, [R2,#0x7E0]
000120e4  CMP             R2, #0
000120e8  ADDNE           R1, R1, #1
000120ec  CMPNE           R1, #0x63 ; 'c'
000120f0  BLT             loc_120D8
000120f4  RSB             R1, R1, R1,LSL#3
000120f8  ADD             R0, R0, R1,LSL#3
000120fc  ADD             R0, R0, #0x400
00012100  ADD             R0, R0, #0x3CC
00012104  BX              LR
