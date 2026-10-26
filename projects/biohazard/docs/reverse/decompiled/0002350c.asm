0002350c  MOV             R2, #0
00023510  STR             R2, [R0,#0x20]
00023514  STRB            R2, [R0,#0x40]
00023518  STR             R2, [R0,#0x44]
0002351c  STRB            R2, [R0,#0x25]
00023520  STRB            R2, [R0,#0x24]
00023524  STRB            R2, [R0,#0x2A]
00023528  STRB            R2, [R0,#0x29]
0002352c  STR             R2, [R0,#0x30]
00023530  STRB            R2, [R0,#0x34]
00023534  STRB            R2, [R0,#0x48]
00023538  STRB            R2, [R0,#0x49]
0002353c  LDR             R2, [R0]
00023540  LDR             R0, [R0,#4]
00023544  SUB             R2, R2, #8
00023548  MOV             R3, R2,ASR#31
0002354c  ADD             R2, R2, R3,LSR#28
00023550  MOV             R2, R2,ASR#4
00023554  SUB             R0, R0, #8
00023558  MOV             R3, R0,ASR#31
0002355c  CMP             R2, #0
00023560  LDRHGE          R12, [R1]
00023564  ADD             R0, R0, R3,LSR#28
00023568  MOVGE           R3, #0xFFFFFFFF
0002356c  ADDGE           R12, R3, R12,LSL#1
00023570  CMPGE           R12, R2
00023574  MOV             R0, R0,ASR#4
00023578  BXLE            LR
0002357c  CMP             R0, #0
00023580  LDRHGE          R12, [R1,#2]
00023584  ADDGE           R3, R3, R12,LSL#1
00023588  CMPGE           R3, R0
0002358c  BXLE            LR
00023590  LDR             R3, [R1,#0x28]
00023594  LDR             R3, [R3,R0,LSL#2]
00023598  LDRB            R12, [R3,R2]!
0002359c  ORR             R12, R12, #8
000235a0  STRB            R12, [R3]
000235a4  LDR             R3, [R1,#0x28]
000235a8  LDR             R3, [R3,R0,LSL#2]
000235ac  ADD             R3, R3, R2
000235b0  LDRB            R12, [R3,#1]!
000235b4  ORR             R12, R12, #8
000235b8  STRB            R12, [R3]
000235bc  LDR             R3, [R1,#0x28]
000235c0  ADD             R3, R3, R0,LSL#2
000235c4  LDR             R3, [R3,#4]
000235c8  LDRB            R12, [R3,R2]!
000235cc  ORR             R12, R12, #8
000235d0  STRB            R12, [R3]
000235d4  LDR             R1, [R1,#0x28]
000235d8  ADD             R0, R1, R0,LSL#2
000235dc  LDR             R0, [R0,#4]
000235e0  ADD             R0, R0, R2
000235e4  LDRB            R1, [R0,#1]!
000235e8  ORR             R1, R1, #8
000235ec  STRB            R1, [R0]
000235f0  BX              LR
