00022870  PUSH            {R3-R5,LR}
00022874  MOV             R5, #0
00022878  STR             R5, [R0,#8]
0002287c  MOV             R4, R0
00022880  LDR             R0, [R0,#0xC]
00022884  CMP             R0, #0
00022888  BEQ             loc_228A8
0002288c  LDR             R1, =(start - 0x22898)
00022890  ADD             R1, PC, R1; start
00022894  LDR             R1, [R1,#(dword_8 - 0xC)]
00022898  ADR             LR, loc_228A4
0002289c  LDR             R1, [R1,#0x6C]
000228a0  BX              R1
000228a4  STR             R5, [R4,#0xC]
000228a8  MOV             R0, R4
000228ac  POP             {R3-R5,LR}
000228b0  B               sub_22680
