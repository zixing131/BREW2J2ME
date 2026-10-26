00014bdc  PUSH            {R2-R6,LR}
00014be0  MOV             R5, R1
00014be4  MOVS            R4, R0
00014be8  CMPNE           R5, #0
00014bec  CMPNE           R2, #0
00014bf0  CMPNE           R3, #0
00014bf4  MOVEQ           R0, #1
00014bf8  BEQ             locret_14C94
00014bfc  MOV             R0, R4
00014c00  BL              sub_14A90
00014c04  CMP             R0, #0
00014c08  MOVNE           R0, #0xD
00014c0c  BNE             locret_14C94
00014c10  STR             R2, [R4,#0x10C]
00014c14  LDR             R6, =(start - 0x14C24)
00014c18  STR             R3, [R4,#0x110]
00014c1c  ADD             R6, PC, R6; start
00014c20  LDR             R0, [R5,#0x10]
00014c24  CMP             R0, #0
00014c28  BNE             loc_14C98
00014c2c  MOV             R0, R4
00014c30  BL              sub_23F64
00014c34  CMP             R0, #2
00014c38  BNE             loc_14C98
00014c3c  LDR             R0, [R6,#(dword_8 - 0xC)]
00014c40  LDR             R2, =(aIsmsbillingC - 0x14C50); "ismsbilling.c"
00014c44  MOV             R3, #0x128
00014c48  ADD             R2, PC, R2; "ismsbilling.c"
00014c4c  LDR             R12, [R0,#0x9C]
00014c50  LDR             R0, =(aDbgprintfDSD - 0x14C60); "*dbgprintf-%d* %s:%d"
00014c54  MOV             R1, #4
00014c58  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
00014c5c  BLX             R12
00014c60  LDR             R0, [R6,#(dword_8 - 0xC)]
00014c64  LDR             R1, [R0,#0x9C]
00014c68  LDR             R0, =(aRoamingOutside - 0x14C74); "Roaming OutSide China"
00014c6c  ADD             R0, PC, R0; "Roaming OutSide China"
00014c70  BLX             R1
00014c74  MOV             R3, #0
00014c78  STR             R3, [SP,#8+var_8]
00014c7c  STR             R3, [SP,#8+var_4]
00014c80  MOV             R2, #0
00014c84  LDR             R1, =0x3EE
00014c88  MOV             R0, R4
00014c8c  BL              sub_21CCC
00014c90  LDR             R0, =0x3EE
00014c94  POP             {R2-R6,PC}
00014c98  LDR             R0, [R5]
00014c9c  CMP             R0, #2
00014ca0  BCS             loc_14D10
00014ca4  STR             R0, [R4,#0x114]
00014ca8  LDR             R0, [R5,#4]
00014cac  STR             R0, [R4,#0x118]
00014cb0  LDR             R1, [R6,#(dword_8 - 0xC)]
00014cb4  LDR             R0, [R5,#8]
00014cb8  LDR             R1, [R1,#0x30]
00014cbc  BLX             R1
00014cc0  CMP             R0, #0x28 ; '('
00014cc4  BGT             loc_14D10
00014cc8  LDR             R0, [R6,#(dword_8 - 0xC)]
00014ccc  LDR             R1, [R5,#8]
00014cd0  LDR             R3, [R0,#0x154]
00014cd4  ADD             R0, R4, #0x11C
00014cd8  MOV             R2, #0x29 ; ')'
00014cdc  BLX             R3
00014ce0  LDR             R0, [R5,#0xC]
00014ce4  STR             R0, [R4,#0x170]
00014ce8  LDR             R0, [R5,#0x10]
00014cec  STR             R0, [R4,#0x174]
00014cf0  LDR             R0, [R5,#0x14]
00014cf4  STR             R0, [R4,#0x178]
00014cf8  LDR             R1, [R6,#(dword_8 - 0xC)]
00014cfc  LDR             R0, [R5,#0x18]
00014d00  LDR             R1, [R1,#0x30]
00014d04  BLX             R1
00014d08  CMP             R0, #0x3C ; '<'
00014d0c  BLE             loc_14D18
00014d10  MOV             R0, #0xE
00014d14  B               locret_14C94
00014d18  LDR             R0, [R6,#(dword_8 - 0xC)]
00014d1c  LDR             R1, [R5,#0x18]
00014d20  LDR             R3, [R0,#0x154]
00014d24  ADD             R0, R4, #0x17C
00014d28  MOV             R2, #0x3D ; '='
00014d2c  BLX             R3
00014d30  MOV             R5, #1
00014d34  STRB            R5, [R4,#0xD4]
00014d38  MOV             R0, R4
00014d3c  BL              sub_21884
00014d40  STRB            R5, [R4,#0xD5]
00014d44  MOV             R0, R4
00014d48  BL              sub_24574
00014d4c  CMP             R0, #0
00014d50  B               locret_14C94
