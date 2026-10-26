00014aa0  PUSH            {R3-R9,LR}
00014aa4  LDR             R7, =(start - 0x14AB4)
00014aa8  MOV             R4, R0
00014aac  ADD             R7, PC, R7; start
00014ab0  LDR             R0, [R7,#(dword_8 - 0xC)]
00014ab4  LDR             R8, =(aIsmsbillingC - 0x14AC8); "ismsbilling.c"
00014ab8  LDR             R3, =0x1BA
00014abc  LDR             R12, [R0,#0x9C]
00014ac0  ADD             R8, PC, R8; "ismsbilling.c"
00014ac4  LDR             R9, =(aDbgprintfDSD - 0x14AD8); "*dbgprintf-%d* %s:%d"
00014ac8  MOV             R2, R8
00014acc  MOV             R1, #4
00014ad0  ADD             R9, PC, R9; "*dbgprintf-%d* %s:%d"
00014ad4  MOV             R0, R9
00014ad8  BLX             R12
00014adc  LDR             R0, [R7,#(dword_8 - 0xC)]
00014ae0  LDR             R1, [R0,#0x9C]
00014ae4  LDR             R0, =(aIsmsbillingRes - 0x14AF0); "ISMSBilling_Reset begin"
00014ae8  ADD             R0, PC, R0; "ISMSBilling_Reset begin"
00014aec  BLX             R1
00014af0  CMP             R4, #0
00014af4  MOVEQ           R0, #1
00014af8  BEQ             locret_14BA4
00014afc  LDR             R1, [R4,#0xE0]
00014b00  MOV             R0, R4
00014b04  BL              sub_1058
00014b08  ADD             R1, R0, #0x4C ; 'L'
00014b0c  MOV             R5, R0
00014b10  MOV             R0, R4
00014b14  MOV             R6, R1
00014b18  BL              sub_24F9C
00014b1c  MOV             R1, R6
00014b20  MOV             R0, R4
00014b24  BL              sub_24E5C
00014b28  LDR             R0, [R4]
00014b2c  MOV             R2, R4
00014b30  LDR             R1, [R0]
00014b34  LDR             R3, [R1,#0x30]
00014b38  LDR             R1, =(sub_223D0 - 0x14B44)
00014b3c  ADD             R1, PC, R1; sub_223D0
00014b40  BLX             R3
00014b44  LDR             R1, [R5,#0x2C]
00014b48  CMP             R1, #0
00014b4c  ADDNE           R0, R5, #0x24 ; '$'
00014b50  BLXNE           R1
00014b54  MOV             R0, R4
00014b58  BL              sub_2408C
00014b5c  MOV             R0, R4
00014b60  BL              sub_25F94
00014b64  MOV             R0, #0
00014b68  STRB            R0, [R4,#0xD4]
00014b6c  STRB            R0, [R4,#0xD5]
00014b70  LDR             R0, [R7,#(dword_8 - 0xC)]
00014b74  LDR             R3, =0x1D5
00014b78  LDR             R12, [R0,#0x9C]
00014b7c  MOV             R0, R9
00014b80  MOV             R2, R8
00014b84  MOV             R1, #4
00014b88  BLX             R12
00014b8c  LDR             R0, [R7,#(dword_8 - 0xC)]
00014b90  LDR             R1, [R0,#0x9C]
00014b94  LDR             R0, =(aIsmsbillingRes_0 - 0x14BA0); "ISMSBilling_Reset end"
00014b98  ADD             R0, PC, R0; "ISMSBilling_Reset end"
00014b9c  BLX             R1
00014ba0  MOV             R0, #0
00014ba4  POP             {R3-R9,PC}
