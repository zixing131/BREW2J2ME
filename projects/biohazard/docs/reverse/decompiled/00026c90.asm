00026c90  PUSH            {R3-R5,LR}
00026c94  LDR             R1, [R0,#0xE0]
00026c98  MOV             R5, R0
00026c9c  BL              sub_1058
00026ca0  LDR             R1, [R0,#0x9C]
00026ca4  MOV             R4, R0
00026ca8  CMP             R1, #0
00026cac  ADDNE           R0, R4, #0x94
00026cb0  BLXNE           R1
00026cb4  LDR             R1, [R4,#0xB8]
00026cb8  CMP             R1, #0
00026cbc  ADDNE           R0, R4, #0xB0
00026cc0  BLXNE           R1
00026cc4  LDR             R0, [R5]
00026cc8  MOV             R2, R5
00026ccc  LDR             R1, [R0]
00026cd0  LDR             R3, [R1,#0x30]
00026cd4  LDR             R1, =(sub_26D18 - 0x26CE0)
00026cd8  ADD             R1, PC, R1; sub_26D18
00026cdc  BLX             R3
00026ce0  LDR             R0, [R4,#0x90]
00026ce4  MOV             R5, #0
00026ce8  CMP             R0, #0
00026cec  BEQ             loc_26CF8
00026cf0  BL              sub_14314
00026cf4  STR             R5, [R4,#0x90]
00026cf8  LDR             R0, [R4,#0x8C]
00026cfc  CMP             R0, #0
00026d00  BEQ             loc_26D0C
00026d04  BL              sub_14314
00026d08  STR             R5, [R4,#0x8C]
00026d0c  STR             R5, [R4,#0x180]
00026d10  POP             {R3-R5,PC}
