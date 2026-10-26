00019748  PUSH            {R3-R5,LR}
0001974c  MOV             R4, R0
00019750  SUB             R0, R1, #1
00019754  CMP             R4, R0
00019758  MOVGE           R0, R4
0001975c  MOV             R5, R1
00019760  BGE             loc_1979C
00019764  LDR             R0, =(start - 0x19770)
00019768  ADD             R0, PC, R0; start
0001976c  LDR             R0, [R0,#(dword_8 - 0xC)]
00019770  MOV             R1, #2
00019774  LDR             R2, [R0,#0xA8]
00019778  MOV             R0, SP
0001977c  MOV             LR, PC
00019780  BX              R2
00019784  SUB             R0, R5, R4
00019788  LDRH            R1, [SP,#4+var_4]
0001978c  BL              sub_104
00019790  ADD             R0, R1, R4
00019794  STRH            R0, [SP,#4+var_4]
00019798  LDRH            R0, [SP,#4+var_4]
0001979c  POP             {R3-R5,LR}
000197a0  BX              LR
