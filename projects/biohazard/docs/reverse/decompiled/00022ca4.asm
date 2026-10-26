00022ca4  PUSH            {R3-R5,LR}
00022ca8  MOV             R4, R0
00022cac  LDR             R0, [R0,#4]
00022cb0  LDR             R5, =(start - 0x22CBC)
00022cb4  ADD             R5, PC, R5; start
00022cb8  CMP             R0, #0
00022cbc  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022cc0  ADRNE           LR, loc_22CCC
00022cc4  LDRNE           R1, [R1,#0x6C]
00022cc8  BXNE            R1
00022ccc  LDR             R0, [R4,#0x28]
00022cd0  CMP             R0, #0
00022cd4  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022cd8  ADRNE           LR, loc_22CE4
00022cdc  LDRNE           R1, [R1,#0x6C]
00022ce0  BXNE            R1
00022ce4  LDR             R0, [R4,#0x2C]
00022ce8  CMP             R0, #0
00022cec  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022cf0  ADRNE           LR, loc_22CFC
00022cf4  LDRNE           R1, [R1,#0x6C]
00022cf8  BXNE            R1
00022cfc  LDR             R0, [R5,#(dword_8 - 0xC)]
00022d00  MOV             R2, #0x34 ; '4'
00022d04  LDR             R3, [R0,#4]
00022d08  MOV             R0, R4
00022d0c  MOV             R1, #0
00022d10  MOV             LR, PC
00022d14  BX              R3
00022d18  LDR             R0, [R5,#(dword_8 - 0xC)]
00022d1c  LDR             R1, [R0,#0x6C]
00022d20  ADD             SP, SP, #4
00022d24  MOV             R0, R4
00022d28  POP             {R4,R5,LR}
00022d2c  BX              R1
