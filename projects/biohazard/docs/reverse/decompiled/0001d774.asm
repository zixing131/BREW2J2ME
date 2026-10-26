0001d774  PUSH            {R4-R9,LR}
0001d778  ADD             R5, R1, #0x20 ; ' '
0001d77c  LDM             R5, {R4,R5}
0001d780  MOV             R6, R0
0001d784  LDR             R0, [R0,#0x13C]
0001d788  SUB             SP, SP, #0x1C
0001d78c  CMP             R0, #1
0001d790  MOVNE           R0, #0
0001d794  BNE             loc_1D8AC
0001d798  LDRSH           R0, [R4,#2]
0001d79c  LDRSH           R12, [R4]
0001d7a0  MOV             R3, #0
0001d7a4  LDR             R2, =0xFFFF
0001d7a8  MOV             R1, #0
0001d7ac  STMEA           SP, {R0-R3}
0001d7b0  MOV             R3, R12
0001d7b4  MOV             R2, #0
0001d7b8  MOV             R0, R4
0001d7bc  BL              sub_10C58
0001d7c0  MOV             R0, #0x17C
0001d7c4  LDRH            R0, [R0,R6]
0001d7c8  CMP             R0, #0
0001d7cc  BEQ             loc_1D8A8
0001d7d0  CMP             R0, #1
0001d7d4  BNE             loc_1D8A8
0001d7d8  LDR             R1, =0x13B4
0001d7dc  MOV             R0, R5
0001d7e0  BL              sub_11DD8
0001d7e4  LDRSH           R5, [R0]
0001d7e8  MOV             R12, R0
0001d7ec  LDRSH           R7, [R0,#2]
0001d7f0  LDRH            R1, [R4]
0001d7f4  ADD             R0, R5, R5,LSR#31
0001d7f8  MOV             R0, R0,ASR#1
0001d7fc  RSB             R0, R0, R1,LSR#1
0001d800  MOV             R8, R0,LSL#16
0001d804  LDRH            R1, [R4,#2]
0001d808  ADD             R0, R7, R7,LSR#31
0001d80c  MOV             R0, R0,ASR#1
0001d810  RSB             R0, R0, R1,LSR#1
0001d814  MOV             R9, R0,LSL#16
0001d818  MOV             R1, #0
0001d81c  STR             R1, [SP,#0x1C+var_10]
0001d820  ADD             R0, SP, #0x1C+var_C
0001d824  MOV             R3, #0
0001d828  MOV             R2, #0
0001d82c  STM             R0, {R1-R3}
0001d830  STMEA           SP, {R7,R12}
0001d834  STR             R3, [SP,#0x1C+var_14]
0001d838  MOV             R9, R9,ASR#16
0001d83c  MOV             R8, R8,ASR#16
0001d840  MOV             R1, R8
0001d844  MOV             R2, R9
0001d848  MOV             R3, R5
0001d84c  MOV             R0, R4
0001d850  BL              sub_3324
0001d854  LDR             R0, [R6,#0x140]
0001d858  ADD             R0, R0, R0,LSL#2
0001d85c  SUB             R1, R5, R0
0001d860  MOV             R2, R1,LSL#16
0001d864  MOV             R2, R2,ASR#16
0001d868  CMP             R2, #0
0001d86c  RSBLT           R1, R2, #0
0001d870  MOVLT           R2, R1,LSL#16
0001d874  MOV             R0, R0,LSL#16
0001d878  MOV             R0, R0,ASR#16
0001d87c  MOVLT           R2, R2,ASR#16
0001d880  CMP             R0, R5,LSL#1
0001d884  BGT             loc_1D8A8
0001d888  MOV             R3, #0xFFFFFFFF
0001d88c  STMFA           SP, {R2,R3}
0001d890  STR             R7, [SP,#0x1C+var_1C]
0001d894  MOV             R3, R5
0001d898  MOV             R2, R9
0001d89c  MOV             R1, R8
0001d8a0  MOV             R0, R4
0001d8a4  BL              sub_23E5C
0001d8a8  MOV             R0, #1
0001d8ac  ADD             SP, SP, #0x1C
0001d8b0  POP             {R4-R9,LR}
0001d8b4  BX              LR
