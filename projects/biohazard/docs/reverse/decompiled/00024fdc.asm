00024fdc  PUSH            {R1-R7,LR}
00024fe0  LDR             R6, [SP,#0xC+arg_0]
00024fe4  MOV             R4, R0
00024fe8  LDRH            R0, [R0,#0x3C]
00024fec  CMP             R0, #0
00024ff0  BNE             loc_25280
00024ff4  MOV             R7, #1
00024ff8  CMP             R1, #2
00024ffc  BNE             loc_250A8
00025000  LDR             R12, [R4,#0x38]
00025004  MOV             R5, #0
00025008  LDRH            R3, [R12,#8]
0002500c  B               loc_2509C
00025010  LDR             R0, [R12]
00025014  ADD             R1, R5, R5,LSL#1
00025018  ADD             R0, R0, R1,LSL#3
0002501c  LDR             R1, [R0,#4]
00025020  CMP             R1, #2
00025024  BNE             loc_25090
00025028  LDRSB           R1, [R0,#8]
0002502c  LDRSB           R2, [R0,#9]
00025030  LDRB            R0, [R0,#0x14]
00025034  CMP             R0, #1
00025038  BEQ             loc_25090
0002503c  CMP             R1, #0
00025040  LDRGE           R0, [R4,#0x34]
00025044  LDRBGE          R0, [R0,R1]
00025048  CMPGE           R0, #0
0002504c  BEQ             loc_25090
00025050  CMP             R2, #0
00025054  LDRGE           R0, [R4,#0x34]
00025058  LDRBGE          R0, [R0,R2]
0002505c  CMPGE           R0, #0
00025060  BEQ             loc_25090
00025064  MOV             R1, R5,LSL#16
00025068  MOV             R1, R1,LSR#16
0002506c  MOV             R2, R6
00025070  MOV             R0, R4
00025074  BL              sub_24D28
00025078  LDR             R0, [R4,#0x38]
0002507c  ADD             R1, R5, R5,LSL#1
00025080  LDR             R0, [R0]
00025084  ADD             R0, R0, R1,LSL#3
00025088  STRB            R7, [R0,#0x14]
0002508c  B               loc_25200
00025090  ADD             R0, R5, #1
00025094  MOV             R5, R0,LSL#16
00025098  MOV             R5, R5,ASR#16
0002509c  CMP             R3, R5
000250a0  BGT             loc_25010
000250a4  B               loc_25280
000250a8  CMP             R1, #0
000250ac  BNE             loc_2513C
000250b0  LDRSH           R0, [R4]
000250b4  CMP             R0, R2,LSR#5
000250b8  LDRSHEQ         R0, [R4,#2]
000250bc  CMPEQ           R0, R3,LSR#5
000250c0  BEQ             loc_25280
000250c4  MOV             R0, R2,LSR#5
000250c8  STRH            R0, [R4]
000250cc  MOV             R0, R3,LSR#5
000250d0  STRH            R0, [R4,#2]
000250d4  LDR             LR, [R4,#0x38]
000250d8  MOV             R0, #0
000250dc  LDRH            R12, [LR,#8]
000250e0  B               loc_25130
000250e4  LDR             R1, [LR]
000250e8  ADD             R2, R0, R0,LSL#1
000250ec  ADD             R1, R1, R2,LSL#3
000250f0  LDR             R2, [R1,#4]
000250f4  CMP             R2, #0
000250f8  LDRHEQ          R2, [R1]
000250fc  LDRHEQ          R3, [R4]
00025100  CMPEQ           R2, R3
00025104  LDRHEQ          R1, [R1,#2]
00025108  LDRHEQ          R2, [R4,#2]
0002510c  CMPEQ           R1, R2
00025110  ADDNE           R0, R0, #1
00025114  MOVNE           R0, R0,LSL#16
00025118  MOVNE           R0, R0,ASR#16
0002511c  BNE             loc_25130
00025120  MOV             R1, R0,LSL#16
00025124  MOV             R1, R1,LSR#16
00025128  MOV             R2, R6
0002512c  B               loc_25274
00025130  CMP             R12, R0
00025134  BGT             loc_250E4
00025138  B               loc_25280
0002513c  CMP             R1, #1
00025140  BNE             loc_25234
00025144  STRH            R2, [SP,#0xC+var_4]
00025148  STRH            R3, [SP,#0xC+var_2]
0002514c  MOV             R5, #0
00025150  B               loc_25218
00025154  LDR             R1, [R0]
00025158  ADD             R2, R5, R5,LSL#1
0002515c  ADD             R1, R1, R2,LSL#3
00025160  LDR             R1, [R1,#4]
00025164  CMP             R1, #1
00025168  BNE             loc_2520C
0002516c  LDR             R0, [R0,#4]
00025170  MOV             R2, #8
00025174  ADD             R1, R0, R5,LSL#3
00025178  MOV             R0, SP
0002517c  BL              sub_4C
00025180  LDRH            R0, [SP,#0xC+var_8]
00025184  LDRH            R1, [SP,#0xC+var_C]
00025188  SUB             R0, R0, R1
0002518c  STRH            R0, [SP,#0xC+var_8]
00025190  LDRH            R0, [SP,#0xC+var_6]
00025194  LDRH            R1, [SP,#0xC+var_A]
00025198  SUB             R0, R0, R1
0002519c  STRH            R0, [SP,#0xC+var_6]
000251a0  ADD             R0, SP, #0xC+var_4
000251a4  MOV             R1, SP
000251a8  BL              sub_19C14
000251ac  CMP             R0, #0
000251b0  BEQ             loc_2520C
000251b4  CMN             R6, #1
000251b8  MOVNE           R1, R5,LSL#16
000251bc  MOVNE           R1, R1,LSR#16
000251c0  MOVNE           R2, R6
000251c4  BNE             loc_25274
000251c8  LDRB            R0, [R4,#4]
000251cc  CMP             R0, #0
000251d0  BNE             loc_25200
000251d4  STRB            R7, [R4,#4]
000251d8  LDR             R0, [R4,#0x38]
000251dc  ADD             R1, R5, R5,LSL#1
000251e0  LDR             R0, [R0]
000251e4  ADD             R0, R0, R1,LSL#3
000251e8  LDRSH           R2, [R0,#0xA]
000251ec  CMP             R2, #0
000251f0  MOVGT           R3, #0
000251f4  MOVGT           R1, #0
000251f8  LDRGT           R0, [R4,#0x10]
000251fc  BLGT            sub_E00
00025200  MOV             R0, #1
00025204  POP             {R1-R7,LR}
00025208  BX              LR
0002520c  ADD             R0, R5, #1
00025210  MOV             R5, R0,LSL#16
00025214  MOV             R5, R5,ASR#16
00025218  LDR             R0, [R4,#0x38]
0002521c  LDRH            R1, [R0,#8]
00025220  CMP             R1, R5
00025224  BGT             loc_25154
00025228  MOV             R0, #0
0002522c  STRB            R0, [R4,#4]
00025230  B               loc_25280
00025234  CMP             R1, #3
00025238  BNE             loc_25280
0002523c  CMP             R6, #0
00025240  LDRGE           R0, [R4,#0x38]
00025244  LDRHGE          R1, [R0,#8]
00025248  CMPGE           R1, R6
0002524c  BLE             loc_25280
00025250  LDR             R0, [R0]
00025254  ADD             R1, R6, R6,LSL#1
00025258  ADD             R0, R0, R1,LSL#3
0002525c  LDR             R0, [R0,#4]
00025260  CMP             R0, #3
00025264  BNE             loc_25280
00025268  MOV             R1, R6,LSL#16
0002526c  MOV             R1, R1,LSR#16
00025270  MOV             R2, R6
00025274  MOV             R0, R4
00025278  BL              sub_24D28
0002527c  B               loc_25200
00025280  MOV             R0, #0xFFFFFFFF
00025284  B               loc_25204
