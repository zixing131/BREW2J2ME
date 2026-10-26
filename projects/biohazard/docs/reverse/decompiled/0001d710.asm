0001d710  PUSH            {R4-R6,LR}
0001d714  MOV             R4, R0
0001d718  LDR             R0, [R0,#0x13C]
0001d71c  CMP             R0, #5
0001d720  MOVNE           R0, #0
0001d724  BNE             loc_1D768
0001d728  LDR             R6, =(start - 0x1D734)
0001d72c  ADD             R6, PC, R6; start
0001d730  LDR             R0, [R6,#(dword_8 - 0xC)]
0001d734  ADR             LR, loc_1D740
0001d738  LDR             R0, [R0,#0xC0]
0001d73c  BX              R0
0001d740  LDR             R5, [R0,#0x24]
0001d744  LDR             R0, [R6,#(dword_8 - 0xC)]
0001d748  LDR             R0, [R0,#0xC0]
0001d74c  MOV             LR, PC
0001d750  BX              R0
0001d754  LDR             R1, [R0,#0x20]
0001d758  MOV             R0, R4
0001d75c  MOV             R2, R5
0001d760  BL              sub_1AD24
0001d764  MOV             R0, #1
0001d768  POP             {R4-R6,LR}
0001d76c  BX              LR
