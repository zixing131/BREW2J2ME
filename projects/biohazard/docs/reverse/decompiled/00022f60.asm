00022f60  PUSH            {R4-R8,LR}
00022f64  LDR             R8, =(start - 0x22F78)
00022f68  MOV             R5, R0
00022f6c  MOV             R4, #0
00022f70  ADD             R8, PC, R8; start
00022f74  MOV             R7, #0
00022f78  ADD             R6, R5, R4,LSL#2
00022f7c  LDR             R0, [R6,#0x10]
00022f80  CMP             R0, #0
00022f84  LDRNE           R1, [R8,#(dword_8 - 0xC)]
00022f88  ADRNE           LR, loc_22F94
00022f8c  LDRNE           R1, [R1,#0x6C]
00022f90  BXNE            R1
00022f94  ADD             R4, R4, #1
00022f98  CMP             R4, #0xA
00022f9c  STR             R7, [R6,#0x10]
00022fa0  BLT             loc_22F78
00022fa4  LDR             R0, [R5,#0x38]
00022fa8  CMP             R0, #0
00022fac  BEQ             loc_22FC4
00022fb0  LDR             R1, [R8,#(dword_8 - 0xC)]
00022fb4  ADR             LR, loc_22FC0
00022fb8  LDR             R1, [R1,#0x6C]
00022fbc  BX              R1
00022fc0  STR             R7, [R5,#0x38]
00022fc4  STRH            R7, [R5]
00022fc8  STRH            R7, [R5,#2]
00022fcc  POP             {R4-R8,LR}
00022fd0  BX              LR
