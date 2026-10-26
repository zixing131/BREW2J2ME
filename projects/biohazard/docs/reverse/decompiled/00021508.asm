00021508  PUSH            {R3-R5,LR}
0002150c  MOV             R0, R1
00021510  CMP             R0, #0
00021514  MOV             R1, R2,LSL#16
00021518  LDR             R4, [SP,#4+arg_0]
0002151c  MOV             R5, R3
00021520  BGE             loc_21544
00021524  BL              sub_104
00021528  LDR             R1, [R4]
0002152c  CMP             R1, R0
00021530  BLT             loc_21570
00021534  LDR             R1, [R5]
00021538  CMP             R1, R0
0002153c  STRLT           R0, [R5]
00021540  B               loc_2157C
00021544  BLE             loc_21568
00021548  BL              sub_104
0002154c  LDR             R1, [R5]
00021550  CMP             R1, R0
00021554  BGT             loc_21570
00021558  LDR             R1, [R4]
0002155c  CMP             R1, R0
00021560  STRGT           R0, [R4]
00021564  B               loc_2157C
00021568  CMP             R2, #0
0002156c  BGE             loc_2157C
00021570  MOV             R0, #0
00021574  POP             {R3-R5,LR}
00021578  BX              LR
0002157c  MOV             R0, #1
00021580  B               loc_21574
