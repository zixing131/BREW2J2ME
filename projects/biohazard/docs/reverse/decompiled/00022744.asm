00022744  PUSH            {R3-R5,LR}
00022748  MOV             R4, R0
0002274c  BL              sub_22700
00022750  ADD             R0, R4, #0x810
00022754  BL              sub_22680
00022758  LDR             R0, [R4,#0x898]
0002275c  CMP             R0, #0
00022760  BEQ             loc_22864
00022764  LDR             R0, [R0,#0x1C]
00022768  LDR             R5, =(start - 0x22774)
0002276c  ADD             R5, PC, R5; start
00022770  CMP             R0, #0
00022774  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022778  ADRNE           LR, loc_22784
0002277c  LDRNE           R1, [R1,#0x6C]
00022780  BXNE            R1
00022784  LDR             R0, [R4,#0x898]
00022788  LDR             R0, [R0,#0x20]
0002278c  CMP             R0, #0
00022790  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022794  ADRNE           LR, loc_227A0
00022798  LDRNE           R1, [R1,#0x6C]
0002279c  BXNE            R1
000227a0  LDR             R0, [R4,#0x898]
000227a4  LDR             R0, [R0,#0x24]
000227a8  CMP             R0, #0
000227ac  LDRNE           R1, [R5,#(dword_8 - 0xC)]
000227b0  ADRNE           LR, loc_227BC
000227b4  LDRNE           R1, [R1,#0x6C]
000227b8  BXNE            R1
000227bc  LDR             R0, [R4,#0x898]
000227c0  LDR             R0, [R0,#0x28]
000227c4  CMP             R0, #0
000227c8  LDRNE           R1, [R5,#(dword_8 - 0xC)]
000227cc  ADRNE           LR, loc_227D8
000227d0  LDRNE           R1, [R1,#0x6C]
000227d4  BXNE            R1
000227d8  LDR             R0, [R4,#0x898]
000227dc  LDR             R0, [R0,#0x30]
000227e0  CMP             R0, #0
000227e4  LDRNE           R1, [R5,#(dword_8 - 0xC)]
000227e8  ADRNE           LR, loc_227F4
000227ec  LDRNE           R1, [R1,#0x6C]
000227f0  BXNE            R1
000227f4  LDR             R0, [R4,#0x898]
000227f8  LDR             R0, [R0,#0x38]
000227fc  CMP             R0, #0
00022800  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022804  ADRNE           LR, loc_22810
00022808  LDRNE           R1, [R1,#0x6C]
0002280c  BXNE            R1
00022810  LDR             R0, [R4,#0x898]
00022814  LDR             R0, [R0,#0x40]
00022818  CMP             R0, #0
0002281c  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00022820  ADRNE           LR, loc_2282C
00022824  LDRNE           R1, [R1,#0x6C]
00022828  BXNE            R1
0002282c  LDR             R0, [R4,#0x898]
00022830  LDR             R0, [R0,#0x48]
00022834  CMP             R0, #0
00022838  LDRNE           R1, [R5,#(dword_8 - 0xC)]
0002283c  ADRNE           LR, loc_22848
00022840  LDRNE           R1, [R1,#0x6C]
00022844  BXNE            R1
00022848  LDR             R1, [R5,#(dword_8 - 0xC)]
0002284c  LDR             R0, [R4,#0x898]
00022850  LDR             R1, [R1,#0x6C]
00022854  MOV             LR, PC
00022858  BX              R1
0002285c  MOV             R0, #0
00022860  STR             R0, [R4,#0x898]
00022864  POP             {R3-R5,LR}
00022868  BX              LR
