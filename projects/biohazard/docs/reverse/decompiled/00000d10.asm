00000d10  PUSH            {R4-R7,LR}
00000d14  MOV             R4, R0
00000d18  ADD             R5, R4, #0x200
00000d1c  MOV             R7, R2
00000d20  LDRSH           R2, [R5,#0x1C]
00000d24  ADD             R6, R4, #0x300
00000d28  MOV             R0, #0
00000d2c  B               loc_D5C
00000d30  ADD             R3, R4, R0,LSL#3
00000d34  LDRB            R3, [R3,#0x21E]
00000d38  CMP             R3, R1
00000d3c  BNE             loc_D50
00000d40  CMP             R7, #0
00000d44  STRHNE          R0, [R6,#0x1E]
00000d48  POP             {R4-R7,LR}
00000d4c  BX              LR
00000d50  ADD             R0, R0, #1
00000d54  MOV             R0, R0,LSL#16
00000d58  MOV             R0, R0,ASR#16
00000d5c  CMP             R2, R0
00000d60  BGT             loc_D30
00000d64  ADD             R0, R2, #1
00000d68  CMP             R0, #0x20 ; ' '
00000d6c  BGT             loc_D48
00000d70  ADD             R0, R4, R2,LSL#3
00000d74  STRB            R1, [R0,#0x21E]
00000d78  MOV             R0, R4
00000d7c  BL              sub_12E0C
00000d80  LDRSH           R1, [R5,#0x1C]
00000d84  AND             R0, R0, #0xFF
00000d88  CMN             R0, #1
00000d8c  ADD             R1, R4, R1,LSL#3
00000d90  STRB            R0, [R1,#0x21F]
00000d94  LDRSH           R1, [R5,#0x1C]
00000d98  ADD             R1, R4, R1,LSL#3
00000d9c  BEQ             loc_D48
00000da0  MOV             R0, #0
00000da4  STRB            R0, [R1,#0x220]
00000da8  LDRSH           R1, [R5,#0x1C]
00000dac  CMP             R7, #0
00000db0  ADD             R1, R4, R1,LSL#3
00000db4  STRB            R0, [R1,#0x221]
00000db8  LDRSH           R1, [R5,#0x1C]
00000dbc  ADD             R1, R4, R1,LSL#3
00000dc0  STRB            R0, [R1,#0x222]
00000dc4  LDRSH           R1, [R5,#0x1C]
00000dc8  ADD             R1, R4, R1,LSL#3
00000dcc  STRB            R0, [R1,#0x223]
00000dd0  LDRSH           R1, [R5,#0x1C]
00000dd4  ADD             R1, R4, R1,LSL#3
00000dd8  STRB            R0, [R1,#0x224]
00000ddc  LDRSH           R1, [R5,#0x1C]
00000de0  ADD             R1, R4, R1,LSL#3
00000de4  STRB            R0, [R1,#0x225]
00000de8  LDRHNE          R0, [R5,#0x1C]
00000dec  STRHNE          R0, [R6,#0x1E]
00000df0  LDRH            R0, [R5,#0x1C]
00000df4  ADD             R0, R0, #1
00000df8  STRH            R0, [R5,#0x1C]
00000dfc  B               loc_D48
