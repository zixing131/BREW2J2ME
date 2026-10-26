0001650c  PUSH            {R3-R5,LR}
00016510  MOV             R4, R0
00016514  MOV             R0, #0xFFFFFFFF
00016518  STRH            R0, [R4]
0001651c  MOV             R5, #0
00016520  STRH            R5, [R4,#2]
00016524  STRH            R0, [R4,#4]
00016528  STRH            R0, [R4,#6]
0001652c  STRH            R5, [R4,#8]
00016530  MOV             R0, #8
00016534  STRH            R0, [R4,#0xA]
00016538  STR             R5, [R4,#0x1C]
0001653c  STRH            R5, [R4,#0x20]
00016540  LDR             R0, =(start - 0x16554)
00016544  STRH            R5, [R4,#0x22]
00016548  STRB            R5, [R4,#0xC]
0001654c  ADD             R0, PC, R0; start
00016550  LDR             R0, [R0,#(dword_8 - 0xC)]
00016554  ADR             LR, loc_1656C
00016558  LDR             R3, [R0,#4]
0001655c  ADD             R0, R4, #0xE
00016560  MOV             R2, #6
00016564  MOV             R1, #0
00016568  BX              R3
0001656c  STRH            R5, [R4,#0x16]
00016570  STRH            R5, [R4,#0x14]
00016574  POP             {R3-R5,LR}
00016578  BX              LR
