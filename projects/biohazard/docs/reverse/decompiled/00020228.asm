00020228  PUSH            {R4,LR}
0002022c  MOV             R4, R0
00020230  LDR             R0, =(start - 0x2023C)
00020234  ADD             R0, PC, R0; start
00020238  LDR             R0, [R0,#(dword_8 - 0xC)]
0002023c  ADR             LR, loc_20248
00020240  LDR             R0, [R0,#0xC0]
00020244  BX              R0
00020248  LDR             R0, [R0,#0x20]
0002024c  LDRB            R1, [R4,#8]
00020250  CMP             R1, #1
00020254  BNE             loc_2028C
00020258  LDR             R1, [R4,#4]
0002025c  ADD             R1, R1, #1
00020260  STR             R1, [R4,#4]
00020264  LDRSH           R1, [R4,#2]
00020268  LDRSH           R2, [R4]
0002026c  LDRH            R0, [R0]
00020270  ADD             R1, R1, R2
00020274  CMP             R1, R0,LSR#2
00020278  MOVLT           R0, R4
0002027c  BLLT            sub_22F1C
00020280  LDRH            R0, [R4]
00020284  SUB             R0, R0, #4
00020288  STRH            R0, [R4]
0002028c  POP             {R4,LR}
00020290  BX              LR
