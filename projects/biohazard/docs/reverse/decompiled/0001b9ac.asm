0001b9ac  PUSH            {R3-R7,LR}
0001b9b0  LDR             R6, =(start - 0x1B9C4)
0001b9b4  MOV             R7, R1
0001b9b8  MOV             R5, R0
0001b9bc  ADD             R6, PC, R6; start
0001b9c0  LDR             R0, [R6,#(dword_8 - 0xC)]
0001b9c4  ADR             LR, loc_1B9D4
0001b9c8  LDR             R1, [R0,#0x68]
0001b9cc  MOV             R0, #0x34 ; '4'
0001b9d0  BX              R1
0001b9d4  MOV             R4, R0
0001b9d8  LDR             R0, [R6,#(dword_8 - 0xC)]
0001b9dc  MOV             R2, #0x34 ; '4'
0001b9e0  LDR             R3, [R0,#4]
0001b9e4  MOV             R0, R4
0001b9e8  MOV             R1, #0
0001b9ec  MOV             LR, PC
0001b9f0  BX              R3
0001b9f4  MOV             R0, #0xC
0001b9f8  STRH            R0, [R4,#0x30]
0001b9fc  STRH            R0, [R4,#0x32]
0001ba00  STR             R5, [R4,#4]
0001ba04  STR             R7, [R4]
0001ba08  LDR             R1, [R5]
0001ba0c  MOV             R0, #1
0001ba10  STR             R1, [R4,#8]
0001ba14  ADD             R1, R5, #4
0001ba18  STR             R1, [R4,#0xC]
0001ba1c  MOV             R12, #0x204
0001ba20  LDR             R1, [R4,#0xC]
0001ba24  ADD             R1, R1, R0,LSL#1
0001ba28  LDRH            R2, [R1,#-2]
0001ba2c  LDRH            R3, [R1]
0001ba30  ADD             R0, R0, #1
0001ba34  CMP             R0, #0x100
0001ba38  ADD             R2, R2, R3
0001ba3c  STRH            R2, [R1]
0001ba40  BLT             loc_1BA20
0001ba44  ADD             R0, R5, R12
0001ba48  STR             R0, [R4,#0x10]
0001ba4c  LDR             R0, [R4,#8]
0001ba50  ADD             R1, R12, R0,LSL#2
0001ba54  ADD             R0, R0, R0,LSL#1
0001ba58  ADD             R0, R1, R0,LSL#3
0001ba5c  ADD             R0, R5, R0
0001ba60  STR             R0, [R4,#0x18]
0001ba64  ADD             R2, R5, R1
0001ba68  STR             R2, [R4,#0x14]
0001ba6c  LDR             R1, =0x2026
0001ba70  MOV             R0, R4
0001ba74  BL              sub_12384
0001ba78  STRH            R0, [R4,#0x1C]
0001ba7c  MOV             R0, #0x2E ; '.'
0001ba80  STRB            R0, [R4,#0x1E]
0001ba84  MOV             R0, R4
0001ba88  POP             {R3-R7,LR}
0001ba8c  BX              LR
