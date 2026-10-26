00011f10  PUSH            {R4-R6,LR}
00011f14  MOV             R4, R0
00011f18  LDR             R0, [R0,#8]
00011f1c  SUB             SP, SP, #0x30
00011f20  CMP             R0, #0
00011f24  LDRBNE          R0, [R4,#0x3E]
00011f28  MOV             R5, R1
00011f2c  CMPNE           R0, #0
00011f30  BEQ             loc_12084
00011f34  LDRH            R1, [R4,#0x5A]
00011f38  LDR             R0, =(start - 0x11F48)
00011f3c  LDR             R6, =0x6060
00011f40  ADD             R0, PC, R0; start
00011f44  LDR             R0, [R0,#(dword_8 - 0xC)]
00011f48  MOV             R3, #0xA0
00011f4c  MOV             R12, #0xFFFFFFB0
00011f50  CMP             R1, #0
00011f54  BEQ             loc_11FF0
00011f58  CMP             R1, #1
00011f5c  BNE             loc_12084
00011f60  LDRH            R1, [R5]
00011f64  MOV             R2, #0xFFFFFFF4
00011f68  ADR             LR, loc_11FA0
00011f6c  ADD             R1, R12, R1,LSR#1
00011f70  STRH            R1, [SP,#0x30+var_8]
00011f74  LDRH            R1, [R5,#2]
00011f78  ADD             R1, R2, R1,LSR#1
00011f7c  STRH            R1, [SP,#0x30+var_6]
00011f80  MOV             R1, #0x28 ; '('
00011f84  STRH            R1, [SP,#0x30+var_2]
00011f88  STRH            R3, [SP,#0x30+var_4]
00011f8c  LDR             R3, [R0,#4]
00011f90  ADD             R0, SP, #0x30+var_10
00011f94  MOV             R1, #0
00011f98  MOV             R2, #8
00011f9c  BX              R3
00011fa0  LDRH            R0, [SP,#0x30+var_4]
00011fa4  MOV             R3, #0
00011fa8  MOV             R2, #8
00011fac  STRH            R0, [SP,#0x30+var_C]
00011fb0  LDRH            R0, [SP,#0x30+var_10]
00011fb4  MOV             R1, #8
00011fb8  ADD             R12, SP, #0x30+var_20
00011fbc  ADD             R0, R0, #4
00011fc0  MOV             R0, R0,LSL#16
00011fc4  MOV             R0, R0,ASR#16
00011fc8  STM             R12, {R0-R3}
00011fcc  LDR             R0, [R4,#0x38]
00011fd0  LDR             R2, =0xFC00FFE0
00011fd4  MOV             R1, #0x11
00011fd8  STMEA           SP, {R0-R2,R6}
00011fdc  LDRH            R0, [SP,#0x30+var_E]
00011fe0  ADD             R0, R0, #4
00011fe4  MOV             R2, R0,LSL#16
00011fe8  MOV             R2, R2,ASR#16
00011fec  B               loc_1206C
00011ff0  LDRH            R1, [R5]
00011ff4  MOV             R2, #0x50 ; 'P'
00011ff8  ADR             LR, loc_1202C
00011ffc  ADD             R1, R2, R1,LSR#1
00012000  STRH            R1, [SP,#0x30+var_8]
00012004  LDRH            R1, [R5,#2]
00012008  MOV             R2, #8
0001200c  ADD             R1, R12, R1,LSR#1
00012010  STRH            R1, [SP,#0x30+var_6]
00012014  STRH            R3, [SP,#0x30+var_2]
00012018  STRH            R3, [SP,#0x30+var_4]
0001201c  LDR             R3, [R0,#4]
00012020  ADD             R0, SP, #0x30+var_10
00012024  MOV             R1, #0
00012028  BX              R3
0001202c  LDRH            R0, [SP,#0x30+var_2]
00012030  MOV             R3, #1
00012034  MOV             R2, #8
00012038  STRH            R0, [SP,#0x30+var_A]
0001203c  LDRH            R0, [SP,#0x30+var_8]
00012040  MOV             R1, #8
00012044  ADD             R12, SP, #0x30+var_20
00012048  ADD             R0, R0, #0x93
0001204c  MOV             R0, R0,LSL#16
00012050  MOV             R0, R0,ASR#16
00012054  STM             R12, {R0-R3}
00012058  LDR             R0, [R4,#0x38]
0001205c  LDR             R2, =0xFC00FFE0
00012060  MOV             R1, #0x11
00012064  STMEA           SP, {R0-R2,R6}
00012068  LDRSH           R2, [SP,#0x30+var_E]
0001206c  LDR             R0, [R4,#8]
00012070  ADD             R3, SP, #0x30+var_10
00012074  MOV             R1, R5
00012078  LDR             R0, [R0,#0x64]
0001207c  BL              sub_9854
00012080  STR             R0, [R4]
00012084  ADD             SP, SP, #0x30 ; '0'
00012088  POP             {R4-R6,LR}
0001208c  BX              LR
