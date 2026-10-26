00011ad0  LDR             R0, [R0,#0x13C]
00011ad4  CMP             R0, #7
00011ad8  MOVEQ           R0, #1
00011adc  MOVNE           R0, #0
00011ae0  BX              LR
