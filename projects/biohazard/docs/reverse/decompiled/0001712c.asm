0001712c  MOV             R2, #0
00017130  ADD             R3, R0, #8
00017134  STM             R3, {R1,R2}
00017138  STRH            R2, [R0,#0x3C]
0001713c  STRB            R2, [R0,#0x3E]
00017140  STRH            R2, [R0,#0x40]
00017144  STR             R2, [R0,#0x44]
00017148  STRH            R2, [R0,#0x52]
0001714c  STRH            R2, [R0,#0x48]
00017150  STRH            R2, [R0,#0x4A]
00017154  STRH            R2, [R0,#0x50]
00017158  STRH            R2, [R0,#0x5A]
0001715c  STR             R2, [R0,#0x38]
00017160  MOV             R1, #0
00017164  ADD             R3, R0, R1,LSL#2
00017168  ADD             R1, R1, #1
0001716c  CMP             R1, #0xA
00017170  STR             R2, [R3,#0x10]
00017174  BLT             loc_17164
00017178  STRH            R2, [R0]
0001717c  STRH            R2, [R0,#2]
00017180  BX              LR
