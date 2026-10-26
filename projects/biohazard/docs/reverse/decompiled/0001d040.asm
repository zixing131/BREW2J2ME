0001d040  PUSH            {R4-R6,LR}
0001d044  MOV             R5, R0
0001d048  LDRB            R0, [R0,#8]
0001d04c  SUB             SP, SP, #0x28
0001d050  MOV             R4, R1
0001d054  CMP             R0, #0
0001d058  BEQ             loc_1D154
0001d05c  LDR             R0, =(start - 0x1D068)
0001d060  ADD             R0, PC, R0; start
0001d064  LDR             R0, [R0,#(dword_8 - 0xC)]
0001d068  ADR             LR, loc_1D074
0001d06c  LDR             R0, [R0,#0xC0]
0001d070  BX              R0
0001d074  LDR             R6, [R0,#0x28]
0001d078  LDRH            R0, [R5]
0001d07c  MOV             R12, #0x32 ; '2'
0001d080  MOV             R3, #0
0001d084  STRH            R0, [SP,#0x28+var_8]
0001d088  STRH            R12, [SP,#0x28+var_6]
0001d08c  MOV             R0, #0x7D0
0001d090  STRH            R0, [SP,#0x28+var_4]
0001d094  MOV             R0, #0x3E8
0001d098  STRH            R0, [SP,#0x28+var_2]
0001d09c  MOV             R0, #0x14
0001d0a0  LDR             R2, =0x41C7
0001d0a4  LDR             R1, =0x1302
0001d0a8  STMEA           SP, {R0-R3}
0001d0ac  LDRSH           R3, [R4]
0001d0b0  MOV             R2, R12
0001d0b4  MOV             R1, #0
0001d0b8  MOV             R0, R4
0001d0bc  BL              sub_10C58
0001d0c0  LDR             R3, =0x8CB3
0001d0c4  MOV             R2, #0
0001d0c8  STMEA           SP, {R2,R3}
0001d0cc  LDRSH           R3, [R4]
0001d0d0  LDRSH           R2, [SP,#0x28+var_6]
0001d0d4  MOV             R1, #0
0001d0d8  MOV             R0, R4
0001d0dc  BL              sub_109D0
0001d0e0  LDR             R3, =0x8CB3
0001d0e4  MOV             R2, #0
0001d0e8  STMEA           SP, {R2,R3}
0001d0ec  LDRSH           R3, [R4]
0001d0f0  LDRH            R0, [SP,#0x28+var_6]
0001d0f4  MOV             R1, #0
0001d0f8  ADD             R0, R0, #0x14
0001d0fc  MOV             R2, R0,LSL#16
0001d100  MOV             R2, R2,ASR#16
0001d104  MOV             R0, R4
0001d108  BL              sub_109D0
0001d10c  LDRSH           R0, [SP,#0x28+var_8]
0001d110  MOV             R3, #0
0001d114  MOV             R2, #2
0001d118  MOV             R1, #0
0001d11c  ADD             R12, SP, #0x28+var_18
0001d120  STM             R12, {R0-R3}
0001d124  LDR             R0, [R5,#0xC]
0001d128  MOV             R2, #0x7E0
0001d12c  MOV             R1, #1
0001d130  STMEA           SP, {R0-R3}
0001d134  LDRH            R0, [SP,#0x28+var_6]
0001d138  ADD             R3, SP, #0x28+var_8
0001d13c  MOV             R1, R4
0001d140  ADD             R0, R0, #4
0001d144  MOV             R2, R0,LSL#16
0001d148  MOV             R2, R2,ASR#16
0001d14c  LDR             R0, [R6,#0x64]
0001d150  BL              sub_98BC
0001d154  ADD             SP, SP, #0x28 ; '('
0001d158  POP             {R4-R6,LR}
0001d15c  BX              LR
