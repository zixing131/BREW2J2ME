000122b8  MOV             R2, #0
000122bc  LDR             R3, [R0,#0x20]
000122c0  B               loc_122DC
000122c4  LDR             R12, [R0,#0x28]
000122c8  ADD             R12, R12, R2,LSL#1
000122cc  LDRH            R12, [R12]
000122d0  CMP             R12, R1
000122d4  BEQ             loc_122E4
000122d8  ADD             R2, R2, #1
000122dc  CMP             R3, R2
000122e0  BHI             loc_122C4
000122e4  CMP             R3, R2
000122e8  MOVNE           R0, R2,LSL#16
000122ec  MOVNE           R0, R0,LSR#16
000122f0  LDREQ           R0, =0xFFFF
000122f4  BX              LR
