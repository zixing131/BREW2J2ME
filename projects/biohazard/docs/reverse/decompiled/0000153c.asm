0000153c  PUSH            {R3-R5,LR}
00001540  LDR             R1, [R0,#0x148]
00001544  MOV             R4, R0
00001548  CMP             R1, #0x3EC
0000154c  BEQ             loc_15CC
00001550  LDR             R0, =(start - 0x155C)
00001554  ADD             R0, PC, R0; start
00001558  LDR             R0, [R0,#(dword_8 - 0xC)]
0000155c  SUB             R12, R1, #0x800
00001560  SUBS            R12, R12, #0x34 ; '4'
00001564  MOV             R5, #0
00001568  LDR             R0, [R0,#0xC0]
0000156c  BNE             loc_15D4
00001570  MOV             LR, PC
00001574  BX              R0
00001578  STRB            R5, [R0,#0x758]
0000157c  LDR             R1, [R4,#0xC]
00001580  ADD             R1, R1, R0
00001584  LDRB            R2, [R1,#0x390]!
00001588  ADD             R2, R2, #1
0000158c  STRB            R2, [R1]
00001590  LDR             R1, [R4]
00001594  LDR             R2, [R1,#8]
00001598  LDR             R1, [R4,#0xC]
0000159c  ADD             R3, R1, R1,LSL#2
000015a0  ADD             R2, R2, R3,LSL#2
000015a4  LDRB            R2, [R2,#4]
000015a8  ADD             R1, R1, R0
000015ac  LDRB            R1, [R1,#0x390]
000015b0  CMP             R2, R1
000015b4  STRBHI          R5, [R4,#0x10]
000015b8  MOVLS           R1, #2
000015bc  STRBLS          R1, [R4,#0x10]
000015c0  MOV             R1, #8
000015c4  MOV             R2, #0
000015c8  BL              sub_2439C
000015cc  POP             {R3-R5,LR}
000015d0  BX              LR
000015d4  MOV             LR, PC
000015d8  BX              R0
000015dc  STRB            R5, [R0,#0x758]
000015e0  MOV             R0, #3
000015e4  STRB            R0, [R4,#0x10]
000015e8  LDR             R0, [R4,#0x148]
000015ec  STR             R0, [R4,#0x158]
000015f0  B               loc_15CC
