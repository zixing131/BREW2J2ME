00019c58  MOV             R3, R0
00019c5c  MOV             R0, #0
00019c60  MOV             R1, #0
00019c64  B               loc_19C74
00019c68  CMP             R2, #0xFF
00019c6c  ADDHI           R0, R0, #1
00019c70  ADD             R1, R1, #1
00019c74  ADD             R2, R3, R1,LSL#1
00019c78  LDRH            R2, [R2]
00019c7c  CMP             R2, #0
00019c80  BNE             loc_19C68
00019c84  BX              LR
