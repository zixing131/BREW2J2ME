00012e0c  PUSH            {LR}
00012e10  LDRH            LR, [R0,#0xC]
00012e14  MOV             R2, #0
00012e18  B               loc_12E4C
00012e1c  LDR             R3, [R0,#0x10]
00012e20  ADD             R12, R2, R2,LSL#3
00012e24  ADD             R3, R3, R12,LSL#3
00012e28  LDRH            R3, [R3,#0x30]
00012e2c  CMP             R3, R1
00012e30  ADDNE           R2, R2, #1
00012e34  MOVNE           R2, R2,LSL#16
00012e38  MOVNE           R2, R2,ASR#16
00012e3c  BNE             loc_12E4C
00012e40  MOV             R0, R2
00012e44  POP             {LR}
00012e48  BX              LR
00012e4c  CMP             LR, R2
00012e50  BGT             loc_12E1C
00012e54  MOV             R0, #0xFFFFFFFF
00012e58  B               loc_12E44
