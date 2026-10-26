000145d4  PUSH            {R3-R7,LR}
000145d8  MOVS            R5, R0
000145dc  MOVEQ           R0, #1
000145e0  BEQ             locret_14734
000145e4  LDR             R1, [R5,#0xE0]
000145e8  MOV             R0, R5
000145ec  BL              sub_1058
000145f0  MOV             R4, R0
000145f4  MOV             R0, R5
000145f8  BL              sub_14AA0
000145fc  LDR             R0, [R4,#0xC]
00014600  MOV             R6, #0
00014604  CMP             R0, #0
00014608  BEQ             loc_14614
0001460c  BL              sub_142FC
00014610  STR             R6, [R4,#0xC]
00014614  MOV             R0, R5
00014618  BL              sub_255C4
0001461c  LDR             R7, =(start - 0x14628)
00014620  ADD             R7, PC, R7; start
00014624  LDR             R0, [R4,#0x10]
00014628  CMP             R0, #0
0001462c  BEQ             loc_14640
00014630  LDR             R1, [R7,#(dword_8 - 0xC)]
00014634  LDR             R1, [R1,#0x6C]
00014638  BLX             R1
0001463c  STR             R6, [R4,#0x10]
00014640  LDR             R0, [R4,#0x20]
00014644  CMP             R0, #0
00014648  BEQ             loc_1465C
0001464c  LDR             R1, [R7,#(dword_8 - 0xC)]
00014650  LDR             R1, [R1,#0x6C]
00014654  BLX             R1
00014658  STR             R6, [R4,#0x20]
0001465c  LDR             R0, [R4,#0x84]
00014660  CMP             R0, #0
00014664  BEQ             loc_14678
00014668  LDR             R1, [R7,#(dword_8 - 0xC)]
0001466c  LDR             R1, [R1,#0x6C]
00014670  BLX             R1
00014674  STR             R6, [R4,#0x84]
00014678  LDR             R0, [R4,#0x44]
0001467c  CMP             R0, #0
00014680  BEQ             loc_146A8
00014684  LDRB            R1, [R4,#0x48]
00014688  CMP             R1, #0
0001468c  BEQ             loc_146A0
00014690  LDR             R1, [R7,#(dword_8 - 0xC)]
00014694  LDR             R1, [R1,#0xBC]
00014698  BLX             R1
0001469c  B               loc_146A4
000146a0  BL              sub_142FC
000146a4  STR             R6, [R4,#0x44]
000146a8  LDR             R0, [R4,#0x17C]
000146ac  CMP             R0, #0
000146b0  BEQ             loc_146C4
000146b4  LDR             R1, [R7,#(dword_8 - 0xC)]
000146b8  LDR             R1, [R1,#0x6C]
000146bc  BLX             R1
000146c0  STR             R6, [R4,#0x17C]
000146c4  LDR             R0, [R4,#0x178]
000146c8  CMP             R0, #0
000146cc  BEQ             loc_146E0
000146d0  LDR             R1, [R7,#(dword_8 - 0xC)]
000146d4  LDR             R1, [R1,#0x6C]
000146d8  BLX             R1
000146dc  STR             R6, [R4,#0x178]
000146e0  LDR             R0, [R4,#0xD4]
000146e4  CMP             R0, #0
000146e8  BEQ             loc_146FC
000146ec  LDR             R1, [R7,#(dword_8 - 0xC)]
000146f0  LDR             R1, [R1,#0x6C]
000146f4  BLX             R1
000146f8  STR             R6, [R4,#0xD4]
000146fc  LDR             R0, [R4,#0x88]
00014700  CMP             R0, #0
00014704  BEQ             loc_14710
00014708  BL              sub_142FC
0001470c  STR             R6, [R4,#0x88]
00014710  LDR             R0, [R7,#(dword_8 - 0xC)]
00014714  LDR             R1, [R0,#0x6C]
00014718  MOV             R0, R4
0001471c  BLX             R1
00014720  LDR             R0, [R7,#(dword_8 - 0xC)]
00014724  LDR             R1, [R0,#0x6C]
00014728  MOV             R0, R5
0001472c  BLX             R1
00014730  MOV             R0, #0
00014734  POP             {R3-R7,PC}
