0001d460  PUSH            {R4-R11,LR}
0001d464  MOV             R6, R0
0001d468  LDR             R0, =(start - 0x1D47C)
0001d46c  SUB             SP, SP, #0x5C
0001d470  MOV             R5, R1
0001d474  ADD             R0, PC, R0; start
0001d478  ADD             R8, R1, #0x20 ; ' '
0001d47c  LDR             R0, [R0,#(dword_8 - 0xC)]
0001d480  LDM             R8, {R4,R8}
0001d484  LDR             R0, [R0,#0xC0]
0001d488  MOV             LR, PC
0001d48c  BX              R0
0001d490  LDR             R7, [R0,#0x2C]
0001d494  LDRSH           R0, [R4,#2]
0001d498  MOV             R3, #0
0001d49c  MOV             R2, #0
0001d4a0  MOV             R1, #0
0001d4a4  STMEA           SP, {R0-R3}
0001d4a8  LDRSH           R3, [R4]
0001d4ac  MOV             R0, R4
0001d4b0  BL              sub_10C58
0001d4b4  LDRH            R0, [R4]
0001d4b8  MOV             R2, #8
0001d4bc  MOV             R1, #7
0001d4c0  MOV             R0, R0,LSR#1
0001d4c4  STRH            R0, [R7,#0xE]
0001d4c8  MOV             R0, #0xEB
0001d4cc  STRH            R0, [R7,#0x10]
0001d4d0  MOV             R0, R7
0001d4d4  BL              sub_103F4
0001d4d8  MOV             R0, #0
0001d4dc  STRH            R0, [R7,#8]
0001d4e0  MOV             R0, R7
0001d4e4  BL              sub_21BA8
0001d4e8  MOV             R2, R8
0001d4ec  MOV             R1, R4
0001d4f0  MOV             R0, R7
0001d4f4  BL              sub_1CE08
0001d4f8  LDRSH           R0, [R4,#2]
0001d4fc  MOV             R3, #0
0001d500  MOV             R2, #0
0001d504  LDR             R1, =0x1002
0001d508  STMEA           SP, {R0-R3}
0001d50c  LDRSH           R3, [R4]
0001d510  MOV             R1, #0
0001d514  MOV             R0, R4
0001d518  BL              sub_10C58
0001d51c  ADD             R7, R6, #0x100
0001d520  LDRH            R0, [R7,#0x7C]
0001d524  CMP             R0, #0
0001d528  BEQ             loc_1D6DC
0001d52c  CMP             R0, #1
0001d530  BNE             loc_1D6CC
0001d534  MOV             R3, #0x20 ; ' '
0001d538  ADD             R2, SP, #0x5C+var_40
0001d53c  LDR             R0, [R5,#0x28]
0001d540  LDR             R1, =0x1B8A
0001d544  BL              sub_19618
0001d548  LDR             R0, [R5,#0x28]
0001d54c  LDRH            R1, [R4]
0001d550  LDR             R12, [R0,#0x64]
0001d554  LDR             R10, =0xFC00FFE0
0001d558  LDRH            R0, [R12,#0x32]
0001d55c  ADD             R2, SP, #0x5C+var_54
0001d560  LDR             R9, =0x6060
0001d564  RSB             R0, R0, R1,LSR#1
0001d568  MOV             LR, R0,LSL#16
0001d56c  LDRH            R0, [R12,#0x30]
0001d570  LDRH            R1, [R4,#2]
0001d574  MOV             LR, LR,ASR#16
0001d578  MOV             R3, #0xFFFFFFFF
0001d57c  RSB             R0, R0, R1,LSR#1
0001d580  MOV             R8, R0,LSL#16
0001d584  MOV             R0, #0
0001d588  MOV             R1, #0x11
0001d58c  STM             R2, {R0,R1,R10}
0001d590  MOV             R8, R8,ASR#16
0001d594  STR             R8, [SP,#0x5C+var_58]
0001d598  STR             R9, [SP,#0x5C+var_48]
0001d59c  STR             LR, [SP,#0x5C+var_5C]
0001d5a0  ADD             R2, SP, #0x5C+var_40
0001d5a4  MOV             R1, R4
0001d5a8  MOV             R0, R12
0001d5ac  BL              sub_1A228
0001d5b0  LDRH            R0, [R4]
0001d5b4  LDR             R11, [R5,#0x28]
0001d5b8  MOV             R1, R0,LSR#1
0001d5bc  LDR             R0, [R11,#0x64]
0001d5c0  LDRH            R2, [R0,#0x32]
0001d5c4  SUB             R1, R1, R2,LSL#1
0001d5c8  MOV             R1, R1,LSL#16
0001d5cc  MOV             R1, R1,ASR#16
0001d5d0  STR             R1, [SP,#0x5C+var_44]
0001d5d4  LDRH            R0, [R0,#0x30]
0001d5d8  LDRH            R1, [R4,#2]
0001d5dc  ADD             R0, R0, R1,LSR#1
0001d5e0  MOV             R8, R0,LSL#16
0001d5e4  LDRH            R0, [R7,#0x7E]
0001d5e8  MOV             R8, R8,ASR#16
0001d5ec  CMP             R0, #0
0001d5f0  BNE             loc_1D608
0001d5f4  MOV             R0, #3
0001d5f8  LDR             R1, [R6,#0x140]
0001d5fc  BL              sub_1DC
0001d600  CMP             R1, #0
0001d604  BEQ             loc_1D670
0001d608  MOV             R3, #0x20 ; ' '
0001d60c  ADD             R2, SP, #0x5C+var_40
0001d610  LDR             R1, =0x1B8B
0001d614  MOV             R0, R11
0001d618  BL              sub_19618
0001d61c  MOV             R1, #0x11
0001d620  MOV             R0, #0
0001d624  ADD             R2, SP, #0x5C+var_54
0001d628  STM             R2, {R0,R1,R10}
0001d62c  LDR             R2, [SP,#0x5C+var_44]
0001d630  STR             R9, [SP,#0x5C+var_48]
0001d634  STMEA           SP, {R2,R8}
0001d638  LDR             R0, [R5,#0x28]
0001d63c  ADD             R2, SP, #0x5C+var_40
0001d640  MOV             R1, R4
0001d644  MOV             R3, #0xFFFFFFFF
0001d648  LDR             R0, [R0,#0x64]
0001d64c  BL              sub_1A228
0001d650  LDRH            R0, [R7,#0x7E]
0001d654  CMP             R0, #1
0001d658  BNE             loc_1D670
0001d65c  MOV             R0, #3
0001d660  LDR             R1, [R6,#0x140]
0001d664  BL              sub_1DC
0001d668  CMP             R1, #0
0001d66c  BEQ             loc_1D6CC
0001d670  MOV             R3, #0x20 ; ' '
0001d674  ADD             R2, SP, #0x5C+var_40
0001d678  LDR             R0, [R5,#0x28]
0001d67c  LDR             R1, =0x1B8C
0001d680  BL              sub_19618
0001d684  LDR             R0, [R5,#0x28]
0001d688  LDRH            R1, [R4]
0001d68c  LDR             R12, [R0,#0x64]
0001d690  ADD             R5, SP, #0x5C+var_54
0001d694  LDRH            R0, [R12,#0x32]
0001d698  MOV             R3, #0xFFFFFFFF
0001d69c  ADD             R0, R0, R1,LSR#1
0001d6a0  MOV             LR, R0,LSL#16
0001d6a4  MOV             R0, #0
0001d6a8  MOV             R1, #0x11
0001d6ac  STM             R5, {R0,R1,R10}
0001d6b0  MOV             R2, LR,ASR#16
0001d6b4  STMEA           SP, {R2,R8}
0001d6b8  STR             R9, [SP,#0x5C+var_48]
0001d6bc  ADD             R2, SP, #0x5C+var_40
0001d6c0  MOV             R1, R4
0001d6c4  MOV             R0, R12
0001d6c8  BL              sub_1A228
0001d6cc  ADD             SP, SP, #0x5C ; '\'
0001d6d0  POP             {R4-R11,LR}
0001d6d4  MOV             R0, #1
0001d6d8  BX              LR
0001d6dc  MOV             R2, R8
0001d6e0  MOV             R1, R4
0001d6e4  MOV             R0, R6
0001d6e8  LDR             R3, [R5,#0x28]
0001d6ec  BL              sub_F7D0
0001d6f0  B               loc_1D6CC
