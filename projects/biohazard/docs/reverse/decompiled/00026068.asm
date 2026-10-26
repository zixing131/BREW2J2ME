00026068  PUSH            {R3-R5,LR}
0002606c  LDR             R1, [R0,#0xE0]
00026070  MOV             R5, R0
00026074  BL              sub_1058
00026078  MOV             R4, R0
0002607c  LDR             R0, [R0,#0x90]
00026080  LDR             R1, [R0]
00026084  LDR             R1, [R1,#0x18]
00026088  BLX             R1
0002608c  LDR             R1, [R0]
00026090  CMP             R1, #0
00026094  BLT             loc_260A0
00026098  CMP             R1, #0x190
0002609c  BLT             loc_26114
000260a0  ADD             R12, R1, #0x500
000260a4  ADDS            R12, R12, #9
000260a8  BNE             loc_260EC
000260ac  LDR             R4, =(start - 0x260B8)
000260b0  ADD             R4, PC, R4; start
000260b4  LDR             R0, [R4,#(dword_8 - 0xC)]
000260b8  LDR             R3, =0x1E3
000260bc  LDR             R2, =(aWebFunC - 0x260CC); "web_fun.c"
000260c0  LDR             R12, [R0,#0x9C]
000260c4  ADD             R2, PC, R2; "web_fun.c"
000260c8  LDR             R0, =(aDbgprintfDSD_0 - 0x260D8); "*dbgprintf-%d* %s:%d"
000260cc  MOV             R1, #4
000260d0  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
000260d4  BLX             R12
000260d8  LDR             R0, [R4,#(dword_8 - 0xC)]
000260dc  LDR             R1, [R0,#0x9C]
000260e0  LDR             R0, =(aWebConnectionF - 0x260EC); "Web Connection Failed!"
000260e4  ADD             R0, PC, R0; "Web Connection Failed!"
000260e8  BLX             R1
000260ec  LDR             R0, [R5]
000260f0  LDR             R2, =(sub_26D18 - 0x26104)
000260f4  LDR             R1, [R0]
000260f8  MOV             R3, R5
000260fc  ADD             R2, PC, R2; sub_26D18
00026100  LDR             R12, [R1,#0x2C]
00026104  ADD             SP, SP, #4
00026108  POP             {R4,R5,LR}
0002610c  MOV             R1, #0x7D0
00026110  BX              R12
00026114  LDR             R0, [R0,#4]
00026118  STR             R0, [R4,#0xCC]
0002611c  CMP             R0, #0
00026120  BEQ             locret_2614C
00026124  LDR             R1, =(sub_26A28 - 0x26130)
00026128  ADD             R1, PC, R1; sub_26A28
0002612c  STR             R1, [R4,#0xC0]
00026130  STR             R5, [R4,#0xC4]
00026134  LDR             R2, [R0]
00026138  ADD             R1, R4, #0xB0
0002613c  LDR             R2, [R2,#0x10]
00026140  ADD             SP, SP, #4
00026144  POP             {R4,R5,LR}
00026148  BX              R2
0002614c  POP             {R3-R5,PC}
