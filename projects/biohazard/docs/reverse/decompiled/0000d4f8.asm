0000d4f8  PUSH            {R0-R11,LR}
0000d4fc  SUB             SP, SP, #0x3C
0000d500  MOVS            R6, R0
0000d504  MOV             R0, #0
0000d508  LDR             R9, [SP,#0x4C+arg_0]
0000d50c  STR             R0, [SP,#0x4C+var_1C]
0000d510  STR             R0, [SP,#0x4C+var_14]
0000d514  STR             R0, [SP,#0x4C+var_18]
0000d518  LDRNE           R0, [SP,#0x4C+arg_4]
0000d51c  MOV             R7, R1
0000d520  CMPNE           R0, #0
0000d524  CMPNE           R9, #0
0000d528  MOVEQ           R0, #0xE
0000d52c  MOV             R4, #0
0000d530  BEQ             loc_D794
0000d534  LDR             R0, [R6]
0000d538  ADD             R2, SP, #0x4C+var_14
0000d53c  LDR             R1, [R0]
0000d540  LDR             R3, [R1,#8]
0000d544  LDR             R1, =0x1001001
0000d548  BLX             R3
0000d54c  MOVS            R5, R0
0000d550  BNE             loc_D734
0000d554  LDR             R0, [SP,#0x4C+var_14]
0000d558  LDR             R1, [R0]
0000d55c  LDR             R1, [R1,#0x3C]
0000d560  BLX             R1
0000d564  MOVS            R4, R0
0000d568  MOVEQ           R5, #1
0000d56c  BEQ             loc_D734
0000d570  MOV             R2, R9
0000d574  MOV             R1, R7
0000d578  LDR             R0, [SP,#0x4C+var_14]
0000d57c  BL              sub_14568
0000d580  MOV             R5, R0
0000d584  LDR             R0, [SP,#0x4C+var_14]
0000d588  ADD             R3, SP, #0x4C+var_34
0000d58c  LDR             R1, [R0]
0000d590  ADD             R2, SP, #0x4C+var_30
0000d594  LDR             R12, [R1,#8]
0000d598  MOV             R1, R7
0000d59c  BLX             R12
0000d5a0  MOV             R1, R0
0000d5a4  MOV             R0, #0
0000d5a8  STRH            R0, [SP,#0x4C+var_24]
0000d5ac  STRH            R0, [SP,#0x4C+var_22]
0000d5b0  STRH            R5, [SP,#0x4C+var_20]
0000d5b4  STRH            R1, [SP,#0x4C+var_1E]
0000d5b8  STRH            R0, [SP,#0x4C+var_2C]
0000d5bc  STRH            R0, [SP,#0x4C+var_2A]
0000d5c0  LDRH            R0, [R6,#4]
0000d5c4  ADD             R1, SP, #0x4C+var_18
0000d5c8  STRH            R0, [SP,#0x4C+var_28]
0000d5cc  LDRH            R0, [R6,#6]
0000d5d0  STRH            R0, [SP,#0x4C+var_26]
0000d5d4  LDRH            R3, [SP,#0x4C+var_1E]
0000d5d8  LDRH            R2, [SP,#0x4C+var_20]
0000d5dc  MOV             R0, R4
0000d5e0  BL              sub_14320
0000d5e4  MOVS            R5, R0
0000d5e8  BNE             loc_D734
0000d5ec  LDRH            R3, [SP,#0x4C+var_26]
0000d5f0  LDRH            R2, [SP,#0x4C+var_28]
0000d5f4  ADD             R1, SP, #0x4C+var_1C
0000d5f8  MOV             R0, R4
0000d5fc  BL              sub_14320
0000d600  MOVS            R5, R0
0000d604  BNE             loc_D734
0000d608  LDR             R0, [SP,#0x4C+var_14]
0000d60c  LDR             R1, [SP,#0x4C+var_1C]
0000d610  BL              sub_145A0
0000d614  MOVS            R5, R0
0000d618  BNE             loc_D734
0000d61c  LDR             R0, =(start - 0xD628)
0000d620  ADD             R0, PC, R0; start
0000d624  LDR             R0, [R0,#(dword_8 - 0xC)]
0000d628  LDR             R1, [R0,#0x30]
0000d62c  MOV             R0, R9
0000d630  BLX             R1
0000d634  MOV             R10, R0
0000d638  MOV             R6, #0
0000d63c  MOV             R5, #0
0000d640  B               loc_D700
0000d644  LDR             R2, [SP,#0x4C+var_8]
0000d648  ADD             R1, SP, #0x4C+var_2C
0000d64c  LDR             R0, [SP,#0x4C+var_14]
0000d650  BL              sub_144F4
0000d654  MOV             R1, #1
0000d658  LDR             R0, [SP,#0x4C+var_14]
0000d65c  LDR             R2, [SP,#0x4C+var_4]
0000d660  BL              sub_14594
0000d664  LDRSH           R0, [SP,#0x4C+var_2C]
0000d668  LDRSH           R1, [SP,#0x4C+var_2A]
0000d66c  LDR             R3, =0x8110
0000d670  ADD             R2, SP, #0x4C+var_2C
0000d674  STMEA           SP, {R0-R3}
0000d678  ADD             R8, R9, R5,LSL#1
0000d67c  MOV             R2, R8
0000d680  LDR             R0, [SP,#0x4C+var_14]
0000d684  MOV             R3, #1
0000d688  MOV             R1, R7
0000d68c  BL              sub_1441C
0000d690  LDR             R12, [SP,#0x4C+var_18]
0000d694  LDRSH           R0, [SP,#0x4C+var_20]
0000d698  LDRSH           R11, [SP,#0x4C+var_1E]
0000d69c  MOV             R3, #2
0000d6a0  SUB             LR, R0, R6
0000d6a4  LDR             R0, [SP,#0x4C+var_1C]
0000d6a8  MOV             R2, #0
0000d6ac  MOV             R1, #0
0000d6b0  STMFA           SP, {R0-R3}
0000d6b4  STR             R11, [SP,#0x4C+var_4C]
0000d6b8  LDR             R0, [R12]
0000d6bc  MOV             R3, LR
0000d6c0  LDR             R11, [R0,#0x28]
0000d6c4  MOV             R0, R12
0000d6c8  MOV             R1, R6
0000d6cc  BLX             R11
0000d6d0  MOV             R3, #0
0000d6d4  MOV             R2, #0xFFFFFFFF
0000d6d8  LDR             R0, [SP,#0x4C+var_14]
0000d6dc  STMEA           SP, {R2,R3}
0000d6e0  LDR             R1, [R0]
0000d6e4  MOV             R3, #1
0000d6e8  LDR             R12, [R1,#0xC]
0000d6ec  MOV             R1, R7
0000d6f0  MOV             R2, R8
0000d6f4  BLX             R12
0000d6f8  ADD             R6, R0, R6
0000d6fc  ADD             R5, R5, #1
0000d700  CMP             R5, R10
0000d704  BCC             loc_D644
0000d708  LDR             R0, [SP,#0x4C+var_14]
0000d70c  LDR             R1, [R0]
0000d710  LDR             R2, [R1,#0x38]
0000d714  MOV             R1, R4
0000d718  BLX             R2
0000d71c  MOVS            R5, R0
0000d720  LDREQ           R0, [SP,#0x4C+var_18]
0000d724  LDREQ           R1, [SP,#0x4C+arg_4]
0000d728  STREQ           R0, [R1]
0000d72c  MOVEQ           R0, #0
0000d730  STREQ           R0, [SP,#0x4C+var_18]
0000d734  LDR             R0, [SP,#0x4C+var_1C]
0000d738  CMP             R0, #0
0000d73c  BEQ             loc_D74C
0000d740  BL              sub_14308
0000d744  MOV             R0, #0
0000d748  STR             R0, [SP,#0x4C+var_1C]
0000d74c  LDR             R0, [SP,#0x4C+var_18]
0000d750  CMP             R0, #0
0000d754  BEQ             loc_D764
0000d758  BL              sub_14308
0000d75c  MOV             R0, #0
0000d760  STR             R0, [SP,#0x4C+var_18]
0000d764  CMP             R4, #0
0000d768  LDRNE           R0, [R4]
0000d76c  LDRNE           R1, [R0,#4]
0000d770  MOVNE           R0, R4
0000d774  BLXNE           R1
0000d778  LDR             R0, [SP,#0x4C+var_14]
0000d77c  CMP             R0, #0
0000d780  BEQ             loc_D790
0000d784  BL              sub_14308
0000d788  MOV             R0, #0
0000d78c  STR             R0, [SP,#0x4C+var_14]
0000d790  MOV             R0, R5
0000d794  ADD             SP, SP, #0x4C ; 'L'
0000d798  POP             {R4-R11,PC}
