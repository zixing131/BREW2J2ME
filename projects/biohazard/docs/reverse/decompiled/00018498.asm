00018498  PUSH            {R4-R11,LR}
0001849c  MOV             R10, R1
000184a0  LDR             R1, [R0,#0x50]
000184a4  MOV             R5, R0
000184a8  CMP             R1, #0
000184ac  LDRNE           R0, [R5,#0x48]
000184b0  SUB             SP, SP, #0x14
000184b4  CMPNE           R0, #0
000184b8  LDRNE           R0, [R5,#0x40]
000184bc  CMPNE           R0, #0
000184c0  MOVEQ           R0, #7
000184c4  BEQ             loc_18514
000184c8  LDR             R2, [R5,#0x44]
000184cc  CMP             R2, R10
000184d0  MOVLS           R0, #2
000184d4  BLS             loc_18514
000184d8  LDR             R0, [R0,#0xC]
000184dc  ADD             R1, R1, R10,LSL#5
000184e0  LDR             R1, [R1,#8]
000184e4  CMP             R1, #0
000184e8  MOVNE           R0, #0
000184ec  BNE             loc_18514
000184f0  LDR             R1, [R0]
000184f4  ADD             R2, SP, #0x14+var_4
000184f8  LDR             R3, [R1,#8]
000184fc  LDR             R1, =0x1001003
00018500  MOV             LR, PC
00018504  BX              R3
00018508  CMP             R0, #0
0001850c  BEQ             loc_18520
00018510  MOV             R0, #5
00018514  ADD             SP, SP, #0x14
00018518  POP             {R4-R11,LR}
0001851c  BX              LR
00018520  LDR             R0, [SP,#0x14+var_4]
00018524  MOV             R2, #1
00018528  LDR             R1, [R0]
0001852c  ADR             LR, loc_1853C
00018530  LDR             R3, [R1,#8]
00018534  MOV             R1, R5
00018538  BX              R3
0001853c  MOVS            R4, R0
00018540  BNE             loc_1855C
00018544  LDR             R0, [SP,#0x14+var_4]
00018548  ADR             LR, loc_18558
0001854c  LDR             R1, [R0]
00018550  LDR             R1, [R1,#4]
00018554  BX              R1
00018558  B               loc_18510
0001855c  LDR             R0, [R5,#0x48]
00018560  LDR             R2, [R0,R10,LSL#2]
00018564  ADD             R1, R0, R10,LSL#2
00018568  LDR             R3, [R1,#4]
0001856c  SUBS            R7, R3, R2
00018570  BEQ             loc_18590
00018574  LDR             R12, [R5,#0x44]
00018578  SUB             R12, R12, #1
0001857c  CMP             R12, R10
00018580  BLS             loc_185D0
00018584  LDR             R1, [R1,#8]
00018588  CMP             R1, R3
0001858c  BNE             loc_185D0
00018590  MOV             R9, R10
00018594  B               loc_185B0
00018598  ADD             R1, R0, R9,LSL#2
0001859c  LDR             R1, [R1,#4]
000185a0  LDR             R2, [R0,R9,LSL#2]
000185a4  CMP             R1, R2
000185a8  BNE             loc_185B8
000185ac  SUB             R9, R9, #1
000185b0  CMP             R9, #0
000185b4  BGE             loc_18598
000185b8  LDR             R2, [R0,R9,LSL#2]
000185bc  ADD             R0, R0, R9,LSL#2
000185c0  LDR             R0, [R0,#4]
000185c4  MOV             R8, #1
000185c8  SUB             R7, R0, R2
000185cc  B               loc_185D4
000185d0  MOV             R8, #0
000185d4  LDR             R0, [R4]
000185d8  MOV             R1, #0
000185dc  LDR             R3, [R0,#0x1C]
000185e0  MOV             R0, R4
000185e4  MOV             LR, PC
000185e8  BX              R3
000185ec  CMP             R0, #0
000185f0  BEQ             loc_18620
000185f4  LDR             R0, [R4]
000185f8  ADR             LR, loc_18608
000185fc  LDR             R1, [R0,#4]
00018600  MOV             R0, R4
00018604  BX              R1
00018608  LDR             R0, [SP,#0x14+var_4]
0001860c  LDR             R1, [R0]
00018610  ADR             LR, loc_1861C
00018614  LDR             R1, [R1,#4]
00018618  BX              R1
0001861c  B               loc_186D8
00018620  LDR             R0, =(start - 0x1862C)
00018624  ADD             R0, PC, R0; start
00018628  LDR             R0, [R0,#(dword_8 - 0xC)]
0001862c  ADR             LR, loc_1863C
00018630  LDR             R1, [R0,#0x68]
00018634  MOV             R0, R7
00018638  BX              R1
0001863c  MOVS            R6, R0
00018640  LDR             R0, [R4]
00018644  BNE             loc_18674
00018648  LDR             R1, [R0,#4]
0001864c  MOV             R0, R4
00018650  MOV             LR, PC
00018654  BX              R1
00018658  LDR             R0, [SP,#0x14+var_4]
0001865c  LDR             R1, [R0]
00018660  ADR             LR, loc_1866C
00018664  LDR             R1, [R1,#4]
00018668  BX              R1
0001866c  MOV             R0, #3
00018670  B               loc_18514
00018674  LDR             R3, [R0,#0xC]
00018678  MOV             R0, R4
0001867c  MOV             R2, R7
00018680  MOV             R1, R6
00018684  MOV             LR, PC
00018688  BX              R3
0001868c  CMP             R0, R7
00018690  LDR             R0, [R4]
00018694  LDR             R1, [R0,#4]
00018698  MOV             R0, R4
0001869c  BEQ             loc_186E0
000186a0  MOV             LR, PC
000186a4  BX              R1
000186a8  LDR             R0, [SP,#0x14+var_4]
000186ac  LDR             R1, [R0]
000186b0  ADR             LR, loc_186BC
000186b4  LDR             R1, [R1,#4]
000186b8  BX              R1
000186bc  LDR             R0, =(start - 0x186C8)
000186c0  ADD             R0, PC, R0; start
000186c4  LDR             R0, [R0,#(dword_8 - 0xC)]
000186c8  ADR             LR, loc_186D8
000186cc  LDR             R1, [R0,#0x6C]
000186d0  MOV             R0, R6
000186d4  BX              R1
000186d8  MOV             R0, #4
000186dc  B               loc_18514
000186e0  MOV             LR, PC
000186e4  BX              R1
000186e8  LDR             R0, [SP,#0x14+var_4]
000186ec  LDR             R1, [R0]
000186f0  ADR             LR, loc_186FC
000186f4  LDR             R1, [R1,#4]
000186f8  BX              R1
000186fc  CMP             R8, #0
00018700  BEQ             loc_187A8
00018704  LDR             R0, [R6]
00018708  ADD             R8, R6, #4
0001870c  STR             R0, [SP,#0x14+var_C]
00018710  ADD             R0, R6, R0,LSL#2
00018714  LDR             R1, [R0,#4]!
00018718  LDR             R2, [R5,#0x40]
0001871c  ADD             R0, R0, #4
00018720  LDR             R3, [R2,#0x38]
00018724  ADD             R2, SP, #0x14+var_8
00018728  MOV             LR, PC
0001872c  BX              R3
00018730  MOV             R7, R0
00018734  LDR             R0, [SP,#0x14+var_C]
00018738  MOV             R4, #0
0001873c  SUB             R10, R0, #1
00018740  B               loc_18798
00018744  CMP             R4, R10
00018748  LDR             R1, [R8,R4,LSL#2]
0001874c  LDRCS           R2, [SP,#0x14+var_8]
00018750  ADD             R0, R1, R7
00018754  ADDCC           R2, R8, R4,LSL#2
00018758  LDRCC           R2, [R2,#4]
0001875c  ADDCS           R2, R7, R2
00018760  ADDCC           R2, R2, R7
00018764  CMP             R10, R4
00018768  ADDNE           R3, R8, R4,LSL#2
0001876c  LDRNE           R3, [R3,#4]
00018770  SUB             R2, R2, #0xC
00018774  LDREQ           R3, [SP,#0x14+var_8]
00018778  SUB             R3, R3, R1
0001877c  STR             R3, [SP,#0x14+var_14]
00018780  MOV             R3, R0
00018784  MOV             R0, R5
00018788  ADD             R1, R9, R4
0001878c  BL              sub_11C58
00018790  MOV             R11, R0
00018794  ADD             R4, R4, #1
00018798  LDR             R0, [SP,#0x14+var_C]
0001879c  CMP             R4, R0
000187a0  BCC             loc_18744
000187a4  B               loc_187E4
000187a8  LDR             R0, [R5,#0x40]
000187ac  LDR             R1, [R6,#0xC]
000187b0  LDR             R3, [R0,#0x38]
000187b4  ADD             R0, R6, #0x10
000187b8  ADD             R2, SP, #0x14+var_8
000187bc  MOV             LR, PC
000187c0  BX              R3
000187c4  LDR             R3, [SP,#0x14+var_8]
000187c8  MOV             R2, R6
000187cc  STR             R3, [SP,#0x14+var_14]
000187d0  MOV             R3, R0
000187d4  MOV             R0, R5
000187d8  MOV             R1, R10
000187dc  BL              sub_11C58
000187e0  MOV             R11, R0
000187e4  LDR             R0, =(start - 0x187F0)
000187e8  ADD             R0, PC, R0; start
000187ec  LDR             R0, [R0,#(dword_8 - 0xC)]
000187f0  ADR             LR, loc_18800
000187f4  LDR             R1, [R0,#0x6C]
000187f8  MOV             R0, R6
000187fc  BX              R1
00018800  MOV             R0, R11
00018804  B               loc_18514
