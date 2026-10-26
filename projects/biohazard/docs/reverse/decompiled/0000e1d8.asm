0000e1d8  PUSH            {R4-R11,LR}
0000e1dc  MOV             R4, R0
0000e1e0  LDR             R0, =(start - 0xE1F8)
0000e1e4  SUB             SP, SP, #0x274
0000e1e8  MOV             R8, R2
0000e1ec  MOV             R5, R1
0000e1f0  ADD             R0, PC, R0; start
0000e1f4  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e1f8  ADR             LR, loc_E204
0000e1fc  LDR             R0, [R0,#0xC0]
0000e200  BX              R0
0000e204  LDR             R9, [R0,#0x28]
0000e208  MOV             R6, #0
0000e20c  LDR             R7, [R9,#0x64]
0000e210  STRH            R6, [SP,#0x274+var_24C]
0000e214  STRH            R6, [SP,#0x274+var_24A]
0000e218  LDRH            R0, [R5]
0000e21c  LDR             R3, =0x2124
0000e220  MOV             R1, #0
0000e224  STRH            R0, [SP,#0x274+var_248]
0000e228  LDRH            R0, [R5,#2]
0000e22c  MOV             R2, #0
0000e230  STRH            R0, [SP,#0x274+var_246]
0000e234  LDRSH           R0, [R5,#2]
0000e238  STMEA           SP, {R0,R1,R3}
0000e23c  STR             R3, [SP,#0x274+var_268]
0000e240  LDRSH           R3, [R5]
0000e244  MOV             R0, R5
0000e248  BL              sub_10C58
0000e24c  MOV             R2, #8
0000e250  MOV             R1, #4
0000e254  LDR             R0, [R4,#0x114]
0000e258  BL              sub_103F4
0000e25c  LDRH            R0, [R5]
0000e260  LDR             R1, [R4,#0x114]
0000e264  MOV             R0, R0,LSR#1
0000e268  STRH            R0, [R1,#0xE]
0000e26c  LDR             R0, [R4,#0x114]
0000e270  STRH            R6, [R0,#0x10]
0000e274  LDR             R0, [R4,#0x114]
0000e278  STRH            R6, [R0,#8]
0000e27c  LDR             R0, [R4,#0x114]
0000e280  BL              sub_21BA8
0000e284  MOV             R2, R8
0000e288  MOV             R1, R5
0000e28c  LDR             R0, [R4,#0x114]
0000e290  BL              sub_1CE08
0000e294  LDRH            R0, [R5,#2]
0000e298  LDR             R1, [R4,#0x114]
0000e29c  STRH            R0, [R1,#0x10]
0000e2a0  LDR             R0, [R4,#0x114]
0000e2a4  MOV             R1, #1
0000e2a8  STRH            R1, [R0,#8]
0000e2ac  LDR             R0, [R4,#0x114]
0000e2b0  BL              sub_21BA8
0000e2b4  MOV             R2, R8
0000e2b8  MOV             R1, R5
0000e2bc  LDR             R0, [R4,#0x114]
0000e2c0  BL              sub_1CE08
0000e2c4  ADD             R11, R4, #0x100
0000e2c8  LDRH            R0, [R11,#0x24]
0000e2cc  CMP             R0, #0
0000e2d0  BNE             loc_E2E8
0000e2d4  MOV             R2, R8
0000e2d8  MOV             R1, R5
0000e2dc  MOV             R0, R4
0000e2e0  BL              sub_8164
0000e2e4  B               loc_E8B8
0000e2e8  CMP             R0, #1
0000e2ec  CMPNE           R0, #2
0000e2f0  BNE             loc_EBF4
0000e2f4  LDRH            R0, [R11,#0x3C]
0000e2f8  MOV             R3, #0x50 ; 'P'
0000e2fc  ADD             R2, SP, #0x274+var_104
0000e300  SUB             R0, R0, #0xE2
0000e304  ADD             R0, R0, R0,LSR#31
0000e308  MOV             R0, R0,ASR#1
0000e30c  ADD             R0, R0, #0x2A ; '*'
0000e310  MOV             R10, R0,LSL#16
0000e314  MOV             R10, R10,ASR#16
0000e318  MOV             R0, R9
0000e31c  LDR             R1, =0x2429
0000e320  BL              sub_19618
0000e324  MOV             R2, #0
0000e328  ADD             R1, SP, #0x274+var_104
0000e32c  MOV             R0, R7
0000e330  BL              sub_12BC8
0000e334  MOV             R6, R0
0000e338  LDR             R0, [R4,#0x110]
0000e33c  LDR             R3, [R0,#0x1C]
0000e340  LDR             R0, =(start - 0xE34C)
0000e344  ADD             R0, PC, R0; start
0000e348  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e34c  LDR             R2, =(aD - 0xE358); "%d"
0000e350  ADD             R2, PC, R2; "%d"
0000e354  LDR             R12, [R0,#0x3C]
0000e358  ADD             R0, SP, #0x274+var_244
0000e35c  MOV             R1, #0x140
0000e360  MOV             LR, PC
0000e364  BX              R12
0000e368  MOV             R2, #0
0000e36c  ADD             R1, SP, #0x274+var_244
0000e370  MOV             R0, R7
0000e374  BL              sub_12BC8
0000e378  LDRH            R1, [R5]
0000e37c  ADD             R0, R0, R6
0000e380  MOV             R0, R0,LSL#16
0000e384  SUB             R0, R1, R0,ASR#16
0000e388  ADD             R0, R0, R0,LSR#31
0000e38c  MOV             R0, R0,ASR#1
0000e390  MOV             R6, R0,LSL#16
0000e394  LDR             R0, [R4,#0x110]
0000e398  MOV             R6, R6,ASR#16
0000e39c  LDR             R3, [R0,#0x1C]
0000e3a0  LDR             R0, =(start - 0xE3AC)
0000e3a4  ADD             R0, PC, R0; start
0000e3a8  STR             R3, [SP,#0x274+var_274]
0000e3ac  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e3b0  LDR             R2, =(aT00001Hffff00S_2 - 0xE3C0); "$T00001$Hffff00$S000000%s:%d"
0000e3b4  ADD             R3, SP, #0x274+var_104
0000e3b8  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s:%d"
0000e3bc  LDR             R12, [R0,#0x3C]
0000e3c0  ADD             R0, SP, #0x274+var_244
0000e3c4  MOV             R1, #0x140
0000e3c8  MOV             LR, PC
0000e3cc  BX              R12
0000e3d0  MOV             R3, #0
0000e3d4  MOV             R2, #0
0000e3d8  MOV             R1, #0
0000e3dc  ADD             R0, SP, #0x274+var_260
0000e3e0  STM             R0, {R1-R3}
0000e3e4  STR             R6, [SP,#0x274+var_264]
0000e3e8  ADD             R0, SP, #0x274+var_244
0000e3ec  STMEA           SP, {R0-R3}
0000e3f0  ADD             R3, SP, #0x274+var_24C
0000e3f4  MOV             R2, R10
0000e3f8  MOV             R1, R5
0000e3fc  MOV             R0, R7
0000e400  BL              sub_98BC
0000e404  MOV             R2, #8
0000e408  MOV             R1, #5
0000e40c  LDR             R0, [R4,#0x114]
0000e410  BL              sub_103F4
0000e414  LDRH            R0, [R5]
0000e418  LDR             R1, [R4,#0x114]
0000e41c  MOV             R6, #0
0000e420  MOV             R0, R0,LSR#1
0000e424  STRH            R0, [R1,#0xE]
0000e428  LDR             R1, [R4,#0x114]
0000e42c  ADD             R0, R10, #0xE
0000e430  STRH            R0, [R1,#0x10]
0000e434  LDR             R0, [R4,#0x114]
0000e438  STRH            R6, [R0,#8]
0000e43c  LDR             R0, [R4,#0x114]
0000e440  BL              sub_21BA8
0000e444  MOV             R2, R8
0000e448  MOV             R1, R5
0000e44c  LDR             R0, [R4,#0x114]
0000e450  BL              sub_1CE08
0000e454  LDRSH           R0, [R4,#2]
0000e458  ADD             R0, R4, R0,LSL#3
0000e45c  LDRSH           R0, [R0,#0xA]
0000e460  CMP             R0, #0
0000e464  BLT             loc_E490
0000e468  ADD             R1, R10, #0x11
0000e46c  MOV             R3, R1,LSL#16
0000e470  MOV             R3, R3,ASR#16
0000e474  MOV             R2, #0x27 ; '''
0000e478  STMEA           SP, {R2,R3}
0000e47c  MOV             R3, R0
0000e480  MOV             R0, R4
0000e484  MOV             R2, R8
0000e488  MOV             R1, R5
0000e48c  BL              sub_C300
0000e490  MOV             R2, #8
0000e494  MOV             R1, #4
0000e498  LDR             R0, [R4,#0x114]
0000e49c  BL              sub_103F4
0000e4a0  LDRSH           R0, [R4,#2]
0000e4a4  LDR             R1, [R4,#0x114]
0000e4a8  ADD             R0, R4, R0,LSL#3
0000e4ac  LDRH            R0, [R0,#8]
0000e4b0  ADD             R0, R0, #7
0000e4b4  STRH            R0, [R1,#8]
0000e4b8  LDR             R0, [R4,#0x114]
0000e4bc  BL              sub_21BA8
0000e4c0  MOV             R2, R8
0000e4c4  MOV             R1, R5
0000e4c8  LDR             R0, [R4,#0x114]
0000e4cc  BL              sub_1CE08
0000e4d0  MOV             R0, #0
0000e4d4  ADD             R12, SP, #0x274+var_174
0000e4d8  STRH            R0, [R12,#0x70]
0000e4dc  LDRSH           R0, [R4,#2]
0000e4e0  MOV             R3, #0x100
0000e4e4  ADD             R2, SP, #0x274+var_104
0000e4e8  ADD             R0, R4, R0,LSL#3
0000e4ec  LDRSH           R1, [R0,#4]
0000e4f0  MOV             R0, R9
0000e4f4  BL              sub_19618
0000e4f8  LDR             R2, =(start - 0xE504)
0000e4fc  ADD             R2, PC, R2; start
0000e500  LDR             R0, [R2,#(dword_8 - 0xC)]
0000e504  LDR             R2, =(aT00000HffffffS_0 - 0xE514); "$T00000$Hffffff%s$n"
0000e508  ADD             R3, SP, #0x274+var_104
0000e50c  ADD             R2, PC, R2; "$T00000$Hffffff%s$n"
0000e510  LDR             R12, [R0,#0x3C]
0000e514  ADD             R0, SP, #0x274+var_244
0000e518  MOV             R1, #0x140
0000e51c  MOV             LR, PC
0000e520  BX              R12
0000e524  LDR             R2, =(start - 0xE530)
0000e528  ADD             R2, PC, R2; start
0000e52c  LDR             R0, [R2,#(dword_8 - 0xC)]
0000e530  ADR             LR, loc_E540
0000e534  LDR             R1, [R0,#0x30]
0000e538  ADD             R0, SP, #0x274+var_244
0000e53c  BX              R1
0000e540  MOV             R6, R0,LSL#16
0000e544  MOV             R0, #0
0000e548  ADD             R12, SP, #0x274+var_174
0000e54c  STRH            R0, [R12,#0x70]
0000e550  LDRSH           R0, [R4,#2]
0000e554  MOV             R6, R6,ASR#16
0000e558  MOV             R3, #0x100
0000e55c  ADD             R0, R4, R0,LSL#3
0000e560  LDRSH           R1, [R0,#6]
0000e564  MOV             R0, R9
0000e568  ADD             R2, SP, #0x274+var_104
0000e56c  BL              sub_19618
0000e570  MOV             R0, #0x140
0000e574  SUB             R1, R0, R6,LSL#1
0000e578  ADD             R0, SP, #0x274+var_244
0000e57c  LDR             R2, =(start - 0xE58C)
0000e580  ADD             R0, R0, R6,LSL#1
0000e584  ADD             R2, PC, R2; start
0000e588  LDR             R2, [R2,#(dword_8 - 0xC)]
0000e58c  ADD             R3, SP, #0x274+var_104
0000e590  LDR             R12, [R2,#0x3C]
0000e594  LDR             R2, =(aS - 0xE5A0); "%s"
0000e598  ADD             R2, PC, R2; "%s"
0000e59c  MOV             LR, PC
0000e5a0  BX              R12
0000e5a4  MOV             R0, #0x28 ; '('
0000e5a8  STRH            R0, [SP,#0x274+var_24C]
0000e5ac  ADD             R0, R10, #0x32 ; '2'
0000e5b0  STRH            R0, [SP,#0x274+var_24A]
0000e5b4  MOV             R0, #0x60 ; '`'
0000e5b8  STRH            R0, [SP,#0x274+var_248]
0000e5bc  MOV             R0, #0x1A
0000e5c0  STRH            R0, [SP,#0x274+var_246]
0000e5c4  MOV             R3, #1
0000e5c8  STR             R3, [SP,#0x274+var_26C]
0000e5cc  ADD             R1, SP, #0x274+var_24C
0000e5d0  LDM             R1, {R0,R1}
0000e5d4  STMEA           SP, {R0,R1}
0000e5d8  MOV             R1, R5
0000e5dc  MOV             R0, R4
0000e5e0  ADD             R3, SP, #0x274+var_244
0000e5e4  MOV             R2, R8
0000e5e8  BL              sub_7C60
0000e5ec  MOV             R0, #0
0000e5f0  STRH            R0, [SP,#0x274+var_24C]
0000e5f4  STRH            R0, [SP,#0x274+var_24A]
0000e5f8  LDRH            R0, [R5]
0000e5fc  MOV             R6, #0
0000e600  STRH            R0, [SP,#0x274+var_248]
0000e604  LDRH            R0, [R5,#2]
0000e608  STRH            R0, [SP,#0x274+var_246]
0000e60c  LDRSH           R0, [R11,#0x4E]
0000e610  CMP             R0, R6
0000e614  BNE             loc_E670
0000e618  MOV             R2, #8
0000e61c  MOV             R1, #5
0000e620  LDR             R0, [R4,#0x114]
0000e624  BL              sub_103F4
0000e628  LDRH            R0, [R5]
0000e62c  LDR             R1, [R4,#0x114]
0000e630  MOV             R0, R0,LSR#1
0000e634  STRH            R0, [R1,#0xE]
0000e638  RSB             R0, R6, R6,LSL#3
0000e63c  ADD             R0, R10, R0,LSL#1
0000e640  LDR             R1, [R4,#0x114]
0000e644  ADD             R0, R0, #0x4E ; 'N'
0000e648  STRH            R0, [R1,#0x10]
0000e64c  LDR             R0, [R4,#0x114]
0000e650  MOV             R1, #1
0000e654  STRH            R1, [R0,#8]
0000e658  LDR             R0, [R4,#0x114]
0000e65c  BL              sub_21BA8
0000e660  MOV             R2, R8
0000e664  MOV             R1, R5
0000e668  LDR             R0, [R4,#0x114]
0000e66c  BL              sub_1CE08
0000e670  ADD             R0, R4, R6
0000e674  LDRB            R3, [R0,#0x136]
0000e678  LDRB            R2, [R0,#0x131]
0000e67c  LDRB            R1, [R0,#0x12C]
0000e680  RSB             R0, R6, R6,LSL#3
0000e684  ADD             R0, R10, R0,LSL#1
0000e688  STR             R0, [SP,#0x274+var_4]
0000e68c  ADD             R0, R0, #0x52 ; 'R'
0000e690  MOV             R0, R0,LSL#16
0000e694  MOV             R0, R0,ASR#16
0000e698  STMEA           SP, {R0-R3}
0000e69c  MOV             R3, #0x32 ; '2'
0000e6a0  MOV             R2, R8
0000e6a4  MOV             R1, R5
0000e6a8  MOV             R0, R4
0000e6ac  BL              sub_6338
0000e6b0  MOV             R0, #0
0000e6b4  ADD             R12, SP, #0x274+var_174
0000e6b8  STRH            R0, [R12,#0x70]
0000e6bc  ADD             R1, R6, #0x1F00
0000e6c0  ADD             R1, R1, #0x4A ; 'J'
0000e6c4  MOV             R0, R9
0000e6c8  MOV             R3, #0x100
0000e6cc  ADD             R2, SP, #0x274+var_104
0000e6d0  BL              sub_19618
0000e6d4  LDRSH           R0, [R11,#0x4E]
0000e6d8  CMP             R0, R6
0000e6dc  LDR             R0, =(start - 0xE6E8)
0000e6e0  ADD             R0, PC, R0; start
0000e6e4  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e6e8  ADD             R3, SP, #0x274+var_104
0000e6ec  LDR             R12, [R0,#0x3C]
0000e6f0  BNE             loc_E710
0000e6f4  LDR             R2, =(aT00001Hffff00S_0 - 0xE700); "$T00001$Hffff00$S000000%s"
0000e6f8  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s"
0000e6fc  MOV             R1, #0x140
0000e700  ADD             R0, SP, #0x274+var_244
0000e704  MOV             LR, PC
0000e708  BX              R12
0000e70c  B               loc_E728
0000e710  LDR             R2, =(aT00001HffffffS_1 - 0xE71C); "$T00001$Hffffff$S0080ff%s"
0000e714  ADD             R2, PC, R2; "$T00001$Hffffff$S0080ff%s"
0000e718  MOV             R1, #0x140
0000e71c  ADD             R0, SP, #0x274+var_244
0000e720  MOV             LR, PC
0000e724  BX              R12
0000e728  MOV             R3, #0
0000e72c  MOV             R2, #0
0000e730  MOV             R1, #0
0000e734  MOV             R0, #0x13
0000e738  ADD             R12, SP, #0x274+var_264
0000e73c  STM             R12, {R0-R3}
0000e740  ADD             R0, SP, #0x274+var_244
0000e744  STMEA           SP, {R0-R3}
0000e748  LDR             R0, [SP,#0x274+var_4]
0000e74c  ADD             R3, SP, #0x274+var_24C
0000e750  ADD             R0, R0, #0x51 ; 'Q'
0000e754  MOV             R2, R0,LSL#16
0000e758  MOV             R2, R2,ASR#16
0000e75c  MOV             R0, R7
0000e760  MOV             R1, R5
0000e764  BL              sub_98BC
0000e768  ADD             R0, R6, #1
0000e76c  MOV             R6, R0,LSL#16
0000e770  MOV             R6, R6,ASR#16
0000e774  CMP             R6, #5
0000e778  BLT             loc_E60C
0000e77c  LDR             R0, [R4,#0x128]
0000e780  CMP             R0, #0
0000e784  BLE             loc_E8B8
0000e788  LDR             R1, [R4,#0x114]
0000e78c  ADD             R0, R10, #0x4C ; 'L'
0000e790  STRH            R0, [R1,#0x10]
0000e794  LDR             R0, [R4,#0x114]
0000e798  MOV             R1, #3
0000e79c  STRH            R1, [R0,#8]
0000e7a0  LDR             R0, [R4,#0x114]
0000e7a4  BL              sub_21BA8
0000e7a8  MOV             R2, R8
0000e7ac  MOV             R1, R5
0000e7b0  LDR             R0, [R4,#0x114]
0000e7b4  BL              sub_1CE08
0000e7b8  MOV             R0, #0
0000e7bc  ADD             R12, SP, #0x274+var_174
0000e7c0  STRH            R0, [R12,#0x70]
0000e7c4  MOV             R0, R9
0000e7c8  MOV             R3, #0x100
0000e7cc  ADD             R2, SP, #0x274+var_104
0000e7d0  LDR             R1, =0x1F4F
0000e7d4  BL              sub_19618
0000e7d8  MOV             R2, #0
0000e7dc  ADD             R1, SP, #0x274+var_104
0000e7e0  MOV             R0, R7
0000e7e4  BL              sub_12BC8
0000e7e8  MOV             R6, R0
0000e7ec  LDR             R0, =(start - 0xE7F8)
0000e7f0  ADD             R0, PC, R0; start
0000e7f4  LDR             R3, [R4,#0x128]
0000e7f8  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e7fc  LDR             R2, =(aD - 0xE808); "%d"
0000e800  ADD             R2, PC, R2; "%d"
0000e804  LDR             R12, [R0,#0x3C]
0000e808  ADD             R0, SP, #0x274+var_244
0000e80c  MOV             R1, #0x140
0000e810  MOV             LR, PC
0000e814  BX              R12
0000e818  MOV             R2, #0
0000e81c  ADD             R1, SP, #0x274+var_244
0000e820  MOV             R0, R7
0000e824  BL              sub_12BC8
0000e828  LDRH            R1, [R5]
0000e82c  ADD             R0, R0, R6
0000e830  MOV             R0, R0,LSL#16
0000e834  SUB             R0, R1, R0,ASR#16
0000e838  ADD             R0, R0, R0,LSR#31
0000e83c  MOV             R0, R0,ASR#1
0000e840  MOV             R6, R0,LSL#16
0000e844  LDR             R0, =(start - 0xE858)
0000e848  LDR             R3, [R4,#0x128]
0000e84c  MOV             R6, R6,ASR#16
0000e850  ADD             R0, PC, R0; start
0000e854  STR             R3, [SP,#0x274+var_274]
0000e858  LDR             R0, [R0,#(dword_8 - 0xC)]
0000e85c  LDR             R2, =(aT00001Hffff00S_3 - 0xE86C); "$T00001$Hffff00$S000000%s%d"
0000e860  ADD             R3, SP, #0x274+var_104
0000e864  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s%d"
0000e868  LDR             R12, [R0,#0x3C]
0000e86c  ADD             R0, SP, #0x274+var_244
0000e870  MOV             R1, #0x140
0000e874  MOV             LR, PC
0000e878  BX              R12
0000e87c  MOV             R3, #0
0000e880  MOV             R2, #0
0000e884  MOV             R1, #0
0000e888  ADD             R0, SP, #0x274+var_260
0000e88c  STM             R0, {R1-R3}
0000e890  STR             R6, [SP,#0x274+var_264]
0000e894  ADD             R0, SP, #0x274+var_244
0000e898  STMEA           SP, {R0-R3}
0000e89c  ADD             R0, R10, #0x39 ; '9'
0000e8a0  MOV             R2, R0,LSL#16
0000e8a4  MOV             R2, R2,ASR#16
0000e8a8  MOV             R0, R7
0000e8ac  ADD             R3, SP, #0x274+var_24C
0000e8b0  MOV             R1, R5
0000e8b4  BL              sub_98BC
0000e8b8  LDRH            R0, [R11,#0x24]
0000e8bc  CMP             R0, #2
0000e8c0  BNE             loc_EBF4
0000e8c4  LDRSH           R0, [R5,#2]
0000e8c8  MOV             R3, #0
0000e8cc  MOV             R2, #0
0000e8d0  LDR             R1, =0x1002
0000e8d4  STMEA           SP, {R0-R3}
0000e8d8  LDRSH           R3, [R5]
0000e8dc  MOV             R1, #0
0000e8e0  MOV             R0, R5
0000e8e4  BL              sub_10C58
0000e8e8  LDRH            R0, [R5]
0000e8ec  LDR             R1, [R4,#0x114]
0000e8f0  MOV             R2, #8
0000e8f4  MOV             R0, R0,LSR#1
0000e8f8  STRH            R0, [R1,#0xE]
0000e8fc  LDRH            R0, [R5,#2]
0000e900  LDR             R1, [R4,#0x114]
0000e904  MOV             R0, R0,LSR#1
0000e908  STRH            R0, [R1,#0x10]
0000e90c  LDR             R0, [R4,#0x114]
0000e910  MOV             R1, #0
0000e914  BL              sub_103F4
0000e918  LDR             R1, [R4,#0x110]
0000e91c  LDR             R0, [R4,#0x128]
0000e920  LDR             R1, [R1,#0x1C]
0000e924  CMP             R0, R1
0000e928  LDRGE           R0, [R4,#0x114]
0000e92c  MOVGE           R1, #3
0000e930  STRHGE          R1, [R0,#8]
0000e934  LDRLT           R1, [R4,#0x114]
0000e938  MOVLT           R0, #4
0000e93c  STRHLT          R0, [R1,#8]
0000e940  LDR             R0, [R4,#0x114]
0000e944  BL              sub_21BA8
0000e948  MOV             R2, R8
0000e94c  MOV             R1, R5
0000e950  LDR             R0, [R4,#0x114]
0000e954  BL              sub_1CE08
0000e958  LDR             R1, [R4,#0x110]
0000e95c  LDR             R0, [R4,#0x128]
0000e960  LDR             R1, [R1,#0x1C]
0000e964  LDR             R10, =(aT00001Hff8040S_0 - 0xE970); "$T00001$Hff8040$S000000%s"
0000e968  ADD             R10, PC, R10; "$T00001$Hff8040$S000000%s"
0000e96c  CMP             R0, R1
0000e970  MOV             R3, #0x50 ; 'P'
0000e974  ADD             R2, SP, #0x274+var_104
0000e978  BGE             loc_EC00
0000e97c  ADD             R1, R3, #0x1F00
0000e980  MOV             R0, R9
0000e984  BL              sub_19618
0000e988  MOV             R2, #1
0000e98c  ADD             R1, SP, #0x274+var_104
0000e990  MOV             R0, R7
0000e994  BL              sub_12BC8
0000e998  LDRH            R1, [R5]
0000e99c  LDR             R6, =(start - 0xE9D4)
0000e9a0  SUB             R0, R1, R0
0000e9a4  ADD             R0, R0, R0,LSR#31
0000e9a8  MOV             R0, R0,ASR#1
0000e9ac  MOV             R0, R0,LSL#16
0000e9b0  MOV             R0, R0,ASR#16
0000e9b4  STR             R0, [SP,#0x274+var_250]
0000e9b8  LDRH            R0, [R5,#2]
0000e9bc  MOV             R1, #0xFFFFFFF4
0000e9c0  ADD             R0, R1, R0,LSR#1
0000e9c4  MOV             R11, R0,LSL#16
0000e9c8  MOV             R11, R11,ASR#16
0000e9cc  ADD             R6, PC, R6; start
0000e9d0  LDR             R0, [R6,#(dword_8 - 0xC)]
0000e9d4  ADD             R3, SP, #0x274+var_104
0000e9d8  LDR             R12, [R0,#0x3C]
0000e9dc  ADD             R0, SP, #0x274+var_244
0000e9e0  MOV             R2, R10
0000e9e4  MOV             R1, #0x140
0000e9e8  MOV             LR, PC
0000e9ec  BX              R12
0000e9f0  LDR             R0, [SP,#0x274+var_250]
0000e9f4  MOV             R3, #0
0000e9f8  MOV             R2, #2
0000e9fc  MOV             R1, #0
0000ea00  ADD             R12, SP, #0x274+var_264
0000ea04  STM             R12, {R0-R3}
0000ea08  MOV             R2, #0
0000ea0c  ADD             R0, SP, #0x274+var_244
0000ea10  STMEA           SP, {R0-R3}
0000ea14  ADD             R3, SP, #0x274+var_24C
0000ea18  MOV             R2, R11
0000ea1c  MOV             R1, R5
0000ea20  MOV             R0, R7
0000ea24  BL              sub_98BC
0000ea28  MOV             R3, #0x50 ; 'P'
0000ea2c  ADD             R2, SP, #0x274+var_104
0000ea30  LDR             R1, =0x262A
0000ea34  MOV             R0, R9
0000ea38  BL              sub_19618
0000ea3c  LDRH            R0, [R5]
0000ea40  MOV             R1, #0xFFFFFFDD
0000ea44  ADD             R3, SP, #0x274+var_104
0000ea48  ADD             R0, R1, R0,LSR#1
0000ea4c  MOV             R0, R0,LSL#16
0000ea50  MOV             R0, R0,ASR#16
0000ea54  STR             R0, [SP,#0x274+var_250]
0000ea58  LDRH            R0, [R5,#2]
0000ea5c  MOV             R1, #0xA
0000ea60  ADD             R0, R1, R0,LSR#1
0000ea64  MOV             R11, R0,LSL#16
0000ea68  LDRB            R0, [R4,#0x13B]
0000ea6c  MOV             R11, R11,ASR#16
0000ea70  CMP             R0, #1
0000ea74  LDR             R0, [R6,#(dword_8 - 0xC)]
0000ea78  LDR             R12, [R0,#0x3C]
0000ea7c  BNE             loc_EA98
0000ea80  MOV             R2, R10
0000ea84  MOV             R1, #0x140
0000ea88  ADD             R0, SP, #0x274+var_244
0000ea8c  MOV             LR, PC
0000ea90  BX              R12
0000ea94  B               loc_EAB0
0000ea98  LDR             R2, =(aT00001Hfffff7S_0 - 0xEAA4); "$T00001$Hfffff7$S000000%s"
0000ea9c  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000eaa0  MOV             R1, #0x140
0000eaa4  ADD             R0, SP, #0x274+var_244
0000eaa8  MOV             LR, PC
0000eaac  BX              R12
0000eab0  LDR             R0, [SP,#0x274+var_250]
0000eab4  MOV             R3, #0
0000eab8  MOV             R2, #2
0000eabc  MOV             R1, #0
0000eac0  ADD             R12, SP, #0x274+var_264
0000eac4  STM             R12, {R0-R3}
0000eac8  MOV             R2, #0
0000eacc  ADD             R0, SP, #0x274+var_244
0000ead0  STMEA           SP, {R0-R3}
0000ead4  ADD             R3, SP, #0x274+var_24C
0000ead8  MOV             R2, R11
0000eadc  MOV             R1, R5
0000eae0  MOV             R0, R7
0000eae4  BL              sub_98BC
0000eae8  MOV             R3, #0x50 ; 'P'
0000eaec  ADD             R2, SP, #0x274+var_104
0000eaf0  LDR             R1, =0x262B
0000eaf4  MOV             R0, R9
0000eaf8  BL              sub_19618
0000eafc  LDRH            R0, [R5]
0000eb00  MOV             R1, #0x17
0000eb04  ADD             R3, SP, #0x274+var_104
0000eb08  ADD             R0, R1, R0,LSR#1
0000eb0c  MOV             R9, R0,LSL#16
0000eb10  LDRH            R0, [R5,#2]
0000eb14  MOV             R1, #0xA
0000eb18  MOV             R9, R9,ASR#16
0000eb1c  ADD             R0, R1, R0,LSR#1
0000eb20  MOV             R11, R0,LSL#16
0000eb24  LDRB            R0, [R4,#0x13B]
0000eb28  MOV             R11, R11,ASR#16
0000eb2c  CMP             R0, #0
0000eb30  LDR             R0, [R6,#(dword_8 - 0xC)]
0000eb34  LDR             R12, [R0,#0x3C]
0000eb38  BNE             loc_EB54
0000eb3c  MOV             R2, R10
0000eb40  MOV             R1, #0x140
0000eb44  ADD             R0, SP, #0x274+var_244
0000eb48  MOV             LR, PC
0000eb4c  BX              R12
0000eb50  B               loc_EB6C
0000eb54  LDR             R2, =(aT00001Hfffff7S_0 - 0xEB60); "$T00001$Hfffff7$S000000%s"
0000eb58  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000eb5c  MOV             R1, #0x140
0000eb60  ADD             R0, SP, #0x274+var_244
0000eb64  MOV             LR, PC
0000eb68  BX              R12
0000eb6c  MOV             R3, #0
0000eb70  MOV             R2, #2
0000eb74  MOV             R1, #0
0000eb78  ADD             R0, SP, #0x274+var_260
0000eb7c  STM             R0, {R1-R3}
0000eb80  STR             R9, [SP,#0x274+var_264]
0000eb84  MOV             R2, #0
0000eb88  ADD             R0, SP, #0x274+var_244
0000eb8c  STMEA           SP, {R0-R3}
0000eb90  ADD             R3, SP, #0x274+var_24C
0000eb94  MOV             R2, R11
0000eb98  MOV             R1, R5
0000eb9c  MOV             R0, R7
0000eba0  BL              sub_98BC
0000eba4  MOV             R2, #8
0000eba8  MOV             R1, #4
0000ebac  LDR             R0, [R4,#0x114]
0000ebb0  BL              sub_103F4
0000ebb4  LDRH            R0, [R5]
0000ebb8  LDR             R1, [R4,#0x114]
0000ebbc  MOV             R0, R0,LSR#1
0000ebc0  STRH            R0, [R1,#0xE]
0000ebc4  LDRH            R0, [R5,#2]
0000ebc8  LDR             R1, [R4,#0x114]
0000ebcc  STRH            R0, [R1,#0x10]
0000ebd0  LDR             R0, [R4,#0x114]
0000ebd4  MOV             R1, #1
0000ebd8  STRH            R1, [R0,#8]
0000ebdc  LDR             R0, [R4,#0x114]
0000ebe0  BL              sub_21BA8
0000ebe4  MOV             R2, R8
0000ebe8  MOV             R1, R5
0000ebec  LDR             R0, [R4,#0x114]
0000ebf0  BL              sub_1CE08
0000ebf4  ADD             SP, SP, #0x274
0000ebf8  POP             {R4-R11,LR}
0000ebfc  BX              LR
0000ec00  LDR             R1, =0x242C
0000ec04  MOV             R0, R9
0000ec08  BL              sub_19618
0000ec0c  MOV             R2, #1
0000ec10  ADD             R1, SP, #0x274+var_104
0000ec14  MOV             R0, R7
0000ec18  BL              sub_12BC8
0000ec1c  LDRH            R1, [R5]
0000ec20  LDR             R8, =(start - 0xEC54)
0000ec24  SUB             R0, R1, R0
0000ec28  ADD             R0, R0, R0,LSR#31
0000ec2c  MOV             R0, R0,ASR#1
0000ec30  MOV             R4, R0,LSL#16
0000ec34  LDRH            R0, [R5,#2]
0000ec38  MOV             R1, #0xFFFFFFE8
0000ec3c  MOV             R4, R4,ASR#16
0000ec40  ADD             R0, R1, R0,LSR#1
0000ec44  MOV             R6, R0,LSL#16
0000ec48  MOV             R6, R6,ASR#16
0000ec4c  ADD             R8, PC, R8; start
0000ec50  LDR             R0, [R8,#(dword_8 - 0xC)]
0000ec54  ADD             R3, SP, #0x274+var_104
0000ec58  LDR             R12, [R0,#0x3C]
0000ec5c  ADD             R0, SP, #0x274+var_244
0000ec60  MOV             R2, R10
0000ec64  MOV             R1, #0x140
0000ec68  MOV             LR, PC
0000ec6c  BX              R12
0000ec70  MOV             R3, #0
0000ec74  MOV             R2, #2
0000ec78  MOV             R1, #0
0000ec7c  ADD             R0, SP, #0x274+var_260
0000ec80  STM             R0, {R1-R3}
0000ec84  STR             R4, [SP,#0x274+var_264]
0000ec88  MOV             R2, #0
0000ec8c  ADD             R0, SP, #0x274+var_244
0000ec90  STMEA           SP, {R0-R3}
0000ec94  ADD             R3, SP, #0x274+var_24C
0000ec98  MOV             R2, R6
0000ec9c  MOV             R1, R5
0000eca0  MOV             R0, R7
0000eca4  BL              sub_98BC
0000eca8  MOV             R3, #0x50 ; 'P'
0000ecac  ADD             R2, SP, #0x274+var_104
0000ecb0  LDR             R1, =0x138A
0000ecb4  MOV             R0, R9
0000ecb8  BL              sub_19618
0000ecbc  MOV             R2, #1
0000ecc0  ADD             R1, SP, #0x274+var_104
0000ecc4  MOV             R0, R7
0000ecc8  BL              sub_12BC8
0000eccc  LDRH            R1, [R5]
0000ecd0  LDR             R2, =(aT00001H00ff00S_3 - 0xED0C); "$T00001$H00ff00$S000000%s"
0000ecd4  ADD             R3, SP, #0x274+var_104
0000ecd8  SUB             R0, R1, R0
0000ecdc  ADD             R0, R0, R0,LSR#31
0000ece0  MOV             R0, R0,ASR#1
0000ece4  MOV             R4, R0,LSL#16
0000ece8  LDRH            R0, [R5,#2]
0000ecec  MOV             R1, #0xA
0000ecf0  MOV             R4, R4,ASR#16
0000ecf4  ADD             R0, R1, R0,LSR#1
0000ecf8  MOV             R6, R0,LSL#16
0000ecfc  LDR             R0, [R8,#(dword_8 - 0xC)]
0000ed00  MOV             R6, R6,ASR#16
0000ed04  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000ed08  LDR             R12, [R0,#0x3C]
0000ed0c  ADD             R0, SP, #0x274+var_244
0000ed10  MOV             R1, #0x140
0000ed14  MOV             LR, PC
0000ed18  BX              R12
0000ed1c  MOV             R3, #0
0000ed20  MOV             R2, #2
0000ed24  MOV             R1, #0
0000ed28  ADD             R0, SP, #0x274+var_260
0000ed2c  STM             R0, {R1-R3}
0000ed30  STR             R4, [SP,#0x274+var_264]
0000ed34  MOV             R2, #0
0000ed38  ADD             R0, SP, #0x274+var_244
0000ed3c  STMEA           SP, {R0-R3}
0000ed40  ADD             R3, SP, #0x274+var_24C
0000ed44  MOV             R2, R6
0000ed48  MOV             R1, R5
0000ed4c  MOV             R0, R7
0000ed50  BL              sub_98BC
0000ed54  B               loc_EBF4
