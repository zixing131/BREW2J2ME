0001538c  PUSH            {R4,LR}
00015390  MOV             R4, R0
00015394  MOV             R0, R1
00015398  LDRH            R1, [R4,#0x72]
0001539c  LDR             R3, =(start - 0x153A8)
000153a0  ADD             R3, PC, R3; start
000153a4  LDR             R3, [R3,#(dword_8 - 0xC)]
000153a8  LDR             R12, [R3,#0x80]
000153ac  MOV             R3, R2
000153b0  MOV             R2, R0
000153b4  ADD             R0, R4, #0x10
000153b8  BLX             R12
000153bc  MOV             R1, #0
000153c0  ADD             R0, R4, R0,LSL#1
000153c4  STRH            R1, [R0,#0x10]
000153c8  POP             {R4,PC}
