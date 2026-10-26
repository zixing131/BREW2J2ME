00011ae4  PUSH            {R3,LR}
00011ae8  LDR             R1, [R0,#0x13C]
00011aec  CMP             R1, #5
00011af0  MOVNE           R0, #0
00011af4  BNE             loc_11B00
00011af8  BL              sub_1A108
00011afc  MOV             R0, #1
00011b00  POP             {R3,LR}
00011b04  BX              LR
