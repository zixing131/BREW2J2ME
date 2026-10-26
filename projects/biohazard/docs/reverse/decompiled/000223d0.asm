000223d0  PUSH            {R0-R6,LR}
000223d4  LDR             R1, [R0,#0xE0]
000223d8  MOV             R4, R0
000223dc  BL              sub_1058
000223e0  MOV             R6, R0
000223e4  MOV             R0, R4
000223e8  BL              sub_14A90
000223ec  CMP             R0, #0
000223f0  BEQ             locret_224FC
000223f4  MOV             R2, #0xFFFFFF00
000223f8  ADD             R1, R4, #0xF4
000223fc  LDR             R0, [R6,#0xC]
00022400  BL              sub_144D0
00022404  LDRH            R0, [R4,#0xF4]
00022408  LDR             R2, =0xC0DCC000
0002240c  ADD             R1, SP, #0x10+var_8
00022410  ADD             R0, R0, #1
00022414  STRH            R0, [SP,#0x10+var_8]
00022418  LDRH            R0, [R4,#0xF6]
0002241c  ADD             R0, R0, #1
00022420  STRH            R0, [SP,#0x10+var_6]
00022424  LDRH            R0, [R4,#0xF8]
00022428  SUB             R0, R0, #2
0002242c  STRH            R0, [SP,#0x10+var_4]
00022430  LDRH            R0, [R4,#0xFA]
00022434  SUB             R0, R0, #2
00022438  STRH            R0, [SP,#0x10+var_2]
0002243c  LDR             R0, [R6,#0xC]
00022440  BL              sub_144D0
00022444  MOV             R5, #0
00022448  B               loc_224A0
0002244c  LDRSH           R0, [SP,#0x10+var_4]
00022450  MUL             R1, R5, R0
00022454  LDR             R0, [R4,#0xE8]
00022458  BL              sub_1DC
0002245c  LDRH            R1, [SP,#0x10+var_8]
00022460  ADD             R0, R0, R1
00022464  STRH            R0, [SP,#0x10+var_10]
00022468  LDRH            R0, [SP,#0x10+var_6]
0002246c  STRH            R0, [SP,#0x10+var_E]
00022470  LDRSH           R1, [SP,#0x10+var_4]
00022474  LDR             R0, [R4,#0xE8]
00022478  BL              sub_1DC
0002247c  SUB             R0, R0, #1
00022480  STRH            R0, [SP,#0x10+var_C]
00022484  LDRH            R0, [SP,#0x10+var_2]
00022488  MOV             R2, #0
0002248c  MOV             R1, SP
00022490  STRH            R0, [SP,#0x10+var_A]
00022494  LDR             R0, [R6,#0xC]
00022498  BL              sub_144D0
0002249c  ADD             R5, R5, #1
000224a0  LDR             R0, [R4,#0xE4]
000224a4  CMP             R0, R5
000224a8  BHI             loc_2244C
000224ac  LDR             R0, [R4,#0xE4]
000224b0  ADD             R0, R0, #1
000224b4  STR             R0, [R4,#0xE4]
000224b8  LDR             R1, [R4,#0xE8]
000224bc  CMP             R0, R1
000224c0  MOVHI           R0, #0
000224c4  STRHI           R0, [R4,#0xE4]
000224c8  LDR             R0, [R6,#0xC]
000224cc  LDR             R1, [R0]
000224d0  LDR             R2, [R1,#0x1C]
000224d4  MOV             R1, #1
000224d8  BLX             R2
000224dc  LDR             R0, [R4]
000224e0  MOV             R3, R4
000224e4  LDR             R1, [R0]
000224e8  LDR             R2, =(sub_223D0 - 0x224F4)
000224ec  ADD             R2, PC, R2; sub_223D0
000224f0  LDR             R12, [R1,#0x2C]
000224f4  MOV             R1, #0xFA
000224f8  BLX             R12
000224fc  POP             {R0-R6,PC}
