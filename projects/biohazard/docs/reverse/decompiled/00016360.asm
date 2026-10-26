00016360  PUSH            {R4-R6,LR}
00016364  LDR             R2, [R0,#0x110]
00016368  MOV             R4, #0
0001636c  LDRH            R2, [R2,#4]
00016370  MOV             R6, #2
00016374  MOV             R5, #1
00016378  SUB             R2, R2, #7
0001637c  STRH            R2, [R0]
00016380  STRH            R4, [R0,#2]
00016384  MOV             R2, #0
00016388  B               loc_163EC
0001638c  LDR             R3, [R0,#0x110]
00016390  ADD             R12, R2, R2,LSL#2
00016394  LDR             R3, [R3,#8]
00016398  ADD             R3, R3, R12,LSL#2
0001639c  LDRH            LR, [R3,#0x8C]
000163a0  ADD             R3, R0, R2,LSL#3
000163a4  STRH            LR, [R3,#4]
000163a8  LDR             LR, [R0,#0x110]
000163ac  LDR             LR, [LR,#8]
000163b0  ADD             R12, LR, R12,LSL#2
000163b4  LDRH            R12, [R12,#0x8E]
000163b8  STRH            R12, [R3,#6]
000163bc  ADD             R12, R2, #7
000163c0  STRH            R12, [R3,#8]
000163c4  STRH            R4, [R3,#0xA]
000163c8  LDR             R12, [R0,#0x110]
000163cc  LDRB            R12, [R12,#0x7A]
000163d0  CMP             R12, R2
000163d4  STRHGT          R5, [R3,#0xA]
000163d8  BGT             loc_163E0
000163dc  STRHEQ          R6, [R3,#0xA]
000163e0  ADD             R2, R2, #1
000163e4  MOV             R2, R2,LSL#16
000163e8  MOV             R2, R2,ASR#16
000163ec  LDRSH           R3, [R0]
000163f0  CMP             R3, R2
000163f4  BGT             loc_1638C
000163f8  MOV             R2, R4
000163fc  ADD             R4, R0, #0x100
00016400  STRH            R2, [R4,#4]
00016404  MOV             R0, #0x19
00016408  STRH            R0, [R4,#0xA]
0001640c  SUB             R1, R1, #0x92
00016410  BL              sub_104
00016414  CMP             R0, #6
00016418  BGE             loc_16428
0001641c  CMP             R0, #2
00016420  MOVLE           R0, #2
00016424  BLE             loc_16430
00016428  CMP             R0, #6
0001642c  MOVGE           R0, #6
00016430  STRH            R0, [R4,#6]
00016434  STRH            R6, [R4,#8]
00016438  STRH            R5, [R4,#0x20]
0001643c  POP             {R4-R6,LR}
00016440  BX              LR
