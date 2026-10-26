0000d204  PUSH            {R4,R5,LR}
0000d208  MOV             R4, R0
0000d20c  ADD             R1, R4, #0x76 ; 'v'
0000d210  LDR             R0, [R0,#4]
0000d214  SUB             SP, SP, #0x2C
0000d218  MOV             R2, #0
0000d21c  BL              sub_14518
0000d220  LDRH            R0, [R4,#0x76]
0000d224  MOV             R2, #0xFFFFFF00
0000d228  ADD             R1, SP, #0x2C+var_8
0000d22c  ADD             R0, R0, #1
0000d230  STRH            R0, [SP,#0x2C+var_8]
0000d234  LDRH            R0, [R4,#0x78]
0000d238  ADD             R0, R0, #1
0000d23c  STRH            R0, [SP,#0x2C+var_6]
0000d240  LDRH            R0, [R4,#0x7A]
0000d244  SUB             R0, R0, #2
0000d248  STRH            R0, [SP,#0x2C+var_4]
0000d24c  LDRH            R0, [R4,#0x7C]
0000d250  SUB             R0, R0, #2
0000d254  STRH            R0, [SP,#0x2C+var_2]
0000d258  LDR             R0, [R4,#4]
0000d25c  BL              sub_14518
0000d260  LDRH            R0, [SP,#0x2C+var_8]
0000d264  ADD             R0, R0, #3
0000d268  STRH            R0, [SP,#0x2C+var_10]
0000d26c  LDRH            R0, [SP,#0x2C+var_6]
0000d270  ADD             R0, R0, #1
0000d274  STRH            R0, [SP,#0x2C+var_E]
0000d278  LDRH            R0, [SP,#0x2C+var_4]
0000d27c  SUB             R0, R0, #6
0000d280  STRH            R0, [SP,#0x2C+var_C]
0000d284  LDRH            R0, [SP,#0x2C+var_2]
0000d288  SUB             R0, R0, #2
0000d28c  STRH            R0, [SP,#0x2C+var_A]
0000d290  LDRB            R0, [R4,#0xE]
0000d294  CMP             R0, #0
0000d298  LDR             R0, [R4,#4]
0000d29c  LDR             R1, [R0]
0000d2a0  LDR             R3, [R1,#0x28]
0000d2a4  BEQ             loc_D2B8
0000d2a8  LDR             R2, =0x7F7F7F00
0000d2ac  MOV             R1, #1
0000d2b0  BLX             R3
0000d2b4  B               loc_D2C4
0000d2b8  MOV             R2, #0
0000d2bc  MOV             R1, #1
0000d2c0  BLX             R3
0000d2c4  LDRSH           R0, [SP,#0x2C+var_10]
0000d2c8  LDRSH           R1, [SP,#0x2C+var_E]
0000d2cc  LDR             R3, =0x8210
0000d2d0  ADD             R2, SP, #0x2C+var_10
0000d2d4  STMEA           SP, {R0-R3}
0000d2d8  ADD             R2, R4, #0x10
0000d2dc  MOV             R5, R2
0000d2e0  LDR             R0, [R4,#4]
0000d2e4  MOV             R3, #0xFFFFFFFF
0000d2e8  MOV             R1, #0x8000
0000d2ec  BL              sub_14464
0000d2f0  LDRB            R0, [R4,#0xC]
0000d2f4  CMP             R0, #0
0000d2f8  BEQ             loc_D398
0000d2fc  LDRB            R0, [R4,#0xE]
0000d300  CMP             R0, #0
0000d304  LDRHNE          R0, [SP,#0x2C+var_10]
0000d308  BNE             loc_D33C
0000d30c  MOV             R3, #0
0000d310  MOV             R2, #0xFFFFFFFF
0000d314  LDR             R0, [R4,#4]
0000d318  STMEA           SP, {R2,R3}
0000d31c  LDR             R1, [R0]
0000d320  MOV             R3, #0xFFFFFFFF
0000d324  LDR             R12, [R1,#0xC]
0000d328  MOV             R1, #0x8000
0000d32c  MOV             R2, R5
0000d330  BLX             R12
0000d334  LDRH            R1, [SP,#0x2C+var_10]
0000d338  ADD             R0, R0, R1
0000d33c  STRH            R0, [R4,#0x9C]
0000d340  STRH            R0, [SP,#0x2C+var_18]
0000d344  LDRH            R0, [SP,#0x2C+var_E]
0000d348  ADD             R1, SP, #0x2C+var_18
0000d34c  STRH            R0, [SP,#0x2C+var_16]
0000d350  MOV             R0, #1
0000d354  STRH            R0, [SP,#0x2C+var_14]
0000d358  LDRH            R0, [SP,#0x2C+var_A]
0000d35c  STRH            R0, [SP,#0x2C+var_12]
0000d360  LDRB            R0, [R4,#0x9E]
0000d364  CMP             R0, #0
0000d368  MOVNE           R2, #0xFFFFFF00
0000d36c  MOVEQ           R2, #0
0000d370  LDR             R0, [R4,#4]
0000d374  BL              sub_14518
0000d378  LDR             R0, [R4]
0000d37c  LDR             R2, =(sub_6200 - 0xD390)
0000d380  LDR             R1, [R0]
0000d384  MOV             R3, R4
0000d388  ADD             R2, PC, R2; sub_6200
0000d38c  LDR             R12, [R1,#0x2C]
0000d390  MOV             R1, #0x3E8
0000d394  BLX             R12
0000d398  LDR             R0, [R4,#4]
0000d39c  LDR             R1, [R0]
0000d3a0  LDR             R2, [R1,#0x1C]
0000d3a4  MOV             R1, #1
0000d3a8  BLX             R2
0000d3ac  ADD             SP, SP, #0x2C ; ','
0000d3b0  POP             {R4,R5,PC}
