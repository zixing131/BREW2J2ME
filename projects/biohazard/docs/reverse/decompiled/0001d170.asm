0001d170  PUSH            {R4-R9,LR}
0001d174  MOV             R4, R0
0001d178  LDR             R0, [R0,#8]
0001d17c  SUB             SP, SP, #0x34
0001d180  CMP             R0, #0
0001d184  LDRBNE          R0, [R4,#0x3E]
0001d188  MOV             R5, R1
0001d18c  CMPNE           R0, #0
0001d190  BEQ             loc_1D444
0001d194  LDRH            R0, [R4,#0x5A]
0001d198  LDR             R6, =(start - 0x1D1A4)
0001d19c  ADD             R6, PC, R6; start
0001d1a0  MOV             R7, #0xA0
0001d1a4  LDR             R8, =0xFC00FFE0
0001d1a8  LDR             R9, =0x6060
0001d1ac  CMP             R0, #0
0001d1b0  BEQ             loc_1D314
0001d1b4  CMP             R0, #1
0001d1b8  BNE             loc_1D444
0001d1bc  LDRSH           R0, [R5,#2]
0001d1c0  MOV             R3, #0
0001d1c4  MOV             R2, #0
0001d1c8  MOV             R1, #0
0001d1cc  STMEA           SP, {R0-R3}
0001d1d0  LDRSH           R3, [R5]
0001d1d4  MOV             R0, R5
0001d1d8  BL              sub_10C58
0001d1dc  STRH            R7, [SP,#0x34+var_4]
0001d1e0  LDRH            R0, [R5]
0001d1e4  MOV             R2, #8
0001d1e8  MOV             R1, #0
0001d1ec  SUB             R0, R0, #0xA0
0001d1f0  ADD             R0, R0, R0,LSR#31
0001d1f4  MOV             R0, R0,ASR#1
0001d1f8  STRH            R0, [SP,#0x34+var_8]
0001d1fc  MOV             R0, #0
0001d200  STRH            R0, [SP,#0x34+var_6]
0001d204  LDRH            R0, [R5,#2]
0001d208  ADR             LR, loc_1D220
0001d20c  STRH            R0, [SP,#0x34+var_2]
0001d210  LDR             R0, [R6,#(dword_8 - 0xC)]
0001d214  LDR             R3, [R0,#4]
0001d218  ADD             R0, SP, #0x34+var_10
0001d21c  BX              R3
0001d220  LDRH            R0, [SP,#0x34+var_4]
0001d224  MOV             R3, #0
0001d228  MOV             R2, #8
0001d22c  STRH            R0, [SP,#0x34+var_C]
0001d230  LDRH            R0, [SP,#0x34+var_10]
0001d234  MOV             R1, #8
0001d238  ADD             R6, SP, #0x34+var_24
0001d23c  ADD             R0, R0, #4
0001d240  MOV             R0, R0,LSL#16
0001d244  MOV             R0, R0,ASR#16
0001d248  STM             R6, {R0-R3}
0001d24c  LDR             R0, [R4,#0x38]
0001d250  MOV             R1, #0x11
0001d254  STMEA           SP, {R0,R1,R8,R9}
0001d258  LDRH            R0, [SP,#0x34+var_E]
0001d25c  MOV             R1, R5
0001d260  ADD             R3, SP, #0x34+var_10
0001d264  ADD             R0, R0, #4
0001d268  MOV             R2, R0,LSL#16
0001d26c  LDR             R0, [R4,#8]
0001d270  MOV             R2, R2,ASR#16
0001d274  LDR             R0, [R0,#0x64]
0001d278  BL              sub_9854
0001d27c  STR             R0, [R4]
0001d280  LDRSH           R1, [R4,#2]
0001d284  MOV             R0, #0x14
0001d288  BL              sub_104
0001d28c  SUB             R1, R0, #1
0001d290  CMP             R1, #0
0001d294  ADDGT           R0, R0, R0,LSL#2
0001d298  MOVGT           R1, #0xFFFFFFEC
0001d29c  ADDGT           R0, R1, R0,LSL#2
0001d2a0  LDRH            R1, [R5,#2]
0001d2a4  MOV             R2, #0xFFFFFFF5
0001d2a8  MOVLE           R0, #0
0001d2ac  ADD             R1, R2, R1,LSR#1
0001d2b0  SUB             R0, R1, R0
0001d2b4  ADD             R0, R0, #4
0001d2b8  MOV             R12, R0,LSL#16
0001d2bc  LDRH            R0, [SP,#0x34+var_8]
0001d2c0  MOV             R1, #8
0001d2c4  MOV             R2, #8
0001d2c8  ADD             R0, R0, #4
0001d2cc  MOV             R0, R0,LSL#16
0001d2d0  MOV             R0, R0,ASR#16
0001d2d4  MOV             R3, #0
0001d2d8  STR             R3, [SP,#0x34+var_18]
0001d2dc  STR             R0, [SP,#0x34+var_24]
0001d2e0  STR             R2, [SP,#0x34+var_1C]
0001d2e4  STR             R1, [SP,#0x34+var_20]
0001d2e8  LDR             R0, [R4,#0x38]
0001d2ec  MOV             R1, #0
0001d2f0  LDR             R2, =0xFFFF
0001d2f4  MOV             R3, #0
0001d2f8  STMEA           SP, {R0-R3}
0001d2fc  LDR             R0, [R4,#8]
0001d300  MOV             R12, R12,ASR#16
0001d304  MOV             R2, R12
0001d308  ADD             R3, SP, #0x34+var_8
0001d30c  LDR             R0, [R0,#0x64]
0001d310  B               loc_1D43C
0001d314  LDRH            R0, [R5]
0001d318  MOV             R1, #0x50 ; 'P'
0001d31c  MOV             R2, #8
0001d320  ADD             R0, R1, R0,LSR#1
0001d324  STRH            R0, [SP,#0x34+var_8]
0001d328  LDRH            R0, [R5,#2]
0001d32c  MOV             R1, #0xFFFFFFB0
0001d330  ADR             LR, loc_1D358
0001d334  ADD             R0, R1, R0,LSR#1
0001d338  STRH            R0, [SP,#0x34+var_6]
0001d33c  STRH            R7, [SP,#0x34+var_2]
0001d340  STRH            R7, [SP,#0x34+var_4]
0001d344  LDR             R0, [R6,#(dword_8 - 0xC)]
0001d348  MOV             R1, #0
0001d34c  LDR             R3, [R0,#4]
0001d350  ADD             R0, SP, #0x34+var_10
0001d354  BX              R3
0001d358  LDRH            R0, [SP,#0x34+var_2]
0001d35c  MOV             R3, #1
0001d360  MOV             R2, #8
0001d364  STRH            R0, [SP,#0x34+var_A]
0001d368  LDRH            R0, [SP,#0x34+var_8]
0001d36c  LDRH            R12, [SP,#0x34+var_4]
0001d370  MOV             R1, #8
0001d374  ADD             R6, SP, #0x34+var_24
0001d378  ADD             R0, R0, R12
0001d37c  SUB             R0, R0, #0xD
0001d380  MOV             R0, R0,LSL#16
0001d384  MOV             R0, R0,ASR#16
0001d388  STM             R6, {R0-R3}
0001d38c  LDR             R0, [R4,#0x38]
0001d390  MOV             R1, #0x11
0001d394  STMEA           SP, {R0,R1,R8,R9}
0001d398  LDR             R0, [R4,#8]
0001d39c  LDRSH           R2, [SP,#0x34+var_E]
0001d3a0  LDR             R0, [R0,#0x64]
0001d3a4  MOV             R1, R5
0001d3a8  ADD             R3, SP, #0x34+var_10
0001d3ac  BL              sub_9854
0001d3b0  STR             R0, [R4]
0001d3b4  LDRSH           R0, [R4]
0001d3b8  LDRSH           R1, [SP,#0x34+var_8]
0001d3bc  SUB             R0, R0, R1
0001d3c0  CMP             R0, #0
0001d3c4  MOVGE           R0, #0
0001d3c8  BGE             loc_1D3E4
0001d3cc  RSB             R1, R0, #0
0001d3d0  MOV             R0, #0x14
0001d3d4  BL              sub_104
0001d3d8  ADD             R0, R0, R0,LSL#2
0001d3dc  MOV             R1, #0x14
0001d3e0  ADD             R0, R1, R0,LSL#2
0001d3e4  LDRH            R1, [SP,#0x34+var_8]
0001d3e8  LDRH            R2, [SP,#0x34+var_4]
0001d3ec  MOV             R3, #1
0001d3f0  ADD             R6, SP, #0x34+var_24
0001d3f4  ADD             R1, R1, R2
0001d3f8  ADD             R0, R0, R1
0001d3fc  SUB             R0, R0, #0xD
0001d400  MOV             R0, R0,LSL#16
0001d404  MOV             R0, R0,ASR#16
0001d408  MOV             R1, #8
0001d40c  MOV             R2, #8
0001d410  STM             R6, {R0-R3}
0001d414  LDR             R0, [R4,#0x38]
0001d418  MOV             R1, #0x11
0001d41c  STMEA           SP, {R0,R1,R8,R9}
0001d420  LDRH            R0, [SP,#0x34+var_6]
0001d424  ADD             R3, SP, #0x34+var_8
0001d428  ADD             R0, R0, #1
0001d42c  MOV             R2, R0,LSL#16
0001d430  LDR             R0, [R4,#8]
0001d434  MOV             R2, R2,ASR#16
0001d438  LDR             R0, [R0,#0x64]
0001d43c  MOV             R1, R5
0001d440  BL              sub_9854
0001d444  ADD             SP, SP, #0x34 ; '4'
0001d448  POP             {R4-R9,LR}
0001d44c  BX              LR
