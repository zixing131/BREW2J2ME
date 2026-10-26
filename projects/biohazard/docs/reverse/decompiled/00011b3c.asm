00011b3c  PUSH            {R4-R6,LR}
00011b40  LDR             R6, =(start - 0x11B50)
00011b44  MOV             R5, R0
00011b48  ADD             R6, PC, R6; start
00011b4c  LDR             R0, [R6,#(dword_8 - 0xC)]
00011b50  ADR             LR, loc_11B5C
00011b54  LDR             R0, [R0,#0xC0]
00011b58  BX              R0
00011b5c  ADD             R4, R0, #0x64 ; 'd'
00011b60  LDR             R0, [R5,#0x334]
00011b64  ADD             R1, R5, #0x300
00011b68  LDRH            R0, [R0]
00011b6c  ADR             LR, loc_11BF8
00011b70  ADD             R0, R0, #1
00011b74  STRH            R0, [R4]
00011b78  LDR             R0, [R5,#0x324]
00011b7c  LDR             R0, [R0]
00011b80  STRH            R0, [R4,#2]
00011b84  LDR             R0, [R5,#0x328]
00011b88  LDR             R0, [R0]
00011b8c  STRH            R0, [R4,#4]
00011b90  LDR             R0, [R5,#0x32C]
00011b94  LDR             R0, [R0]
00011b98  STRH            R0, [R4,#6]
00011b9c  LDR             R0, [R5,#0x1C]
00011ba0  STR             R0, [R4,#8]
00011ba4  LDR             R0, [R5,#0x18]
00011ba8  LDR             R0, [R0]
00011bac  STR             R0, [R4,#0xC]
00011bb0  LDR             R0, [R5,#0x24]
00011bb4  STR             R0, [R4,#0x10]
00011bb8  LDRH            R2, [R1,#0x22]
00011bbc  ADD             R0, R4, #0x200
00011bc0  STRH            R2, [R0,#8]
00011bc4  LDRH            R2, [R1,#0x1E]
00011bc8  STRH            R2, [R0,#0xA]
00011bcc  MOV             R2, #0x21C
00011bd0  LDRH            R2, [R2,R5]
00011bd4  STRH            R2, [R0,#0xC]
00011bd8  LDRH            R1, [R1,#0x20]
00011bdc  MOV             R2, #0x1F4
00011be0  STRH            R1, [R0,#0xE]
00011be4  LDR             R0, [R6,#(dword_8 - 0xC)]
00011be8  ADD             R1, R5, #0x28 ; '('
00011bec  LDR             R3, [R0]
00011bf0  ADD             R0, R4, #0x14
00011bf4  BX              R3
00011bf8  LDR             R0, [R6,#(dword_8 - 0xC)]
00011bfc  ADD             R1, R5, #0x200
00011c00  LDR             R3, [R0]
00011c04  ADD             R0, R4, #0x210
00011c08  ADD             R1, R1, #0x1E
00011c0c  MOV             R2, #0x100
00011c10  MOV             LR, PC
00011c14  BX              R3
00011c18  MOV             R0, #1
00011c1c  STRB            R0, [R4,#0x310]
00011c20  LDRB            R0, [R5,#0x340]
00011c24  ADR             LR, loc_11C48
00011c28  STRB            R0, [R4,#0x311]
00011c2c  LDRB            R0, [R5,#0x341]
00011c30  STRB            R0, [R4,#0x312]
00011c34  LDRB            R0, [R5,#0x342]
00011c38  STRB            R0, [R4,#0x313]
00011c3c  LDR             R0, [R6,#(dword_8 - 0xC)]
00011c40  LDR             R0, [R0,#0xC0]
00011c44  BX              R0
00011c48  MOV             R1, #2
00011c4c  POP             {R4-R6,LR}
00011c50  B               sub_24190
