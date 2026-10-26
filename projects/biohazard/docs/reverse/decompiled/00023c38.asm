00023c38  PUSH            {R3-R9,LR}
00023c3c  LDR             R1, [R0,#0x898]
00023c40  MOV             R4, R0
00023c44  CMP             R1, #0
00023c48  BEQ             loc_23DAC
00023c4c  LDR             R0, [R4,#0x8A8]
00023c50  LDR             R2, [R4,#0x828]
00023c54  CMP             R0, R2
00023c58  LDREQ           R2, [R4,#0x8AC]
00023c5c  LDREQ           R3, [R4,#0x82C]
00023c60  CMPEQ           R2, R3
00023c64  BEQ             loc_23DAC
00023c68  LDR             R5, [R1,#0x28]
00023c6c  LDRH            R2, [R1]
00023c70  LDRH            R1, [R1,#2]
00023c74  MOV             R7, #0x10
00023c78  MOV             R8, R2,LSL#1
00023c7c  MOV             R9, R1,LSL#1
00023c80  SUB             R1, R0, #8
00023c84  MOV             R0, R7
00023c88  BL              sub_104
00023c8c  MOV             R6, R0
00023c90  LDR             R0, [R4,#0x8AC]
00023c94  SUB             R1, R0, #8
00023c98  MOV             R0, R7
00023c9c  BL              sub_104
00023ca0  CMP             R6, #0
00023ca4  BLT             loc_23D14
00023ca8  SUB             R1, R8, #1
00023cac  CMP             R6, R1
00023cb0  BGE             loc_23D14
00023cb4  CMP             R0, #0
00023cb8  BLT             loc_23D14
00023cbc  SUB             R1, R9, #1
00023cc0  CMP             R0, R1
00023cc4  BGE             loc_23D14
00023cc8  LDR             R1, [R5,R0,LSL#2]
00023ccc  LDRB            R2, [R1,R6]!
00023cd0  BIC             R2, R2, #8
00023cd4  STRB            R2, [R1]
00023cd8  LDR             R1, [R5,R0,LSL#2]
00023cdc  ADD             R1, R1, R6
00023ce0  LDRB            R2, [R1,#1]!
00023ce4  BIC             R2, R2, #8
00023ce8  STRB            R2, [R1]
00023cec  ADD             R1, R5, R0,LSL#2
00023cf0  LDR             R0, [R1,#4]
00023cf4  LDRB            R2, [R0,R6]!
00023cf8  BIC             R2, R2, #8
00023cfc  STRB            R2, [R0]
00023d00  LDR             R0, [R1,#4]
00023d04  ADD             R0, R0, R6
00023d08  LDRB            R1, [R0,#1]!
00023d0c  BIC             R1, R1, #8
00023d10  STRB            R1, [R0]
00023d14  LDR             R0, [R4,#0x828]
00023d18  SUB             R1, R0, #8
00023d1c  MOV             R0, R7
00023d20  BL              sub_104
00023d24  MOV             R6, R0
00023d28  LDR             R0, [R4,#0x82C]
00023d2c  SUB             R1, R0, #8
00023d30  MOV             R0, R7
00023d34  BL              sub_104
00023d38  CMP             R6, #0
00023d3c  BLT             loc_23DAC
00023d40  SUB             R1, R8, #1
00023d44  CMP             R6, R1
00023d48  BGE             loc_23DAC
00023d4c  CMP             R0, #0
00023d50  BLT             loc_23DAC
00023d54  SUB             R1, R9, #1
00023d58  CMP             R0, R1
00023d5c  BGE             loc_23DAC
00023d60  LDR             R1, [R5,R0,LSL#2]
00023d64  LDRB            R2, [R1,R6]!
00023d68  ORR             R2, R2, #8
00023d6c  STRB            R2, [R1]
00023d70  LDR             R1, [R5,R0,LSL#2]
00023d74  ADD             R1, R1, R6
00023d78  LDRB            R2, [R1,#1]!
00023d7c  ORR             R2, R2, #8
00023d80  STRB            R2, [R1]
00023d84  ADD             R1, R5, R0,LSL#2
00023d88  LDR             R0, [R1,#4]
00023d8c  LDRB            R2, [R0,R6]!
00023d90  ORR             R2, R2, #8
00023d94  STRB            R2, [R0]
00023d98  LDR             R0, [R1,#4]
00023d9c  ADD             R0, R0, R6
00023da0  LDRB            R1, [R0,#1]!
00023da4  ORR             R1, R1, #8
00023da8  STRB            R1, [R0]
00023dac  POP             {R3-R9,LR}
00023db0  BX              LR
