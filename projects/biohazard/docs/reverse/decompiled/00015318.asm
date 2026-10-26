00015318  LDRH            R2, [R0,#0x74]
0001531c  CMP             R2, R1
00015320  MOVLE           R1, R2
00015324  STR             R1, [R0,#0x98]
00015328  BX              LR
