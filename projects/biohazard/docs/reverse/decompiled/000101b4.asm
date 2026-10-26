000101b4  SUB             R12, R1, #0x100
000101b8  SUBS            R12, R12, #2
000101bc  SUBEQ           R12, R2, #0xE000
000101c0  PUSH            {R4,R5,LR}
000101c4  MOV             R4, R0
000101c8  SUBSEQ          R12, R12, #0x36 ; '6'
000101cc  BNE             loc_10244
000101d0  LDRH            R0, [R4,#0x52]
000101d4  LDRH            R1, [R4,#0x40]
000101d8  CMP             R0, R1
000101dc  BCS             loc_101F0
000101e0  ADD             R2, R4, R0,LSL#2
000101e4  LDR             R2, [R2,#0x10]
000101e8  CMP             R2, #0
000101ec  BNE             loc_1020C
000101f0  LDRB            R2, [R4,#6]
000101f4  CMP             R2, #0
000101f8  MOVEQ           R0, #0
000101fc  STRHEQ          R0, [R4,#4]
00010200  MOVEQ           R0, #1
00010204  STRBEQ          R0, [R4,#6]
00010208  BEQ             loc_10244
0001020c  CMP             R0, R1
00010210  BCS             loc_10244
00010214  ADD             R0, R4, R0,LSL#2
00010218  LDR             R0, [R0,#0x10]
0001021c  CMP             R0, #0
00010220  BEQ             loc_10244
00010224  MOV             R5, #0
00010228  MOV             R0, R4
0001022c  BL              sub_A10
00010230  ADD             R0, R5, #1
00010234  MOV             R5, R0,LSL#16
00010238  MOV             R5, R5,ASR#16
0001023c  CMP             R5, #0xA
00010240  BLT             loc_10228
00010244  POP             {R4,R5,LR}
00010248  MOV             R0, #1
0001024c  BX              LR
