00005e14  PUSH            {R4-R8,LR}
00005e18  SUB             R1, R1, #1
00005e1c  MOV             R5, R1,LSL#16
00005e20  MOV             R8, #0
00005e24  LDR             R6, =(start - 0x5E38)
00005e28  STRB            R8, [R0,#0x338]
00005e2c  MOV             R5, R5,ASR#16
00005e30  ADD             R6, PC, R6; start
00005e34  LDR             R0, [R6,#(dword_8 - 0xC)]
00005e38  ADR             LR, loc_5E44
00005e3c  LDR             R0, [R0,#0xC0]
00005e40  BX              R0
00005e44  ADD             R1, R5, #0xC000
00005e48  ADD             R1, R1, #0xB20
00005e4c  LDR             R0, [R0,#0x28]
00005e50  MOV             R2, #0
00005e54  BL              sub_18818
00005e58  MOVS            R4, R0
00005e5c  BEQ             loc_5F18
00005e60  LDR             R0, [R6,#(dword_8 - 0xC)]
00005e64  ADR             LR, loc_5E70
00005e68  LDR             R0, [R0,#0xC0]
00005e6c  BX              R0
00005e70  LDR             R7, [R0,#0x24]
00005e74  LDR             R0, [R6,#(dword_8 - 0xC)]
00005e78  LDR             R0, [R0,#0xC0]
00005e7c  MOV             LR, PC
00005e80  BX              R0
00005e84  LDR             R0, [R0,#0x760]
00005e88  MOV             R2, R7
00005e8c  MOV             R1, R4
00005e90  LDR             R0, [R0,#0x18C]
00005e94  BL              sub_18B5C
00005e98  CMP             R0, #0
00005e9c  LDREQ           R0, [R6,#(dword_8 - 0xC)]
00005ea0  LDREQ           R1, [R0,#0x6C]
00005ea4  MOVEQ           R0, R4
00005ea8  POPEQ           {R4-R8,LR}
00005eac  BXEQ            R1
00005eb0  LDR             R0, [R6,#(dword_8 - 0xC)]
00005eb4  LDR             R1, [R0,#0x6C]
00005eb8  MOV             R0, R4
00005ebc  MOV             LR, PC
00005ec0  BX              R1
00005ec4  LDR             R0, [R6,#(dword_8 - 0xC)]
00005ec8  LDR             R0, [R0,#0xC0]
00005ecc  MOV             LR, PC
00005ed0  BX              R0
00005ed4  LDR             R0, [R0,#0x760]
00005ed8  ADD             R0, R0, #0x100
00005edc  STRH            R5, [R0,#0x84]
00005ee0  LDR             R0, [R6,#(dword_8 - 0xC)]
00005ee4  ADR             LR, loc_5EF0
00005ee8  LDR             R0, [R0,#0xC0]
00005eec  BX              R0
00005ef0  LDR             R0, [R0,#0x760]
00005ef4  ADD             R0, R0, #0x100
00005ef8  STRH            R8, [R0,#0xB6]
00005efc  LDR             R0, [R6,#(dword_8 - 0xC)]
00005f00  ADR             LR, loc_5F0C
00005f04  LDR             R0, [R0,#0xC0]
00005f08  BX              R0
00005f0c  LDR             R0, [R0,#0x760]
00005f10  ADD             R0, R0, #0x100
00005f14  STRH            R8, [R0,#0xB8]
00005f18  POP             {R4-R8,LR}
00005f1c  BX              LR
