0000c144  PUSH            {R4-R9,LR}
0000c148  LDR             R9, =(start - 0xC164)
0000c14c  SUB             SP, SP, #0x25C
0000c150  MOV             R6, R2
0000c154  MOV             R5, R1
0000c158  MOV             R4, R0
0000c15c  ADD             R9, PC, R9; start
0000c160  LDR             R0, [R9,#(dword_8 - 0xC)]
0000c164  ADR             LR, loc_C170
0000c168  LDR             R0, [R0,#0xC0]
0000c16c  BX              R0
0000c170  MOV             R7, #0
0000c174  LDR             R8, [R0,#0x28]
0000c178  STRH            R7, [SP,#0x25C+var_248]
0000c17c  STRH            R7, [SP,#0x25C+var_246]
0000c180  LDRSH           LR, [R5]
0000c184  LDR             R3, =0x2124
0000c188  MOV             R1, #0
0000c18c  STRH            LR, [SP,#0x25C+var_244]
0000c190  LDRSH           R0, [R5,#2]
0000c194  MOV             R2, #0
0000c198  STRH            R0, [SP,#0x25C+var_242]
0000c19c  STMEA           SP, {R0,R1,R3}
0000c1a0  STR             R3, [SP,#0x25C+var_250]
0000c1a4  MOV             R3, LR
0000c1a8  MOV             R0, R5
0000c1ac  BL              sub_10C58
0000c1b0  MOV             R2, #8
0000c1b4  MOV             R1, #1
0000c1b8  LDR             R0, [R4,#0x114]
0000c1bc  BL              sub_103F4
0000c1c0  LDRH            R0, [R5]
0000c1c4  LDR             R1, [R4,#0x114]
0000c1c8  MOV             R0, R0,LSR#1
0000c1cc  STRH            R0, [R1,#0xE]
0000c1d0  LDR             R0, [R4,#0x114]
0000c1d4  STRH            R7, [R0,#0x10]
0000c1d8  MOV             R0, #0x120
0000c1dc  LDRH            R0, [R0,R4]
0000c1e0  CMP             R0, #0
0000c1e4  LDRNE           R1, [R4,#0x114]
0000c1e8  MOVNE           R0, #0xC
0000c1ec  STRHNE          R0, [R1,#8]
0000c1f0  LDREQ           R0, [R4,#0x114]
0000c1f4  STRHEQ          R7, [R0,#8]
0000c1f8  LDR             R0, [R4,#0x114]
0000c1fc  BL              sub_21BA8
0000c200  MOV             R2, R6
0000c204  MOV             R1, R5
0000c208  LDR             R0, [R4,#0x114]
0000c20c  BL              sub_1CE08
0000c210  LDRH            R0, [R5,#2]
0000c214  LDR             R1, [R4,#0x114]
0000c218  STRH            R0, [R1,#0x10]
0000c21c  LDR             R1, [R4,#0x114]
0000c220  MOV             R0, #1
0000c224  STRH            R0, [R1,#8]
0000c228  LDR             R0, [R4,#0x114]
0000c22c  BL              sub_21BA8
0000c230  MOV             R2, R6
0000c234  MOV             R1, R5
0000c238  LDR             R0, [R4,#0x114]
0000c23c  BL              sub_1CE08
0000c240  MOV             R2, R6
0000c244  MOV             R1, R5
0000c248  MOV             R0, R4
0000c24c  BL              sub_8164
0000c250  LDRSH           R0, [R4,#2]
0000c254  LDRSH           R1, [R4]
0000c258  CMP             R0, R1
0000c25c  BGE             loc_C2E8
0000c260  MOV             R1, #6
0000c264  STRH            R1, [SP,#0x25C+var_248]
0000c268  LDRH            R1, [R5,#2]
0000c26c  ADD             R0, R4, R0,LSL#3
0000c270  MOV             R3, #0x100
0000c274  SUB             R1, R1, #0x4B ; 'K'
0000c278  STRH            R1, [SP,#0x25C+var_246]
0000c27c  MOV             R1, #0xA4
0000c280  STRH            R1, [SP,#0x25C+var_244]
0000c284  MOV             R1, #0x34 ; '4'
0000c288  STRH            R1, [SP,#0x25C+var_242]
0000c28c  LDRSH           R1, [R0,#6]
0000c290  MOV             R0, R8
0000c294  ADD             R2, SP, #0x25C+var_100
0000c298  BL              sub_19618
0000c29c  LDR             R0, [R9,#(dword_8 - 0xC)]
0000c2a0  LDR             R2, =(aT00001H00ff00S_3 - 0xC2B0); "$T00001$H00ff00$S000000%s"
0000c2a4  ADD             R3, SP, #0x25C+var_100
0000c2a8  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000c2ac  LDR             R12, [R0,#0x3C]
0000c2b0  ADD             R0, SP, #0x25C+var_240
0000c2b4  MOV             R1, #0x140
0000c2b8  MOV             LR, PC
0000c2bc  BX              R12
0000c2c0  MOV             R3, #1
0000c2c4  STR             R3, [SP,#0x25C+var_254]
0000c2c8  ADD             R1, SP, #0x25C+var_248
0000c2cc  LDM             R1, {R0,R1}
0000c2d0  STMEA           SP, {R0,R1}
0000c2d4  MOV             R1, R5
0000c2d8  MOV             R0, R4
0000c2dc  ADD             R3, SP, #0x25C+var_240
0000c2e0  MOV             R2, R6
0000c2e4  BL              sub_7C60
0000c2e8  ADD             SP, SP, #0x25C
0000c2ec  POP             {R4-R9,LR}
0000c2f0  BX              LR
