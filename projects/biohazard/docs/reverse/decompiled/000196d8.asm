000196d8  PUSH            {R4,LR}
000196dc  MOV             R4, #1
000196e0  CMP             R0, #0x168
000196e4  BGE             loc_196F0
000196e8  CMN             R0, #0x168
000196ec  BGT             loc_19700
000196f0  MOV             R1, R0
000196f4  MOV             R0, #0x168
000196f8  BL              sub_104
000196fc  MOV             R0, R1
00019700  CMP             R0, #0
00019704  ADDLT           R0, R0, #0x168
00019708  CMP             R0, #0xB4
0001970c  RSBGT           R0, R0, #0x168
00019710  CMP             R0, #0x5A ; 'Z'
00019714  RSBGT           R0, R0, #0xB4
00019718  LDR             R1, =(dword_27294 - 0x1972C)
0001971c  RSB             R0, R0, #0x5A ; 'Z'
00019720  MOVGT           R4, #0xFFFFFFFF
00019724  ADD             R1, PC, R1; dword_27294
00019728  LDR             R0, [R1,R0,LSL#2]
0001972c  MUL             R0, R4, R0
00019730  POP             {R4,LR}
00019734  BX              LR
