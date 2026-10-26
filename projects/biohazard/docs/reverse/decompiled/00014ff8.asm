00014ff8  PUSH            {R4-R11,LR}
00014ffc  MOV             R4, R0
00015000  LDRB            R0, [R0,#0xC]
00015004  SUB             SP, SP, #0x2C
00015008  CMP             R0, #0
0001500c  BEQ             loc_151B8
00015010  LDRB            R0, [R4,#0xF]
00015014  CMP             R0, #0
00015018  BNE             loc_151B8
0001501c  LDR             R0, [R4,#0x88]
00015020  LDR             R7, =0x1004001
00015024  LDR             R6, =(start - 0x15034)
00015028  ADD             R5, R4, #0x94
0001502c  ADD             R6, PC, R6; start
00015030  CMP             R0, #0
00015034  BNE             loc_1505C
00015038  LDR             R0, [R6,#(dword_8 - 0xC)]
0001503c  LDR             R1, =(dword_28424 - 0x15050)
00015040  MOV             R3, R5
00015044  ADD             R2, SP, #0x2C+var_C
00015048  ADD             R1, PC, R1; dword_28424
0001504c  LDR             R12, [R0,#0x64]
00015050  MOV             R0, R7
00015054  BLX             R12
00015058  STR             R0, [R4,#0x88]
0001505c  LDR             R0, [R4,#0x8C]
00015060  CMP             R0, #0
00015064  BNE             loc_1508C
00015068  LDR             R0, [R6,#(dword_8 - 0xC)]
0001506c  LDR             R1, =(aBmv - 0x15080); "BMV\a"
00015070  MOV             R3, R5
00015074  ADD             R2, SP, #0x2C+var_C
00015078  ADD             R1, PC, R1; "BMV\a"
0001507c  LDR             R12, [R0,#0x64]
00015080  MOV             R0, R7
00015084  BLX             R12
00015088  STR             R0, [R4,#0x8C]
0001508c  LDR             R0, [R4,#0x90]
00015090  CMP             R0, #0
00015094  BNE             loc_150BC
00015098  LDR             R0, [R6,#(dword_8 - 0xC)]
0001509c  LDR             R1, =(dword_29398 - 0x150B0)
000150a0  MOV             R3, R5
000150a4  ADD             R2, SP, #0x2C+var_C
000150a8  ADD             R1, PC, R1; dword_29398
000150ac  LDR             R12, [R0,#0x64]
000150b0  MOV             R0, R7
000150b4  BLX             R12
000150b8  STR             R0, [R4,#0x90]
000150bc  LDR             R0, [R4,#0x88]
000150c0  CMP             R0, #0
000150c4  LDREQ           R0, [R4,#0x8C]
000150c8  CMPEQ           R0, #0
000150cc  LDREQ           R0, [R4,#0x90]
000150d0  CMPEQ           R0, #0
000150d4  BEQ             loc_151B8
000150d8  LDR             R7, =(dword_282F8 - 0x150EC)
000150dc  LDR             R8, =0x8220
000150e0  MOV             R6, #0
000150e4  ADD             R7, PC, R7; dword_282F8
000150e8  ADD             R0, R6, R6,LSL#2
000150ec  ADD             R5, R7, R0,LSL#2
000150f0  LDRH            R0, [R5]
000150f4  LDRH            R1, [R4,#0x7E]
000150f8  MOV             R3, #7
000150fc  MOV             R2, #0
00015100  ADD             R0, R0, R1
00015104  STRH            R0, [SP,#0x2C+var_14]
00015108  LDRH            R0, [R5,#2]
0001510c  LDRH            R1, [R4,#0x80]
00015110  ADD             R0, R0, R1
00015114  STRH            R0, [SP,#0x2C+var_12]
00015118  LDRH            R0, [R5,#4]
0001511c  MOV             R1, #0
00015120  STRH            R0, [SP,#0x2C+var_10]
00015124  LDRH            R0, [R5,#6]
00015128  STRH            R0, [SP,#0x2C+var_E]
0001512c  LDR             R0, [R5,#8]
00015130  LDR             R12, [R4,#4]
00015134  ADD             R0, R4, R0,LSL#2
00015138  LDR             R0, [R0,#0x88]
0001513c  LDRSH           LR, [SP,#0x2C+var_14]
00015140  LDRSH           R9, [SP,#0x2C+var_12]
00015144  LDRSH           R10, [SP,#0x2C+var_10]
00015148  LDRSH           R11, [SP,#0x2C+var_E]
0001514c  STMFA           SP, {R0-R3}
00015150  STR             R11, [SP,#0x2C+var_2C]
00015154  LDR             R0, [R12]
00015158  MOV             R3, R10
0001515c  LDR             R11, [R0,#0x18]
00015160  MOV             R0, R12
00015164  MOV             R2, R9
00015168  MOV             R1, LR
0001516c  BLX             R11
00015170  LDR             R0, [R4,#4]
00015174  MOV             R2, #0xFFFFFF00
00015178  LDR             R1, [R0]
0001517c  LDR             R3, [R1,#0x28]
00015180  MOV             R1, #1
00015184  BLX             R3
00015188  LDRSH           R0, [SP,#0x2C+var_14]
0001518c  LDRSH           R1, [SP,#0x2C+var_12]
00015190  ADD             R2, SP, #0x2C+var_14
00015194  STMEA           SP, {R0-R2,R8}
00015198  LDR             R0, [R4,#4]
0001519c  ADD             R2, R5, #0xC
000151a0  MOV             R1, #0x8000
000151a4  MOV             R3, #0xFFFFFFFF
000151a8  BL              sub_14464
000151ac  ADD             R6, R6, #1
000151b0  CMP             R6, #0xF
000151b4  BLT             loc_150E8
000151b8  MOV             R0, R4
000151bc  BL              sub_D204
000151c0  MOV             R0, #1
000151c4  ADD             SP, SP, #0x2C ; ','
000151c8  POP             {R4-R11,PC}
