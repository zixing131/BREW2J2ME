0000132c  LDR             R12, =(byte_29D89 - 0x1340)
00001330  PUSH            {R3,R4,LR}
00001334  MOV             R3, #0
00001338  ADD             R12, PC, R12; byte_29D89
0000133c  B               loc_13C4
00001340  LDRB            LR, [R0]
00001344  SUB             R1, R1, #4
00001348  ADD             R3, R3, #3
0000134c  AND             LR, LR, #0x7F
00001350  LDRB            LR, [R12,LR]
00001354  STRB            LR, [SP,#4+var_4]
00001358  LDRB            LR, [R0,#1]
0000135c  AND             LR, LR, #0x7F
00001360  LDRB            LR, [R12,LR]
00001364  STRB            LR, [SP,#4+var_3]
00001368  LDRB            LR, [R0,#2]
0000136c  AND             LR, LR, #0x7F
00001370  LDRB            LR, [R12,LR]
00001374  STRB            LR, [SP,#4+var_2]
00001378  LDRB            LR, [R0,#3]
0000137c  ADD             R0, R0, #4
00001380  AND             LR, LR, #0x7F
00001384  LDRB            LR, [R12,LR]
00001388  STRB            LR, [SP,#4+var_1]
0000138c  LDRB            LR, [SP,#4+var_4]
00001390  LDRB            R4, [SP,#4+var_3]
00001394  MOV             LR, LR,LSL#2
00001398  ORR             LR, LR, R4,LSR#4
0000139c  STRB            LR, [R2],#1
000013a0  LDRB            LR, [SP,#4+var_3]
000013a4  LDRB            R4, [SP,#4+var_2]
000013a8  MOV             LR, LR,LSL#4
000013ac  ORR             LR, LR, R4,LSR#2
000013b0  STRB            LR, [R2],#1
000013b4  LDRB            LR, [SP,#4+var_1]
000013b8  LDRB            R4, [SP,#4+var_2]
000013bc  ORR             LR, LR, R4,LSL#6
000013c0  STRB            LR, [R2],#1
000013c4  CMP             R1, #3
000013c8  BGT             loc_1340
000013cc  CMP             R1, #3
000013d0  BNE             loc_1434
000013d4  LDRB            R1, [R0]
000013d8  ADD             R3, R3, #2
000013dc  AND             R1, R1, #0x7F
000013e0  LDRB            R1, [R12,R1]
000013e4  STRB            R1, [SP,#4+var_4]
000013e8  LDRB            R1, [R0,#1]
000013ec  AND             R1, R1, #0x7F
000013f0  LDRB            R1, [R12,R1]
000013f4  STRB            R1, [SP,#4+var_3]
000013f8  LDRB            R0, [R0,#2]
000013fc  AND             R0, R0, #0x7F
00001400  LDRB            R0, [R12,R0]
00001404  STRB            R0, [SP,#4+var_2]
00001408  LDRB            R0, [SP,#4+var_4]
0000140c  MOV             R0, R0,LSL#2
00001410  ORR             R0, R0, R1,LSR#4
00001414  STRB            R0, [R2]
00001418  LDRB            R1, [SP,#4+var_3]
0000141c  ADD             R0, R2, #1
00001420  LDRB            R2, [SP,#4+var_2]
00001424  MOV             R1, R1,LSL#4
00001428  ORR             R1, R1, R2,LSR#2
0000142c  STRB            R1, [R0]
00001430  B               loc_1470
00001434  CMP             R1, #2
00001438  BNE             loc_1470
0000143c  LDRB            R1, [R0]
00001440  ADD             R3, R3, #1
00001444  AND             R1, R1, #0x7F
00001448  LDRB            R1, [R12,R1]
0000144c  STRB            R1, [SP,#4+var_4]
00001450  LDRB            R0, [R0,#1]
00001454  AND             R0, R0, #0x7F
00001458  LDRB            R0, [R12,R0]
0000145c  STRB            R0, [SP,#4+var_3]
00001460  MOV             R0, R1,LSL#2
00001464  LDRB            R1, [SP,#4+var_3]
00001468  ORR             R0, R0, R1,LSR#4
0000146c  STRB            R0, [R2]
00001470  MOV             R0, R3
00001474  POP             {R3,R4,PC}
