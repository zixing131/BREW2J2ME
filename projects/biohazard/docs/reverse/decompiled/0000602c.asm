0000602c  PUSH            {R4-R8,LR}
00006030  LDR             R7, =(start - 0x6044)
00006034  MOV             R5, #0
00006038  MOV             R4, R0
0000603c  ADD             R7, PC, R7; start
00006040  MOV             R8, #0
00006044  ADD             R6, R4, R5,LSL#2
00006048  LDR             R0, [R6,#0xA0]
0000604c  CMP             R0, #0
00006050  BEQ             loc_6068
00006054  LDR             R1, [R7,#(dword_8 - 0xC)]
00006058  ADR             LR, loc_6064
0000605c  LDR             R1, [R1,#0x6C]
00006060  BX              R1
00006064  STR             R8, [R6,#0xA0]
00006068  ADD             R0, R5, #1
0000606c  BIC             R5, R0, #0x10000
00006070  CMP             R5, #0x20 ; ' '
00006074  BCC             loc_6044
00006078  LDR             R0, [R7,#(dword_8 - 0xC)]
0000607c  MOV             R2, #0x20 ; ' '
00006080  LDR             R3, [R0,#4]
00006084  ADD             R0, R4, #0x54 ; 'T'
00006088  MOV             R1, #0
0000608c  MOV             LR, PC
00006090  BX              R3
00006094  ADD             R0, R4, #0x100
00006098  STRH            R8, [R0,#0x26]
0000609c  STRH            R8, [R0,#0x28]
000060a0  STRH            R8, [R0,#0x2A]
000060a4  STRH            R8, [R0,#0x22]
000060a8  STRH            R8, [R4,#0x98]
000060ac  STRH            R8, [R4,#0x96]
000060b0  STRH            R8, [R4,#0x9A]
000060b4  STRH            R8, [R4,#0x9C]
000060b8  MOV             R1, #0xFFFFFFFF
000060bc  STR             R1, [R4,#0x80]
000060c0  STRH            R8, [R4,#0x78]
000060c4  STRH            R8, [R4,#0x76]
000060c8  STR             R1, [R4,#0x10]
000060cc  STR             R1, [R4,#0x7C]
000060d0  STR             R1, [R4,#0x84]
000060d4  STRB            R8, [R4,#0xC]
000060d8  STRB            R8, [R4,#0x12C]
000060dc  MOV             R2, #1
000060e0  STRB            R2, [R4,#0x124]
000060e4  STRH            R8, [R4,#0xE]
000060e8  STRB            R8, [R4,#0x134]
000060ec  STRB            R8, [R4]
000060f0  STRH            R1, [R0,#0x32]
000060f4  POP             {R4-R8,LR}
000060f8  BX              LR
