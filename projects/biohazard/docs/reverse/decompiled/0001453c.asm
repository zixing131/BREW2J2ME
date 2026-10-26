0001453c  PUSH            {R3,LR}
00014540  MOV             R3, #2
00014544  STR             R3, [SP,#4+var_4]
00014548  LDR             R3, [R0]
0001454c  ADR             LR, loc_14560
00014550  LDR             R12, [R3,#0x14]
00014554  MOV             R3, R2
00014558  MOV             R2, #0xFFFFFFFF
0001455c  BX              R12
00014560  POP             {R3,LR}
00014564  BX              LR
