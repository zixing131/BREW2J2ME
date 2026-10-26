00018170  PUSH            {R3-R5,LR}
00018174  LDRB            R2, [R0,#0x186]
00018178  LDR             R5, =(start - 0x18188)
0001817c  MOV             R4, R1
00018180  ADD             R5, PC, R5; start
00018184  CMP             R2, #1
00018188  BNE             loc_181D0
0001818c  MOV             R4, R1
00018190  MOV             R0, R1
00018194  BL              sub_11A24
00018198  MOV             R0, #5
0001819c  STR             R0, [R4,#0x75C]
000181a0  LDR             R0, [R5,#(dword_8 - 0xC)]
000181a4  ADR             LR, loc_181B4
000181a8  LDR             R1, [R0,#0x68]
000181ac  MOV             R0, #0x238
000181b0  BX              R1
000181b4  STR             R0, [R4,#0x760]
000181b8  BL              sub_16B18
000181bc  MOV             R2, #0
000181c0  LDR             R0, [R4,#0x760]
000181c4  MOV             R1, R4
000181c8  BL              sub_17200
000181cc  B               loc_1821C
000181d0  ADD             R0, R0, #0x200
000181d4  LDRH            R0, [R0,#0x32]
000181d8  CMP             R0, #4
000181dc  BNE             loc_1821C
000181e0  MOV             R0, R4
000181e4  BL              sub_11A24
000181e8  MOV             R0, #4
000181ec  STR             R0, [R4,#0x75C]
000181f0  LDR             R0, [R5,#(dword_8 - 0xC)]
000181f4  ADR             LR, loc_18204
000181f8  LDR             R1, [R0,#0x68]
000181fc  MOV             R0, #0x194
00018200  BX              R1
00018204  STR             R0, [R4,#0x760]
00018208  BL              sub_16B18
0001820c  MOV             R2, #0
00018210  LDR             R0, [R4,#0x760]
00018214  MOV             R1, R4
00018218  BL              sub_17790
0001821c  POP             {R3-R5,LR}
00018220  MOV             R0, #1
00018224  BX              LR
