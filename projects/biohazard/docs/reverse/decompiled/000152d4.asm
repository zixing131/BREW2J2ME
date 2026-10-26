000152d4  PUSH            {R4,LR}
000152d8  STRB            R1, [R0,#0xE]
000152dc  MOV             R4, R0
000152e0  CMP             R2, #0
000152e4  POPEQ           {R4,PC}
000152e8  LDR             R0, =(start - 0x152F4)
000152ec  ADD             R0, PC, R0; start
000152f0  LDR             R0, [R0,#(dword_8 - 0xC)]
000152f4  MOV             R1, #0x30 ; '0'
000152f8  LDR             R12, [R0,#0x80]
000152fc  ADD             R0, R4, #0x10
00015300  BLX             R12
00015304  MOV             R1, #0
00015308  ADD             R0, R4, R0,LSL#1
0001530c  STRH            R1, [R0,#0x10]
00015310  POP             {R4,PC}
