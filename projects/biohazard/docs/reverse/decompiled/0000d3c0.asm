0000d3c0  PUSH            {R4-R10,LR}
0000d3c4  SUB             SP, SP, #0x18
0000d3c8  LDR             R4, [SP,#0x18+arg_C]
0000d3cc  ADD             R10, SP, #0x18+arg_0
0000d3d0  MOV             R9, R0
0000d3d4  MOV             R0, R4,LSR#11
0000d3d8  MOV             R1, R0,LSL#5
0000d3dc  MOV             R0, #5
0000d3e0  LDM             R10, {R5,R6,R10}
0000d3e4  MOV             R8, R3
0000d3e8  MOV             R7, R2
0000d3ec  BL              sub_1DC
0000d3f0  MOV             R0, R0,LSL#24
0000d3f4  MOV             R0, R0,LSR#27
0000d3f8  MOV             R1, R4,LSL#21
0000d3fc  MOV             R1, R1,LSR#27
0000d400  MOV             R0, R0,LSL#11
0000d404  ORR             R1, R0, R1,LSL#5
0000d408  MOV             R0, #0xFF
0000d40c  MOV             R2, R4,LSR#5
0000d410  AND             R0, R0, R2,LSL#2
0000d414  ADD             R0, R0, R0,LSL#1
0000d418  ORR             R2, R1, R0,LSR#5
0000d41c  MOV             R0, #1
0000d420  MOV             R1, #0
0000d424  STMFA           SP, {R0-R2}
0000d428  ADD             R0, R6, #4
0000d42c  MOV             R3, R0,LSL#16
0000d430  MOV             R3, R3,ASR#16
0000d434  STR             R3, [SP,#0x18+var_18]
0000d438  ADD             R0, R5, #4
0000d43c  MOV             R3, R0,LSL#16
0000d440  SUB             R0, R8, #3
0000d444  STR             R2, [SP,#0x18+var_8]
0000d448  MOV             R2, R0,LSL#16
0000d44c  SUB             R0, R7, #4
0000d450  MOV             R1, R0,LSL#16
0000d454  MOV             R1, R1,ASR#16
0000d458  MOV             R0, R9
0000d45c  MOV             R2, R2,ASR#16
0000d460  MOV             R3, R3,ASR#16
0000d464  BL              sub_11430
0000d468  MOV             R1, #0
0000d46c  MOV             R0, #1
0000d470  STMFA           SP, {R0,R1,R4}
0000d474  ADD             R0, R6, #2
0000d478  MOV             R3, R0,LSL#16
0000d47c  MOV             R3, R3,ASR#16
0000d480  STR             R3, [SP,#0x18+var_18]
0000d484  ADD             R0, R5, #2
0000d488  MOV             R3, R0,LSL#16
0000d48c  SUB             R0, R8, #2
0000d490  MOV             R2, R0,LSL#16
0000d494  SUB             R0, R7, #3
0000d498  MOV             R1, R0,LSL#16
0000d49c  MOV             R1, R1,ASR#16
0000d4a0  MOV             R0, R9
0000d4a4  MOV             R2, R2,ASR#16
0000d4a8  MOV             R3, R3,ASR#16
0000d4ac  STR             R4, [SP,#0x18+var_8]
0000d4b0  BL              sub_11430
0000d4b4  MOV             R1, #0
0000d4b8  MOV             R0, #1
0000d4bc  STMFA           SP, {R0,R1,R10}
0000d4c0  SUB             R0, R8, #1
0000d4c4  MOV             R2, R0,LSL#16
0000d4c8  SUB             R0, R7, #2
0000d4cc  MOV             R1, R0,LSL#16
0000d4d0  MOV             R1, R1,ASR#16
0000d4d4  MOV             R0, R9
0000d4d8  MOV             R2, R2,ASR#16
0000d4dc  STR             R6, [SP,#0x18+var_18]
0000d4e0  STR             R10, [SP,#0x18+var_8]
0000d4e4  MOV             R3, R5
0000d4e8  BL              sub_11430
0000d4ec  ADD             SP, SP, #0x18
0000d4f0  POP             {R4-R10,LR}
0000d4f4  BX              LR
