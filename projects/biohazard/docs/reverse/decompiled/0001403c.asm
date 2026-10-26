0001403c  PUSH            {R1-R7,LR}
00014040  MOV             R4, R0
00014044  LDRB            R0, [R0,#0x758]
00014048  MOV             LR, R1
0001404c  CMP             R0, #1
00014050  BNE             loc_14064
00014054  MOV             R1, LR
00014058  LDR             R0, [R4,#0x734]
0001405c  BL              sub_1473C
00014060  B               loc_142DC
00014064  SUBS            R12, LR, #0x400
00014068  SUBSGE          R12, R12, #1
0001406c  MOV             R6, #1
00014070  BEQ             loc_142A4
00014074  BGT             loc_141A4
00014078  LDR             R7, =(sub_213A4 - 0x14084)
0001407c  ADD             R7, PC, R7; sub_213A4
00014080  MOV             R5, #0
00014084  CMP             LR, #3
00014088  BEQ             loc_14258
0001408c  BGT             loc_14144
00014090  CMP             LR, #0
00014094  BEQ             loc_14214
00014098  CMP             LR, #1
0001409c  BEQ             loc_14238
000140a0  CMP             LR, #2
000140a4  BNE             loc_142E4
000140a8  STRB            R6, [R4,#0x3E]
000140ac  STRB            R5, [R4,#0x50]
000140b0  LDR             R0, [R4,#0xC]
000140b4  MOV             R2, R4
000140b8  LDR             R1, [R0]
000140bc  ADR             LR, loc_140CC
000140c0  LDR             R3, [R1,#0x30]
000140c4  MOV             R1, #0
000140c8  BX              R3
000140cc  LDR             R0, [R4,#0x44]
000140d0  CMP             R0, #0
000140d4  BEQ             loc_140E8
000140d8  BL              sub_145C8
000140dc  LDR             R0, [R4,#0x44]
000140e0  BL              sub_145BC
000140e4  STR             R5, [R4,#0x44]
000140e8  LDR             R0, [R4,#0x48]
000140ec  CMP             R0, #0
000140f0  BEQ             loc_14110
000140f4  LDR             R1, =(start - 0x14100)
000140f8  ADD             R1, PC, R1; start
000140fc  LDR             R1, [R1,#(dword_8 - 0xC)]
00014100  ADR             LR, loc_1410C
00014104  LDR             R1, [R1,#0x6C]
00014108  BX              R1
0001410c  STR             R5, [R4,#0x48]
00014110  STRB            R6, [R4,#0x58]
00014114  LDR             R0, [R4,#0x760]
00014118  LDR             R1, [R0,#0x13C]
0001411c  CMP             R1, #5
00014120  LDRBEQ          R1, [R0,#0x1A4]
00014124  CMPEQ           R1, #0
00014128  LDREQ           R0, [R0,#0x190]
0001412c  LDREQ           R0, [R0,#0x330]
00014130  STREQ           R5, [R0]
00014134  LDR             R0, [R4,#0x24]
00014138  CMP             R0, #0
0001413c  BLNE            sub_22508
00014140  B               loc_142DC
00014144  CMP             LR, #0x100
00014148  LDRNE           R12, =(sub_100+1)
0001414c  CMPNE           LR, R12
00014150  SUBNE           R12, LR, #0x100
00014154  SUBSNE          R12, R12, #2
00014158  BNE             loc_142E4
0001415c  LDRB            R0, [R4,#0x3E]
00014160  CMP             R0, #1
00014164  BEQ             loc_142E4
00014168  LDRB            R0, [R4,#0x58]
0001416c  CMP             R0, #1
00014170  BNE             loc_14188
00014174  SUB             R12, LR, #0x100
00014178  SUBS            R12, R12, #2
0001417c  STRBEQ          R5, [R4,#0x58]
00014180  BEQ             loc_142DC
00014184  STRB            R5, [R4,#0x58]
00014188  STMEA           SP, {R2,R3}
0001418c  LDR             R0, [R4,#0x760]
00014190  MOV             R3, LR
00014194  MOV             R2, R4
00014198  MOV             R1, R0
0001419c  BL              sub_130A4
000141a0  B               loc_142DC
000141a4  SUBS            R12, LR, #0x400
000141a8  SUBSGE          R12, R12, #0x104
000141ac  BEQ             loc_141E8
000141b0  BGT             loc_141D4
000141b4  SUB             R12, LR, #0x400
000141b8  SUBS            R12, R12, #4
000141bc  BEQ             loc_142E4
000141c0  SUB             R12, LR, #0x400
000141c4  SUBS            R12, R12, #5
000141c8  CMPNE           LR, #0x500
000141cc  BEQ             loc_142DC
000141d0  B               loc_142E4
000141d4  SUB             R12, LR, #0x500
000141d8  SUBS            R12, R12, #5
000141dc  SUBNE           R12, LR, #0x500
000141e0  SUBSNE          R12, R12, #6
000141e4  BNE             loc_142E4
000141e8  LDRB            R0, [R4,#0x3E]
000141ec  CMP             R0, #1
000141f0  BEQ             loc_142E4
000141f4  STMEA           SP, {R2,R3}
000141f8  LDR             R0, [R4,#0x760]
000141fc  MOV             R3, LR
00014200  MOV             R2, R4
00014204  MOV             R1, R0
00014208  BL              sub_130A4
0001420c  POP             {R1-R7,LR}
00014210  BX              LR
00014214  LDR             R0, [R4,#0xC]
00014218  LDR             R1, [R4,#0x30]
0001421c  LDR             R2, [R0]
00014220  MOV             R3, R4
00014224  LDR             R12, [R2,#0x2C]
00014228  MOV             R2, R7
0001422c  MOV             LR, PC
00014230  BX              R12
00014234  B               loc_142DC
00014238  LDR             R0, [R4,#0xC]
0001423c  MOV             R2, R4
00014240  LDR             R1, [R0]
00014244  ADR             LR, loc_14254
00014248  LDR             R3, [R1,#0x30]
0001424c  MOV             R1, #0
00014250  BX              R3
00014254  B               loc_142DC
00014258  STRB            R5, [R4,#0x3E]
0001425c  STRB            R5, [R4,#0x50]
00014260  LDRB            R0, [R4,#0x59]
00014264  CMP             R0, #1
00014268  MOVEQ           R1, #1
0001426c  LDREQ           R2, [R4,#0x54]
00014270  MOVEQ           R0, R4
00014274  BLEQ            sub_24C64
00014278  LDR             R0, [R4,#0xC]
0001427c  LDR             R1, [R4,#0x30]
00014280  LDR             R2, [R0]
00014284  MOV             R3, R4
00014288  LDR             R12, [R2,#0x2C]
0001428c  MOV             R2, R7
00014290  MOV             LR, PC
00014294  BX              R12
00014298  MOV             R0, R4
0001429c  BL              sub_1E458
000142a0  B               loc_142DC
000142a4  CMP             R3, #0
000142a8  BEQ             loc_142DC
000142ac  LDR             R0, [R3,#8]
000142b0  CMP             R0, #2
000142b4  LDREQ           R1, =0x766
000142b8  STRBEQ          R6, [R4,#0x764]
000142bc  MOVEQ           R0, #0x19
000142c0  STRHEQ          R0, [R1,R4]
000142c4  LDRBEQ          R0, [R4,#0x59]
000142c8  CMPEQ           R0, #1
000142cc  BNE             loc_142DC
000142d0  LDR             R0, [R4,#0x44]
000142d4  CMP             R0, #0
000142d8  BLNE            sub_145C8
000142dc  MOV             R0, #1
000142e0  B               loc_1420C
000142e4  MOV             R0, #0
000142e8  B               loc_1420C
