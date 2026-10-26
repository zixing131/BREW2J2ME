0000b6f0  PUSH            {R4-R11,LR}
0000b6f4  SUB             SP, SP, #0x1C
0000b6f8  LDR             R4, [SP,#0x1C+arg_8]
0000b6fc  LDR             R6, [SP,#0x1C+arg_4]
0000b700  LDR             R9, [SP,#0x1C+arg_0]
0000b704  MOV             R5, R0
0000b708  LDR             R0, [R0,#0x14]
0000b70c  MOV             R10, R3
0000b710  CMP             R0, #0
0000b714  MOVEQ           R0, #7
0000b718  MOV             R8, R2
0000b71c  MOV             R7, R1
0000b720  BEQ             loc_B960
0000b724  MOV             R1, #0
0000b728  MOV             R0, #1
0000b72c  STMEA           SP, {R0,R1,R4}
0000b730  SUB             R0, R10, R6,LSL#1
0000b734  MOV             R0, R0,LSL#16
0000b738  MOV             R0, R0,ASR#16
0000b73c  STR             R0, [SP,#0x1C+var_4]
0000b740  ADD             R0, R7, R6
0000b744  MOV             R11, R0,LSL#16
0000b748  MOV             R3, #0
0000b74c  STR             R3, [SP,#0x1C+var_10]
0000b750  MOV             R11, R11,ASR#16
0000b754  MOV             R1, R11
0000b758  LDR             R3, [SP,#0x1C+var_4]
0000b75c  MOV             R0, R5
0000b760  MOV             R2, R8
0000b764  BL              sub_10C58
0000b768  MOV             R1, #0
0000b76c  MOV             R0, #1
0000b770  STMEA           SP, {R0,R1,R4}
0000b774  ADD             R0, R8, R9
0000b778  MOV             R2, R0,LSL#16
0000b77c  MOV             R3, #0
0000b780  STR             R3, [SP,#0x1C+var_10]
0000b784  LDR             R3, [SP,#0x1C+var_4]
0000b788  MOV             R2, R2,ASR#16
0000b78c  MOV             R0, R5
0000b790  MOV             R1, R11
0000b794  BL              sub_10C58
0000b798  SUB             R0, R9, R6,LSL#1
0000b79c  MOV             R0, R0,LSL#16
0000b7a0  MOV             R0, R0,ASR#16
0000b7a4  STR             R0, [SP,#0x1C+var_8]
0000b7a8  MOV             R1, #0
0000b7ac  STMEA           SP, {R0,R1,R4}
0000b7b0  ADD             R0, R8, R6
0000b7b4  MOV             R11, R0,LSL#16
0000b7b8  MOV             R3, #0
0000b7bc  STR             R3, [SP,#0x1C+var_10]
0000b7c0  MOV             R11, R11,ASR#16
0000b7c4  MOV             R2, R11
0000b7c8  MOV             R3, #1
0000b7cc  MOV             R0, R5
0000b7d0  MOV             R1, R7
0000b7d4  BL              sub_10C58
0000b7d8  LDR             R0, [SP,#0x1C+var_8]
0000b7dc  MOV             R1, #0
0000b7e0  STMEA           SP, {R0,R1,R4}
0000b7e4  ADD             R0, R7, R10
0000b7e8  MOV             R1, R0,LSL#16
0000b7ec  MOV             R3, #0
0000b7f0  STR             R3, [SP,#0x1C+var_10]
0000b7f4  MOV             R3, #1
0000b7f8  MOV             R1, R1,ASR#16
0000b7fc  MOV             R0, R5
0000b800  MOV             R2, R11
0000b804  BL              sub_10C58
0000b808  LDRH            R0, [R5,#0xC]
0000b80c  MOV             R2, #3
0000b810  SUB             R2, R2, R6,LSL#1
0000b814  ADD             R0, R0, R7
0000b818  MOV             R7, R0,LSL#16
0000b81c  LDRH            R0, [R5,#0xE]
0000b820  MOV             R7, R7,ASR#16
0000b824  ADD             R3, R7, R10
0000b828  ADD             R0, R0, R8
0000b82c  MOV             LR, R0,LSL#16
0000b830  MOV             LR, LR,ASR#16
0000b834  ADD             R12, LR, R9
0000b838  MOV             R2, R2,LSL#16
0000b83c  MOV             R1, R6,LSL#16
0000b840  MOV             R1, R1,ASR#16
0000b844  MOV             R2, R2,ASR#16
0000b848  SUB             R12, R12, R6
0000b84c  ADD             LR, LR, R6
0000b850  MOV             R0, #0
0000b854  SUB             R3, R3, R6
0000b858  ADD             R10, R7, R6
0000b85c  B               loc_B954
0000b860  MOV             R6, #0
0000b864  TST             R6, #1
0000b868  BEQ             loc_B880
0000b86c  CMP             R6, #4
0000b870  MOVGE           R7, R1
0000b874  MOVLT           R7, R0
0000b878  SUB             R7, R10, R7
0000b87c  B               loc_B890
0000b880  CMP             R6, #4
0000b884  MOVGE           R7, R1
0000b888  MOVLT           R7, R0
0000b88c  ADD             R7, R3, R7
0000b890  MOV             R7, R7,LSL#16
0000b894  MOV             R7, R7,ASR#16
0000b898  TST             R6, #2
0000b89c  BEQ             loc_B8B4
0000b8a0  CMP             R6, #4
0000b8a4  MOVGE           R8, R0
0000b8a8  MOVLT           R8, R1
0000b8ac  SUB             R8, LR, R8
0000b8b0  B               loc_B8C4
0000b8b4  CMP             R6, #4
0000b8b8  MOVGE           R8, R0
0000b8bc  MOVLT           R8, R1
0000b8c0  ADD             R8, R12, R8
0000b8c4  LDRH            R9, [R5,#4]
0000b8c8  MOV             R8, R8,LSL#16
0000b8cc  MOV             R8, R8,ASR#16
0000b8d0  CMP             R9, R7
0000b8d4  BGT             loc_B908
0000b8d8  LDRH            R9, [R5,#8]
0000b8dc  CMP             R9, R7
0000b8e0  BLE             loc_B908
0000b8e4  LDRH            R9, [R5,#6]
0000b8e8  CMP             R9, R8
0000b8ec  BGT             loc_B908
0000b8f0  LDRH            R9, [R5,#0xA]
0000b8f4  CMP             R9, R8
0000b8f8  LDRGT           R9, [R5,#0x14]
0000b8fc  LDRGT           R8, [R9,R8,LSL#2]
0000b900  ADDGT           R7, R8, R7,LSL#1
0000b904  STRHGT          R4, [R7]
0000b908  ADD             R6, R6, #1
0000b90c  MOV             R6, R6,LSL#16
0000b910  MOV             R6, R6,ASR#16
0000b914  CMP             R6, #8
0000b918  BLT             loc_B864
0000b91c  CMP             R2, #0
0000b920  SUBGE           R6, R0, R1
0000b924  ADDGE           R2, R2, R6,LSL#2
0000b928  ADDGE           R2, R2, #0xA
0000b92c  ADDLT           R2, R2, R0,LSL#2
0000b930  ADDLT           R2, R2, #6
0000b934  ADD             R0, R0, #1
0000b938  SUBGE           R1, R1, #1
0000b93c  MOVGE           R1, R1,LSL#16
0000b940  MOV             R0, R0,LSL#16
0000b944  MOV             R2, R2,LSL#16
0000b948  MOV             R2, R2,ASR#16
0000b94c  MOV             R0, R0,ASR#16
0000b950  MOVGE           R1, R1,ASR#16
0000b954  CMP             R0, R1
0000b958  BLE             loc_B860
0000b95c  MOV             R0, #0
0000b960  ADD             SP, SP, #0x1C
0000b964  POP             {R4-R11,LR}
0000b968  BX              LR
