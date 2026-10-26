00017be0  PUSH            {R3-R11,LR}
00017be4  MOVS            R9, R0
00017be8  MOV             R5, R3
00017bec  CMPNE           R5, #0
00017bf0  CMPNE           R1, #0
00017bf4  MOVEQ           R0, #0xFFFFFFFF
00017bf8  LDR             R7, [SP,#4+arg_0]
00017bfc  BEQ             locret_17DAC
00017c00  LDR             R11, =(start - 0x17C10)
00017c04  MOV             R4, R1
00017c08  ADD             R11, PC, R11; start
00017c0c  ADD             R10, R9, #0x80
00017c10  B               loc_17D88
00017c14  ADD             R4, R4, #1
00017c18  LDRB            R0, [R4]
00017c1c  CMP             R0, #0xA
00017c20  CMPNE           R0, #0xD
00017c24  BEQ             loc_17C14
00017c28  LDRB            R0, [R4]
00017c2c  CMP             R0, #0
00017c30  BNE             loc_17C4C
00017c34  MOV             R3, #0
00017c38  MOV             R2, #0
00017c3c  MOV             R1, #2
00017c40  MOV             R0, R7
00017c44  BLX             R5
00017c48  B               loc_17DA8
00017c4c  LDR             R0, [R11,#(dword_8 - 0xC)]
00017c50  MOV             R1, #0x3A ; ':'
00017c54  LDR             R2, [R0,#0x18]
00017c58  MOV             R0, R4
00017c5c  BLX             R2
00017c60  MOV             R8, R0
00017c64  LDR             R0, [R11,#(dword_8 - 0xC)]
00017c68  MOV             R1, #0xA
00017c6c  LDR             R2, [R0,#0x18]
00017c70  MOV             R0, R4
00017c74  BLX             R2
00017c78  MOV             R6, R0
00017c7c  CMP             R8, #0
00017c80  BEQ             loc_17CA0
00017c84  CMP             R6, #0
00017c88  CMPNE           R8, R6
00017c8c  BLS             loc_17CC0
00017c90  MOV             R3, #0
00017c94  MOV             R2, #0
00017c98  MOV             R1, #1
00017c9c  B               loc_17D20
00017ca0  CMP             R6, #0
00017ca4  BNE             loc_17C90
00017ca8  MOV             R3, #0
00017cac  MOV             R2, #0
00017cb0  MOV             R1, #2
00017cb4  MOV             R0, R7
00017cb8  BLX             R5
00017cbc  B               loc_17DA8
00017cc0  SUB             R3, R8, R4
00017cc4  MOV             R2, R4
00017cc8  MOV             R1, #0x80
00017ccc  MOV             R0, R9
00017cd0  BL              sub_270A4
00017cd4  LDR             R0, [R11,#(dword_8 - 0xC)]
00017cd8  ADD             R4, R8, #1
00017cdc  LDR             R2, [R0,#0x18]
00017ce0  MOV             R0, R4
00017ce4  MOV             R1, #0xA
00017ce8  BLX             R2
00017cec  MOVS            R6, R0
00017cf0  BEQ             loc_17D2C
00017cf4  LDRB            R0, [R6,#-1]
00017cf8  SUB             R3, R6, R4
00017cfc  MOV             R2, R4
00017d00  CMP             R0, #0xD
00017d04  SUBEQ           R3, R3, #1
00017d08  MOV             R0, R10
00017d0c  MOV             R1, #0x200
00017d10  BL              sub_270A4
00017d14  MOV             R3, R10
00017d18  MOV             R2, R9
00017d1c  MOV             R1, #0
00017d20  MOV             R0, R7
00017d24  BLX             R5
00017d28  B               loc_17D84
00017d2c  LDR             R0, [R11,#(dword_8 - 0xC)]
00017d30  LDR             R1, [R0,#0x14]
00017d34  MOV             R0, R4
00017d38  BLX             R1
00017d3c  CMP             R0, #0
00017d40  BEQ             loc_17D6C
00017d44  MOV             R3, R0
00017d48  MOV             R0, R10
00017d4c  MOV             R2, R4
00017d50  MOV             R1, #0x200
00017d54  BL              sub_270A4
00017d58  MOV             R3, R10
00017d5c  MOV             R2, R9
00017d60  MOV             R1, #0
00017d64  MOV             R0, R7
00017d68  BLX             R5
00017d6c  MOV             R3, #0
00017d70  MOV             R2, #0
00017d74  MOV             R1, #2
00017d78  MOV             R0, R7
00017d7c  BLX             R5
00017d80  B               loc_17DA8
00017d84  ADD             R4, R6, #1
00017d88  LDRB            R0, [R4]
00017d8c  CMP             R0, #0
00017d90  BNE             loc_17C18
00017d94  MOV             R3, #0
00017d98  MOV             R2, #0
00017d9c  MOV             R1, #2
00017da0  MOV             R0, R7
00017da4  BLX             R5
00017da8  MOV             R0, #0
00017dac  POP             {R3-R11,PC}
