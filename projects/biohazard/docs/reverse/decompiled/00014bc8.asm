00014bc8  CMP             R0, #0
00014bcc  STRBNE          R1, [R0,#0xD4]
00014bd0  MOVEQ           R0, #1
00014bd4  MOVNE           R0, #0
00014bd8  BX              LR
