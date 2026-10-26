00008164  PUSH            {R0-R2,R4-R11,LR}
00008168  MOV             R4, R0
0000816c  LDR             R0, =(start - 0x8180)
00008170  SUB             SP, SP, #0x270
00008174  MOV             R7, R1
00008178  ADD             R0, PC, R0; start
0000817c  LDR             R0, [R0,#(dword_8 - 0xC)]
00008180  ADR             LR, loc_818C
00008184  LDR             R0, [R0,#0xC0]
00008188  BX              R0
0000818c  LDR             R11, [R0,#0x28]
00008190  MOV             R0, #0
00008194  LDR             R10, [R11,#0x64]
00008198  STRH            R0, [SP,#0x27C+var_254]
0000819c  STRH            R0, [SP,#0x27C+var_252]
000081a0  LDRH            R0, [R7]
000081a4  ADD             R5, R4, #0x100
000081a8  MOV             R8, #1
000081ac  STRH            R0, [SP,#0x27C+var_250]
000081b0  LDRH            R0, [R7,#2]
000081b4  STRH            R0, [SP,#0x27C+var_24E]
000081b8  LDRH            R0, [R5,#8]
000081bc  CMP             R0, #0
000081c0  BEQ             loc_8234
000081c4  CMP             R0, #1
000081c8  BEQ             loc_81DC
000081cc  CMP             R0, #2
000081d0  BEQ             loc_8234
000081d4  CMP             R0, #3
000081d8  BNE             loc_8290
000081dc  LDRSH           R0, [R5,#6]
000081e0  LDRSH           R1, [R5,#0xA]
000081e4  MUL             R0, R1, R0
000081e8  LDRH            R1, [R7,#2]
000081ec  SUB             R1, R1, #0x64 ; 'd'
000081f0  SUB             R0, R1, R0
000081f4  ADD             R0, R0, R0,LSR#31
000081f8  MOV             R0, R0,ASR#1
000081fc  ADD             R0, R0, #0x45 ; 'E'
00008200  MOV             R9, R0,LSL#16
00008204  LDRH            R0, [R5,#4]
00008208  MOV             R9, R9,ASR#16
0000820c  CMP             R0, #0
00008210  LDRNE           R0, [R4,#0x144]
00008214  LDRNE           R1, [R4,#0x114]
00008218  MOVNE           R0, R0,LSL#30
0000821c  ADDNE           R0, R9, R0,LSR#31
00008220  STRHNE          R0, [R1,#0x10]
00008224  LDREQ           R0, [R4,#0x114]
00008228  MOV             R1, #3
0000822c  STRHEQ          R9, [R0,#0x10]
00008230  B               loc_8288
00008234  LDRSH           R0, [R5,#6]
00008238  LDRSH           R1, [R5,#0xA]
0000823c  MUL             R0, R1, R0
00008240  LDRH            R1, [R7,#2]
00008244  SUB             R1, R1, #0x92
00008248  SUB             R0, R1, R0
0000824c  ADD             R0, R0, R0,LSR#31
00008250  MOV             R0, R0,ASR#1
00008254  ADD             R0, R0, #0x38 ; '8'
00008258  MOV             R9, R0,LSL#16
0000825c  LDRH            R0, [R5,#4]
00008260  MOV             R9, R9,ASR#16
00008264  CMP             R0, #0
00008268  LDRNE           R0, [R4,#0x144]
0000826c  LDRNE           R1, [R4,#0x114]
00008270  MOVNE           R0, R0,LSL#30
00008274  ADDNE           R0, R9, R0,LSR#31
00008278  STRHNE          R0, [R1,#0x10]
0000827c  LDREQ           R0, [R4,#0x114]
00008280  MOV             R1, #4
00008284  STRHEQ          R9, [R0,#0x10]
00008288  LDR             R0, [R4,#0x114]
0000828c  STRH            R1, [R0,#8]
00008290  LDR             R0, [R4,#0x114]
00008294  BL              sub_21BA8
00008298  LDR             R0, [R4,#0x114]
0000829c  LDR             R2, [SP,#0x27C+var_4]
000082a0  MOV             R1, R7
000082a4  BL              sub_1CE08
000082a8  MOV             R6, #0
000082ac  B               loc_8ADC
000082b0  LDRH            R0, [R4]
000082b4  CMP             R0, #0
000082b8  LDRSHNE         R0, [R5,#4]
000082bc  LDRSHNE         R1, [R4]
000082c0  ADDNE           R0, R0, R6
000082c4  CMPNE           R0, R1
000082c8  BGE             loc_8AE8
000082cc  LDRSH           R0, [R5,#0xA]
000082d0  MLA             R1, R0, R6, R9
000082d4  LDR             R0, [R4,#0x114]
000082d8  STRH            R1, [R0,#0x10]
000082dc  LDRSH           R0, [R4,#2]
000082e0  LDRSH           R1, [R5,#4]
000082e4  SUB             R0, R0, R1
000082e8  CMP             R0, R6
000082ec  BNE             loc_8360
000082f0  LDRH            R0, [R5,#8]
000082f4  CMP             R0, #0
000082f8  BEQ             loc_8328
000082fc  CMP             R0, #1
00008300  BEQ             loc_8318
00008304  CMP             R0, #2
00008308  MOVEQ           R0, #0xD
0000830c  BEQ             loc_831C
00008310  CMP             R0, #3
00008314  BNE             loc_8348
00008318  MOV             R0, #2
0000831c  LDR             R1, [R4,#0x114]
00008320  STRH            R0, [R1,#8]
00008324  B               loc_8348
00008328  LDR             R1, [R4,#0x114]
0000832c  MOV             R0, #2
00008330  STRH            R0, [R1,#8]
00008334  LDRH            R0, [R4,#2]
00008338  CMP             R0, #0
0000833c  LDREQ           R0, [R4,#0x114]
00008340  MOVEQ           R1, #3
00008344  STRHEQ          R1, [R0,#8]
00008348  LDR             R0, [R4,#0x114]
0000834c  BL              sub_21BA8
00008350  LDR             R0, [R4,#0x114]
00008354  LDR             R2, [SP,#0x27C+var_4]
00008358  MOV             R1, R7
0000835c  BL              sub_1CE08
00008360  LDRH            R0, [R5,#8]
00008364  CMP             R0, #0
00008368  LDRHEQ          R0, [R5,#4]
0000836c  ADDEQ           R0, R0, R6
00008370  ADDEQ           R0, R0, #6
00008374  BEQ             loc_8444
00008378  CMP             R0, #1
0000837c  LDRHEQ          R0, [R5,#4]
00008380  ADDEQ           R0, R0, R6
00008384  BEQ             loc_8440
00008388  CMP             R0, #2
0000838c  BEQ             loc_83BC
00008390  CMP             R0, #3
00008394  BNE             loc_844C
00008398  LDRSH           R0, [R4,#2]
0000839c  LDRSH           R1, [R5,#4]
000083a0  SUB             R0, R0, R1
000083a4  CMP             R0, R6
000083a8  LDR             R0, [R4,#0x114]
000083ac  MOVNE           R1, #6
000083b0  MOVEQ           R1, #5
000083b4  STRH            R1, [R0,#8]
000083b8  B               loc_8418
000083bc  LDRSH           R0, [R4,#2]
000083c0  LDRSH           R1, [R5,#4]
000083c4  SUB             R0, R0, R1
000083c8  CMP             R0, R6
000083cc  LDR             R1, [R4,#0x114]
000083d0  MOVNE           R0, #0x11
000083d4  MOVEQ           R0, #0x10
000083d8  STRH            R0, [R1,#8]
000083dc  LDR             R0, [R4,#0x114]
000083e0  BL              sub_21BA8
000083e4  LDR             R0, [R4,#0x114]
000083e8  LDR             R2, [SP,#0x27C+var_4]
000083ec  MOV             R1, R7
000083f0  BL              sub_1CE08
000083f4  LDRSH           R0, [R5,#4]
000083f8  ADD             R1, R0, R6
000083fc  ADD             R0, R4, R1,LSL#3
00008400  LDRH            R0, [R0,#0xA]
00008404  SUBS            R0, R0, #1
00008408  MOVNE           R0, #1
0000840c  ADD             R0, R0, R1,LSL#1
00008410  ADD             R0, R0, #0x12
00008414  B               loc_8444
00008418  LDR             R0, [R4,#0x114]
0000841c  BL              sub_21BA8
00008420  LDR             R0, [R4,#0x114]
00008424  LDR             R2, [SP,#0x27C+var_4]
00008428  MOV             R1, R7
0000842c  BL              sub_1CE08
00008430  LDRSH           R0, [R5,#4]
00008434  ADD             R0, R0, R6
00008438  ADD             R0, R4, R0,LSL#3
0000843c  LDRH            R0, [R0,#8]
00008440  ADD             R0, R0, #7
00008444  LDR             R1, [R4,#0x114]
00008448  STRH            R0, [R1,#8]
0000844c  LDR             R0, [R4,#0x114]
00008450  BL              sub_21BA8
00008454  LDR             R0, [R4,#0x114]
00008458  LDR             R2, [SP,#0x27C+var_4]
0000845c  MOV             R1, R7
00008460  BL              sub_1CE08
00008464  MOV             R0, #0
00008468  STRH            R0, [SP,#0x27C+var_24C]
0000846c  LDRH            R0, [R5,#8]
00008470  CMP             R0, #0
00008474  BEQ             loc_8634
00008478  CMP             R0, #1
0000847c  BEQ             loc_86E4
00008480  CMP             R0, #2
00008484  BEQ             loc_8764
00008488  CMP             R0, #3
0000848c  BNE             loc_8510
00008490  LDRSH           R0, [R5,#4]
00008494  MOV             R8, #0
00008498  MOV             R3, #0x100
0000849c  ADD             R0, R0, R6
000084a0  ADD             R0, R4, R0,LSL#3
000084a4  LDRSH           R1, [R0,#4]
000084a8  MOV             R0, R11
000084ac  ADD             R2, SP, #0x27C+var_10C
000084b0  BL              sub_19618
000084b4  MOV             R2, R8
000084b8  ADD             R1, SP, #0x27C+var_10C
000084bc  MOV             R0, R10
000084c0  BL              sub_12BC8
000084c4  LDRH            R1, [R7]
000084c8  SUB             R0, R1, R0
000084cc  ADD             R0, R0, R0,LSR#31
000084d0  MOV             R0, R0,ASR#1
000084d4  ADD             R0, R0, #0x50 ; 'P'
000084d8  MOV             R0, R0,LSL#16
000084dc  MOV             R0, R0,ASR#16
000084e0  STR             R0, [SP,#0x27C+var_258]
000084e4  LDR             R0, =(start - 0x84F0)
000084e8  ADD             R0, PC, R0; start
000084ec  LDR             R0, [R0,#(dword_8 - 0xC)]
000084f0  LDR             R2, =(aT00000HffffffS - 0x8500); "$T00000$Hffffff%s"
000084f4  ADD             R3, SP, #0x27C+var_10C
000084f8  ADD             R2, PC, R2; "$T00000$Hffffff%s"
000084fc  LDR             R12, [R0,#0x3C]
00008500  ADD             R0, SP, #0x27C+var_24C
00008504  MOV             R1, #0x140
00008508  MOV             LR, PC
0000850c  BX              R12
00008510  LDRSH           R0, [R5,#0xA]
00008514  ADD             LR, SP, #0x27C+var_26C
00008518  MOV             R3, #0
0000851c  SUB             R1, R0, #0xC
00008520  ADD             R1, R1, R1,LSR#31
00008524  MLA             R2, R0, R6, R9
00008528  ADD             R0, R2, R1,ASR#1
0000852c  MOV             R12, R0,LSL#16
00008530  LDR             R0, [SP,#0x27C+var_258]
00008534  MOV             R1, #0
00008538  STM             LR, {R0,R1,R8}
0000853c  STR             R3, [SP,#0x27C+var_260]
00008540  ADD             R0, SP, #0x27C+var_24C
00008544  MOV             R2, #0
00008548  STMEA           SP, {R0-R3}
0000854c  MOV             R12, R12,ASR#16
00008550  MOV             R2, R12
00008554  ADD             R3, SP, #0x27C+var_254
00008558  MOV             R1, R7
0000855c  MOV             R0, R10
00008560  BL              sub_98BC
00008564  LDRH            R0, [R5,#8]
00008568  CMP             R0, #0
0000856c  BEQ             loc_8864
00008570  CMP             R0, #1
00008574  BEQ             loc_8A20
00008578  CMP             R0, #2
0000857c  BEQ             loc_88EC
00008580  CMP             R0, #3
00008584  BNE             loc_8AD0
00008588  LDRSH           R0, [R5,#4]
0000858c  ADD             R0, R0, R6
00008590  ADD             R0, R4, R0,LSL#3
00008594  LDRSH           R0, [R0,#0xA]
00008598  CMP             R0, #0
0000859c  BLT             loc_85D8
000085a0  LDRSH           R1, [R5,#0xA]
000085a4  SUB             R2, R1, #0xF
000085a8  ADD             R2, R2, R2,LSR#31
000085ac  MLA             R3, R1, R6, R9
000085b0  ADD             R1, R3, R2,ASR#1
000085b4  MOV             R3, R1,LSL#16
000085b8  MOV             R3, R3,ASR#16
000085bc  MOV             R2, #0x2A ; '*'
000085c0  STMEA           SP, {R2,R3}
000085c4  MOV             R3, R0
000085c8  MOV             R0, R4
000085cc  LDR             R2, [SP,#0x27C+var_4]
000085d0  MOV             R1, R7
000085d4  BL              sub_C300
000085d8  LDRSH           R0, [R5,#4]
000085dc  ADD             R0, R0, R6
000085e0  ADD             R0, R4, R0,LSL#3
000085e4  LDRH            R1, [R0,#0xA]
000085e8  CMP             R1, #0
000085ec  BNE             loc_87E8
000085f0  MOV             R3, #0x50 ; 'P'
000085f4  ADD             R2, SP, #0x27C+var_10C
000085f8  LDR             R1, =0x1F49
000085fc  MOV             R0, R11
00008600  BL              sub_19618
00008604  LDR             R0, =(start - 0x8610)
00008608  ADD             R0, PC, R0; start
0000860c  LDR             R0, [R0,#(dword_8 - 0xC)]
00008610  LDR             R2, =(aT00000HffffffS - 0x8620); "$T00000$Hffffff%s"
00008614  ADD             R3, SP, #0x27C+var_10C
00008618  ADD             R2, PC, R2; "$T00000$Hffffff%s"
0000861c  LDR             R12, [R0,#0x3C]
00008620  ADD             R0, SP, #0x27C+var_24C
00008624  MOV             R1, #0x140
00008628  MOV             LR, PC
0000862c  BX              R12
00008630  B               loc_8834
00008634  LDRSH           R0, [R5,#4]
00008638  MOV             R3, #0x100
0000863c  ADD             R2, SP, #0x27C+var_10C
00008640  ADD             R0, R0, R6
00008644  ADD             R0, R4, R0,LSL#3
00008648  LDRSH           R1, [R0,#4]
0000864c  MOV             R0, R11
00008650  BL              sub_19618
00008654  MOV             R2, R8
00008658  ADD             R1, SP, #0x27C+var_10C
0000865c  MOV             R0, R10
00008660  BL              sub_12BC8
00008664  LDRH            R1, [R7]
00008668  SUB             R0, R1, R0
0000866c  ADD             R0, R0, R0,LSR#31
00008670  MOV             R0, R0,ASR#1
00008674  ADD             R0, R0, #0xC
00008678  MOV             R0, R0,LSL#16
0000867c  MOV             R0, R0,ASR#16
00008680  STR             R0, [SP,#0x27C+var_258]
00008684  LDRSH           R0, [R4,#2]
00008688  LDRSH           R1, [R5,#4]
0000868c  SUB             R0, R0, R1
00008690  CMP             R0, R6
00008694  LDR             R0, =(start - 0x86A0)
00008698  ADD             R0, PC, R0; start
0000869c  LDR             R0, [R0,#(dword_8 - 0xC)]
000086a0  ADD             R3, SP, #0x27C+var_10C
000086a4  LDR             R12, [R0,#0x3C]
000086a8  BNE             loc_86C8
000086ac  LDR             R2, =(aT00001Hffff00S_0 - 0x86B8); "$T00001$Hffff00$S000000%s"
000086b0  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s"
000086b4  MOV             R1, #0x140
000086b8  ADD             R0, SP, #0x27C+var_24C
000086bc  MOV             LR, PC
000086c0  BX              R12
000086c4  B               loc_8510
000086c8  LDR             R2, =(aT00001HffffffS_0 - 0x86D4); "$T00001$Hffffff$S000000%s"
000086cc  ADD             R2, PC, R2; "$T00001$Hffffff$S000000%s"
000086d0  MOV             R1, #0x140
000086d4  ADD             R0, SP, #0x27C+var_24C
000086d8  MOV             LR, PC
000086dc  BX              R12
000086e0  B               loc_8510
000086e4  LDRSH           R0, [R5,#4]
000086e8  MOV             R8, #0
000086ec  MOV             R3, #0x100
000086f0  ADD             R0, R0, R6
000086f4  ADD             R0, R4, R0,LSL#3
000086f8  LDRSH           R1, [R0,#4]
000086fc  MOV             R0, R11
00008700  ADD             R2, SP, #0x27C+var_10C
00008704  BL              sub_19618
00008708  MOV             R2, R8
0000870c  ADD             R1, SP, #0x27C+var_10C
00008710  MOV             R0, R10
00008714  BL              sub_12BC8
00008718  RSB             R0, R0, #0x41 ; 'A'
0000871c  ADD             R0, R0, R0,LSR#31
00008720  MOV             R0, R0,ASR#1
00008724  ADD             R0, R0, #3
00008728  MOV             R0, R0,LSL#16
0000872c  MOV             R0, R0,ASR#16
00008730  STR             R0, [SP,#0x27C+var_258]
00008734  LDR             R0, =(start - 0x8740)
00008738  ADD             R0, PC, R0; start
0000873c  LDR             R0, [R0,#(dword_8 - 0xC)]
00008740  LDR             R2, =(aT00001HffffffS_1 - 0x8750); "$T00001$Hffffff$S0080ff%s"
00008744  ADD             R3, SP, #0x27C+var_10C
00008748  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
0000874c  LDR             R12, [R0,#0x3C]
00008750  ADD             R0, SP, #0x27C+var_24C
00008754  MOV             R1, #0x140
00008758  MOV             LR, PC
0000875c  BX              R12
00008760  B               loc_8510
00008764  LDRSH           R0, [R5,#4]
00008768  MOV             R8, #0
0000876c  MOV             R3, #0x100
00008770  ADD             R0, R0, R6
00008774  ADD             R0, R4, R0,LSL#3
00008778  LDRSH           R1, [R0,#4]
0000877c  MOV             R0, R11
00008780  ADD             R2, SP, #0x27C+var_10C
00008784  BL              sub_19618
00008788  MOV             R2, R8
0000878c  ADD             R1, SP, #0x27C+var_10C
00008790  MOV             R0, R10
00008794  BL              sub_12BC8
00008798  LDRH            R1, [R7]
0000879c  SUB             R0, R1, R0
000087a0  ADD             R0, R0, R0,LSR#31
000087a4  MOV             R0, R0,ASR#1
000087a8  ADD             R0, R0, #0x50 ; 'P'
000087ac  MOV             R0, R0,LSL#16
000087b0  MOV             R0, R0,ASR#16
000087b4  STR             R0, [SP,#0x27C+var_258]
000087b8  LDR             R0, =(start - 0x87C4)
000087bc  ADD             R0, PC, R0; start
000087c0  LDR             R0, [R0,#(dword_8 - 0xC)]
000087c4  LDR             R2, =(aT00001HffffffS_1 - 0x87D4); "$T00001$Hffffff$S0080ff%s"
000087c8  ADD             R3, SP, #0x27C+var_10C
000087cc  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
000087d0  LDR             R12, [R0,#0x3C]
000087d4  ADD             R0, SP, #0x27C+var_24C
000087d8  MOV             R1, #0x140
000087dc  MOV             LR, PC
000087e0  BX              R12
000087e4  B               loc_8510
000087e8  LDRSH           R0, [R0,#0xA]
000087ec  CMP             R0, #0
000087f0  BLE             loc_8AD0
000087f4  MOV             R3, #0x50 ; 'P'
000087f8  ADD             R2, SP, #0x27C+var_10C
000087fc  LDR             R1, =0x1F48
00008800  MOV             R0, R11
00008804  BL              sub_19618
00008808  LDR             R0, =(start - 0x8814)
0000880c  ADD             R0, PC, R0; start
00008810  LDR             R0, [R0,#(dword_8 - 0xC)]
00008814  LDR             R2, =(aT00001HffffffS_1 - 0x8824); "$T00001$Hffffff$S0080ff%s"
00008818  ADD             R3, SP, #0x27C+var_10C
0000881c  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
00008820  LDR             R12, [R0,#0x3C]
00008824  ADD             R0, SP, #0x27C+var_24C
00008828  MOV             R1, #0x140
0000882c  MOV             LR, PC
00008830  BX              R12
00008834  LDRSH           R0, [R5,#0xA]
00008838  MOV             R3, #0
0000883c  SUB             R1, R0, #0xC
00008840  ADD             R1, R1, R1,LSR#31
00008844  MLA             R2, R0, R6, R9
00008848  ADD             R0, R2, R1,ASR#1
0000884c  MOV             R12, R0,LSL#16
00008850  MOV             R12, R12,ASR#16
00008854  MOV             R0, #5
00008858  MOV             R2, R8
0000885c  MOV             R1, #0
00008860  B               loc_8AA0
00008864  LDRSH           R0, [R5,#4]
00008868  ADD             R0, R0, R6
0000886c  ADD             R0, R4, R0,LSL#3
00008870  LDRH            R0, [R0,#0xA]
00008874  CMP             R0, #1
00008878  BNE             loc_8AD0
0000887c  MOV             R3, #0x50 ; 'P'
00008880  ADD             R2, SP, #0x27C+var_10C
00008884  LDR             R1, =0x2392
00008888  MOV             R0, R11
0000888c  BL              sub_19618
00008890  LDR             R0, =(start - 0x889C)
00008894  ADD             R0, PC, R0; start
00008898  LDR             R0, [R0,#(dword_8 - 0xC)]
0000889c  LDR             R2, =(aT00001HffffffS_1 - 0x88AC); "$T00001$Hffffff$S0080ff%s"
000088a0  ADD             R3, SP, #0x27C+var_10C
000088a4  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
000088a8  LDR             R12, [R0,#0x3C]
000088ac  ADD             R0, SP, #0x27C+var_24C
000088b0  MOV             R1, #0x140
000088b4  MOV             LR, PC
000088b8  BX              R12
000088bc  LDRSH           R0, [R5,#0xA]
000088c0  MOV             R3, #0
000088c4  SUB             R1, R0, #0xC
000088c8  ADD             R1, R1, R1,LSR#31
000088cc  MLA             R2, R0, R6, R9
000088d0  ADD             R0, R2, R1,ASR#1
000088d4  MOV             R12, R0,LSL#16
000088d8  MOV             R12, R12,ASR#16
000088dc  MOV             R0, #0xF
000088e0  MOV             R2, R8
000088e4  MOV             R1, #0
000088e8  B               loc_8AA0
000088ec  LDRSH           R0, [R5,#4]
000088f0  ADD             R0, R0, R6
000088f4  ADD             R0, R4, R0,LSL#3
000088f8  LDRH            R0, [R0,#0xA]
000088fc  CMP             R0, #1
00008900  BNE             loc_8998
00008904  MOV             R3, #0x50 ; 'P'
00008908  ADD             R2, SP, #0x27C+var_10C
0000890c  LDR             R1, =0x2392
00008910  MOV             R0, R11
00008914  BL              sub_19618
00008918  LDR             R0, =(start - 0x8924)
0000891c  ADD             R0, PC, R0; start
00008920  LDR             R0, [R0,#(dword_8 - 0xC)]
00008924  LDR             R2, =(aT00001HffffffS_1 - 0x8934); "$T00001$Hffffff$S0080ff%s"
00008928  ADD             R3, SP, #0x27C+var_10C
0000892c  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
00008930  LDR             R12, [R0,#0x3C]
00008934  ADD             R0, SP, #0x27C+var_24C
00008938  MOV             R1, #0x140
0000893c  MOV             LR, PC
00008940  BX              R12
00008944  LDRSH           R0, [R5,#0xA]
00008948  ADD             LR, SP, #0x27C+var_26C
0000894c  MOV             R3, #0
00008950  SUB             R1, R0, #0xC
00008954  ADD             R1, R1, R1,LSR#31
00008958  MLA             R2, R0, R6, R9
0000895c  ADD             R0, R2, R1,ASR#1
00008960  MOV             R12, R0,LSL#16
00008964  MOV             R0, #0xF
00008968  MOV             R1, #0
0000896c  STM             LR, {R0,R1,R8}
00008970  STR             R3, [SP,#0x27C+var_260]
00008974  ADD             R0, SP, #0x27C+var_24C
00008978  MOV             R2, #0
0000897c  STMEA           SP, {R0-R3}
00008980  MOV             R12, R12,ASR#16
00008984  MOV             R2, R12
00008988  ADD             R3, SP, #0x27C+var_254
0000898c  MOV             R1, R7
00008990  MOV             R0, R10
00008994  BL              sub_98BC
00008998  LDRSH           R0, [R5,#4]
0000899c  ADD             R0, R0, R6
000089a0  ADD             R0, R4, R0,LSL#3
000089a4  LDRH            R0, [R0,#0xA]
000089a8  CMP             R0, #2
000089ac  BNE             loc_8AD0
000089b0  MOV             R3, #0x50 ; 'P'
000089b4  ADD             R2, SP, #0x27C+var_10C
000089b8  LDR             R1, =0x2393
000089bc  MOV             R0, R11
000089c0  BL              sub_19618
000089c4  LDR             R0, =(start - 0x89D0)
000089c8  ADD             R0, PC, R0; start
000089cc  LDR             R0, [R0,#(dword_8 - 0xC)]
000089d0  LDR             R2, =(aT00001Hffff00S_0 - 0x89E0); "$T00001$Hffff00$S000000%s"
000089d4  ADD             R3, SP, #0x27C+var_10C
000089d8  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s"
000089dc  LDR             R12, [R0,#0x3C]
000089e0  ADD             R0, SP, #0x27C+var_24C
000089e4  MOV             R1, #0x140
000089e8  MOV             LR, PC
000089ec  BX              R12
000089f0  LDRSH           R0, [R5,#0xA]
000089f4  MOV             R3, #0
000089f8  SUB             R1, R0, #0xC
000089fc  ADD             R1, R1, R1,LSR#31
00008a00  MLA             R2, R0, R6, R9
00008a04  ADD             R0, R2, R1,ASR#1
00008a08  MOV             R12, R0,LSL#16
00008a0c  MOV             R12, R12,ASR#16
00008a10  MOV             R0, #0x19
00008a14  MOV             R2, R8
00008a18  MOV             R1, #0
00008a1c  B               loc_8AA0
00008a20  MOV             R3, #0x50 ; 'P'
00008a24  ADD             R2, SP, #0x27C+var_10C
00008a28  LDR             R1, =0x2428
00008a2c  MOV             R0, R11
00008a30  BL              sub_19618
00008a34  ADD             R3, SP, #0x27C+var_10C
00008a38  STR             R3, [SP,#0x27C+var_27C]
00008a3c  LDRSH           R0, [R5,#4]
00008a40  ADD             R0, R0, R6
00008a44  ADD             R0, R4, R0,LSL#3
00008a48  LDRSH           R3, [R0,#6]
00008a4c  LDR             R0, =(start - 0x8A58)
00008a50  ADD             R0, PC, R0; start
00008a54  LDR             R0, [R0,#(dword_8 - 0xC)]
00008a58  LDR             R2, =(aT00001Hffff00S_1 - 0x8A64); "$T00001$Hffff00$S000000%d%s"
00008a5c  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%d%s"
00008a60  LDR             R12, [R0,#0x3C]
00008a64  ADD             R0, SP, #0x27C+var_24C
00008a68  MOV             R1, #0x140
00008a6c  MOV             LR, PC
00008a70  BX              R12
00008a74  LDRSH           R0, [R5,#0xA]
00008a78  MOV             R3, #0
00008a7c  SUB             R1, R0, #0xC
00008a80  ADD             R1, R1, R1,LSR#31
00008a84  MLA             R2, R0, R6, R9
00008a88  ADD             R0, R2, R1,ASR#1
00008a8c  MOV             R12, R0,LSL#16
00008a90  MOV             R12, R12,ASR#16
00008a94  MOV             R0, #0x7D ; '}'
00008a98  MOV             R2, R8
00008a9c  MOV             R1, #0
00008aa0  ADD             LR, SP, #0x27C+var_26C
00008aa4  STM             LR, {R0-R3}
00008aa8  MOV             R3, #0
00008aac  MOV             R2, #0
00008ab0  MOV             R1, #0
00008ab4  ADD             R0, SP, #0x27C+var_24C
00008ab8  STMEA           SP, {R0-R3}
00008abc  ADD             R3, SP, #0x27C+var_254
00008ac0  MOV             R2, R12
00008ac4  MOV             R1, R7
00008ac8  MOV             R0, R10
00008acc  BL              sub_98BC
00008ad0  ADD             R0, R6, #1
00008ad4  MOV             R6, R0,LSL#16
00008ad8  MOV             R6, R6,ASR#16
00008adc  LDRSH           R0, [R5,#6]
00008ae0  CMP             R0, R6
00008ae4  BGT             loc_82B0
00008ae8  LDRH            R0, [R5,#8]
00008aec  CMP             R0, #0
00008af0  MOVEQ           R1, #5
00008af4  BEQ             loc_8B20
00008af8  CMP             R0, #1
00008afc  BEQ             loc_8B1C
00008b00  CMP             R0, #2
00008b04  LDREQ           R1, [R4,#0x114]
00008b08  MOVEQ           R0, #0xF
00008b0c  STRHEQ          R0, [R1,#8]
00008b10  BEQ             loc_8B28
00008b14  CMP             R0, #3
00008b18  BNE             loc_8B28
00008b1c  MOV             R1, #4
00008b20  LDR             R0, [R4,#0x114]
00008b24  STRH            R1, [R0,#8]
00008b28  LDRSH           R1, [R5,#4]
00008b2c  LDRSH           R0, [R5,#6]
00008b30  LDRSH           R2, [R4]
00008b34  ADD             R1, R1, R0
00008b38  CMP             R1, R2
00008b3c  LDRSH           R1, [R5,#0xA]
00008b40  SUB             R0, R0, #1
00008b44  MLA             R0, R1, R0, R9
00008b48  LDRLT           R1, [R4,#0x144]
00008b4c  MOVLT           R1, R1,LSL#30
00008b50  ADDLT           R0, R0, R1,LSR#31
00008b54  LDR             R1, [R4,#0x114]
00008b58  STRH            R0, [R1,#0x10]
00008b5c  LDR             R0, [R4,#0x114]
00008b60  BL              sub_21BA8
00008b64  LDR             R0, [R4,#0x114]
00008b68  LDR             R2, [SP,#0x27C+var_4]
00008b6c  MOV             R1, R7
00008b70  BL              sub_1CE08
00008b74  ADD             SP, SP, #0x27C
00008b78  POP             {R4-R11,LR}
00008b7c  BX              LR
