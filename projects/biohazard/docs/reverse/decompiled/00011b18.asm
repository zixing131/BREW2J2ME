00011b18  PUSH            {R3,LR}
00011b1c  LDR             R1, [R0,#0x13C]
00011b20  CMP             R1, #4
00011b24  MOVNE           R0, #0
00011b28  BNE             loc_11B34
00011b2c  BL              sub_602C
00011b30  MOV             R0, #1
00011b34  POP             {R3,LR}
00011b38  BX              LR
