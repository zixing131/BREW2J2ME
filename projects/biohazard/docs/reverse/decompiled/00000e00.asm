00000e00  PUSH            {R4-R10,LR}
00000e04  LDR             R8, =(start - 0xE20)
00000e08  MOV             R10, R3
00000e0c  MOV             R9, R1
00000e10  MOV             R6, R2
00000e14  MOV             R4, R0
00000e18  ADD             R8, PC, R8; start
00000e1c  LDR             R0, [R8,#(dword_8 - 0xC)]
00000e20  ADR             LR, loc_E2C
00000e24  LDR             R0, [R0,#0xC0]
00000e28  BX              R0
00000e2c  LDR             R7, [R0,#0x20]
00000e30  LDR             R0, [R8,#(dword_8 - 0xC)]
00000e34  LDR             R0, [R0,#0xC0]
00000e38  MOV             LR, PC
00000e3c  BX              R0
00000e40  LDR             R5, [R0,#0x28]
00000e44  MOV             R0, R4
00000e48  BL              sub_22F1C
00000e4c  CMP             R9, #0
00000e50  BEQ             loc_E60
00000e54  CMP             R9, #1
00000e58  STREQ           R10, [R4,#0xC]
00000e5c  B               loc_EA4
00000e60  MOV             R3, #0
00000e64  MOV             R2, #0
00000e68  MOV             R1, R6
00000e6c  MOV             R0, R5
00000e70  BL              sub_19618
00000e74  MOV             R9, R0
00000e78  LDR             R0, [R8,#(dword_8 - 0xC)]
00000e7c  ADR             LR, loc_E8C
00000e80  LDR             R1, [R0,#0x68]
00000e84  ADD             R0, R9, #4
00000e88  BX              R1
00000e8c  STR             R0, [R4,#0xC]
00000e90  MOV             R2, R0
00000e94  MOV             R0, R5
00000e98  MOV             R3, R9
00000e9c  MOV             R1, R6
00000ea0  BL              sub_19618
00000ea4  LDR             R1, [R4,#0xC]
00000ea8  CMP             R1, #0
00000eac  BEQ             loc_ED8
00000eb0  MOV             R0, #1
00000eb4  STRB            R0, [R4,#8]
00000eb8  LDRH            R0, [R7]
00000ebc  MOV             R2, #2
00000ec0  ADD             R0, R0, R0,LSL#1
00000ec4  MOV             R0, R0,LSR#2
00000ec8  STRH            R0, [R4]
00000ecc  LDR             R0, [R5,#0x64]
00000ed0  BL              sub_12BC8
00000ed4  STRH            R0, [R4,#2]
00000ed8  POP             {R4-R10,LR}
00000edc  BX              LR
