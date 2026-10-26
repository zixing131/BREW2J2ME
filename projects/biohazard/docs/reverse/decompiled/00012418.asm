00012418  PUSH            {R4,R5,LR}
0001241c  LDR             R4, [SP,#arg_8]
00012420  ADD             LR, SP, #arg_0
00012424  CMP             R1, #0
00012428  MOVGE           R5, #0x21C
0001242c  LDM             LR, {R12,LR}
00012430  LDRSHGE         R5, [R5,R0]
00012434  CMPGE           R5, R1
00012438  BLE             loc_12498
0001243c  ADD             R1, R0, R1,LSL#3
00012440  LDRB            R1, [R1,#0x21F]
00012444  LDR             R5, [R0,#0x10]
00012448  ADD             R1, R1, R1,LSL#3
0001244c  ADD             R5, R5, R1,LSL#3
00012450  LDRH            R5, [R5,#6]
00012454  STRB            R5, [R2]
00012458  LDR             R2, [R0,#0x10]
0001245c  ADD             R2, R2, R1,LSL#3
00012460  LDRH            R2, [R2,#0x16]
00012464  STRB            R2, [R3]
00012468  LDR             R2, [R0,#0x10]
0001246c  ADD             R2, R2, R1,LSL#3
00012470  LDRH            R2, [R2,#0xE]
00012474  STRB            R2, [R12]
00012478  LDR             R2, [R0,#0x10]
0001247c  ADD             R2, R2, R1,LSL#3
00012480  LDRH            R2, [R2,#0x26]
00012484  STRB            R2, [LR]
00012488  LDR             R0, [R0,#0x10]
0001248c  ADD             R0, R0, R1,LSL#3
00012490  LDRH            R0, [R0,#0x2E]
00012494  STRB            R0, [R4]
00012498  POP             {R4,R5,LR}
0001249c  BX              LR
