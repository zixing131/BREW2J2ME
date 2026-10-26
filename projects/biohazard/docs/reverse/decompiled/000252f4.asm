000252f4  PUSH            {R3,LR}
000252f8  LDR             R0, [R0,#0x20]
000252fc  ADR             LR, loc_25310
00025300  LDR             R1, [R0]
00025304  LDR             R2, [R1,#0x1C]
00025308  MOV             R1, #1
0002530c  BX              R2
00025310  POP             {R3,LR}
00025314  MOV             R0, #0
00025318  BX              LR
