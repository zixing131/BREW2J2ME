00023db4  PUSH            {R4-R6,LR}
00023db8  MOV             R4, R0
00023dbc  LDR             R0, [R0,#0x14]
00023dc0  LDR             R1, [R4,#0x18]
00023dc4  LDR             R5, =(start - 0x23DD4)
00023dc8  LDR             R0, [R0]
00023dcc  ADD             R5, PC, R5; start
00023dd0  STR             R0, [R1]
00023dd4  LDR             R0, [R5,#(dword_8 - 0xC)]
00023dd8  ADR             LR, loc_23DE4
00023ddc  LDR             R0, [R0,#0xC0]
00023de0  BX              R0
00023de4  LDR             R0, [R0,#0x760]
00023de8  MOV             R6, #1
00023dec  STRB            R6, [R0,#0x234]
00023df0  LDR             R0, [R5,#(dword_8 - 0xC)]
00023df4  ADR             LR, loc_23E00
00023df8  LDR             R0, [R0,#0xC0]
00023dfc  BX              R0
00023e00  LDR             R0, [R0,#0x760]
00023e04  MOV             R1, #0
00023e08  ADD             R0, R0, #0x200
00023e0c  STRH            R1, [R0,#0x36]
00023e10  STRB            R6, [R4,#0x20]
00023e14  LDRB            R0, [R4,#0x342]
00023e18  CMP             R0, #0
00023e1c  BNE             loc_23E4C
00023e20  LDR             R0, [R5,#(dword_8 - 0xC)]
00023e24  ADR             LR, loc_23E30
00023e28  LDR             R0, [R0,#0xC0]
00023e2c  BX              R0
00023e30  LDR             R0, [R0,#0x760]
00023e34  MOV             R3, #0
00023e38  MOV             R1, #0
00023e3c  ADD             R0, R0, #0x220
00023e40  LDR             R2, =0x18A2
00023e44  BL              sub_E00
00023e48  STRB            R6, [R4,#0x342]
00023e4c  POP             {R4-R6,LR}
00023e50  BX              LR
