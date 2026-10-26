000193e0  PUSH            {R1-R11,LR}
000193e4  MOV             R9, R0
000193e8  MOV             R4, R1
000193ec  BL              sub_22A30
000193f0  LDR             R0, [R9,#0x1C]
000193f4  CMP             R0, #0
000193f8  BEQ             loc_19408
000193fc  MOV             R0, #1
00019400  POP             {R1-R11,LR}
00019404  BX              LR
00019408  LDR             R10, =(start - 0x19414)
0001940c  ADD             R10, PC, R10; start
00019410  LDR             R0, [R10,#(dword_8 - 0xC)]
00019414  ADR             LR, loc_19420
00019418  LDR             R0, [R0,#0xC0]
0001941c  BX              R0
00019420  ADD             R1, R4, #0x4000
00019424  ADD             R1, R1, #0xE20
00019428  LDR             R0, [R0,#0x28]
0001942c  MOV             R2, SP
00019430  BL              sub_18818
00019434  STR             R0, [SP,#0xC+var_4]
00019438  CMP             R0, #0
0001943c  BEQ             loc_1947C
00019440  LDR             R0, [SP,#0xC+var_4]
00019444  ADR             LR, loc_19470
00019448  LDR             R1, [R0,#4]!
0001944c  ADD             R5, R0, #4
00019450  MOV             R0, R1,LSL#16
00019454  MOV             R0, R0,LSR#16
00019458  STR             R1, [SP,#0xC+var_8]
0001945c  STRH            R0, [R9,#0x20]
00019460  LDR             R1, [R10,#(dword_8 - 0xC)]
00019464  MOV             R0, R0,LSL#3
00019468  LDR             R1, [R1,#0x68]
0001946c  BX              R1
00019470  STR             R0, [R9,#0x1C]
00019474  CMP             R0, #0
00019478  BNE             loc_19484
0001947c  MOV             R0, #0
00019480  B               loc_19400
00019484  MOV             R8, #0
00019488  MOV             R11, #0
0001948c  B               loc_195F0
00019490  LDR             R1, [R9,#0x1C]
00019494  LDR             R0, [R5]
00019498  ADD             R1, R1, R8,LSL#3
0001949c  STRH            R0, [R1]
000194a0  LDR             R0, [R5,#4]
000194a4  ADD             R5, R5, #8
000194a8  STR             R0, [SP,#0xC+var_C]
000194ac  LDR             R1, [R9,#0x1C]
000194b0  ADR             LR, loc_194D0
000194b4  ADD             R1, R1, R8,LSL#3
000194b8  STRH            R0, [R1,#2]
000194bc  LDR             R0, [SP,#0xC+var_C]
000194c0  LDR             R1, [R10,#(dword_8 - 0xC)]
000194c4  MOV             R0, R0,LSL#2
000194c8  LDR             R1, [R1,#0x68]
000194cc  BX              R1
000194d0  LDR             R1, [R9,#0x1C]
000194d4  MOV             R7, #0
000194d8  ADD             R1, R1, R8,LSL#3
000194dc  STR             R0, [R1,#4]
000194e0  B               loc_195E0
000194e4  LDR             R0, [R5],#4
000194e8  CMP             R0, #0
000194ec  BNE             loc_195DC
000194f0  LDR             R0, [R10,#(dword_8 - 0xC)]
000194f4  ADR             LR, loc_19504
000194f8  LDR             R1, [R0,#0x68]
000194fc  MOV             R0, #0xC
00019500  BX              R1
00019504  MOVS            R4, R0
00019508  BEQ             loc_195DC
0001950c  LDR             R0, [R9,#0x1C]
00019510  MOV             R2, #2
00019514  ADD             R0, R0, R8,LSL#3
00019518  LDR             R0, [R0,#4]
0001951c  MOV             R1, R5
00019520  STR             R4, [R0,R7,LSL#2]
00019524  STRB            R11, [R4]
00019528  LDR             R0, [R10,#(dword_8 - 0xC)]
0001952c  ADR             LR, loc_1953C
00019530  LDR             R3, [R0]
00019534  ADD             R0, R4, #4
00019538  BX              R3
0001953c  LDR             R0, [R10,#(dword_8 - 0xC)]
00019540  ADD             R5, R5, #2
00019544  LDR             R3, [R0]
00019548  ADD             R0, R4, #6
0001954c  MOV             R1, R5
00019550  MOV             R2, #2
00019554  MOV             LR, PC
00019558  BX              R3
0001955c  LDRH            R0, [R4,#6]
00019560  ADD             R5, R5, #2
00019564  CMP             R0, #0
00019568  BEQ             loc_19588
0001956c  MOV             R1, #0x18
00019570  MUL             R0, R1, R0
00019574  LDR             R1, [R10,#(dword_8 - 0xC)]
00019578  ADR             LR, loc_19584
0001957c  LDR             R1, [R1,#0x68]
00019580  BX              R1
00019584  STR             R0, [R4,#8]
00019588  MOV             R6, #0
0001958c  B               loc_195C4
00019590  LDR             R0, [R4,#8]
00019594  CMP             R0, #0
00019598  BEQ             loc_195BC
0001959c  ADD             R1, R6, R6,LSL#1
000195a0  ADD             R0, R0, R1,LSL#3
000195a4  LDR             R1, [R10,#(dword_8 - 0xC)]
000195a8  MOV             R2, #0x18
000195ac  LDR             R3, [R1]
000195b0  MOV             R1, R5
000195b4  MOV             LR, PC
000195b8  BX              R3
000195bc  ADD             R5, R5, #0x18
000195c0  ADD             R6, R6, #1
000195c4  LDRH            R0, [R4,#6]
000195c8  CMP             R0, R6
000195cc  BGT             loc_19590
000195d0  LDR             R0, [R4,#8]
000195d4  CMP             R0, #0
000195d8  STRHEQ          R11, [R4,#6]
000195dc  ADD             R7, R7, #1
000195e0  LDR             R0, [SP,#0xC+var_C]
000195e4  CMP             R7, R0
000195e8  BCC             loc_194E4
000195ec  ADD             R8, R8, #1
000195f0  LDR             R0, [SP,#0xC+var_8]
000195f4  CMP             R8, R0
000195f8  BLT             loc_19490
000195fc  LDR             R0, [R10,#(dword_8 - 0xC)]
00019600  ADR             LR, loc_19610
00019604  LDR             R1, [R0,#0x6C]
00019608  LDR             R0, [SP,#0xC+var_4]
0001960c  BX              R1
00019610  B               loc_193FC
