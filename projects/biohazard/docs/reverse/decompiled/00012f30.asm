00012f30  PUSH            {R4-R6,LR}
00012f34  MOV             R6, R0
00012f38  LDR             R0, =(start - 0x12F50)
00012f3c  SUB             SP, SP, #0x18
00012f40  MOV             R5, R2
00012f44  MOV             R4, R1
00012f48  ADD             R0, PC, R0; start
00012f4c  LDR             R0, [R0,#(dword_8 - 0xC)]
00012f50  MOV             R2, #0x12
00012f54  LDR             R3, [R0,#4]
00012f58  ADD             R0, SP, #0x18+var_14
00012f5c  MOV             R1, #0
00012f60  MOV             LR, PC
00012f64  BX              R3
00012f68  MOV             R0, #0x21C
00012f6c  LDRSH           R0, [R0,R4]
00012f70  CMP             R0, R5
00012f74  BLE             loc_13084
00012f78  ADD             R1, R4, R5,LSL#3
00012f7c  LDRB            R0, [R1,#0x21F]
00012f80  LDR             R2, [R4,#0x10]
00012f84  LDRB            R12, [R1,#0x220]
00012f88  ADD             R0, R0, R0,LSL#3
00012f8c  ADD             R3, R2, R0,LSL#3
00012f90  LDRH            R2, [R3,#0x36]
00012f94  LDRH            R3, [R3,#4]
00012f98  MLA             R2, R3, R12, R2
00012f9c  STRH            R2, [SP,#0x18+var_14]
00012fa0  LDR             R2, [R4,#0x10]
00012fa4  LDRB            R12, [R1,#0x222]
00012fa8  ADD             R3, R2, R0,LSL#3
00012fac  LDRH            R2, [R3,#0x38]
00012fb0  LDRH            R3, [R3,#0xC]
00012fb4  MLA             R2, R3, R12, R2
00012fb8  STRH            R2, [SP,#0x18+var_12]
00012fbc  LDR             R2, [R4,#0x10]
00012fc0  LDRB            R12, [R1,#0x221]
00012fc4  ADD             R3, R2, R0,LSL#3
00012fc8  LDRH            R2, [R3,#0x3A]
00012fcc  LDRH            R3, [R3,#0x14]
00012fd0  MLA             R2, R3, R12, R2
00012fd4  STRH            R2, [SP,#0x18+var_10]
00012fd8  LDR             R2, [R4,#0x10]
00012fdc  LDRB            R12, [R1,#0x221]
00012fe0  ADD             R3, R2, R0,LSL#3
00012fe4  LDRH            R2, [R3,#0x3C]
00012fe8  LDRH            R3, [R3,#0x1C]
00012fec  MLA             R2, R3, R12, R2
00012ff0  STRH            R2, [SP,#0x18+var_E]
00012ff4  LDR             R2, [R4,#0x10]
00012ff8  LDRB            R12, [R1,#0x223]
00012ffc  ADD             R3, R2, R0,LSL#3
00013000  LDRH            R2, [R3,#0x3E]
00013004  LDRH            R3, [R3,#0x24]
00013008  MLA             R2, R3, R12, R2
0001300c  STRH            R2, [SP,#0x18+var_C]
00013010  LDR             R2, [R4,#0x10]
00013014  LDRB            R12, [R1,#0x224]
00013018  ADD             R3, R2, R0,LSL#3
0001301c  LDRH            R2, [R3,#0x40]
00013020  LDRH            R3, [R3,#0x2C]
00013024  MLA             R2, R3, R12, R2
00013028  STRH            R2, [SP,#0x18+var_A]
0001302c  LDR             R2, [R4,#0x10]
00013030  ADD             R2, R2, R0,LSL#3
00013034  LDRB            R2, [R2,#0x42]
00013038  STRB            R2, [SP,#0x18+var_8]
0001303c  LDR             R2, [R4,#0x10]
00013040  ADD             R2, R2, R0,LSL#3
00013044  LDRB            R2, [R2,#0x43]
00013048  STRB            R2, [SP,#0x18+var_7]
0001304c  LDRB            R1, [R1,#0x225]
00013050  STRB            R1, [SP,#0x18+var_6]
00013054  LDR             R1, [R4,#0x10]
00013058  ADD             R1, R1, R0,LSL#3
0001305c  LDRB            R1, [R1,#0x44]
00013060  STRB            R1, [SP,#0x18+var_5]
00013064  LDR             R1, [R4,#0x10]
00013068  ADD             R1, R1, R0,LSL#3
0001306c  LDRB            R1, [R1,#0x45]
00013070  STRB            R1, [SP,#0x18+var_4]
00013074  LDR             R1, [R4,#0x10]
00013078  ADD             R0, R1, R0,LSL#3
0001307c  LDRH            R0, [R0,#0x46]
00013080  STRB            R0, [SP,#0x18+var_3]
00013084  MOV             R2, #0x12
00013088  ADD             R1, SP, #0x18+var_14
0001308c  MOV             R0, R6
00013090  BL              sub_4C
00013094  ADD             SP, SP, #0x18
00013098  POP             {R4-R6,LR}
0001309c  BX              LR
