00020298  PUSH            {R4,LR}
0002029c  MOV             R4, R0
000202a0  LDR             R0, [R0,#0xC]
000202a4  TST             R0, #3
000202a8  LDREQ           R0, [R4,#0x4C]
000202ac  CMPEQ           R0, #0
000202b0  MOVEQ           R0, R4
000202b4  BLEQ            sub_A10
000202b8  LDRB            R0, [R4,#6]
000202bc  CMP             R0, #1
000202c0  BNE             loc_202DC
000202c4  LDRH            R0, [R4,#4]
000202c8  CMP             R0, #0x10
000202cc  MOVHI           R1, #0
000202d0  STRBHI          R1, [R4,#0x3E]
000202d4  ADD             R0, R0, #1
000202d8  STRH            R0, [R4,#4]
000202dc  LDR             R0, [R4,#0xC]
000202e0  ADD             R0, R0, #1
000202e4  STR             R0, [R4,#0xC]
000202e8  POP             {R4,LR}
000202ec  BX              LR
