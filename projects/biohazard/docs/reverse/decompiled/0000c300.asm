0000c300  PUSH            {R4-R8,LR}
0000c304  SUB             SP, SP, #0x20
0000c308  ADD             R6, SP, #0x20+arg_0
0000c30c  MOV             R7, R1
0000c310  LDR             R1, =0x13B2
0000c314  LDM             R6, {R5,R6}
0000c318  MOV             R8, R3
0000c31c  MOV             R4, R2
0000c320  MOV             R0, R2
0000c324  BL              sub_11DD8
0000c328  MOVS            R12, R0
0000c32c  BEQ             loc_C368
0000c330  MOV             R1, #0
0000c334  STR             R1, [SP,#0x20+var_14]
0000c338  MOV             R3, #0
0000c33c  MOV             R2, #0
0000c340  ADD             LR, SP, #0x20+var_10
0000c344  STM             LR, {R1-R3}
0000c348  STR             R3, [SP,#0x20+var_18]
0000c34c  MOV             R1, #0xF
0000c350  STMEA           SP, {R1,R12}
0000c354  MOV             R1, R5
0000c358  MOV             R3, #0xF
0000c35c  MOV             R2, R6
0000c360  MOV             R0, R7
0000c364  BL              sub_3324
0000c368  LDR             R1, =0x13B3
0000c36c  MOV             R0, R4
0000c370  BL              sub_11DD8
0000c374  MOVS            R4, R0
0000c378  BEQ             loc_C3CC
0000c37c  RSB             R1, R8, R8,LSL#4
0000c380  MOV             R0, #0x64 ; 'd'
0000c384  BL              sub_104
0000c388  RSB             R0, R0, #0xF
0000c38c  MOV             R12, R0,LSL#16
0000c390  MOV             R1, #0
0000c394  STR             R1, [SP,#0x20+var_14]
0000c398  ADD             R0, SP, #0x20+var_10
0000c39c  MOV             R3, #0
0000c3a0  MOV             R2, #0
0000c3a4  STM             R0, {R1-R3}
0000c3a8  STR             R3, [SP,#0x20+var_18]
0000c3ac  MOV             R12, R12,ASR#16
0000c3b0  STR             R12, [SP,#0x20+var_20]
0000c3b4  MOV             R3, #0xF
0000c3b8  STR             R4, [SP,#0x20+var_1C]
0000c3bc  MOV             R2, R6
0000c3c0  MOV             R1, R5
0000c3c4  MOV             R0, R7
0000c3c8  BL              sub_3324
0000c3cc  ADD             SP, SP, #0x20 ; ' '
0000c3d0  POP             {R4-R8,LR}
0000c3d4  BX              LR
