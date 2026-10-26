000213a4  PUSH            {R2-R4,LR}
000213a8  MOV             R4, R0
000213ac  LDRB            R0, [R0,#0x3E]
000213b0  CMP             R0, #1
000213b4  BEQ             loc_214DC
000213b8  LDRB            R0, [R4,#0x764]
000213bc  CMP             R0, #0
000213c0  BEQ             loc_213EC
000213c4  ADD             R1, R4, #0x700
000213c8  LDRH            R0, [R1,#0x66]
000213cc  SUB             R0, R0, #1
000213d0  MOV             R0, R0,LSL#16
000213d4  MOV             R0, R0,ASR#16
000213d8  STRH            R0, [R1,#0x66]
000213dc  CMP             R0, #0
000213e0  MOVLT           R0, #0
000213e4  STRBLT          R0, [R4,#0x764]
000213e8  B               loc_2147C
000213ec  LDR             R0, [R4,#0x760]
000213f0  MOV             R3, #0
000213f4  MOV             R2, R4
000213f8  MOV             R1, R0
000213fc  BL              sub_20134
00021400  MOV             R0, R4
00021404  BL              sub_1E458
00021408  LDRB            R0, [R4,#0x59]
0002140c  CMP             R0, #1
00021410  LDRBEQ          R0, [R4,#0x3E]
00021414  CMPEQ           R0, #0
00021418  LDRBEQ          R0, [R4,#0x50]
0002141c  CMPEQ           R0, #0
00021420  BNE             loc_2147C
00021424  LDR             R2, [R4,#0x54]
00021428  CMP             R2, #0
0002142c  BEQ             loc_2147C
00021430  LDR             R0, [R4,#0x44]
00021434  CMP             R0, #0
00021438  BEQ             loc_21470
0002143c  LDR             R1, [R0]
00021440  ADR             LR, loc_21450
00021444  LDR             R2, [R1,#0x34]
00021448  ADD             R1, SP, #8+var_4
0002144c  BX              R2
00021450  LDRB            R0, [SP,#8+var_4]
00021454  CMP             R0, #0
00021458  LDREQ           R0, [R4,#0x44]
0002145c  ADREQ           LR, loc_2146C
00021460  LDREQ           R1, [R0]
00021464  LDREQ           R1, [R1,#0x18]
00021468  BXEQ            R1
0002146c  B               loc_2147C
00021470  MOV             R1, R4
00021474  MOV             R0, R4
00021478  BL              sub_199AC
0002147c  LDR             R0, =(start - 0x21488)
00021480  ADD             R0, PC, R0; start
00021484  LDR             R0, [R0,#(dword_8 - 0xC)]
00021488  ADR             LR, loc_21494
0002148c  LDR             R0, [R0,#0xB0]
00021490  BX              R0
00021494  LDR             R1, [R4,#0x34]
00021498  LDR             R3, [R4,#0x30]
0002149c  SUB             R2, R0, R1
000214a0  STR             R0, [R4,#0x34]
000214a4  STRH            R2, [R4,#0x3C]
000214a8  LDR             R0, [R4,#0xC]
000214ac  SUB             R3, R3, R2
000214b0  LDR             R2, [R0]
000214b4  CMP             R3, #0x1E
000214b8  MOV             R1, #0x1E
000214bc  LDR             R12, [R2,#0x2C]
000214c0  LDR             R2, =(sub_213A4 - 0x214D4)
000214c4  MOVGT           R1, R3
000214c8  MOV             R3, R4
000214cc  ADD             R2, PC, R2; sub_213A4
000214d0  ADD             SP, SP, #8
000214d4  POP             {R4,LR}
000214d8  BX              R12
000214dc  POP             {R2-R4,LR}
000214e0  BX              LR
