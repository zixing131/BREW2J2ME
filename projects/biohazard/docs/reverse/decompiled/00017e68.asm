00017e68  CMP             R0, #0
00017e6c  LDRNE           R1, =(start - 0x17E78)
00017e70  ADDNE           R1, PC, R1; start
00017e74  LDRNE           R1, [R1,#(dword_8 - 0xC)]
00017e78  LDRNE           R1, [R1,#0x6C]
00017e7c  BXNE            R1
00017e80  BX              LR
