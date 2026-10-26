00009298  PUSH            {R0-R2,R4-R11,LR}
0000929c  LDR             R9, =(start - 0x92B4)
000092a0  SUB             SP, SP, #0x1A8
000092a4  MOV             R6, R1
000092a8  MOV             R4, R0
000092ac  ADD             R9, PC, R9; start
000092b0  LDR             R0, [R9,#(dword_8 - 0xC)]
000092b4  ADR             LR, loc_92C0
000092b8  LDR             R0, [R0,#0xC0]
000092bc  BX              R0
000092c0  LDR             R7, [R0,#0x28]
000092c4  MOV             R0, #0
000092c8  LDR             R8, [R7,#0x64]
000092cc  STRH            R0, [SP,#0x1B4+var_194]
000092d0  STRH            R0, [SP,#0x1B4+var_192]
000092d4  LDRH            R0, [R6]
000092d8  LDR             R10, =0x22F6
000092dc  MOV             R2, #8
000092e0  STRH            R0, [SP,#0x1B4+var_190]
000092e4  LDRH            R0, [R6,#2]
000092e8  STRH            R0, [SP,#0x1B4+var_18E]
000092ec  LDRH            R0, [R6]
000092f0  LDR             R1, [R4,#0x114]
000092f4  MOV             R0, R0,LSR#1
000092f8  STRH            R0, [R1,#0xE]
000092fc  LDRH            R0, [R6,#2]
00009300  LDR             R1, [R4,#0x114]
00009304  SUB             R0, R0, #0x9B
00009308  ADD             R0, R0, R0,LSR#31
0000930c  MOV             R0, R0,ASR#1
00009310  STRH            R0, [R1,#0x10]
00009314  LDR             R0, [R4,#0x114]
00009318  MOV             R1, #0
0000931c  BL              sub_103F4
00009320  MOV             R5, #0
00009324  ADD             R11, R4, #0x100
00009328  CMP             R5, #1
0000932c  BNE             loc_936C
00009330  LDR             R0, [R4,#0x110]
00009334  LDRB            R0, [R0,#0x20]
00009338  CMP             R0, #0
0000933c  BEQ             loc_936C
00009340  LDR             R0, [R9,#(dword_8 - 0xC)]
00009344  ADR             LR, loc_9350
00009348  LDR             R0, [R0,#0xC0]
0000934c  BX              R0
00009350  LDR             R0, [R0,#0x760]
00009354  LDRB            R0, [R0,#0x234]
00009358  CMP             R0, #0
0000935c  MOVEQ           R3, #0x50 ; 'P'
00009360  ADDEQ           R2, SP, #0x1B4+var_CC
00009364  LDREQ           R1, =0x232F
00009368  BEQ             loc_9378
0000936c  ADD             R1, R10, R5
00009370  MOV             R3, #0x50 ; 'P'
00009374  ADD             R2, SP, #0x1B4+var_CC
00009378  MOV             R0, R7
0000937c  BL              sub_19618
00009380  LDRSH           R0, [R11,#0x4A]
00009384  ADD             R3, SP, #0x1B4+var_CC
00009388  CMP             R0, R5
0000938c  LDR             R0, [R9,#(dword_8 - 0xC)]
00009390  LDR             R12, [R0,#0x3C]
00009394  BNE             loc_93D8
00009398  LDR             R2, =(aT00001Hffff00S_0 - 0x93A4); "$T00001$Hffff00$S000000%s"
0000939c  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s"
000093a0  MOV             R1, #0xC0
000093a4  ADD             R0, SP, #0x1B4+var_18C
000093a8  MOV             LR, PC
000093ac  BX              R12
000093b0  MOV             R2, #1
000093b4  ADD             R1, SP, #0x1B4+var_CC
000093b8  MOV             R0, R8
000093bc  BL              sub_12BC8
000093c0  LDRH            R1, [R6]
000093c4  SUB             R0, R1, R0
000093c8  ADD             R0, R0, R0,LSR#31
000093cc  MOV             R0, R0,ASR#1
000093d0  SUB             R0, R0, #0xC
000093d4  B               loc_9410
000093d8  LDR             R2, =(aT00001HffffffS_0 - 0x93E4); "$T00001$Hffffff$S000000%s"
000093dc  ADD             R2, PC, R2; "$T00001$Hffffff$S000000%s"
000093e0  MOV             R1, #0xC0
000093e4  ADD             R0, SP, #0x1B4+var_18C
000093e8  MOV             LR, PC
000093ec  BX              R12
000093f0  MOV             R2, #1
000093f4  ADD             R1, SP, #0x1B4+var_CC
000093f8  MOV             R0, R8
000093fc  BL              sub_12BC8
00009400  LDRH            R1, [R6]
00009404  SUB             R0, R1, R0
00009408  ADD             R0, R0, R0,LSR#31
0000940c  MOV             R0, R0,ASR#1
00009410  LDR             R1, [R4,#0x114]
00009414  MOV             R0, R0,LSL#16
00009418  LDRH            R1, [R1,#0x10]
0000941c  MOV             R0, R0,ASR#16
00009420  MOV             R3, #0
00009424  ADD             R1, R1, #0xB
00009428  MOV             R12, R1,LSL#16
0000942c  MOV             R1, #0
00009430  MOV             R2, #2
00009434  ADD             LR, SP, #0x1B4+var_1A4
00009438  STM             LR, {R0-R3}
0000943c  MOV             R2, #0
00009440  ADD             R0, SP, #0x1B4+var_18C
00009444  STMEA           SP, {R0-R3}
00009448  MOV             R12, R12,ASR#16
0000944c  MOV             R2, R12
00009450  LDR             R0, [R7,#0x64]
00009454  ADD             R3, SP, #0x1B4+var_194
00009458  MOV             R1, R6
0000945c  BL              sub_98BC
00009460  LDR             R0, [R4,#0x114]
00009464  LDRH            R1, [R0,#0x10]!
00009468  ADD             R1, R1, #0x14
0000946c  STRH            R1, [R0]
00009470  ADD             R0, R5, #1
00009474  MOV             R5, R0,LSL#16
00009478  MOV             R5, R5,ASR#16
0000947c  CMP             R5, #8
00009480  BLT             loc_9328
00009484  LDR             R1, [R4,#0x114]
00009488  MOV             R0, #2
0000948c  STRH            R0, [R1,#8]
00009490  LDRH            R0, [R6,#2]
00009494  LDR             R1, [R4,#0x114]
00009498  STRH            R0, [R1,#0x10]
0000949c  LDR             R0, [R4,#0x114]
000094a0  BL              sub_21BA8
000094a4  LDR             R0, [R4,#0x114]
000094a8  LDR             R2, [SP,#0x1B4+var_4]
000094ac  MOV             R1, R6
000094b0  BL              sub_1CE08
000094b4  ADD             SP, SP, #0x1B4
000094b8  POP             {R4-R11,LR}
000094bc  BX              LR
