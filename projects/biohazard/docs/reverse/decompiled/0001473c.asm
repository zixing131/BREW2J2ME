0001473c  PUSH            {R4,LR}
00014740  MOVS            R4, R0
00014744  BEQ             loc_147CC
00014748  MOV             R0, R4
0001474c  BL              sub_14A90
00014750  CMP             R0, #0
00014754  BEQ             loc_147CC
00014758  LDRB            R0, [R4,#0xD5]
0001475c  CMP             R0, #1
00014760  BEQ             loc_14794
00014764  CMP             R0, #2
00014768  BEQ             loc_147A8
0001476c  CMP             R0, #3
00014770  BEQ             loc_147BC
00014774  CMP             R0, #5
00014778  BNE             loc_147CC
0001477c  MOV             R0, R4
00014780  BL              sub_15F8
00014784  CMP             R0, #0
00014788  BEQ             loc_147CC
0001478c  MOV             R0, #1
00014790  POP             {R4,PC}
00014794  MOV             R0, R4
00014798  BL              sub_2171C
0001479c  CMP             R0, #0
000147a0  BNE             loc_1478C
000147a4  B               loc_147CC
000147a8  MOV             R0, R4
000147ac  BL              sub_2531C
000147b0  CMP             R0, #0
000147b4  BNE             loc_1478C
000147b8  B               loc_147CC
000147bc  MOV             R0, R4
000147c0  BL              sub_25418
000147c4  CMP             R0, #0
000147c8  BNE             loc_1478C
000147cc  MOV             R0, #0
000147d0  POP             {R4,PC}
