00016ee0  PUSH            {R1-R7,LR}
00016ee4  MOV             R4, R0
00016ee8  MOV             R0, #0
00016eec  STR             R0, [R4,#0x1C]
00016ef0  STR             R0, [R4,#0x18]
00016ef4  STR             R0, [R4,#0x10]
00016ef8  STR             R0, [R4,#0x14]
00016efc  STR             R0, [R4]
00016f00  STR             R0, [R4,#4]
00016f04  LDR             R6, =(start - 0x16F18)
00016f08  STR             R0, [R4,#8]
00016f0c  STR             R0, [R4,#0xC]
00016f10  ADD             R6, PC, R6; start
00016f14  LDR             R0, [R6,#(dword_8 - 0xC)]
00016f18  MOV             R7, R2
00016f1c  LDR             R2, [R0,#8]
00016f20  ADD             R0, R4, #0x20 ; ' '
00016f24  MOV             R5, R0
00016f28  MOV             LR, PC
00016f2c  BX              R2
00016f30  STR             R7, [R4,#0x60]
00016f34  LDR             R0, [R7,#0xC]
00016f38  ADD             R2, SP, #0xC+var_8
00016f3c  LDR             R1, [R0]
00016f40  ADR             LR, loc_16F50
00016f44  LDR             R3, [R1,#8]
00016f48  LDR             R1, =0x1001003
00016f4c  BX              R3
00016f50  CMP             R0, #0
00016f54  BNE             loc_170AC
00016f58  LDR             R0, [SP,#0xC+var_8]
00016f5c  MOV             R2, #1
00016f60  LDR             R1, [R0]
00016f64  ADR             LR, loc_16F74
00016f68  LDR             R3, [R1,#8]
00016f6c  MOV             R1, R5
00016f70  BX              R3
00016f74  MOVS            R5, R0
00016f78  BEQ             loc_170E8
00016f7c  LDR             R0, [R5]
00016f80  MOV             R2, #4
00016f84  LDR             R3, [R0,#0xC]
00016f88  MOV             R0, R5
00016f8c  ADD             R1, R4, #0x18
00016f90  MOV             LR, PC
00016f94  BX              R3
00016f98  LDR             R1, [R6,#(dword_8 - 0xC)]
00016f9c  LDR             R0, [R4,#0x18]
00016fa0  LDR             R1, [R1,#0x68]
00016fa4  ADR             LR, loc_16FB0
00016fa8  MOV             R0, R0,LSL#2
00016fac  BX              R1
00016fb0  STR             R0, [R4,#0x10]
00016fb4  CMP             R0, #0
00016fb8  BEQ             loc_170AC
00016fbc  LDR             R1, [R6,#(dword_8 - 0xC)]
00016fc0  LDR             R0, [R4,#0x18]
00016fc4  LDR             R1, [R1,#0x68]
00016fc8  ADR             LR, loc_16FD4
00016fcc  MOV             R0, R0,LSL#2
00016fd0  BX              R1
00016fd4  STR             R0, [R4,#0x14]
00016fd8  CMP             R0, #0
00016fdc  BEQ             loc_170AC
00016fe0  LDR             R0, [R4,#0x18]
00016fe4  LDR             R1, [R4,#0x10]
00016fe8  MOV             R2, R0,LSL#2
00016fec  LDR             R0, [R5]
00016ff0  ADR             LR, loc_17000
00016ff4  LDR             R3, [R0,#0xC]
00016ff8  MOV             R0, R5
00016ffc  BX              R3
00017000  LDR             R0, [R4,#0x18]
00017004  LDR             R1, [R4,#0x14]
00017008  MOV             R2, R0,LSL#2
0001700c  LDR             R0, [R5]
00017010  ADR             LR, loc_17020
00017014  LDR             R3, [R0,#0xC]
00017018  MOV             R0, R5
0001701c  BX              R3
00017020  LDR             R0, [R5]
00017024  MOV             R2, #0
00017028  LDR             R3, [R0,#0x1C]
0001702c  MOV             R0, R5
00017030  MOV             R1, #2
00017034  MOV             LR, PC
00017038  BX              R3
0001703c  LDR             R1, [R4,#0x14]
00017040  LDR             R1, [R1]
00017044  SUBS            R0, R1, R0
00017048  STR             R0, [SP,#0xC+var_4]
0001704c  BEQ             loc_170D4
00017050  LDR             R1, [R6,#(dword_8 - 0xC)]
00017054  ADR             LR, loc_17060
00017058  LDR             R1, [R1,#0x68]
0001705c  BX              R1
00017060  MOVS            R6, R0
00017064  BEQ             loc_170AC
00017068  LDR             R0, [R5]
0001706c  MOV             R1, R6
00017070  LDR             R3, [R0,#0xC]
00017074  LDR             R2, [SP,#0xC+var_4]
00017078  MOV             R0, R5
0001707c  MOV             LR, PC
00017080  BX              R3
00017084  LDR             R0, [R4,#0x60]
00017088  MOV             R2, #0
0001708c  LDR             R3, [R0,#0x38]
00017090  LDR             R1, [SP,#0xC+var_4]
00017094  MOV             R0, R6
00017098  MOV             LR, PC
0001709c  BX              R3
000170a0  STR             R0, [R4]
000170a4  CMP             R0, #0
000170a8  BNE             loc_170B8
000170ac  MOV             R0, #0
000170b0  POP             {R1-R7,LR}
000170b4  BX              LR
000170b8  LDR             R1, [R0],#4
000170bc  STR             R0, [R4,#8]
000170c0  STR             R1, [R4,#0x1C]
000170c4  ADD             R0, R0, R1,LSL#2
000170c8  STR             R0, [R4,#0xC]
000170cc  ADD             R0, R0, R1,LSL#2
000170d0  STR             R0, [R4,#4]
000170d4  LDR             R0, [R5]
000170d8  ADR             LR, loc_170E8
000170dc  LDR             R1, [R0,#4]
000170e0  MOV             R0, R5
000170e4  BX              R1
000170e8  LDR             R0, [SP,#0xC+var_8]
000170ec  ADR             LR, loc_170FC
000170f0  LDR             R1, [R0]
000170f4  LDR             R1, [R1,#4]
000170f8  BX              R1
000170fc  ADD             R2, SP, #0xC+var_4
00017100  MOV             R0, R4
00017104  LDR             R1, =0x2710
00017108  BL              sub_18818
0001710c  LDR             R1, [SP,#0xC+var_4]
00017110  BL              sub_1B9AC
00017114  STR             R0, [R4,#0x64]
00017118  MOV             R0, #1
0001711c  B               loc_170B0
