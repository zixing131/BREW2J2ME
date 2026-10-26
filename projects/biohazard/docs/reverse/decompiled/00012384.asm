00012384  PUSH            {LR}
00012388  LDR             R12, [R0,#0xC]
0001238c  TST             R1, #0xFF
00012390  AND             R3, R1, #0xFF
00012394  ADD             R3, R12, R3,LSL#1
00012398  LDRHNE          R2, [R3,#-2]
0001239c  LDRH            R3, [R3]
000123a0  LDR             R12, [R0,#0x10]
000123a4  MOVEQ           R2, #0
000123a8  SUB             R3, R3, #1
000123ac  MOV             R3, R3,LSL#16
000123b0  MOV             R3, R3,LSR#16
000123b4  ADD             R0, R2, #1
000123b8  CMP             R0, R3
000123bc  BCC             loc_123EC
000123c0  ADD             R0, R12, R2,LSL#2
000123c4  LDRH            R2, [R0]
000123c8  CMP             R2, R1
000123cc  ADDNE           R0, R12, R3,LSL#2
000123d0  LDRHNE          R2, [R0]
000123d4  CMPNE           R2, R1
000123d8  LDRNE           R0, =0xFFFF
000123dc  BNE             loc_123E4
000123e0  LDRH            R0, [R0,#2]
000123e4  POP             {LR}
000123e8  BX              LR
000123ec  ADD             R0, R2, R3
000123f0  MOV             R0, R0,LSR#1
000123f4  ADD             LR, R12, R0,LSL#2
000123f8  LDRH            LR, [LR]
000123fc  CMP             LR, R1
00012400  ADDEQ           R0, R12, R0,LSL#2
00012404  BEQ             loc_123E0
00012408  MOVCS           R3, R0
0001240c  MOVCC           R2, R0
00012410  B               loc_123B4
