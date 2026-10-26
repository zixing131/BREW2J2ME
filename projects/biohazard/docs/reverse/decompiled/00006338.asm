00006338  PUSH            {R4-R11,LR}
0000633c  SUB             SP, SP, #0x1C
00006340  ADD             R10, SP, #0x1C+arg_0
00006344  MOV             R7, R1
00006348  LDR             R1, =0x13AF
0000634c  LDM             R10, {R5,R9,R10}
00006350  MOV             R11, R2
00006354  MOV             R6, R3
00006358  MOV             R0, R2
0000635c  BL              sub_11DD8
00006360  MOVS            R8, R0
00006364  BEQ             loc_63CC
00006368  MOV             R4, #1
0000636c  B               loc_63C4
00006370  MOV             R1, #0
00006374  STR             R1, [SP,#0x1C+var_10]
00006378  MOV             R3, #0
0000637c  MOV             R2, #0
00006380  ADD             R0, SP, #0x1C+var_C
00006384  STM             R0, {R1-R3}
00006388  LDRSH           R1, [R8,#2]
0000638c  ADD             R0, R4, R4,LSL#2
00006390  ADD             R0, R6, R0,LSL#1
00006394  STMEA           SP, {R1,R8}
00006398  SUB             R0, R0, #0xA
0000639c  MOV             R1, R0,LSL#16
000063a0  STR             R3, [SP,#0x1C+var_14]
000063a4  MOV             R3, #8
000063a8  MOV             R1, R1,ASR#16
000063ac  MOV             R0, R7
000063b0  MOV             R2, R5
000063b4  BL              sub_3324
000063b8  ADD             R0, R4, #1
000063bc  MOV             R4, R0,LSL#16
000063c0  MOV             R4, R4,ASR#16
000063c4  CMP             R4, R9
000063c8  BLE             loc_6370
000063cc  LDR             R1, =0x13B0
000063d0  MOV             R0, R11
000063d4  BL              sub_11DD8
000063d8  MOVS            R4, R0
000063dc  ADDNE           R0, R9, #1
000063e0  BNE             loc_6438
000063e4  B               loc_6448
000063e8  MOV             R1, #0
000063ec  MOV             R3, #0
000063f0  MOV             R2, #0
000063f4  STR             R2, [SP,#0x1C+var_8]
000063f8  STR             R3, [SP,#0x1C+var_4]
000063fc  STR             R1, [SP,#0x1C+var_10]
00006400  STR             R1, [SP,#0x1C+var_C]
00006404  LDRSH           R1, [R4,#2]
00006408  ADD             R0, R8, R8,LSL#2
0000640c  ADD             R0, R6, R0,LSL#1
00006410  STMEA           SP, {R1,R4}
00006414  SUB             R0, R0, #0xA
00006418  MOV             R1, R0,LSL#16
0000641c  STR             R3, [SP,#0x1C+var_14]
00006420  MOV             R3, #8
00006424  MOV             R1, R1,ASR#16
00006428  MOV             R0, R7
0000642c  MOV             R2, R5
00006430  BL              sub_3324
00006434  ADD             R0, R8, #1
00006438  MOV             R8, R0,LSL#16
0000643c  MOV             R8, R8,ASR#16
00006440  CMP             R8, R10
00006444  BLE             loc_63E8
00006448  LDR             R1, =0x13AE
0000644c  MOV             R0, R11
00006450  BL              sub_11DD8
00006454  MOVS            R4, R0
00006458  BEQ             loc_64C8
0000645c  ADD             R0, R10, #1
00006460  B               loc_64B4
00006464  MOV             R1, #0
00006468  MOV             R3, #0
0000646c  MOV             R2, #0
00006470  STR             R2, [SP,#0x1C+var_8]
00006474  STR             R3, [SP,#0x1C+var_4]
00006478  STR             R1, [SP,#0x1C+var_10]
0000647c  STR             R1, [SP,#0x1C+var_C]
00006480  LDRSH           R1, [R4,#2]
00006484  ADD             R0, R8, R8,LSL#2
00006488  ADD             R0, R6, R0,LSL#1
0000648c  STMEA           SP, {R1,R4}
00006490  SUB             R0, R0, #0xA
00006494  MOV             R1, R0,LSL#16
00006498  STR             R3, [SP,#0x1C+var_14]
0000649c  MOV             R3, #8
000064a0  MOV             R1, R1,ASR#16
000064a4  MOV             R0, R7
000064a8  MOV             R2, R5
000064ac  BL              sub_3324
000064b0  ADD             R0, R8, #1
000064b4  MOV             R8, R0,LSL#16
000064b8  LDR             R0, [SP,#0x1C+arg_C]
000064bc  MOV             R8, R8,ASR#16
000064c0  CMP             R8, R0
000064c4  BLE             loc_6464
000064c8  ADD             SP, SP, #0x1C
000064cc  POP             {R4-R11,LR}
000064d0  BX              LR
