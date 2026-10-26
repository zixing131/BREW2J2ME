00015280  PUSH            {R3-R5,LR}
00015284  MOV             R5, #0
00015288  STRB            R5, [R0,#0xC]
0001528c  STRB            R5, [R0,#0xD]
00015290  MOV             R4, R0
00015294  LDR             R0, =(start - 0x152A0)
00015298  ADD             R0, PC, R0; start
0001529c  LDR             R0, [R0,#(dword_8 - 0xC)]
000152a0  MOV             R2, #0x62 ; 'b'
000152a4  LDR             R3, [R0,#4]
000152a8  ADD             R0, R4, #0x10
000152ac  MOV             R1, #0
000152b0  BLX             R3
000152b4  STRH            R5, [R4,#0x74]
000152b8  STR             R5, [R4,#0x98]
000152bc  MOV             R0, #1
000152c0  STRB            R0, [R4,#0x9E]
000152c4  POP             {R3-R5,PC}
