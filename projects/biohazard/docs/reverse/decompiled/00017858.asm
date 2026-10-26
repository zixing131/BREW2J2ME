00017858  MOV             R2, R1
0001785c  STR             R1, [R0,#0x4C]
00017860  MOV             R1, #0
00017864  STR             R1, [R0,#0x20]
00017868  STRB            R1, [R0,#0x40]
0001786c  STR             R1, [R0,#0x44]
00017870  STRB            R1, [R0,#0x25]
00017874  STRB            R1, [R0,#0x24]
00017878  STRB            R1, [R0,#0x2A]
0001787c  STRB            R1, [R0,#0x29]
00017880  STR             R1, [R0,#0x30]
00017884  STRB            R1, [R0,#0x34]
00017888  STRB            R1, [R0,#0x48]
0001788c  STRB            R1, [R0,#0x49]
00017890  STR             R1, [R0]
00017894  MOV             R3, #0xD2
00017898  STMIB           R0, {R1,R3}
0001789c  MOV             R3, #0x2D ; '-'
000178a0  STR             R3, [R0,#0xC]
000178a4  MOV             R3, #0xAA
000178a8  STR             R3, [R0,#0x10]
000178ac  ADD             R2, R2, #0x800
000178b0  LDRH            R2, [R2,#0x9E]
000178b4  MOV             R3, #0xC8
000178b8  SUB             R2, R3, R2,LSR#1
000178bc  STR             R2, [R0,#0x14]
000178c0  MOV             R2, #0x3E8
000178c4  STR             R2, [R0,#0x18]!
000178c8  STR             R1, [R0,#4]
000178cc  BX              LR
