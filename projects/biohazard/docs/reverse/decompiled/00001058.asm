00001058  LDR             R0, [R0,#0xDC]
0000105c  SUB             R0, R1, R0
00001060  LDR             R1, =0x2E79A432
00001064  ADD             R0, R0, R1
00001068  LDR             R1, =0x29BE7563
0000106c  EOR             R0, R0, R1
00001070  BX              LR
