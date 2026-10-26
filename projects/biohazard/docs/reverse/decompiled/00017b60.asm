00017b60  MOV             R2, #0
00017b64  ADD             R1, R0, #0x100
00017b68  STRH            R2, [R1,#0x48]
00017b6c  STRH            R2, [R1,#0x4A]
00017b70  STR             R2, [R0,#0x144]
00017b74  STR             R2, [R0,#0x110]
00017b78  MOV             R3, #0xFF
00017b7c  STRB            R3, [R1,#0xC]
00017b80  STRB            R2, [R0,#0x10D]
00017b84  BX              LR
