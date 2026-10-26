0001ba98  CMP             R1, #2
0001ba9c  MOVEQ           R1, #3
0001baa0  ADDEQ           R0, R0, #0x100
0001baa4  STRHEQ          R1, [R0,#0x48]
0001baa8  MOVEQ           R1, #0
0001baac  STRHEQ          R1, [R0,#0x4E]
0001bab0  MOV             R0, #0
0001bab4  BX              LR
