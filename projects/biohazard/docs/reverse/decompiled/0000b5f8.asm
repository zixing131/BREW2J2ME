0000b5f8  PUSH            {R4-R9,LR}
0000b5fc  SUB             SP, SP, #0x14
0000b600  LDR             R5, [SP,#0x14+arg_4]
0000b604  LDR             R8, [SP,#0x14+arg_0]
0000b608  MOV             R4, R0
0000b60c  LDR             R0, [R0,#0x14]
0000b610  MOV             R9, R3
0000b614  CMP             R0, #0
0000b618  MOVEQ           R0, #7
0000b61c  MOV             R7, R2
0000b620  MOV             R6, R1
0000b624  BEQ             loc_B6E4
0000b628  MOV             R3, #0
0000b62c  STR             R3, [SP,#0x14+var_8]
0000b630  MOV             R1, #0
0000b634  MOV             R0, #1
0000b638  STMEA           SP, {R0,R1,R5}
0000b63c  MOV             R1, R6
0000b640  MOV             R0, R4
0000b644  MOV             R3, R9
0000b648  MOV             R2, R7
0000b64c  BL              sub_10C58
0000b650  MOV             R3, #0
0000b654  STR             R3, [SP,#0x14+var_8]
0000b658  MOV             R1, #0
0000b65c  STMFA           SP, {R1,R5}
0000b660  STR             R8, [SP,#0x14+var_14]
0000b664  MOV             R1, R6
0000b668  MOV             R3, #1
0000b66c  MOV             R2, R7
0000b670  MOV             R0, R4
0000b674  BL              sub_10C58
0000b678  MOV             R1, #0
0000b67c  STMFA           SP, {R1,R5}
0000b680  ADD             R0, R6, R9
0000b684  SUB             R0, R0, #1
0000b688  MOV             R1, R0,LSL#16
0000b68c  MOV             R3, #0
0000b690  STR             R3, [SP,#0x14+var_8]
0000b694  MOV             R3, #1
0000b698  MOV             R1, R1,ASR#16
0000b69c  MOV             R0, R4
0000b6a0  STR             R8, [SP,#0x14+var_14]
0000b6a4  MOV             R2, R7
0000b6a8  BL              sub_10C58
0000b6ac  MOV             R1, #0
0000b6b0  MOV             R0, #1
0000b6b4  STMEA           SP, {R0,R1,R5}
0000b6b8  ADD             R0, R7, R8
0000b6bc  SUB             R0, R0, #1
0000b6c0  MOV             R2, R0,LSL#16
0000b6c4  MOV             R3, #0
0000b6c8  STR             R3, [SP,#0x14+var_8]
0000b6cc  MOV             R3, R9
0000b6d0  MOV             R2, R2,ASR#16
0000b6d4  MOV             R0, R4
0000b6d8  MOV             R1, R6
0000b6dc  BL              sub_10C58
0000b6e0  MOV             R0, #0
0000b6e4  ADD             SP, SP, #0x14
0000b6e8  POP             {R4-R9,LR}
0000b6ec  BX              LR
