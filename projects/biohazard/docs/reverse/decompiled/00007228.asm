00007228  PUSH            {R4-R11,LR}
0000722c  MOV             R5, R0
00007230  LDR             R0, [R0,#0x898]
00007234  SUB             SP, SP, #0x5C
00007238  MOV             R7, R3
0000723c  MOV             R6, R1
00007240  MOV             R4, R2
00007244  CMP             R0, #0
00007248  BEQ             loc_7794
0000724c  MOV             R1, #0x200
00007250  STR             R1, [SP,#0x5C+var_28]
00007254  LDR             R1, =0x4408
00007258  MOV             R8, #0
0000725c  STR             R1, [SP,#0x5C+var_2C]
00007260  ADD             R1, R1, #0x240
00007264  STR             R1, [SP,#0x5C+var_30]
00007268  LDRH            LR, [R0]
0000726c  LDRH            R1, [R0,#2]
00007270  STR             R1, [SP,#0x5C+var_38]
00007274  LDR             R9, [R0,#0x28]
00007278  LDR             R0, [R6,#0x14]
0000727c  ADD             R0, R0, R7,LSL#2
00007280  B               loc_72F8
00007284  LDR             R1, [R9],#8
00007288  LDR             R2, [R0]
0000728c  ADD             R10, R0, #4
00007290  ADD             R3, R2, R4,LSL#1
00007294  MOV             R12, R3
00007298  MOV             R2, #0
0000729c  B               loc_72C8
000072a0  LDRB            R0, [R1],#2
000072a4  TST             R0, #2
000072a8  LDRNE           R0, [SP,#0x5C+var_28]
000072ac  BNE             loc_72BC
000072b0  TST             R0, #1
000072b4  LDREQ           R0, [SP,#0x5C+var_30]
000072b8  LDRNE           R0, [SP,#0x5C+var_2C]
000072bc  STRH            R0, [R3],#2
000072c0  STRH            R0, [R3],#2
000072c4  ADD             R2, R2, #1
000072c8  CMP             R2, LR
000072cc  BLT             loc_72A0
000072d0  LDR             R0, [R10]
000072d4  MOV             R2, #0
000072d8  ADD             R1, R0, R4,LSL#1
000072dc  ADD             R0, R10, #4
000072e0  CMP             R2, LR,LSL#1
000072e4  LDRHLT          R3, [R12],#2
000072e8  ADDLT           R2, R2, #1
000072ec  STRHLT          R3, [R1],#2
000072f0  BLT             loc_72E0
000072f4  ADD             R8, R8, #1
000072f8  LDR             R1, [SP,#0x5C+var_38]
000072fc  CMP             R8, R1
00007300  BLT             loc_7284
00007304  LDR             R0, [R5,#0x8B0]
00007308  LDRB            R1, [R0,#0x29]
0000730c  LDR             R0, =(start - 0x7318)
00007310  ADD             R0, PC, R0; start
00007314  STR             R1, [SP,#0x5C+var_24]
00007318  LDR             R0, [R0,#(dword_8 - 0xC)]
0000731c  ADR             LR, loc_7328
00007320  LDR             R0, [R0,#0xC0]
00007324  BX              R0
00007328  LDR             R11, [R0,#0x24]
0000732c  LDR             R0, [R5,#0x8B0]
00007330  LDR             R0, [R0,#0x334]
00007334  LDR             R1, =0x838
00007338  LDRSH           R9, [R0]
0000733c  MOV             R0, R11
00007340  BL              sub_11DD8
00007344  LDRH            R1, [R0]
00007348  MOV             R8, R0
0000734c  STR             R1, [SP,#0x5C+var_34]
00007350  LDRH            R0, [R0,#2]
00007354  MOV             R12, R0
00007358  STR             R0, [SP,#0x5C+var_38]
0000735c  LDR             R0, =(dword_270F0 - 0x7368)
00007360  ADD             R0, PC, R0; dword_270F0
00007364  ADD             R10, R0, R9,LSL#3
00007368  LDRH            R0, [R10]
0000736c  ADD             R3, R12, R12,LSR#31
00007370  MOV             R3, R3,ASR#1
00007374  LDRH            R2, [R10,#2]
00007378  MOV             R3, R3,LSL#16
0000737c  MOV             R3, R3,ASR#16
00007380  STR             R3, [SP,#0x5C+var_4]
00007384  STR             R3, [SP,#0x5C+var_8]
00007388  ADD             R3, R1, R1,LSR#31
0000738c  MOV             R3, R3,ASR#1
00007390  MOV             R3, R3,LSL#16
00007394  MOV             R3, R3,ASR#16
00007398  STR             R3, [SP,#0x5C+var_C]
0000739c  STR             R3, [SP,#0x5C+var_10]
000073a0  MOV             R3, R12,LSR#31
000073a4  ADD             R2, R7, R2,LSL#1
000073a8  ADD             R2, R2, #2
000073ac  ADD             R3, R12, R3,LSR#30
000073b0  SUB             R2, R2, R3,ASR#2
000073b4  MOV             R12, R2,LSL#16
000073b8  MOV             R2, R1,LSR#31
000073bc  ADD             R1, R1, R2,LSR#30
000073c0  ADD             R0, R4, R0,LSL#1
000073c4  ADD             R0, R0, #2
000073c8  SUB             R0, R0, R1,ASR#2
000073cc  MOV             LR, R0,LSL#16
000073d0  LDR             R0, [SP,#0x5C+var_38]
000073d4  MOV             R1, #1
000073d8  MOV             R0, R0,LSL#16
000073dc  MOV             R0, R0,ASR#16
000073e0  STR             R0, [SP,#0x5C+var_14]
000073e4  STR             R1, [SP,#0x5C+var_44]
000073e8  LDR             R1, [SP,#0x5C+var_34]
000073ec  MOV             R3, #0
000073f0  STR             R3, [SP,#0x5C+var_3C]
000073f4  MOV             R2, #0
000073f8  STR             R2, [SP,#0x5C+var_40]
000073fc  MOV             R3, R1,LSL#16
00007400  STR             R0, [SP,#0x5C+var_48]
00007404  ADD             R0, SP, #0x5C+var_54
00007408  MOV             R1, #0
0000740c  MOV             R2, #0
00007410  STM             R0, {R1,R2}
00007414  MOV             R3, R3,ASR#16
00007418  STR             R3, [SP,#0x5C+var_18]
0000741c  STR             R3, [SP,#0x5C+var_4C]
00007420  LDR             R3, [SP,#0x5C+var_8]
00007424  MOV             LR, LR,ASR#16
00007428  MOV             R12, R12,ASR#16
0000742c  STR             R3, [SP,#0x5C+var_5C]
00007430  LDR             R3, [SP,#0x5C+var_10]
00007434  MOV             R2, R12
00007438  MOV             R1, LR
0000743c  STR             R8, [SP,#0x5C+var_58]
00007440  MOV             R0, R6
00007444  BL              sub_18BC
00007448  LDRH            R0, [R10,#4]
0000744c  LDRH            R1, [R10,#6]
00007450  CMP             R0, #0
00007454  CMPNE           R1, #0
00007458  BEQ             loc_74EC
0000745c  LDR             R12, [SP,#0x5C+var_38]
00007460  ADD             R1, R7, R1,LSL#1
00007464  MOV             R2, R12,ASR#31
00007468  ADD             R2, R12, R2,LSR#30
0000746c  ADD             R1, R1, #2
00007470  SUB             R1, R1, R2,ASR#2
00007474  MOV             R12, R1,LSL#16
00007478  LDR             R1, [SP,#0x5C+var_34]
0000747c  ADD             R0, R4, R0,LSL#1
00007480  MOV             R2, R1,ASR#31
00007484  ADD             R1, R1, R2,LSR#30
00007488  ADD             R0, R0, #2
0000748c  SUB             R0, R0, R1,ASR#2
00007490  MOV             LR, R0,LSL#16
00007494  LDR             R0, [SP,#0x5C+var_14]
00007498  MOV             R1, #1
0000749c  MOV             R3, #0
000074a0  STR             R3, [SP,#0x5C+var_3C]
000074a4  STR             R1, [SP,#0x5C+var_44]
000074a8  MOV             R2, #0
000074ac  STR             R0, [SP,#0x5C+var_48]
000074b0  ADD             R0, SP, #0x5C+var_54
000074b4  STR             R2, [SP,#0x5C+var_40]
000074b8  MOV             R1, #0
000074bc  LDR             R3, [SP,#0x5C+var_18]
000074c0  STM             R0, {R1-R3}
000074c4  LDR             R3, [SP,#0x5C+var_4]
000074c8  MOV             LR, LR,ASR#16
000074cc  MOV             R12, R12,ASR#16
000074d0  STR             R3, [SP,#0x5C+var_5C]
000074d4  LDR             R3, [SP,#0x5C+var_C]
000074d8  MOV             R2, R12
000074dc  MOV             R1, LR
000074e0  STR             R8, [SP,#0x5C+var_58]
000074e4  MOV             R0, R6
000074e8  BL              sub_18BC
000074ec  LDR             R1, =0x837
000074f0  MOV             R0, R11
000074f4  BL              sub_11DD8
000074f8  MOV             R12, R0
000074fc  LDRH            LR, [R0]
00007500  LDRH            R0, [R0,#2]
00007504  LDR             R1, =(dword_27170 - 0x7510)
00007508  ADD             R1, PC, R1; dword_27170
0000750c  ADD             R2, R1, R9,LSL#2
00007510  LDRH            R1, [R2]
00007514  LDRH            R2, [R2,#2]
00007518  CMP             R1, #0
0000751c  CMPNE           R2, #0
00007520  BEQ             loc_75DC
00007524  ADD             R3, R0, R0,LSR#31
00007528  MOV             R3, R3,ASR#1
0000752c  MOV             R3, R3,LSL#16
00007530  MOV             R3, R3,ASR#16
00007534  STR             R3, [SP,#0x5C+var_1C]
00007538  ADD             R3, LR, LR,LSR#31
0000753c  MOV             R3, R3,ASR#1
00007540  MOV             R3, R3,LSL#16
00007544  MOV             R3, R3,ASR#16
00007548  STR             R3, [SP,#0x5C+var_20]
0000754c  MOV             R3, R0,LSR#31
00007550  ADD             R3, R0, R3,LSR#30
00007554  ADD             R2, R7, R2,LSL#1
00007558  ADD             R2, R2, #2
0000755c  SUB             R2, R2, R3,ASR#2
00007560  MOV             R8, R2,LSL#16
00007564  MOV             R2, LR,LSR#31
00007568  ADD             R1, R4, R1,LSL#1
0000756c  ADD             R1, R1, #2
00007570  ADD             R2, LR, R2,LSR#30
00007574  SUB             R1, R1, R2,ASR#2
00007578  MOV             R10, R1,LSL#16
0000757c  MOV             R3, #0
00007580  MOV             R0, R0,LSL#16
00007584  MOV             R0, R0,ASR#16
00007588  STR             R3, [SP,#0x5C+var_3C]
0000758c  MOV             R1, #1
00007590  STR             R1, [SP,#0x5C+var_44]
00007594  MOV             R3, LR,LSL#16
00007598  STR             R0, [SP,#0x5C+var_48]
0000759c  MOV             R2, #0
000075a0  STR             R2, [SP,#0x5C+var_40]
000075a4  ADD             R0, SP, #0x5C+var_54
000075a8  MOV             R3, R3,ASR#16
000075ac  MOV             R1, #0
000075b0  STM             R0, {R1-R3}
000075b4  LDR             R3, [SP,#0x5C+var_1C]
000075b8  MOV             R10, R10,ASR#16
000075bc  MOV             R8, R8,ASR#16
000075c0  STR             R3, [SP,#0x5C+var_5C]
000075c4  LDR             R3, [SP,#0x5C+var_20]
000075c8  MOV             R2, R8
000075cc  MOV             R1, R10
000075d0  STR             R12, [SP,#0x5C+var_58]
000075d4  MOV             R0, R6
000075d8  BL              sub_18BC
000075dc  LDR             R1, =0x836
000075e0  MOV             R0, R11
000075e4  BL              sub_11DD8
000075e8  MOV             R12, R0
000075ec  LDRH            LR, [R0]
000075f0  LDRH            R0, [R0,#2]
000075f4  LDR             R1, [SP,#0x5C+var_24]
000075f8  CMP             R1, #0x23 ; '#'
000075fc  MOVGT           R1, #0x23 ; '#'
00007600  STRGT           R1, [SP,#0x5C+var_24]
00007604  LDR             R1, [SP,#0x5C+var_24]
00007608  ADD             R2, R1, R1,LSL#1
0000760c  LDR             R1, =(dword_271B0 - 0x7618)
00007610  ADD             R1, PC, R1; dword_271B0
00007614  ADD             R2, R1, R2,LSL#1
00007618  LDRH            R1, [R2]
0000761c  CMP             R1, R9
00007620  BNE             loc_76E0
00007624  LDRH            R1, [R2,#2]
00007628  LDRH            R2, [R2,#4]
0000762c  CMP             R1, #0
00007630  CMPNE           R2, #0
00007634  BEQ             loc_76E0
00007638  ADD             R3, R0, R0,LSR#31
0000763c  MOV             R3, R3,ASR#1
00007640  MOV             R8, R3,LSL#16
00007644  ADD             R3, LR, LR,LSR#31
00007648  MOV             R3, R3,ASR#1
0000764c  MOV             R9, R3,LSL#16
00007650  MOV             R3, R0,LSR#31
00007654  ADD             R3, R0, R3,LSR#30
00007658  ADD             R2, R7, R2,LSL#1
0000765c  ADD             R2, R2, #2
00007660  SUB             R2, R2, R3,ASR#2
00007664  MOV             R10, R2,LSL#16
00007668  MOV             R2, LR,LSR#31
0000766c  ADD             R1, R4, R1,LSL#1
00007670  ADD             R1, R1, #2
00007674  ADD             R2, LR, R2,LSR#30
00007678  SUB             R1, R1, R2,ASR#2
0000767c  MOV             R11, R1,LSL#16
00007680  MOV             R3, #0
00007684  MOV             R0, R0,LSL#16
00007688  MOV             R0, R0,ASR#16
0000768c  STR             R3, [SP,#0x5C+var_3C]
00007690  MOV             R1, #1
00007694  STR             R1, [SP,#0x5C+var_44]
00007698  MOV             R3, LR,LSL#16
0000769c  STR             R0, [SP,#0x5C+var_48]
000076a0  MOV             R2, #0
000076a4  STR             R2, [SP,#0x5C+var_40]
000076a8  ADD             R0, SP, #0x5C+var_54
000076ac  MOV             R3, R3,ASR#16
000076b0  MOV             R1, #0
000076b4  STM             R0, {R1-R3}
000076b8  MOV             R8, R8,ASR#16
000076bc  MOV             R11, R11,ASR#16
000076c0  MOV             R10, R10,ASR#16
000076c4  MOV             R9, R9,ASR#16
000076c8  MOV             R3, R9
000076cc  MOV             R2, R10
000076d0  MOV             R1, R11
000076d4  STMEA           SP, {R8,R12}
000076d8  MOV             R0, R6
000076dc  BL              sub_18BC
000076e0  LDR             R0, [R5,#0x828]
000076e4  LDR             R3, =0xFFE0
000076e8  MOV             R0, R0,LSL#1
000076ec  MOV             R1, R0,ASR#31
000076f0  ADD             R0, R0, R1,LSR#27
000076f4  ADD             R4, R4, R0,ASR#5
000076f8  LDR             R0, [R5,#0x82C]
000076fc  MOV             R0, R0,LSL#1
00007700  MOV             R1, R0,ASR#31
00007704  ADD             R0, R0, R1,LSR#27
00007708  ADD             R7, R7, R0,ASR#5
0000770c  MOV             R0, #5
00007710  MOV             R1, #0
00007714  STMEA           SP, {R0,R1,R3}
00007718  SUB             R0, R7, #2
0000771c  MOV             R2, R0,LSL#16
00007720  SUB             R0, R4, #2
00007724  MOV             R1, R0,LSL#16
00007728  STR             R3, [SP,#0x5C+var_50]
0000772c  MOV             R3, #5
00007730  MOV             R1, R1,ASR#16
00007734  MOV             R0, R6
00007738  MOV             R2, R2,ASR#16
0000773c  BL              sub_10C58
00007740  LDR             R0, [R5,#0x834]
00007744  BL              sub_196D8
00007748  MOV             R9, #0xC
0000774c  MUL             R0, R9, R0
00007750  ADD             R8, R4, R0,ASR#16
00007754  LDR             R0, [R5,#0x834]
00007758  BL              sub_197A8
0000775c  MUL             R0, R9, R0
00007760  ADD             R0, R7, R0,ASR#16
00007764  MOV             R2, R0,LSL#16
00007768  MOV             R2, R2,ASR#16
0000776c  LDR             R3, =0xFFE0
00007770  STMEA           SP, {R2,R3}
00007774  MOV             R3, R8,LSL#16
00007778  MOV             R2, R7,LSL#16
0000777c  MOV             R1, R4,LSL#16
00007780  MOV             R1, R1,ASR#16
00007784  MOV             R2, R2,ASR#16
00007788  MOV             R3, R3,ASR#16
0000778c  MOV             R0, R6
00007790  BL              sub_7DEC
00007794  ADD             SP, SP, #0x5C ; '\'
00007798  POP             {R4-R11,LR}
0000779c  BX              LR
