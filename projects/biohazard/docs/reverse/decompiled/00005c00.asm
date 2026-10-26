00005c00  PUSH            {R3-R11,LR}
00005c04  MOV             R5, R1
00005c08  MOV             R4, R0
00005c0c  BL              sub_228B8
00005c10  LDR             R10, =(start - 0x5C1C)
00005c14  ADD             R10, PC, R10; start
00005c18  LDR             R0, [R10,#(dword_8 - 0xC)]
00005c1c  ADR             LR, loc_5C28
00005c20  LDR             R0, [R0,#0xC0]
00005c24  BX              R0
00005c28  ADD             R1, R5, #0x2800
00005c2c  ADD             R1, R1, #0x2F8
00005c30  LDR             R0, [R0,#0x28]
00005c34  MOV             R2, #0
00005c38  BL              sub_18818
00005c3c  MOVS            R9, R0
00005c40  BEQ             loc_5DC8
00005c44  LDR             R0, [R10,#(dword_8 - 0xC)]
00005c48  ADR             LR, loc_5C58
00005c4c  LDR             R1, [R0,#0x68]
00005c50  MOV             R0, #0xC
00005c54  BX              R1
00005c58  STR             R0, [R4,#0x38]
00005c5c  LDR             R1, [R10,#(dword_8 - 0xC)]
00005c60  ADD             R0, R0, #8
00005c64  LDR             R3, [R1]
00005c68  MOV             R1, R9
00005c6c  MOV             R2, #2
00005c70  MOV             LR, PC
00005c74  BX              R3
00005c78  LDR             R0, [R4,#0x38]
00005c7c  ADD             R5, R9, #2
00005c80  LDRH            R0, [R0,#8]
00005c84  CMP             R0, #0
00005c88  BEQ             loc_5DB0
00005c8c  LDR             R1, [R10,#(dword_8 - 0xC)]
00005c90  MOV             R0, R0,LSL#3
00005c94  LDR             R1, [R1,#0x68]
00005c98  MOV             LR, PC
00005c9c  BX              R1
00005ca0  LDR             R1, [R4,#0x38]
00005ca4  STR             R0, [R1,#4]
00005ca8  LDR             R1, [R4,#0x38]
00005cac  ADR             LR, loc_5CC8
00005cb0  LDRH            R1, [R1,#8]
00005cb4  MOV             R2, R1,LSL#3
00005cb8  LDR             R1, [R10,#(dword_8 - 0xC)]
00005cbc  LDR             R3, [R1]
00005cc0  MOV             R1, R5
00005cc4  BX              R3
00005cc8  LDR             R0, [R4,#0x38]
00005ccc  MOV             R1, #0x18
00005cd0  LDRH            R0, [R0,#8]
00005cd4  ADR             LR, loc_5CEC
00005cd8  ADD             R7, R5, R0,LSL#3
00005cdc  MUL             R0, R1, R0
00005ce0  LDR             R1, [R10,#(dword_8 - 0xC)]
00005ce4  LDR             R1, [R1,#0x68]
00005ce8  BX              R1
00005cec  LDR             R1, [R4,#0x38]
00005cf0  MOV             R5, #0
00005cf4  MOV             R11, #0
00005cf8  STR             R0, [R1]
00005cfc  B               loc_5DA0
00005d00  LDR             R0, [R0]
00005d04  ADD             R6, R5, R5,LSL#1
00005d08  ADD             R0, R0, R6,LSL#3
00005d0c  STRB            R11, [R0,#0x14]
00005d10  LDR             R0, [R4,#0x38]
00005d14  LDR             R1, [R10,#(dword_8 - 0xC)]
00005d18  LDR             R0, [R0]
00005d1c  LDR             R3, [R1]
00005d20  MOV             R1, R7
00005d24  MOV             R2, #0x10
00005d28  ADR             LR, loc_5D34
00005d2c  ADD             R0, R0, R6,LSL#3
00005d30  BX              R3
00005d34  LDR             R0, [R4,#0x38]
00005d38  ADD             R8, R7, #0x10
00005d3c  LDR             R0, [R0]
00005d40  ADR             LR, loc_5D60
00005d44  ADD             R0, R0, R6,LSL#3
00005d48  LDR             R0, [R0,#0xC]
00005d4c  MOV             R7, R0,LSL#5
00005d50  LDR             R0, [R10,#(dword_8 - 0xC)]
00005d54  LDR             R1, [R0,#0x68]
00005d58  MOV             R0, R7
00005d5c  BX              R1
00005d60  LDR             R1, [R4,#0x38]
00005d64  CMP             R0, #0
00005d68  LDR             R1, [R1]
00005d6c  ADD             R1, R1, R6,LSL#3
00005d70  STR             R0, [R1,#0x10]
00005d74  BEQ             loc_5DC8
00005d78  LDR             R1, [R10,#(dword_8 - 0xC)]
00005d7c  MOV             R2, R7
00005d80  LDR             R3, [R1]
00005d84  MOV             R1, R8
00005d88  MOV             LR, PC
00005d8c  BX              R3
00005d90  ADD             R0, R5, #1
00005d94  MOV             R5, R0,LSL#16
00005d98  MOV             R5, R5,ASR#16
00005d9c  ADD             R7, R8, R7
00005da0  LDR             R0, [R4,#0x38]
00005da4  LDRH            R1, [R0,#8]
00005da8  CMP             R1, R5
00005dac  BGT             loc_5D00
00005db0  LDR             R0, [R10,#(dword_8 - 0xC)]
00005db4  LDR             R1, [R0,#0x6C]
00005db8  ADD             SP, SP, #4
00005dbc  MOV             R0, R9
00005dc0  POP             {R4-R11,LR}
00005dc4  BX              R1
00005dc8  POP             {R3-R11,LR}
00005dcc  BX              LR
