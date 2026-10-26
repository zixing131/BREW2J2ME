00022c00  PUSH            {R4-R6,LR}
00022c04  MOV             R4, R0
00022c08  LDR             R0, [R0,#0x10]
00022c0c  LDR             R6, =(start - 0x22C18)
00022c10  ADD             R6, PC, R6; start
00022c14  MOV             R5, #0
00022c18  CMP             R0, #0
00022c1c  BEQ             loc_22C34
00022c20  LDR             R1, [R6,#(dword_8 - 0xC)]
00022c24  ADR             LR, loc_22C30
00022c28  LDR             R1, [R1,#0x6C]
00022c2c  BX              R1
00022c30  STR             R5, [R4,#0x10]
00022c34  LDR             R0, [R4,#0x14]
00022c38  CMP             R0, #0
00022c3c  BEQ             loc_22C54
00022c40  LDR             R1, [R6,#(dword_8 - 0xC)]
00022c44  ADR             LR, loc_22C50
00022c48  LDR             R1, [R1,#0x6C]
00022c4c  BX              R1
00022c50  STR             R5, [R4,#0x14]
00022c54  LDR             R0, [R4]
00022c58  CMP             R0, #0
00022c5c  BEQ             loc_22C74
00022c60  LDR             R1, [R6,#(dword_8 - 0xC)]
00022c64  ADR             LR, loc_22C70
00022c68  LDR             R1, [R1,#0x6C]
00022c6c  BX              R1
00022c70  STR             R5, [R4]
00022c74  LDR             R0, [R4,#0x64]
00022c78  CMP             R0, #0
00022c7c  BEQ             loc_22C88
00022c80  BL              sub_22CA4
00022c84  STR             R5, [R4,#0x64]
00022c88  STR             R5, [R4,#4]
00022c8c  STR             R5, [R4,#8]
00022c90  STR             R5, [R4,#0xC]
00022c94  STR             R5, [R4,#0x1C]
00022c98  POP             {R4-R6,LR}
00022c9c  BX              LR
