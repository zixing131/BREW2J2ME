0001f35c  PUSH            {R4-R6,LR}
0001f360  MOV             R4, R0
0001f364  LDRSB           R0, [R0,#5]
0001f368  MOV             R6, #0
0001f36c  CMP             R0, #4
0001f370  BEQ             loc_1F574
0001f374  CMP             R0, #0x11
0001f378  BEQ             loc_1F590
0001f37c  CMP             R0, #0x12
0001f380  BEQ             loc_1F4D8
0001f384  CMP             R0, #0x15
0001f388  SUBEQ           R12, R1, #0x100
0001f38c  SUBSEQ          R12, R12, #2
0001f390  BNE             loc_1F598
0001f394  SUB             R12, R2, #0xE000
0001f398  SUBS            R12, R12, #0x33 ; '3'
0001f39c  SUBNE           R12, R2, #0xE000
0001f3a0  SUBSNE          R12, R12, #0x34 ; '4'
0001f3a4  BEQ             loc_1F504
0001f3a8  SUB             R12, R2, #0xE000
0001f3ac  SUBS            R12, R12, #0x21 ; '!'
0001f3b0  SUBNE           R12, R2, #0xE000
0001f3b4  SUBSNE          R12, R12, #0x37 ; '7'
0001f3b8  BEQ             loc_1F560
0001f3bc  SUB             R12, R2, #0xE000
0001f3c0  SUBS            R12, R12, #0x36 ; '6'
0001f3c4  BNE             loc_1F598
0001f3c8  LDRB            R0, [R4,#0x14]
0001f3cc  CMP             R0, #1
0001f3d0  BEQ             loc_1F560
0001f3d4  CMP             R0, #0
0001f3d8  BNE             loc_1F598
0001f3dc  LDR             R0, [R4,#0x44]
0001f3e0  LDRSH           R1, [R4,#0x30]
0001f3e4  LDR             R0, [R0,#0x10]
0001f3e8  LDR             R5, [R4,#0x40]
0001f3ec  ADD             R0, R0, R1,LSL#5
0001f3f0  LDR             R0, [R0,#8]
0001f3f4  LDR             R1, [R5,#0x324]
0001f3f8  MOV             R2, #0x10
0001f3fc  ADD             R0, R2, R0,LSL#5
0001f400  STR             R0, [R1]
0001f404  LDR             R0, [R4,#0x44]
0001f408  LDRSH           R1, [R4,#0x30]
0001f40c  LDR             R0, [R0,#0x10]
0001f410  ADD             R0, R0, R1,LSL#5
0001f414  LDR             R0, [R0,#0xC]
0001f418  LDR             R1, [R5,#0x328]
0001f41c  ADD             R0, R2, R0,LSL#5
0001f420  STR             R0, [R1]
0001f424  LDR             R0, [R4,#0x44]
0001f428  LDRSH           R1, [R4,#0x30]
0001f42c  LDR             R0, [R0,#0x10]
0001f430  ADD             R0, R0, R1,LSL#5
0001f434  LDR             R0, [R0,#0x10]
0001f438  LDR             R1, [R5,#0x32C]
0001f43c  STR             R0, [R1]
0001f440  LDR             R0, [R4,#0x44]
0001f444  LDRSH           R1, [R4,#0x30]
0001f448  LDR             R0, [R0,#0x10]
0001f44c  ADD             R0, R0, R1,LSL#5
0001f450  LDR             R0, [R0,#4]
0001f454  MOV             R1, R0,LSL#16
0001f458  MOV             R1, R1,LSR#16
0001f45c  MOV             R0, R5
0001f460  BL              sub_5E14
0001f464  LDR             R0, [R4,#0x44]
0001f468  LDRSH           R1, [R4,#0x30]
0001f46c  LDR             R0, [R0,#0x10]
0001f470  ADD             R0, R0, R1,LSL#5
0001f474  LDR             R0, [R0,#4]
0001f478  MOV             R1, R0,LSL#16
0001f47c  MOV             R1, R1,LSR#16
0001f480  MOV             R0, R5
0001f484  BL              sub_5DD4
0001f488  STRH            R6, [R4,#0x48]
0001f48c  STR             R6, [R4,#0x44]
0001f490  STRH            R6, [R4,#0x4A]
0001f494  STRH            R6, [R4,#0x3C]
0001f498  STRB            R6, [R4,#0x50]
0001f49c  STRB            R6, [R4,#0x51]
0001f4a0  STRH            R6, [R4,#0x3E]
0001f4a4  LDR             R0, =(start - 0x1F4B8)
0001f4a8  STRB            R6, [R4,#5]
0001f4ac  STRH            R6, [R4,#0x28]
0001f4b0  ADD             R0, PC, R0; start
0001f4b4  LDR             R0, [R0,#(dword_8 - 0xC)]
0001f4b8  ADR             LR, loc_1F4C4
0001f4bc  LDR             R0, [R0,#0xC0]
0001f4c0  BX              R0
0001f4c4  LDR             R0, [R0,#0x760]
0001f4c8  MOV             R2, #0
0001f4cc  MOV             R1, #8
0001f4d0  BL              sub_59C4
0001f4d4  B               loc_1F598
0001f4d8  SUB             R12, R1, #0x100
0001f4dc  SUBS            R12, R12, #2
0001f4e0  BNE             loc_1F598
0001f4e4  LDRB            R0, [R4,#0x15]
0001f4e8  CMP             R0, #0
0001f4ec  BNE             loc_1F560
0001f4f0  SUB             R12, R2, #0xE000
0001f4f4  SUBS            R12, R12, #0x33 ; '3'
0001f4f8  SUBNE           R12, R2, #0xE000
0001f4fc  SUBSNE          R12, R12, #0x34 ; '4'
0001f500  BNE             loc_1F518
0001f504  LDRB            R0, [R4,#0x14]
0001f508  ADD             R0, R0, #1
0001f50c  AND             R0, R0, #1
0001f510  STRB            R0, [R4,#0x14]
0001f514  B               loc_1F598
0001f518  SUB             R12, R2, #0xE000
0001f51c  SUBS            R12, R12, #0x21 ; '!'
0001f520  SUBNE           R12, R2, #0xE000
0001f524  SUBSNE          R12, R12, #0x37 ; '7'
0001f528  BEQ             loc_1F560
0001f52c  SUB             R12, R2, #0xE000
0001f530  SUBS            R12, R12, #0x36 ; '6'
0001f534  BNE             loc_1F598
0001f538  LDRB            R0, [R4,#0x14]
0001f53c  CMP             R0, #1
0001f540  BEQ             loc_1F560
0001f544  CMP             R0, #0
0001f548  BNE             loc_1F598
0001f54c  LDR             R0, [R4,#0x40]
0001f550  BL              sub_11B3C
0001f554  MOV             R0, #1
0001f558  STRB            R0, [R4,#0x15]
0001f55c  B               loc_1F598
0001f560  STRB            R6, [R4,#5]
0001f564  LDRH            R0, [R4,#0x3E]
0001f568  SUB             R0, R0, #1
0001f56c  STRH            R0, [R4,#0x3E]
0001f570  B               loc_1F598
0001f574  LDR             R0, [R4,#8]
0001f578  BL              sub_10250
0001f57c  CMP             R0, #0
0001f580  BNE             loc_1F598
0001f584  LDR             R0, [R4,#8]
0001f588  BL              sub_602C
0001f58c  B               loc_1F560
0001f590  LDR             R0, [R4,#0xC]
0001f594  BL              sub_101B4
0001f598  POP             {R4-R6,LR}
0001f59c  MOV             R0, #1
0001f5a0  BX              LR
