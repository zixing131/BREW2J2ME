0001e458  PUSH            {R4-R6,LR}
0001e45c  MOV             R4, R0
0001e460  LDRB            R0, [R0,#0x758]
0001e464  SUB             SP, SP, #0x130
0001e468  CMP             R0, #1
0001e46c  BEQ             loc_1E68C
0001e470  LDR             R0, [R4,#0x20]
0001e474  BL              sub_22354
0001e478  LDR             R0, [R4,#0x760]
0001e47c  MOV             R3, #0
0001e480  MOV             R2, R4
0001e484  MOV             R1, R0
0001e488  BL              sub_1CA88
0001e48c  LDRB            R0, [R4,#0x764]
0001e490  LDR             R5, =(start - 0x1E49C)
0001e494  ADD             R5, PC, R5; start
0001e498  LDR             R6, =0xFFFF
0001e49c  CMP             R0, #1
0001e4a0  BNE             loc_1E570
0001e4a4  LDR             R12, [R4,#0x20]
0001e4a8  MOV             R1, #0
0001e4ac  LDRSH           R0, [R12,#2]
0001e4b0  MOV             R3, #0
0001e4b4  MOV             R2, #0
0001e4b8  STMEA           SP, {R0,R1,R6}
0001e4bc  STR             R3, [SP,#0x130+var_124]
0001e4c0  LDRSH           R3, [R12]
0001e4c4  MOV             R0, R12
0001e4c8  BL              sub_10C58
0001e4cc  MOV             R3, #0x40 ; '@'
0001e4d0  ADD             R2, SP, #0x130+var_48
0001e4d4  LDR             R0, [R4,#0x28]
0001e4d8  LDR             R1, =0x1398
0001e4dc  BL              sub_19618
0001e4e0  LDR             R0, [R4,#0x28]
0001e4e4  MOV             R2, #1
0001e4e8  ADD             R1, SP, #0x130+var_48
0001e4ec  LDR             R0, [R0,#0x64]
0001e4f0  BL              sub_12BC8
0001e4f4  LDR             R0, [R5,#(dword_8 - 0xC)]
0001e4f8  MOV             R2, #8
0001e4fc  LDR             R3, [R0,#4]
0001e500  ADD             R0, SP, #0x130+var_8
0001e504  MOV             R1, #0
0001e508  MOV             LR, PC
0001e50c  BX              R3
0001e510  LDR             R0, [R4,#0x20]
0001e514  ADD             R12, SP, #0x130+var_30
0001e518  LDRH            R0, [R0]
0001e51c  MOV             R3, #1
0001e520  MOV             R2, #1
0001e524  STRH            R0, [R12,#0x2C]
0001e528  LDR             R0, [R4,#0x20]
0001e52c  MOV             R1, #0
0001e530  LDRH            R0, [R0,#2]
0001e534  ADD             LR, SP, #0x130+var_120
0001e538  STRH            R0, [R12,#0x2E]
0001e53c  LDRSH           R0, [R12,#0x28]
0001e540  STM             LR, {R0-R3}
0001e544  MOV             R2, #0x7E0
0001e548  ADD             R0, SP, #0x130+var_48
0001e54c  MOV             R1, #1
0001e550  MOV             R3, #0x7E0
0001e554  STMEA           SP, {R0-R3}
0001e558  LDR             R0, [R4,#0x28]
0001e55c  LDRSH           R2, [R12,#0x2A]
0001e560  LDR             R1, [R4,#0x20]
0001e564  LDR             R0, [R0,#0x64]
0001e568  ADD             R3, SP, #0x130+var_8
0001e56c  BL              sub_98BC
0001e570  LDRB            R0, [R4,#0x40]
0001e574  CMP             R0, #1
0001e578  BNE             loc_1E684
0001e57c  LDR             R0, [R5,#(dword_8 - 0xC)]
0001e580  MOV             R2, #0x100
0001e584  LDR             R3, [R0,#4]
0001e588  ADD             R0, SP, #0x130+var_110
0001e58c  MOV             R1, #0
0001e590  MOV             LR, PC
0001e594  BX              R3
0001e598  LDR             R0, [R5,#(dword_8 - 0xC)]
0001e59c  ADD             R1, SP, #0x130+var_10
0001e5a0  LDR             R2, [R0,#0x138]
0001e5a4  ADD             R0, SP, #0x130+var_C
0001e5a8  MOV             LR, PC
0001e5ac  BX              R2
0001e5b0  LDR             R2, [SP,#0x130+var_10]
0001e5b4  STR             R0, [SP,#0x130+var_12C]
0001e5b8  STR             R2, [SP,#0x130+var_130]
0001e5bc  LDR             R0, [R5,#(dword_8 - 0xC)]
0001e5c0  LDR             R2, =(aToltalDNmaxmal - 0x1E5D0); "Toltal:%d$nMaxMaloc:%d$nFree:%d"
0001e5c4  LDR             R12, [R0,#0x3C]
0001e5c8  ADD             R2, PC, R2; "Toltal:%d$nMaxMaloc:%d$nFree:%d"
0001e5cc  MOV             R1, #0x100
0001e5d0  LDR             R3, [SP,#0x130+var_C]
0001e5d4  ADD             R0, SP, #0x130+var_110
0001e5d8  MOV             LR, PC
0001e5dc  BX              R12
0001e5e0  LDR             R0, [R5,#(dword_8 - 0xC)]
0001e5e4  MOV             R2, #8
0001e5e8  LDR             R3, [R0,#4]
0001e5ec  ADD             R0, SP, #0x130+var_8
0001e5f0  MOV             R1, #0
0001e5f4  MOV             LR, PC
0001e5f8  BX              R3
0001e5fc  LDR             R0, [R4,#0x20]
0001e600  ADD             R12, SP, #0x130+var_30
0001e604  LDRH            R0, [R0]
0001e608  MOV             R3, #0
0001e60c  MOV             R2, #0
0001e610  STRH            R0, [R12,#0x2C]
0001e614  LDR             R0, [R4,#0x20]
0001e618  MOV             R1, #0x10
0001e61c  LDRH            R0, [R0,#2]
0001e620  STRH            R0, [R12,#0x2E]
0001e624  MOV             R0, #0x28 ; '('
0001e628  STMEA           SP, {R0-R3}
0001e62c  LDR             R0, [R4,#0x20]
0001e630  MOV             R3, #0x78 ; 'x'
0001e634  MOV             R1, #0
0001e638  BL              sub_10C58
0001e63c  ADD             R12, SP, #0x130+var_30
0001e640  LDRSH           R0, [R12,#0x28]
0001e644  MOV             R3, #1
0001e648  MOV             R2, #1
0001e64c  MOV             R1, #0
0001e650  ADD             R5, SP, #0x130+var_120
0001e654  STM             R5, {R0-R3}
0001e658  ADD             R0, SP, #0x130+var_110
0001e65c  MOV             R1, #1
0001e660  STMEA           SP, {R0,R1,R6}
0001e664  MOV             R3, #0
0001e668  STR             R3, [SP,#0x130+var_124]
0001e66c  LDR             R0, [R4,#0x28]
0001e670  LDRSH           R2, [R12,#0x2A]
0001e674  LDR             R1, [R4,#0x20]
0001e678  LDR             R0, [R0,#0x64]
0001e67c  ADD             R3, SP, #0x130+var_8
0001e680  BL              sub_98BC
0001e684  LDR             R0, [R4,#0x20]
0001e688  BL              sub_252F4
0001e68c  ADD             SP, SP, #0x130
0001e690  POP             {R4-R6,LR}
0001e694  BX              LR
