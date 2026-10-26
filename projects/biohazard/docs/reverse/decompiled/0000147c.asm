0000147c  PUSH            {R4,R5,LR}
00001480  LDR             R12, =(aAbcdefghijklmn - 0x1494); "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklm"...
00001484  MOV             R5, #0x3D ; '='
00001488  MOV             R3, #0
0000148c  ADD             R12, PC, R12; "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklm"...
00001490  B               loc_1520
00001494  LDRB            LR, [R0]
00001498  CMP             R1, #1
0000149c  LDRB            LR, [R12,LR,LSR#2]
000014a0  STRB            LR, [R2],#1
000014a4  LDRBEQ          LR, [R0]
000014a8  ANDEQ           LR, LR, #3
000014ac  LDRBEQ          LR, [R12,LR,LSL#4]
000014b0  STRBEQ          LR, [R2],#1
000014b4  STRBEQ          R5, [R2]
000014b8  BEQ             loc_150C
000014bc  LDRB            LR, [R0]
000014c0  LDRB            R4, [R0,#1]
000014c4  CMP             R1, #2
000014c8  MOV             LR, LR,LSL#30
000014cc  MOV             LR, LR,LSR#26
000014d0  ORR             LR, LR, R4,LSR#4
000014d4  LDRB            LR, [R12,LR]
000014d8  STRB            LR, [R2],#1
000014dc  LDRB            LR, [R0,#1]
000014e0  LDRB            R4, [R0,#2]
000014e4  MOV             LR, LR,LSL#28
000014e8  MOV             LR, LR,LSR#26
000014ec  ORR             LR, LR, R4,LSR#6
000014f0  LDRB            LR, [R12,LR]
000014f4  STRB            LR, [R2]
000014f8  LDRBNE          LR, [R0,#2]
000014fc  ANDNE           LR, LR, #0x3F ; '?'
00001500  LDRBNE          LR, [R12,LR]
00001504  STRBNE          LR, [R2,#1]!
00001508  BNE             loc_1510
0000150c  STRB            R5, [R2,#1]!
00001510  ADD             R2, R2, #1
00001514  ADD             R0, R0, #3
00001518  SUB             R1, R1, #3
0000151c  ADD             R3, R3, #4
00001520  CMP             R1, #0
00001524  BGT             loc_1494
00001528  MOV             R0, #0
0000152c  STRB            R0, [R2]
00001530  MOV             R0, R3
00001534  POP             {R4,R5,PC}
