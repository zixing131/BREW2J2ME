0002319c  PUSH            {R0-R11,LR}
000231a0  SUB             SP, SP, #0x324
000231a4  LDR             R7, [SP,#0x334+arg_0]
000231a8  MOV             LR, #0
000231ac  MOV             R10, R0
000231b0  MOV             R1, #0
000231b4  B               loc_23258
000231b8  ADD             R0, LR, LR,LSL#3
000231bc  ADD             R12, R3, R0,LSL#3
000231c0  LDRB            R0, [R12,#0x24]
000231c4  CMP             R0, #0
000231c8  LDRHEQ          R5, [R12,#0x14]
000231cc  BEQ             loc_23218
000231d0  LDRH            R0, [R12,#0x26]
000231d4  LDR             R4, [R10]
000231d8  RSB             R0, R0, R0,LSL#3
000231dc  ADD             R0, R7, R0,LSL#2
000231e0  LDRH            R0, [R0]
000231e4  LDR             R4, [R4,#0x884]
000231e8  ADD             R0, R4, R0,LSL#5
000231ec  LDRB            R4, [R12,#0x25]
000231f0  CMP             R4, #0
000231f4  LDREQ           R0, [R0,#4]
000231f8  BEQ             loc_23214
000231fc  CMP             R4, #1
00023200  LDREQ           R0, [R0,#0xC]
00023204  BEQ             loc_23214
00023208  CMP             R4, #2
0002320c  LDRNE           R0, [R0,#0x10]
00023210  LDREQ           R0, [R0,#8]
00023214  ADD             R5, R0, #0x1000000
00023218  MOV             R0, #0
0002321c  B               loc_23234
00023220  ADD             R4, SP, #0x334+var_330
00023224  LDR             R4, [R4,R0,LSL#2]
00023228  CMP             R4, R5
0002322c  BEQ             loc_2323C
00023230  ADD             R0, R0, #1
00023234  CMP             R0, R1
00023238  BLT             loc_23220
0002323c  CMP             R0, R1
00023240  MOVGE           R4, R1
00023244  ADDGE           R6, SP, #0x334+var_330
00023248  STRGE           R5, [R6,R4,LSL#2]
0002324c  STRH            R0, [R12,#0x14]
00023250  ADDGE           R1, R1, #1
00023254  ADD             LR, LR, #1
00023258  CMP             LR, R2
0002325c  BCC             loc_231B8
00023260  LDR             R4, =(start - 0x23274)
00023264  STR             R1, [R10,#0x10]
00023268  MOV             R0, R1,LSL#5
0002326c  ADD             R4, PC, R4; start
00023270  LDR             R1, [R4,#(dword_8 - 0xC)]
00023274  ADR             LR, loc_23280
00023278  LDR             R1, [R1,#0x68]
0002327c  BX              R1
00023280  STR             R0, [R10,#0x14]
00023284  LDR             R1, [R10,#0x10]
00023288  MOV             R2, R1,LSL#5
0002328c  LDR             R1, [R4,#(dword_8 - 0xC)]
00023290  ADR             LR, loc_232A0
00023294  LDR             R3, [R1,#4]
00023298  MOV             R1, #0
0002329c  BX              R3
000232a0  MOV             R11, #0
000232a4  B               loc_234E4
000232a8  LDR             R0, [R10,#0x14]
000232ac  ADD             R4, R0, R11,LSL#5
000232b0  ADD             R0, SP, #0x334+var_330
000232b4  LDR             R0, [R0,R11,LSL#2]
000232b8  CMP             R0, #0x1000000
000232bc  BCS             loc_233FC
000232c0  LDR             R1, [R10,#0xC]
000232c4  ADD             R7, R1, R0,LSL#4
000232c8  LDRB            R0, [R7,#1]
000232cc  MOV             R1, #0
000232d0  MOV             R0, R0,LSL#5
000232d4  STRH            R0, [R4]
000232d8  LDRB            R0, [R7,#2]
000232dc  MOV             R0, R0,LSL#5
000232e0  STRH            R0, [R4,#2]
000232e4  STRH            R1, [R4,#4]
000232e8  MOV             R1, #0xFFFFF81F
000232ec  STRH            R1, [R4,#6]
000232f0  LDRH            R1, [R4]
000232f4  MUL             R1, R0, R1
000232f8  MOV             R1, R1,LSL#1
000232fc  ADD             R0, R1, R0,LSL#2
00023300  LDR             R1, =(start - 0x2330C)
00023304  ADD             R1, PC, R1; start
00023308  LDR             R1, [R1,#(dword_8 - 0xC)]
0002330c  ADR             LR, loc_23318
00023310  LDR             R1, [R1,#0x68]
00023314  BX              R1
00023318  STR             R0, [R4,#8]
0002331c  LDRH            R1, [R4,#2]
00023320  ADD             R1, R0, R1,LSL#2
00023324  MOV             R0, #0
00023328  LDRH            R2, [R4,#2]
0002332c  CMP             R2, R0
00023330  LDRGT           R2, [R4,#8]
00023334  STRGT           R1, [R2,R0,LSL#2]
00023338  LDRHGT          R2, [R4]
0002333c  ADDGT           R0, R0, #1
00023340  ADDGT           R1, R1, R2,LSL#1
00023344  BGT             loc_23328
00023348  MOV             R8, #0
0002334c  B               loc_233EC
00023350  MOV             R9, R8,LSL#5
00023354  MOV             R5, #0
00023358  LDR             R6, [R4,#8]
0002335c  B               loc_233DC
00023360  MLA             R2, R0, R8, R5
00023364  ADD             R0, R2, R7
00023368  LDR             R1, [R10,#4]
0002336c  LDRB            R0, [R0,#4]
00023370  ADD             R1, R1, R0
00023374  LDR             R0, [SP,#0x334+var_C]
00023378  BL              sub_11DD8
0002337c  LDRH            R1, [R0,#4]
00023380  MOV             R12, #0x1F
00023384  MOV             R2, #0
00023388  TST             R1, #0x20
0002338c  LDRHNE          R1, [R4,#4]
00023390  ORRNE           R1, R1, #0x20 ; ' '
00023394  STRHNE          R1, [R4,#4]
00023398  LDR             R0, [R0,#8]
0002339c  ADD             LR, R0, R12,LSL#2
000233a0  LDR             R0, [R6],#4
000233a4  ADD             R1, R0, R9,LSL#1
000233a8  MOV             R0, #0
000233ac  LDR             R3, [LR,-R0,LSL#2]
000233b0  ADD             R0, R0, #1
000233b4  ADD             R3, R3, R12,LSL#1
000233b8  SUB             R3, R3, R2,LSL#1
000233bc  LDRH            R3, [R3]
000233c0  CMP             R0, #0x20 ; ' '
000233c4  STRH            R3, [R1],#2
000233c8  BLT             loc_233AC
000233cc  ADD             R2, R2, #1
000233d0  CMP             R2, #0x20 ; ' '
000233d4  BLT             loc_233A0
000233d8  ADD             R5, R5, #1
000233dc  LDRB            R0, [R7,#2]
000233e0  CMP             R0, R5
000233e4  BGT             loc_23360
000233e8  ADD             R8, R8, #1
000233ec  LDRB            R0, [R7,#1]
000233f0  CMP             R0, R8
000233f4  BGT             loc_23350
000233f8  B               loc_234E0
000233fc  ADD             R1, R0, #0xFF000000
00023400  LDR             R0, [SP,#0x334+var_C]
00023404  BL              sub_11DD8
00023408  LDRH            R1, [R0,#2]
0002340c  MOV             R5, R0
00023410  STRH            R1, [R4]
00023414  LDRH            R0, [R0]
00023418  STRH            R0, [R4,#2]
0002341c  LDRH            R2, [R5,#4]
00023420  MUL             R1, R0, R1
00023424  STRH            R2, [R4,#4]
00023428  LDRH            R2, [R5,#6]
0002342c  MOV             R1, R1,LSL#1
00023430  ADD             R0, R1, R0,LSL#2
00023434  LDR             R1, =(start - 0x23444)
00023438  STRH            R2, [R4,#6]
0002343c  ADD             R1, PC, R1; start
00023440  LDR             R1, [R1,#(dword_8 - 0xC)]
00023444  ADR             LR, loc_23450
00023448  LDR             R1, [R1,#0x68]
0002344c  BX              R1
00023450  STR             R0, [R4,#8]
00023454  LDRH            R1, [R4,#2]
00023458  ADD             R1, R0, R1,LSL#2
0002345c  MOV             R0, #0
00023460  LDRH            R2, [R4,#2]
00023464  CMP             R2, R0
00023468  LDRGT           R2, [R4,#8]
0002346c  STRGT           R1, [R2,R0,LSL#2]
00023470  LDRHGT          R2, [R4]
00023474  ADDGT           R0, R0, #1
00023478  ADDGT           R1, R1, R2,LSL#1
0002347c  BGT             loc_23460
00023480  LDRH            R2, [R4,#2]
00023484  LDR             R0, [R4,#8]
00023488  LDR             R1, [R5,#8]
0002348c  LDR             R0, [R0]
00023490  SUB             LR, R2, #1
00023494  LDRH            R2, [R4]
00023498  SUB             R3, R2, #1
0002349c  ADD             R12, R1, R3,LSL#2
000234a0  MOV             R2, #0
000234a4  B               loc_234D4
000234a8  MOV             R1, #0
000234ac  LDRH            R3, [R4]
000234b0  CMP             R3, R1
000234b4  LDRGT           R3, [R12,-R1,LSL#2]
000234b8  ADDGT           R1, R1, #1
000234bc  ADDGT           R3, R3, LR,LSL#1
000234c0  SUBGT           R3, R3, R2,LSL#1
000234c4  LDRHGT          R3, [R3]
000234c8  STRHGT          R3, [R0],#2
000234cc  BGT             loc_234AC
000234d0  ADD             R2, R2, #1
000234d4  LDRH            R1, [R4,#2]
000234d8  CMP             R1, R2
000234dc  BGT             loc_234A8
000234e0  ADD             R11, R11, #1
000234e4  LDR             R0, [R10,#0x10]
000234e8  CMP             R0, R11
000234ec  BHI             loc_232A8
000234f0  ADD             SP, SP, #0x334
000234f4  POP             {R4-R11,LR}
000234f8  MOV             R0, #0
000234fc  BX              LR
