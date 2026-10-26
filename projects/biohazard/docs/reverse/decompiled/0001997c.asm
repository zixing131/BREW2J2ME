0001997c  LDR             R2, [R1,#8]
00019980  CMP             R2, #4
00019984  BXNE            LR
00019988  LDR             R1, [R1,#0x10]
0001998c  CMP             R1, #1
00019990  BEQ             loc_199A4
00019994  CMP             R1, #2
00019998  CMPNE           R1, #3
0001999c  BXNE            LR
000199a0  MOV             R1, #0
000199a4  STRB            R1, [R0,#0x50]
000199a8  BX              LR
