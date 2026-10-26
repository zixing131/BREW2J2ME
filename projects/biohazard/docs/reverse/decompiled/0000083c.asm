0000083c  PUSH            {R4,LR}
00000840  LDR             R1, [R0,#4]
00000844  MOV             R4, R0
00000848  SUBS            R1, R1, #1
0000084c  STR             R1, [R0,#4]
00000850  MOVNE           R0, R1
00000854  BNE             loc_8AC
00000858  LDR             R1, [R4,#0x10]
0000085c  CMP             R1, #0
00000860  MOVNE           LR, PC
00000864  BXNE            R1
00000868  LDR             R0, [R4,#8]
0000086c  CMP             R0, #0
00000870  BEQ             loc_88C
00000874  LDR             R1, [R0]
00000878  ADR             LR, loc_884
0000087c  LDR             R1, [R1,#4]
00000880  BX              R1
00000884  MOV             R0, #0
00000888  STR             R0, [R4,#8]
0000088c  LDR             R0, =(start - 0x898)
00000890  ADD             R0, PC, R0; start
00000894  LDR             R0, [R0,#(dword_8 - 0xC)]
00000898  ADR             LR, loc_8A8
0000089c  LDR             R1, [R0,#0x6C]
000008a0  MOV             R0, R4
000008a4  BX              R1
000008a8  MOV             R0, #0
000008ac  POP             {R4,LR}
000008b0  BX              LR
