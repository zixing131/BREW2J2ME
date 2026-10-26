00026a28  PUSH            {R1-R7,LR}
00026a2c  LDR             R1, [R0,#0xE0]
00026a30  MOV             R6, R0
00026a34  BL              sub_1058
00026a38  MOV             R4, R0
00026a3c  LDR             R0, [R0,#0xCC]
00026a40  LDR             R1, [R4,#0x17C]
00026a44  LDR             R2, [R0]
00026a48  LDR             R3, [R2,#0xC]
00026a4c  MOV             R2, #0x7D0
00026a50  BLX             R3
00026a54  MOV             R5, R0
00026a58  CMN             R0, #2
00026a5c  LDREQ           R0, [R4,#0xCC]
00026a60  ADDEQ           R1, R4, #0xB0
00026a64  LDREQ           R2, [R0]
00026a68  LDREQ           R2, [R2,#0x10]
00026a6c  ADDEQ           SP, SP, #0xC
00026a70  POPEQ           {R4-R7,LR}
00026a74  MOVEQ           R12, R2
00026a78  BXEQ            R12
00026a7c  CMN             R0, #1
00026a80  BEQ             loc_26AC0
00026a84  CMP             R0, #0
00026a88  LDR             R0, [R4,#0x180]
00026a8c  BNE             loc_26BE0
00026a90  CMP             R0, #0
00026a94  BNE             loc_26AE0
00026a98  LDR             R0, [R6]
00026a9c  LDR             R2, =(sub_26D18 - 0x26AB0)
00026aa0  LDR             R1, [R0]
00026aa4  MOV             R3, R6
00026aa8  ADD             R2, PC, R2; sub_26D18
00026aac  LDR             R12, [R1,#0x2C]
00026ab0  ADD             SP, SP, #0xC
00026ab4  POP             {R4-R7,LR}
00026ab8  MOV             R1, #0x7D0
00026abc  BX              R12
00026ac0  MOV             R0, R6
00026ac4  BL              sub_25F94
00026ac8  MOV             R3, #0
00026acc  STR             R3, [SP,#0xC+var_C]
00026ad0  STR             R3, [SP,#0xC+var_8]
00026ad4  MOV             R2, #0
00026ad8  LDR             R1, =(off_3F0+1)
00026adc  B               loc_26BD4
00026ae0  LDR             R1, [R4,#0x184]
00026ae4  MOV             R2, #0
00026ae8  CMP             R0, R1
00026aec  LDRGE           R0, [R4,#0x178]
00026af0  ADDGE           R0, R0, R1
00026af4  STRBGE          R2, [R0,#-1]
00026af8  LDRGE           R0, [R4,#0x184]
00026afc  LDRLT           R1, [R4,#0x178]
00026b00  SUBGE           R0, R0, #1
00026b04  STRGE           R0, [R4,#0x180]
00026b08  STRBLT          R2, [R1,R0]
00026b0c  MOV             R0, R6
00026b10  BL              sub_26C90
00026b14  LDRB            R0, [R6,#0xD5]
00026b18  CMP             R0, #1
00026b1c  BNE             loc_26B50
00026b20  LDR             R1, [R4,#0x178]!
00026b24  LDR             R2, [R4,#8]
00026b28  MOV             R0, R6
00026b2c  BL              sub_2623C
00026b30  CMP             R0, #0
00026b34  BEQ             locret_26BDC
00026b38  MOV             R3, #0
00026b3c  STR             R3, [SP,#0xC+var_C]
00026b40  STR             R3, [SP,#0xC+var_8]
00026b44  MOV             R2, #0
00026b48  LDR             R1, =0x3F2
00026b4c  B               loc_26BD4
00026b50  CMP             R0, #4
00026b54  BNE             loc_26B88
00026b58  LDR             R1, [R4,#0x178]!
00026b5c  LDR             R2, [R4,#8]
00026b60  MOV             R0, R6
00026b64  BL              sub_26670
00026b68  CMP             R0, #0
00026b6c  BEQ             locret_26BDC
00026b70  MOV             R3, #0
00026b74  STR             R3, [SP,#0xC+var_C]
00026b78  STR             R3, [SP,#0xC+var_8]
00026b7c  MOV             R2, #0
00026b80  LDR             R1, =0x3F3
00026b84  B               loc_26BD4
00026b88  CMP             R0, #5
00026b8c  BNE             loc_26BC0
00026b90  LDR             R1, [R4,#0x178]!
00026b94  LDR             R2, [R4,#8]
00026b98  MOV             R0, R6
00026b9c  BL              sub_26734
00026ba0  CMP             R0, #0
00026ba4  BEQ             locret_26BDC
00026ba8  MOV             R3, #0
00026bac  STR             R3, [SP,#0xC+var_C]
00026bb0  STR             R3, [SP,#0xC+var_8]
00026bb4  MOV             R2, #0
00026bb8  MOV             R1, #0x3F4
00026bbc  B               loc_26BD4
00026bc0  MOV             R3, #0
00026bc4  LDR             R1, =unk_3EA
00026bc8  STR             R3, [SP,#0xC+var_C]
00026bcc  STR             R3, [SP,#0xC+var_8]
00026bd0  MOV             R2, #0
00026bd4  MOV             R0, R6
00026bd8  BL              sub_21CCC
00026bdc  POP             {R1-R7,PC}
00026be0  LDR             R7, =(start - 0x26BF0)
00026be4  ADD             R1, R0, R5
00026be8  ADD             R7, PC, R7; start
00026bec  LDR             R0, [R4,#0x184]
00026bf0  CMP             R1, R0
00026bf4  BLE             loc_26C1C
00026bf8  ADD             R6, R0, #0x7D0
00026bfc  LDR             R1, [R7,#(dword_8 - 0xC)]
00026c00  LDR             R0, [R4,#0x178]
00026c04  LDR             R2, [R1,#0x74]
00026c08  MOV             R1, R6
00026c0c  BLX             R2
00026c10  CMP             R0, #0
00026c14  STRNE           R0, [R4,#0x178]
00026c18  STRNE           R6, [R4,#0x184]
00026c1c  LDR             R0, [R4,#0x180]
00026c20  LDR             R2, [R4,#0x184]
00026c24  ADD             R1, R0, R5
00026c28  CMP             R1, R2
00026c2c  BGT             loc_26C58
00026c30  LDR             R1, [R4,#0x178]
00026c34  LDR             R2, [R7,#(dword_8 - 0xC)]
00026c38  ADD             R0, R1, R0
00026c3c  LDR             R1, [R4,#0x17C]
00026c40  LDR             R3, [R2]
00026c44  MOV             R2, R5
00026c48  BLX             R3
00026c4c  LDR             R0, [R4,#0x180]
00026c50  ADD             R0, R0, R5
00026c54  STR             R0, [R4,#0x180]
00026c58  LDR             R0, [R4,#0xCC]
00026c5c  ADD             R1, R4, #0xB0
00026c60  LDR             R2, [R0]
00026c64  LDR             R2, [R2,#0x10]
00026c68  ADD             SP, SP, #0xC
00026c6c  POP             {R4-R7,LR}
00026c70  MOV             R12, R2
00026c74  BX              R12
