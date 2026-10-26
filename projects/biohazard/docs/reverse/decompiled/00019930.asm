00019930  PUSH            {LR}
00019934  MOV             R3, R0
00019938  MOV             R0, #0
0001993c  MOV             LR, #1
00019940  MOV             R1, #0
00019944  MOV             R2, #0
00019948  MOV             R1, R1,LSL#2
0001994c  ADD             R1, R1, R3,LSR#30
00019950  MOV             R0, R0,LSL#1
00019954  ADD             R12, LR, R0,LSL#1
00019958  CMP             R12, R1
0001995c  SUBLS           R1, R1, R12
00019960  ADDLS           R0, R0, #1
00019964  ADD             R2, R2, #1
00019968  CMP             R2, #0x10
0001996c  MOV             R3, R3,LSL#2
00019970  BLT             loc_19948
00019974  POP             {LR}
00019978  BX              LR
