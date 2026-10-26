00024190  PUSH            {R2-R6,LR}
00024194  MOV             R5, R0
00024198  LDR             R0, [R0,#0xC]
0002419c  MOV             R6, R1
000241a0  LDR             R1, [R0]
000241a4  ADD             R2, SP, #8+var_4
000241a8  LDR             R3, [R1,#8]
000241ac  LDR             R1, =0x1001003
000241b0  MOV             LR, PC
000241b4  BX              R3
000241b8  CMP             R0, #0
000241bc  BNE             loc_24358
000241c0  LDR             R0, [SP,#8+var_4]
000241c4  MOV             R2, #2
000241c8  LDR             R1, [R0]
000241cc  LDR             R3, [R1,#8]
000241d0  LDR             R1, =(aSaveDat - 0x241DC); "save.dat"
000241d4  ADD             R1, PC, R1; "save.dat"
000241d8  MOV             LR, PC
000241dc  BX              R3
000241e0  MOVS            R4, R0
000241e4  BNE             loc_24200
000241e8  LDR             R0, [SP,#8+var_4]
000241ec  ADR             LR, loc_241FC
000241f0  LDR             R1, [R0]
000241f4  LDR             R1, [R1,#4]
000241f8  BX              R1
000241fc  B               loc_24358
00024200  TST             R6, #1
00024204  BEQ             loc_24274
00024208  LDR             R0, [R4]
0002420c  MOV             R2, #0
00024210  LDR             R3, [R0,#0x1C]
00024214  MOV             R0, R4
00024218  MOV             R1, #0
0002421c  MOV             LR, PC
00024220  BX              R3
00024224  LDR             R0, [R4]
00024228  MOV             R2, #8
0002422c  LDR             R3, [R0,#0x14]
00024230  MOV             R0, R4
00024234  ADD             R1, R5, #0x59 ; 'Y'
00024238  MOV             LR, PC
0002423c  BX              R3
00024240  CMP             R0, #8
00024244  BEQ             loc_24274
00024248  LDR             R0, [R4]
0002424c  ADR             LR, loc_2425C
00024250  LDR             R1, [R0,#4]
00024254  MOV             R0, R4
00024258  BX              R1
0002425c  LDR             R0, [SP,#8+var_4]
00024260  LDR             R1, [R0]
00024264  ADR             LR, loc_24270
00024268  LDR             R1, [R1,#4]
0002426c  BX              R1
00024270  B               loc_24358
00024274  TST             R6, #2
00024278  BEQ             loc_242E8
0002427c  LDR             R0, [R4]
00024280  MOV             R2, #8
00024284  LDR             R3, [R0,#0x1C]
00024288  MOV             R0, R4
0002428c  MOV             R1, #0
00024290  MOV             LR, PC
00024294  BX              R3
00024298  LDR             R0, [R4]
0002429c  MOV             R2, #0x314
000242a0  LDR             R3, [R0,#0x14]
000242a4  MOV             R0, R4
000242a8  ADD             R1, R5, #0x64 ; 'd'
000242ac  MOV             LR, PC
000242b0  BX              R3
000242b4  CMP             R0, #0x314
000242b8  BEQ             loc_242E8
000242bc  LDR             R0, [R4]
000242c0  ADR             LR, loc_242D0
000242c4  LDR             R1, [R0,#4]
000242c8  MOV             R0, R4
000242cc  BX              R1
000242d0  LDR             R0, [SP,#8+var_4]
000242d4  LDR             R1, [R0]
000242d8  ADR             LR, loc_242E4
000242dc  LDR             R1, [R1,#4]
000242e0  BX              R1
000242e4  B               loc_24358
000242e8  TST             R6, #8
000242ec  BEQ             loc_24364
000242f0  LDR             R0, [R4]
000242f4  MOV             R2, #0x31C
000242f8  LDR             R3, [R0,#0x1C]
000242fc  MOV             R0, R4
00024300  MOV             R1, #0
00024304  MOV             LR, PC
00024308  BX              R3
0002430c  LDR             R0, [R4]
00024310  MOV             R2, #0x3C ; '<'
00024314  LDR             R3, [R0,#0x14]
00024318  MOV             R0, R4
0002431c  ADD             R1, R5, #0x378
00024320  MOV             LR, PC
00024324  BX              R3
00024328  CMP             R0, #0x3C ; '<'
0002432c  BEQ             loc_24364
00024330  LDR             R0, [R4]
00024334  ADR             LR, loc_24344
00024338  LDR             R1, [R0,#4]
0002433c  MOV             R0, R4
00024340  BX              R1
00024344  LDR             R0, [SP,#8+var_4]
00024348  LDR             R1, [R0]
0002434c  ADR             LR, loc_24358
00024350  LDR             R1, [R1,#4]
00024354  BX              R1
00024358  MOV             R0, #0
0002435c  POP             {R2-R6,LR}
00024360  BX              LR
00024364  LDR             R0, [R4]
00024368  ADR             LR, loc_24378
0002436c  LDR             R1, [R0,#4]
00024370  MOV             R0, R4
00024374  BX              R1
00024378  LDR             R0, [SP,#8+var_4]
0002437c  LDR             R1, [R0]
00024380  ADR             LR, loc_2438C
00024384  LDR             R1, [R1,#4]
00024388  BX              R1
0002438c  MOV             R0, #1
00024390  B               loc_2435C
