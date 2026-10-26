0001e204  PUSH            {R4-R11,LR}
0001e208  MOV             R4, R0
0001e20c  LDR             R0, [R0,#0x898]
0001e210  SUB             SP, SP, #0x1C
0001e214  MOV             R7, R2
0001e218  MOV             R5, R1
0001e21c  CMP             R0, #0
0001e220  BEQ             loc_1E448
0001e224  LDR             R2, [R4,#0x838]
0001e228  STR             R2, [SP,#0x1C+var_4]
0001e22c  LDRB            R1, [R0,#0x12]
0001e230  STR             R1, [SP,#0x1C+var_8]
0001e234  LDRB            R8, [R0,#0x13]
0001e238  LDRB            R1, [R4,#0x870]
0001e23c  CMP             R1, #0
0001e240  BEQ             loc_1E268
0001e244  MOV             R1, R2,LSL#1
0001e248  STR             R1, [R4,#0x838]
0001e24c  LDRB            R1, [R0,#0x12]
0001e250  MOV             R1, R1,LSR#1
0001e254  STRB            R1, [R0,#0x12]
0001e258  LDR             R0, [R4,#0x898]
0001e25c  LDRB            R1, [R0,#0x13]
0001e260  MOV             R1, R1,LSL#1
0001e264  STRB            R1, [R0,#0x13]
0001e268  ADD             R10, R4, #0x830
0001e26c  LDR             R1, [R4,#0x8B0]
0001e270  LDR             R0, =0x31E
0001e274  LDMDB           R10, {R9,R10}
0001e278  LDRSH           R0, [R0,R1]
0001e27c  CMP             R0, #0
0001e280  MOVGE           R2, #0x21C
0001e284  LDRSHGE         R2, [R2,R1]
0001e288  CMPGE           R2, R0
0001e28c  BLE             loc_1E310
0001e290  MOV             R2, R0,LSL#16
0001e294  MOV             R2, R2,LSR#16
0001e298  MOV             R0, SP
0001e29c  BL              sub_12F30
0001e2a0  LDRB            R0, [SP,#0x1C+var_B]
0001e2a4  MOV             R2, #0x1D
0001e2a8  LDR             R1, [R4,#0x894]
0001e2ac  MUL             R0, R2, R0
0001e2b0  ADD             R0, R1, R0,LSL#2
0001e2b4  LDRB            R1, [R4,#0x852]
0001e2b8  CMP             R1, #0
0001e2bc  LDRBNE          R1, [R4,#0x853]
0001e2c0  LDRNE           R2, [R0,#0x38]
0001e2c4  CMPNE           R1, R2
0001e2c8  BCS             loc_1E310
0001e2cc  ADD             R1, R1, R1,LSL#1
0001e2d0  ADD             R0, R0, R1,LSL#1
0001e2d4  LDRSH           R6, [R0,#0x40]
0001e2d8  CMP             R6, #0
0001e2dc  BEQ             loc_1E310
0001e2e0  LDR             R0, [R4,#0x834]
0001e2e4  BL              sub_196D8
0001e2e8  LDR             R1, [R4,#0x828]
0001e2ec  MUL             R0, R6, R0
0001e2f0  SUB             R0, R1, R0,ASR#16
0001e2f4  STR             R0, [R4,#0x828]
0001e2f8  LDR             R0, [R4,#0x834]
0001e2fc  BL              sub_197A8
0001e300  LDR             R1, [R4,#0x82C]
0001e304  MUL             R0, R6, R0
0001e308  SUB             R0, R1, R0,ASR#16
0001e30c  STR             R0, [R4,#0x82C]
0001e310  ADD             R6, R4, #0x800
0001e314  LDRH            R0, [R6,#0xA2]
0001e318  LDRH            R11, [R5,#6]
0001e31c  MOV             R2, R7
0001e320  STRH            R0, [R5,#6]
0001e324  MOV             R0, R4
0001e328  MOV             R1, R5
0001e32c  BL              sub_6E98
0001e330  LDR             R0, [R4,#0x898]
0001e334  LDRB            R0, [R0,#9]
0001e338  CMP             R0, #0
0001e33c  MOVNE           R2, #1
0001e340  MOVNE           R1, R5
0001e344  MOVNE           R0, R4
0001e348  BLNE            sub_6640
0001e34c  MOV             R2, #0
0001e350  MOV             R1, R5
0001e354  MOV             R0, R4
0001e358  BL              sub_6640
0001e35c  MOV             R0, #0
0001e360  STR             R0, [R4,#0x8D0]
0001e364  STR             R0, [R4,#0x8D4]
0001e368  MOV             R0, R4
0001e36c  MOV             R1, #5
0001e370  BL              sub_48A0
0001e374  MOV             R1, #6
0001e378  MOV             R0, R4
0001e37c  BL              sub_48A0
0001e380  MOV             R1, #4
0001e384  MOV             R0, R4
0001e388  BL              sub_48A0
0001e38c  MOV             R1, #2
0001e390  MOV             R0, R4
0001e394  BL              sub_48A0
0001e398  MOV             R0, R4
0001e39c  BL              sub_4F8C
0001e3a0  MOV             R2, R7
0001e3a4  MOV             R1, R5
0001e3a8  MOV             R0, R4
0001e3ac  BL              sub_9990
0001e3b0  STRH            R11, [R5,#6]
0001e3b4  ADD             R0, R4, #0x830
0001e3b8  STMDB           R0, {R9,R10}
0001e3bc  LDR             R2, [SP,#0x1C+var_4]
0001e3c0  STR             R2, [R4,#0x838]
0001e3c4  LDR             R1, [SP,#0x1C+var_8]
0001e3c8  LDR             R0, [R4,#0x898]
0001e3cc  MOV             R2, R7
0001e3d0  STRB            R1, [R0,#0x12]
0001e3d4  LDR             R0, [R4,#0x898]
0001e3d8  MOV             R1, R5
0001e3dc  STRB            R8, [R0,#0x13]
0001e3e0  MOV             R0, R4
0001e3e4  BL              sub_D7A8
0001e3e8  LDRH            R0, [R6,#0xA0]
0001e3ec  LDRH            R1, [R6,#0x9C]
0001e3f0  MOV             R3, #0x17
0001e3f4  ADD             R0, R0, R1
0001e3f8  SUB             R2, R0, #0x1E
0001e3fc  MOV             R0, R4
0001e400  MOV             R1, R5
0001e404  BL              sub_A7E8
0001e408  LDRB            R0, [R4,#0x871]
0001e40c  CMP             R0, #0
0001e410  BEQ             loc_1E448
0001e414  MOV             R1, #2
0001e418  ORR             R0, R1, R0,LSL#11
0001e41c  MOV             R1, R0,LSL#16
0001e420  LDRSH           R0, [R6,#0x9E]
0001e424  MOV             R1, R1,LSR#16
0001e428  MOV             R3, #0
0001e42c  MOV             R2, #0xF800
0001e430  STMEA           SP, {R0-R3}
0001e434  LDRSH           R3, [R6,#0x9C]
0001e438  LDRSH           R2, [R6,#0xA2]
0001e43c  LDRSH           R1, [R6,#0xA0]
0001e440  MOV             R0, R5
0001e444  BL              sub_10C58
0001e448  ADD             SP, SP, #0x1C
0001e44c  POP             {R4-R11,LR}
0001e450  BX              LR
