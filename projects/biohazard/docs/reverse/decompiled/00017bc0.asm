00017bc0  CMP             R0, #0
00017bc4  LDRNE           R1, =(start - 0x17BD0)
00017bc8  ADDNE           R1, PC, R1; start
00017bcc  LDRNE           R1, [R1,#(dword_8 - 0xC)]
00017bd0  LDRNE           R1, [R1,#0x6C]
00017bd4  BXNE            R1
00017bd8  BX              LR
