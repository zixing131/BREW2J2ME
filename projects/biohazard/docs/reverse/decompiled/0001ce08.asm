0001ce08  PUSH            {R0-R2,R4-R11,LR}
0001ce0c  MOV             R4, R0
0001ce10  LDRB            R0, [R0,#0xC]
0001ce14  SUB             SP, SP, #0x38
0001ce18  MOV             R11, #0
0001ce1c  MOV             R0, R0,LSL#24
0001ce20  MOV             R10, R0,LSR#16
0001ce24  STR             R10, [SP,#0x44+var_20]
0001ce28  B               loc_1D028
0001ce2c  LDR             R0, [R4,#0x18]
0001ce30  ADD             R9, R11, R11,LSL#1
0001ce34  LDR             R1, [R0,R9,LSL#3]
0001ce38  LDR             R0, [SP,#0x44+var_4]
0001ce3c  BL              sub_11DD8
0001ce40  MOVS            R5, R0
0001ce44  BEQ             loc_1D020
0001ce48  LDR             R0, [R4,#0x18]
0001ce4c  MOV             R8, #0
0001ce50  ADD             R0, R0, R9,LSL#3
0001ce54  LDRH            R1, [R0,#0x12]
0001ce58  LDR             R10, [SP,#0x44+var_20]
0001ce5c  ORR             R6, R1, #1
0001ce60  TST             R6, #8
0001ce64  LDRBNE          R1, [R0,#0x14]
0001ce68  ORRNE           R10, R1, R10
0001ce6c  TST             R6, #0x20
0001ce70  BEQ             loc_1CE88
0001ce74  LDR             R1, [R0,#4]
0001ce78  LDR             R0, [SP,#0x44+var_4]
0001ce7c  BL              sub_11DD8
0001ce80  MOV             R8, R0
0001ce84  B               loc_1CE98
0001ce88  TST             R6, #0x10
0001ce8c  LDRHNE          R1, [R0,#0x10]
0001ce90  LDRBNE          R0, [R0,#0x15]
0001ce94  ORRNE           R8, R1, R0,LSL#16
0001ce98  LDRH            R0, [R4,#0xA]
0001ce9c  MOV             R1, #1
0001cea0  AND             R1, R1, R6,LSR#1
0001cea4  STR             R0, [SP,#0x44+var_10]
0001cea8  CMP             R0, #4
0001ceac  MOVNE           R0, #0
0001ceb0  MOVEQ           R0, #1
0001ceb4  TEQ             R0, R1
0001ceb8  BICEQ           R0, R6, #2
0001cebc  ORRNE           R0, R6, #2
0001cec0  STR             R0, [SP,#0x44+var_1C]
0001cec4  LDR             R0, [R4,#0x18]
0001cec8  LDRH            R6, [R5]
0001cecc  LDRH            R7, [R5,#2]
0001ced0  ADD             R9, R0, R9,LSL#3
0001ced4  LDRH            R0, [R9,#0xC]
0001ced8  STR             R0, [SP,#0x44+var_14]
0001cedc  CMP             R0, #0x64 ; 'd'
0001cee0  BEQ             loc_1CEFC
0001cee4  LDR             R0, [SP,#0x44+var_14]
0001cee8  MUL             R1, R6, R0
0001ceec  MOV             R0, #0x64 ; 'd'
0001cef0  BL              sub_104
0001cef4  MOV             R6, R0,LSL#16
0001cef8  MOV             R6, R6,LSR#16
0001cefc  LDRH            R0, [R9,#0xE]
0001cf00  STR             R0, [SP,#0x44+var_18]
0001cf04  CMP             R0, #0x64 ; 'd'
0001cf08  BEQ             loc_1CF24
0001cf0c  LDR             R0, [SP,#0x44+var_18]
0001cf10  MUL             R1, R7, R0
0001cf14  MOV             R0, #0x64 ; 'd'
0001cf18  BL              sub_104
0001cf1c  MOV             R7, R0,LSL#16
0001cf20  MOV             R7, R7,LSR#16
0001cf24  LDR             R0, [SP,#0x44+var_10]
0001cf28  LDRH            R1, [R4,#0xE]
0001cf2c  CMP             R0, #4
0001cf30  LDRH            R0, [R9,#8]
0001cf34  MOV             R3, R8
0001cf38  MOV             R2, R10
0001cf3c  SUBEQ           R0, R1, R0
0001cf40  ADDNE           R0, R0, R1
0001cf44  SUB             R0, R0, R6,LSR#1
0001cf48  MOV             R12, R0,LSL#16
0001cf4c  LDRH            R0, [R4,#0x10]
0001cf50  LDRH            R1, [R4,#0x12]
0001cf54  MOV             R12, R12,LSR#16
0001cf58  ADD             R0, R0, R1
0001cf5c  LDRH            R1, [R9,#0xA]
0001cf60  ADD             R0, R0, R1
0001cf64  SUB             R0, R0, R7
0001cf68  MOV             LR, R0,LSL#16
0001cf6c  LDR             R0, [SP,#0x44+var_14]
0001cf70  MOV             LR, LR,LSR#16
0001cf74  CMP             R0, #0x64 ; 'd'
0001cf78  LDREQ           R0, [SP,#0x44+var_18]
0001cf7c  LDR             R1, [SP,#0x44+var_1C]
0001cf80  CMPEQ           R0, #0x64 ; 'd'
0001cf84  BEQ             loc_1CFD8
0001cf88  LDRSH           R0, [R5,#2]
0001cf8c  ADD             R8, SP, #0x44+var_30
0001cf90  STM             R8, {R0-R3}
0001cf94  LDRSH           R3, [R5]
0001cf98  MOV             R2, #0
0001cf9c  MOV             R1, #0
0001cfa0  ADD             R0, SP, #0x44+var_3C
0001cfa4  STM             R0, {R1-R3}
0001cfa8  MOV             R3, R7,LSL#16
0001cfac  MOV             R3, R3,ASR#16
0001cfb0  STMEA           SP, {R3,R5}
0001cfb4  MOV             R3, R6,LSL#16
0001cfb8  MOV             R2, LR,LSL#16
0001cfbc  MOV             R1, R12,LSL#16
0001cfc0  MOV             R1, R1,ASR#16
0001cfc4  MOV             R2, R2,ASR#16
0001cfc8  MOV             R3, R3,ASR#16
0001cfcc  LDR             R0, [SP,#0x44+var_8]
0001cfd0  BL              sub_18BC
0001cfd4  B               loc_1D020
0001cfd8  STR             R3, [SP,#0x44+var_2C]
0001cfdc  MOV             R3, #0
0001cfe0  STR             R3, [SP,#0x44+var_3C]
0001cfe4  STR             R1, [SP,#0x44+var_34]
0001cfe8  STR             R2, [SP,#0x44+var_30]
0001cfec  MOV             R1, R7,LSL#16
0001cff0  MOV             R0, #0
0001cff4  STR             R0, [SP,#0x44+var_38]
0001cff8  MOV             R1, R1,ASR#16
0001cffc  STMEA           SP, {R1,R5}
0001d000  MOV             R1, R12,LSL#16
0001d004  MOV             R2, LR,LSL#16
0001d008  MOV             R3, R6,LSL#16
0001d00c  MOV             R3, R3,ASR#16
0001d010  MOV             R2, R2,ASR#16
0001d014  MOV             R1, R1,ASR#16
0001d018  LDR             R0, [SP,#0x44+var_8]
0001d01c  BL              sub_3324
0001d020  ADD             R0, R11, #1
0001d024  BIC             R11, R0, #0x10000
0001d028  LDRH            R0, [R4,#0x16]
0001d02c  CMP             R0, R11
0001d030  BHI             loc_1CE2C
0001d034  ADD             SP, SP, #0x44 ; 'D'
0001d038  POP             {R4-R11,LR}
0001d03c  BX              LR
