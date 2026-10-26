00010434  PUSH            {R0-R11,LR}
00010438  SUB             SP, SP, #0x14
0001043c  LDR             R8, [SP,#0x24+arg_0]
00010440  LDR             R10, [SP,#0x24+arg_8]
00010444  MOV             R7, R0
00010448  LDR             R0, [R0,#0x14]
0001044c  MOV             R9, R2
00010450  CMP             R0, #0
00010454  MOVEQ           R0, #7
00010458  BEQ             loc_105C4
0001045c  LDR             R1, [SP,#0x24+var_4]
00010460  AND             R0, R8, #1
00010464  STR             R0, [SP,#0x24+var_1C]
00010468  MOV             R0, #3
0001046c  SUB             R0, R0, R1,LSL#1
00010470  MOV             R6, R0,LSL#16
00010474  MOV             R5, R1,LSL#16
00010478  MOV             R5, R5,ASR#16
0001047c  MOV             R6, R6,ASR#16
00010480  MOV             R4, #0
00010484  B               loc_10590
00010488  MOV             R3, R5,LSL#17
0001048c  MOV             R3, R3,ASR#16
00010490  STR             R3, [SP,#0x24+var_14]
00010494  ADD             R0, R9, R4
00010498  MOV             R2, R0,LSL#16
0001049c  STMEA           SP, {R8,R10}
000104a0  LDR             R0, [SP,#0x24+var_C]
000104a4  MOV             R2, R2,ASR#16
000104a8  SUB             R0, R0, R5
000104ac  MOV             R1, R0,LSL#16
000104b0  MOV             R1, R1,ASR#16
000104b4  MOV             R11, R1
000104b8  MOV             R0, R7
000104bc  BL              sub_109D0
000104c0  CMP             R4, #0
000104c4  BLE             loc_104E8
000104c8  SUB             R0, R9, R4
000104cc  MOV             R2, R0,LSL#16
000104d0  STMEA           SP, {R8,R10}
000104d4  LDR             R3, [SP,#0x24+var_14]
000104d8  MOV             R2, R2,ASR#16
000104dc  MOV             R0, R7
000104e0  MOV             R1, R11
000104e4  BL              sub_109D0
000104e8  CMP             R6, #0
000104ec  ADDLT           R0, R6, R4,LSL#2
000104f0  ADDLT           R0, R0, #6
000104f4  MOVLT           R6, R0,LSL#16
000104f8  MOVLT           R6, R6,ASR#16
000104fc  BLT             loc_10584
00010500  SUB             R0, R4, R5
00010504  ADD             R0, R6, R0,LSL#2
00010508  ADD             R0, R0, #0xA
0001050c  MOV             R6, R0,LSL#16
00010510  MOV             R6, R6,ASR#16
00010514  CMP             R4, R5
00010518  BGE             loc_10578
0001051c  MOV             R0, R4,LSL#17
00010520  MOV             R0, R0,ASR#16
00010524  STR             R0, [SP,#0x24+var_18]
00010528  ADD             R0, R9, R5
0001052c  MOV             R2, R0,LSL#16
00010530  STMEA           SP, {R8,R10}
00010534  LDR             R0, [SP,#0x24+var_C]
00010538  LDR             R3, [SP,#0x24+var_18]
0001053c  SUB             R0, R0, R4
00010540  MOV             R11, R0,LSL#16
00010544  MOV             R11, R11,ASR#16
00010548  MOV             R1, R11
0001054c  MOV             R0, R7
00010550  MOV             R2, R2,ASR#16
00010554  BL              sub_109D0
00010558  SUB             R0, R9, R5
0001055c  MOV             R2, R0,LSL#16
00010560  STMEA           SP, {R8,R10}
00010564  LDR             R3, [SP,#0x24+var_18]
00010568  MOV             R2, R2,ASR#16
0001056c  MOV             R0, R7
00010570  MOV             R1, R11
00010574  BL              sub_109D0
00010578  SUB             R0, R5, #1
0001057c  MOV             R5, R0,LSL#16
00010580  MOV             R5, R5,ASR#16
00010584  ADD             R0, R4, #1
00010588  MOV             R4, R0,LSL#16
0001058c  MOV             R4, R4,ASR#16
00010590  CMP             R4, R5
00010594  BLE             loc_10488
00010598  LDR             R0, [SP,#0x24+var_1C]
0001059c  CMP             R0, #0
000105a0  BEQ             loc_105C0
000105a4  LDR             R3, [SP,#0x24+arg_4]
000105a8  MOV             R2, R9
000105ac  STR             R3, [SP,#0x24+var_24]
000105b0  LDR             R3, [SP,#0x24+var_4]
000105b4  MOV             R0, R7
000105b8  LDR             R1, [SP,#0x24+var_C]
000105bc  BL              sub_64E0
000105c0  MOV             R0, #0
000105c4  ADD             SP, SP, #0x24 ; '$'
000105c8  POP             {R4-R11,LR}
000105cc  BX              LR
