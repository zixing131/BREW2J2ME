00022d38  PUSH            {R3-R5,LR}
00022d3c  MOV             R4, R0
00022d40  LDR             R0, [R0,#0x28]
00022d44  CMP             R0, #0
00022d48  LDRNE           R1, [R0]
00022d4c  ADRNE           LR, loc_22D58
00022d50  LDRNE           R1, [R1,#4]
00022d54  BXNE            R1
00022d58  LDR             R0, [R4,#0x24]
00022d5c  CMP             R0, #0
00022d60  BLNE            sub_1432C
00022d64  LDR             R5, =(start - 0x22D70)
00022d68  ADD             R5, PC, R5; start
00022d6c  LDR             R0, [R4,#0x14]
00022d70  CMP             R0, #0
00022d74  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022d78  ADRNE           LR, loc_22D84
00022d7c  LDRNE           R1, [R1,#0x6C]
00022d80  BXNE            R1
00022d84  LDR             R0, [R4,#0x18]
00022d88  CMP             R0, #0
00022d8c  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022d90  ADRNE           LR, loc_22D9C
00022d94  LDRNE           R1, [R1,#0x6C]
00022d98  BXNE            R1
00022d9c  MOV             R0, R4
00022da0  POP             {R3-R5,LR}
00022da4  B               sub_10174
