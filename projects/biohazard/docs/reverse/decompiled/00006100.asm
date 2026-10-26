00006100  PUSH            {LR}
00006104  LDR             R0, [R0,#0x144]
00006108  MOV             R3, #0
0000610c  B               loc_6138
00006110  SUB             R12, R0, #1
00006114  SUB             R12, R12, R3
00006118  ADD             R12, R12, R1
0000611c  ADD             R12, R12, #0x100
00006120  LDRSB           R12, [R12,#0x48]
00006124  LDRSB           LR, [R2,R3]
00006128  CMP             R12, LR
0000612c  BNE             loc_6140
00006130  ADD             R3, R3, #1
00006134  BIC             R3, R3, #0x10000
00006138  CMP             R0, R3
0000613c  BHI             loc_6110
00006140  LDRB            R0, [R2,R3]
00006144  CMP             R0, #0xFF
00006148  MOV             R0, #0
0000614c  STREQ           R0, [R1,#0x144]
00006150  POP             {LR}
00006154  MOVEQ           R0, #1
00006158  BX              LR
