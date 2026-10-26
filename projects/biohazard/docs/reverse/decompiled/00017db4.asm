00017db4  PUSH            {R3-R7,LR}
00017db8  MOV             R12, R1
00017dbc  MOV             R1, R2
00017dc0  LDR             R6, [SP,#4+arg_0]
00017dc4  CMP             R0, #0
00017dc8  CMPNE           R1, #0
00017dcc  CMPNE           R6, #0
00017dd0  MOVEQ           R0, #1
00017dd4  LDR             R5, [SP,#4+arg_4]
00017dd8  MOV             R7, R3
00017ddc  BEQ             locret_17E24
00017de0  MOV             R2, #0xB
00017de4  MUL             R3, R2, R12
00017de8  ADD             R4, R0, R3,LSL#2
00017dec  LDR             R0, =(start - 0x17DF8)
00017df0  ADD             R0, PC, R0; start
00017df4  LDR             R0, [R0,#(dword_8 - 0xC)]
00017df8  MOV             R2, #0x1E
00017dfc  LDR             R3, [R0,#0x14C]
00017e00  MOV             R0, R4
00017e04  BLX             R3
00017e08  STRB            R7, [R4,#0x1E]
00017e0c  STR             R5, [R4,#0x28]
00017e10  STR             R6, [R4,#0x20]
00017e14  CMP             R5, #0
00017e18  LDRNE           R0, [R5]
00017e1c  STRNE           R0, [R4,#0x24]
00017e20  MOV             R0, #0
00017e24  POP             {R3-R7,PC}
