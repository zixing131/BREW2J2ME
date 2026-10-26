00022f1c  PUSH            {R3-R5,LR}
00022f20  MOV             R5, #0
00022f24  STRB            R5, [R0,#8]
00022f28  MOV             R4, R0
00022f2c  LDR             R0, [R0,#0xC]
00022f30  CMP             R0, #0
00022f34  BEQ             loc_22F54
00022f38  LDR             R1, =(start - 0x22F44)
00022f3c  ADD             R1, PC, R1; start
00022f40  LDR             R1, [R1,#(dword_8 - 0xC)]
00022f44  ADR             LR, loc_22F50
00022f48  LDR             R1, [R1,#0x6C]
00022f4c  BX              R1
00022f50  STR             R5, [R4,#0xC]
00022f54  POP             {R3-R5,LR}
00022f58  BX              LR
