0002258c  PUSH            {R4-R10,LR}
00022590  LDR             R10, =(start - 0x225AC)
00022594  MOV             R8, R2
00022598  MOV             R7, R1
0002259c  MOV             R5, #0
000225a0  MOV             R4, R0
000225a4  ADD             R10, PC, R10; start
000225a8  MOV             R9, #0
000225ac  B               loc_22668
000225b0  LDR             R0, [R4,#0x4C]
000225b4  LDR             R0, [R0,R5,LSL#2]
000225b8  CMP             R0, R7
000225bc  BCC             loc_22664
000225c0  CMP             R0, R8
000225c4  BHI             loc_22674
000225c8  LDR             R0, [R4,#0x50]
000225cc  ADD             R6, R0, R5,LSL#5
000225d0  LDR             R0, [R6,#8]
000225d4  CMP             R0, #0
000225d8  BEQ             loc_22664
000225dc  LDR             R1, [R4,#0x48]
000225e0  LDR             R2, [R1,R5,LSL#2]
000225e4  ADD             R1, R1, R5,LSL#2
000225e8  LDR             R1, [R1,#4]
000225ec  CMP             R2, R1
000225f0  BEQ             loc_22650
000225f4  LDR             R1, [R10,#(dword_8 - 0xC)]
000225f8  ADR             LR, loc_22604
000225fc  LDR             R1, [R1,#0x6C]
00022600  BX              R1
00022604  ADD             R0, R5, #1
00022608  B               loc_22644
0002260c  LDR             R1, [R4,#0x48]
00022610  LDR             R2, [R1,R0,LSL#2]
00022614  ADD             R1, R1, R0,LSL#2
00022618  LDR             R1, [R1,#4]
0002261c  CMP             R2, R1
00022620  BNE             loc_22650
00022624  LDR             R1, [R4,#0x50]
00022628  ADD             R1, R1, R0,LSL#5
0002262c  STR             R9, [R1,#8]
00022630  STR             R9, [R1,#0x10]
00022634  STR             R9, [R1,#0xC]
00022638  STR             R9, [R1,#0x14]
0002263c  STR             R9, [R1,#0x1C]
00022640  ADD             R0, R0, #1
00022644  LDR             R1, [R4,#0x44]
00022648  CMP             R1, R0
0002264c  BHI             loc_2260C
00022650  STR             R9, [R6,#8]
00022654  STR             R9, [R6,#0x10]
00022658  STR             R9, [R6,#0xC]
0002265c  STR             R9, [R6,#0x14]
00022660  STR             R9, [R6,#0x1C]
00022664  ADD             R5, R5, #1
00022668  LDR             R0, [R4,#0x44]
0002266c  CMP             R0, R5
00022670  BHI             loc_225B0
00022674  POP             {R4-R10,LR}
00022678  BX              LR
