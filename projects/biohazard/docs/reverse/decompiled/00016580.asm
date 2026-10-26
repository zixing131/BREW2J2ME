00016580  PUSH            {LR}
00016584  MOV             R3, #0
00016588  ADD             R2, R0, #0x100
0001658c  STRH            R3, [R2,#0x26]
00016590  STRH            R3, [R2,#0x28]
00016594  STRH            R3, [R2,#0x2A]
00016598  STRH            R3, [R0,#0x90]
0001659c  STRH            R3, [R0,#0x9A]
000165a0  STRH            R3, [R0,#0x9C]
000165a4  STRH            R3, [R0,#0x76]
000165a8  STRH            R3, [R0,#0x78]
000165ac  MOV             R12, #0xFFFFFFFF
000165b0  STR             R12, [R0,#0x80]
000165b4  STR             R12, [R0,#0x10]
000165b8  STR             R12, [R0,#0x7C]
000165bc  STR             R12, [R0,#0x84]
000165c0  STRB            R3, [R0,#0xC]
000165c4  STRB            R3, [R0,#0x12C]
000165c8  STRH            R3, [R2,#0x22]
000165cc  MOV             R1, #1
000165d0  STRB            R1, [R0,#0x124]
000165d4  STRB            R3, [R0,#0x134]
000165d8  STRH            R3, [R2,#0x2E]
000165dc  MOV             R1, #0
000165e0  ADD             LR, R0, R1,LSL#2
000165e4  ADD             R1, R1, #1
000165e8  BIC             R1, R1, #0x10000
000165ec  CMP             R1, #0x20 ; ' '
000165f0  STR             R3, [LR,#0xA0]
000165f4  BCC             loc_165E0
000165f8  STRH            R3, [R0,#0x9E]
000165fc  STRH            R12, [R2,#0x32]
00016600  STRB            R3, [R0]
00016604  POP             {LR}
00016608  BX              LR
