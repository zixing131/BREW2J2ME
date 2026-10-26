00022fd8  PUSH            {R4-R6,LR}
00022fdc  MOV             R4, R0
00022fe0  LDR             R0, [R0,#0x898]
00022fe4  CMP             R0, #0
00022fe8  BEQ             loc_23194
00022fec  MOV             R0, #0
00022ff0  MOV             R1, #0
00022ff4  ADD             R3, R0, R0,LSL#1
00022ff8  LDR             R2, [R4,#0x898]
00022ffc  ADD             R0, R0, #1
00023000  ADD             R2, R2, R3,LSL#4
00023004  STRB            R1, [R2,#0x6C]
00023008  CMP             R0, #0x28 ; '('
0002300c  BLT             loc_22FF4
00023010  MOV             R0, #0
00023014  RSB             R12, R0, R0,LSL#3
00023018  LDR             R2, [R4,#0x898]
0002301c  ADD             R0, R0, #1
00023020  ADD             R2, R2, R12,LSL#3
00023024  STRB            R1, [R2,#0x7E0]
00023028  CMP             R0, #0x64 ; 'd'
0002302c  MOV             R3, R1
00023030  BLT             loc_23014
00023034  LDR             R0, [R4,#0x898]
00023038  LDRH            R1, [R0]
0002303c  LDRH            R2, [R0,#2]
00023040  LDR             R0, [R0,#0x28]
00023044  MOV             R1, R1,LSL#1
00023048  MUL             R1, R2, R1
0002304c  MOV             LR, R1,LSL#1
00023050  LDR             R0, [R0]
00023054  MOV             R1, #0
00023058  MOV             R2, #0xF3
0002305c  CMP             R1, LR
00023060  LDRBLT          R12, [R0]
00023064  ADDLT           R1, R1, #1
00023068  ANDLT           R12, R12, R2
0002306c  STRBLT          R12, [R0],#1
00023070  BLT             loc_2305C
00023074  MOV             R2, #0
00023078  MOV             LR, #0x15
0002307c  MOV             R5, #0x13
00023080  B               loc_23168
00023084  LDR             R0, [R1,#0x38]
00023088  MUL             R1, R5, R2
0002308c  ADD             R0, R0, R1,LSL#2
00023090  LDRH            R12, [R0,#0x14]
00023094  LDR             R1, [R4,#0x88C]
00023098  STR             R3, [R0,#4]
0002309c  MUL             R12, LR, R12
000230a0  ADD             R1, R1, R12,LSL#2
000230a4  LDR             R1, [R1,#0x4C]
000230a8  ADD             R2, R2, #1
000230ac  STRH            R1, [R0,#0x38]
000230b0  LDRH            R1, [R0,#0x16]
000230b4  STRH            R1, [R0,#0x3A]
000230b8  LDRSH           R12, [R0,#0x18]
000230bc  STRH            R12, [R0,#0x3C]
000230c0  LDRSH           R1, [R0,#0x1A]
000230c4  STRH            R1, [R0,#0x3E]
000230c8  STRB            R3, [R0,#0x40]
000230cc  STRH            R3, [R0,#0x44]
000230d0  STRB            R3, [R0,#0x48]
000230d4  STRB            R3, [R0,#0x49]
000230d8  SUB             R0, R12, #8
000230dc  MOV             R12, R0,ASR#31
000230e0  ADD             R0, R0, R12,LSR#28
000230e4  SUB             R1, R1, #8
000230e8  MOV             R12, R1,ASR#31
000230ec  ADD             R1, R1, R12,LSR#28
000230f0  LDR             R12, [R4,#0x898]
000230f4  MOV             R1, R1,ASR#4
000230f8  LDR             R12, [R12,#0x28]
000230fc  MOV             R0, R0,ASR#4
00023100  LDR             R12, [R12,R1,LSL#2]
00023104  LDRB            R6, [R12,R0]!
00023108  ORR             R6, R6, #4
0002310c  STRB            R6, [R12]
00023110  LDR             R12, [R4,#0x898]
00023114  LDR             R12, [R12,#0x28]
00023118  ADD             R12, R12, R1,LSL#2
0002311c  LDR             R12, [R12,#4]
00023120  LDRB            R6, [R12,R0]!
00023124  ORR             R6, R6, #4
00023128  STRB            R6, [R12]
0002312c  LDR             R12, [R4,#0x898]
00023130  LDR             R12, [R12,#0x28]
00023134  LDR             R12, [R12,R1,LSL#2]
00023138  ADD             R12, R12, R0
0002313c  LDRB            R6, [R12,#1]!
00023140  ORR             R6, R6, #4
00023144  STRB            R6, [R12]
00023148  LDR             R12, [R4,#0x898]
0002314c  LDR             R12, [R12,#0x28]
00023150  ADD             R1, R12, R1,LSL#2
00023154  LDR             R1, [R1,#4]
00023158  ADD             R0, R1, R0
0002315c  LDRB            R1, [R0,#1]!
00023160  ORR             R1, R1, #4
00023164  STRB            R1, [R0]
00023168  LDR             R1, [R4,#0x898]
0002316c  LDR             R0, [R1,#0x34]
00023170  CMP             R0, R2
00023174  BHI             loc_23084
00023178  ADD             R0, R4, #0x800
0002317c  ADD             R0, R0, #0x28 ; '('
00023180  BL              sub_2350C
00023184  MOV             R0, R4
00023188  POP             {R4-R6,LR}
0002318c  MOV             R1, #0
00023190  B               sub_21FB4
00023194  POP             {R4-R6,LR}
00023198  BX              LR
