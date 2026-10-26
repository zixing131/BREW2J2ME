00022508  PUSH            {R4-R8,LR}
0002250c  LDR             R7, =(start - 0x22520)
00022510  MOV             R6, R0
00022514  MOV             R5, #0
00022518  ADD             R7, PC, R7; start
0002251c  MOV             R8, #0
00022520  B               loc_22574
00022524  LDR             R0, [R6,#0x50]
00022528  ADD             R4, R0, R5,LSL#5
0002252c  LDR             R0, [R4,#8]
00022530  CMP             R0, #0
00022534  BEQ             loc_22570
00022538  LDR             R1, [R6,#0x48]
0002253c  LDR             R2, [R1,R5,LSL#2]
00022540  ADD             R1, R1, R5,LSL#2
00022544  LDR             R1, [R1,#4]
00022548  CMP             R2, R1
0002254c  LDRNE           R1, [R7,#(dword_8 - 0xC)]
00022550  ADRNE           LR, loc_2255C
00022554  LDRNE           R1, [R1,#0x6C]
00022558  BXNE            R1
0002255c  STR             R8, [R4,#8]
00022560  STR             R8, [R4,#0x10]
00022564  STR             R8, [R4,#0xC]
00022568  STR             R8, [R4,#0x14]
0002256c  STR             R8, [R4,#0x1C]
00022570  ADD             R5, R5, #1
00022574  LDR             R0, [R6,#0x44]
00022578  CMP             R0, R5
0002257c  BHI             loc_22524
00022580  POP             {R4-R8,LR}
00022584  BX              LR
