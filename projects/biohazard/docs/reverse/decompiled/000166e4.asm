000166e4  PUSH            {R3-R11,LR}
000166e8  LDR             R11, =(start - 0x166F8)
000166ec  MOV             R5, R0
000166f0  ADD             R11, PC, R11; start
000166f4  LDR             R0, [R11,#(dword_8 - 0xC)]
000166f8  ADR             LR, loc_16704
000166fc  LDR             R0, [R0,#0xC0]
00016700  BX              R0
00016704  MOV             R7, R0
00016708  MOV             R0, R5
0001670c  BL              sub_15A00
00016710  MOV             R10, #0
00016714  STRH            R10, [R5,#0x8C]
00016718  MOV             R0, #5
0001671c  ADD             R9, R5, #0x100
00016720  STRH            R0, [R9,#0x22]
00016724  MOV             R4, #0
00016728  ADD             R1, R4, #0x1800
0001672c  ADD             R1, R1, #0x358
00016730  MOV             R8, R1
00016734  MOV             R3, #0
00016738  MOV             R2, #0
0001673c  LDR             R0, [R7,#0x28]
00016740  BL              sub_19618
00016744  MOV             R6, R0
00016748  LDR             R0, [R11,#(dword_8 - 0xC)]
0001674c  ADR             LR, loc_1675C
00016750  LDR             R1, [R0,#0x68]
00016754  ADD             R0, R6, #4
00016758  BX              R1
0001675c  ADD             R1, R5, R4,LSL#2
00016760  STR             R0, [R1,#0xA0]
00016764  CMP             R0, #0
00016768  BEQ             loc_167B4
0001676c  MOV             R2, R0
00016770  LDR             R0, [R7,#0x28]
00016774  MOV             R3, R6
00016778  MOV             R1, R8
0001677c  BL              sub_19618
00016780  ADD             R0, R5, R4
00016784  STRB            R10, [R0,#0x54]
00016788  ADD             R0, R4, #1
0001678c  MOV             R4, R0,LSL#16
00016790  LDRH            R0, [R9,#0x22]
00016794  MOV             R4, R4,ASR#16
00016798  CMP             R0, R4
0001679c  BGT             loc_16728
000167a0  MOV             R0, #1
000167a4  STRB            R0, [R5,#0x54]
000167a8  STRB            R0, [R5,#0x56]
000167ac  STRB            R0, [R5,#0x12C]
000167b0  STRB            R10, [R5,#0x124]
000167b4  POP             {R3-R11,LR}
000167b8  BX              LR
