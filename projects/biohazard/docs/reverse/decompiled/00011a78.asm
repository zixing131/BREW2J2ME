00011a78  PUSH            {R3-R7,LR}
00011a7c  MOV             R6, R2
00011a80  MOVS            R5, R1
00011a84  CMPNE           R6, #0
00011a88  MOV             R4, R0
00011a8c  LDRNE           R0, [R4,#0x178]
00011a90  MOV             R7, R3
00011a94  CMPNE           R0, #0
00011a98  MOVEQ           R0, #0
00011a9c  BEQ             loc_11AC8
00011aa0  MOV             R0, R4
00011aa4  BL              sub_602C
00011aa8  LDR             R3, [R4,#0x178]
00011aac  ADD             SP, SP, #4
00011ab0  MOV             R2, R7
00011ab4  MOV             R1, R6
00011ab8  MOV             R0, R5
00011abc  POP             {R4-R7,LR}
00011ac0  MOV             R12, R3
00011ac4  BX              R12
00011ac8  POP             {R3-R7,LR}
00011acc  BX              LR
