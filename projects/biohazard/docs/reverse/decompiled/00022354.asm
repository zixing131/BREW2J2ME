00022354  PUSH            {R1-R5,LR}
00022358  MOV             R4, R0
0002235c  LDR             R0, [R0,#0x14]
00022360  CMP             R0, #0
00022364  MOVEQ           R0, #7
00022368  BEQ             loc_223C4
0002236c  MOV             R0, #0
00022370  STRH            R0, [SP,#0xC+var_8]
00022374  STRH            R0, [SP,#0xC+var_6]
00022378  MOV             R0, #1
0002237c  STRH            R0, [SP,#0xC+var_4]
00022380  LDR             R5, =0xF0F0F000
00022384  STRH            R0, [SP,#0xC+var_2]
00022388  LDR             R0, [R4,#0x20]
0002238c  ADD             R1, SP, #0xC+var_8
00022390  MOV             R2, R5
00022394  BL              sub_1453C
00022398  LDRH            R0, [R4]
0002239c  MOV             R2, R5
000223a0  ADD             R1, SP, #0xC+var_8
000223a4  SUB             R0, R0, #1
000223a8  STRH            R0, [SP,#0xC+var_8]
000223ac  LDRH            R0, [R4,#2]
000223b0  SUB             R0, R0, #1
000223b4  STRH            R0, [SP,#0xC+var_6]
000223b8  LDR             R0, [R4,#0x20]
000223bc  BL              sub_1453C
000223c0  MOV             R0, #0
000223c4  POP             {R1-R5,LR}
000223c8  BX              LR
