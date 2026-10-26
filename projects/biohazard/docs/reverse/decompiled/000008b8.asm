000008b8  PUSH            {R3-R9,LR}
000008bc  ADD             R9, SP, #4+arg_0
000008c0  MOVS            R7, R3
000008c4  MOV             R6, R1
000008c8  CMPNE           R6, #0
000008cc  MOV             R5, R0
000008d0  MOVEQ           R0, #1
000008d4  LDM             R9, {R8,R9}
000008d8  BEQ             loc_984
000008dc  CMP             R5, #0
000008e0  MOVLT           R0, #0xE
000008e4  BLT             loc_984
000008e8  MOV             R0, #0
000008ec  STR             R0, [R7]
000008f0  CMP             R5, #0x14
000008f4  ADDCC           R0, R5, #0x14
000008f8  MOVCC           R5, R0,LSL#16
000008fc  LDR             R0, =(start - 0x90C)
00000900  MOVCC           R5, R5,ASR#16
00000904  ADD             R0, PC, R0; start
00000908  LDR             R0, [R0,#(dword_8 - 0xC)]
0000090c  ADR             LR, loc_91C
00000910  LDR             R1, [R0,#0x68]
00000914  ADD             R0, R5, #0x10
00000918  BX              R1
0000091c  MOVS            R4, R0
00000920  MOVEQ           R0, #2
00000924  BEQ             loc_984
00000928  LDR             R1, =(sub_7F4 - 0x938)
0000092c  ADD             R0, R4, R5
00000930  ADD             R1, PC, R1; sub_7F4
00000934  STR             R1, [R0]
00000938  LDR             R1, =(sub_83C - 0x944)
0000093c  ADD             R1, PC, R1; sub_83C
00000940  STR             R1, [R0,#4]
00000944  LDR             R1, =(sub_808 - 0x950)
00000948  ADD             R1, PC, R1; sub_808
0000094c  STR             R1, [R0,#8]
00000950  LDR             R1, =(locret_838 - 0x95C)
00000954  ADD             R1, PC, R1; locret_838
00000958  STR             R1, [R0,#0xC]
0000095c  STR             R0, [R4]
00000960  MOV             R0, #1
00000964  STMIB           R4, {R0,R6,R8,R9}
00000968  LDR             R0, [R6]
0000096c  ADR             LR, loc_97C
00000970  LDR             R1, [R0]
00000974  MOV             R0, R6
00000978  BX              R1
0000097c  MOV             R0, #0
00000980  STR             R4, [R7]
00000984  POP             {R3-R9,LR}
00000988  BX              LR
