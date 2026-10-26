0001837c  PUSH            {R4,R5,LR}
00018380  MOV             R5, R1
00018384  LDR             R1, [R0,#0xE0]
00018388  SUB             SP, SP, #0x1C
0001838c  MOV             R4, R0
00018390  BL              sub_1058
00018394  MOV             R1, #0
00018398  STR             R1, [SP,#0x1C+var_4]
0001839c  LDR             R0, [R0,#0xC]
000183a0  LDR             R1, [R0]
000183a4  LDR             R2, [R1,#0x40]
000183a8  ADD             R1, SP, #0x1C+var_4
000183ac  BLX             R2
000183b0  LDR             R0, [SP,#0x1C+var_4]
000183b4  CMP             R0, #0
000183b8  BEQ             loc_18424
000183bc  LDR             R1, [R0]
000183c0  LDRH            R2, [R4,#4]
000183c4  LDRH            R3, [R4,#6]
000183c8  LDR             R12, [R1,#0x34]
000183cc  MOV             R1, R5
000183d0  BLX             R12
000183d4  LDR             R12, [R5]
000183d8  CMP             R12, #0
000183dc  BEQ             loc_18414
000183e0  LDRH            LR, [R4,#4]
000183e4  LDRH            R4, [R4,#6]
000183e8  LDR             R0, [SP,#0x1C+var_4]
000183ec  MOV             R3, #2
000183f0  MOV             R2, #0
000183f4  MOV             R1, #0
000183f8  STMFA           SP, {R0-R3}
000183fc  STR             R4, [SP,#0x1C+var_1C]
00018400  LDR             R0, [R12]
00018404  MOV             R3, LR
00018408  LDR             R4, [R0,#0x28]
0001840c  MOV             R0, R12
00018410  BLX             R4
00018414  LDR             R0, [SP,#0x1C+var_4]
00018418  LDR             R1, [R0]
0001841c  LDR             R1, [R1,#4]
00018420  BLX             R1
00018424  ADD             SP, SP, #0x1C
00018428  POP             {R4,R5,PC}
