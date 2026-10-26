00011dd8  PUSH            {R3-R5,LR}
00011ddc  MOV             R4, R0
00011de0  BL              sub_122FC
00011de4  LDR             R1, [R4,#0x44]
00011de8  CMP             R1, R0
00011dec  BLS             loc_11E1C
00011df0  LDR             R1, [R4,#0x50]
00011df4  ADD             R5, R1, R0,LSL#5
00011df8  LDR             R1, [R5,#8]
00011dfc  CMP             R1, #0
00011e00  BNE             loc_11E28
00011e04  MOV             R1, R0,LSL#16
00011e08  MOV             R1, R1,LSR#16
00011e0c  MOV             R0, R4
00011e10  BL              sub_18498
00011e14  CMP             R0, #0
00011e18  BEQ             loc_11E28
00011e1c  MOV             R0, #0
00011e20  POP             {R3-R5,LR}
00011e24  BX              LR
00011e28  MOV             R0, R5
00011e2c  B               loc_11E20
