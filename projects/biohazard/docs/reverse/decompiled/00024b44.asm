00024b44  PUSH            {R4-R7,LR}
00024b48  MOV             R6, R1
00024b4c  LDR             R1, [R0,#0xE0]
00024b50  SUB             SP, SP, #0x34
00024b54  MOV             R7, R2
00024b58  MOV             R5, R0
00024b5c  BL              sub_1058
00024b60  MOV             R4, R0
00024b64  LDR             R0, [R0,#0x194]
00024b68  CMP             R0, #0
00024b6c  BNE             loc_24B90
00024b70  LDR             R0, [R5]
00024b74  ADD             R2, R4, #0x194
00024b78  LDR             R1, [R0]
00024b7c  LDR             R3, [R1,#8]
00024b80  LDR             R1, =0x1005008
00024b84  BLX             R3
00024b88  CMP             R0, #0
00024b8c  BNE             loc_24C1C
00024b90  MOV             R0, #0x10000
00024b94  STMFA           SP, {R0,R6}
00024b98  ORR             R0, R0, R0,ASR#16
00024b9c  STR             R0, [SP,#0x34+var_28]
00024ba0  LDR             R0, =0x20003
00024ba4  STR             R7, [SP,#0x34+var_24]
00024ba8  STR             R0, [SP,#0x34+var_20]
00024bac  MOV             R0, #3
00024bb0  STR             R0, [SP,#0x34+var_1C]
00024bb4  LDR             R0, =0x2000C
00024bb8  STR             R0, [SP,#0x34+var_18]
00024bbc  MOV             R0, #2
00024bc0  STR             R0, [SP,#0x34+var_14]
00024bc4  MOV             R0, #0
00024bc8  STR             R0, [SP,#0x34+var_10]
00024bcc  LDR             R0, [R4,#0x194]
00024bd0  LDR             R1, [R0]
00024bd4  LDR             R2, [R1,#0xC]
00024bd8  ADD             R1, SP, #0x34+var_30
00024bdc  BLX             R2
00024be0  LDR             R0, [R4,#0x190]
00024be4  LDR             R1, [R4,#0x194]
00024be8  LDR             R2, [R0]
00024bec  ADD             R3, R4, #0x198
00024bf0  LDR             R12, [R2,#0xC]
00024bf4  ADD             R2, R4, #0x19C
00024bf8  BLX             R12
00024bfc  LDR             R0, [R5]
00024c00  MOV             R3, R5
00024c04  LDR             R1, [R0]
00024c08  LDR             R2, =(sub_19BE8 - 0x24C14)
00024c0c  ADD             R2, PC, R2; sub_19BE8
00024c10  LDR             R12, [R1,#0x2C]
00024c14  LDR             R1, =0x7530
00024c18  BLX             R12
00024c1c  ADD             SP, SP, #0x34 ; '4'
00024c20  POP             {R4-R7,PC}
