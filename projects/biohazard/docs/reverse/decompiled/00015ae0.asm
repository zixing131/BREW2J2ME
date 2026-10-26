00015ae0  PUSH            {R3-R11,LR}
00015ae4  LDR             R10, =(start - 0x15AF4)
00015ae8  MOV             R5, R0
00015aec  ADD             R10, PC, R10; start
00015af0  LDR             R0, [R10,#(dword_8 - 0xC)]
00015af4  ADR             LR, loc_15B00
00015af8  LDR             R0, [R0,#0xC0]
00015afc  BX              R0
00015b00  LDR             R7, [R0,#0x28]
00015b04  MOV             R0, R5
00015b08  BL              sub_15A00
00015b0c  MOV             R11, #0
00015b10  STRH            R11, [R5,#0x8C]
00015b14  MOV             R0, #5
00015b18  ADD             R9, R5, #0x100
00015b1c  STRH            R0, [R9,#0x22]
00015b20  MOV             R4, #0
00015b24  ADD             R1, R4, #0x1B00
00015b28  ADD             R1, R1, #0x5E ; '^'
00015b2c  MOV             R8, R1
00015b30  MOV             R3, #0
00015b34  MOV             R2, #0
00015b38  MOV             R0, R7
00015b3c  BL              sub_19618
00015b40  MOV             R6, R0
00015b44  LDR             R0, [R10,#(dword_8 - 0xC)]
00015b48  ADR             LR, loc_15B58
00015b4c  LDR             R1, [R0,#0x68]
00015b50  ADD             R0, R6, #4
00015b54  BX              R1
00015b58  ADD             R1, R5, R4,LSL#2
00015b5c  STR             R0, [R1,#0xA0]
00015b60  CMP             R0, #0
00015b64  BEQ             loc_15BAC
00015b68  MOV             R2, R0
00015b6c  MOV             R0, R7
00015b70  MOV             R3, R6
00015b74  MOV             R1, R8
00015b78  BL              sub_19618
00015b7c  ADD             R0, R5, R4
00015b80  STRB            R11, [R0,#0x54]
00015b84  ADD             R0, R4, #1
00015b88  MOV             R4, R0,LSL#16
00015b8c  LDRH            R0, [R9,#0x22]
00015b90  MOV             R4, R4,ASR#16
00015b94  CMP             R0, R4
00015b98  BGT             loc_15B24
00015b9c  MOV             R0, #1
00015ba0  STRB            R0, [R5,#0x54]
00015ba4  STRB            R0, [R5,#0x56]
00015ba8  STRB            R0, [R5,#0x12C]
00015bac  POP             {R3-R11,LR}
00015bb0  BX              LR
