00007c60  PUSH            {R4-R9,LR}
00007c64  LDR             R8, =(start - 0x7C80)
00007c68  SUB             SP, SP, #0x2C
00007c6c  MOV             R9, R0
00007c70  MOV             R7, R1
00007c74  MOV             R5, R3
00007c78  ADD             R8, PC, R8; start
00007c7c  LDR             R4, [SP,#0x2C+arg_8]
00007c80  LDR             R0, [R8,#(dword_8 - 0xC)]
00007c84  ADR             LR, loc_7C90
00007c88  LDR             R0, [R0,#0xC0]
00007c8c  BX              R0
00007c90  LDR             R0, [R0,#0x28]
00007c94  CMP             R5, #0
00007c98  LDR             R6, [R0,#0x64]
00007c9c  BEQ             loc_7DDC
00007ca0  LDR             R0, [R8,#(dword_8 - 0xC)]
00007ca4  MOV             R2, #8
00007ca8  LDR             R3, [R0,#4]
00007cac  ADD             R0, SP, #0x2C+var_8
00007cb0  MOV             R1, #0
00007cb4  MOV             LR, PC
00007cb8  BX              R3
00007cbc  LDRH            R0, [SP,#0x2C+arg_4]
00007cc0  MOV             R2, #1
00007cc4  MOV             R1, #0
00007cc8  STRH            R0, [SP,#0x2C+var_4]
00007ccc  LDRSH           R0, [SP,#0x2C+var_8]
00007cd0  ADD             R8, SP, #0x2C+var_1C
00007cd4  MOV             R3, #0
00007cd8  STM             R8, {R0-R2,R4}
00007cdc  MOV             R2, #0
00007ce0  STMFA           SP, {R1-R3}
00007ce4  STR             R5, [SP,#0x2C+var_2C]
00007ce8  LDRSH           R2, [SP,#0x2C+var_6]
00007cec  ADD             R3, SP, #0x2C+var_8
00007cf0  MOV             R1, R7
00007cf4  MOV             R0, R6
00007cf8  BL              sub_98BC
00007cfc  STR             R0, [SP,#0x2C+var_C]
00007d00  LDRH            R0, [SP,#0x2C+var_C+2]
00007d04  LDRSH           R1, [SP,#0x2C+arg_6]
00007d08  ADD             R0, R0, #0xC
00007d0c  MOV             R0, R0,LSL#16
00007d10  MOV             R0, R0,ASR#16
00007d14  CMP             R1, R0
00007d18  BLE             loc_7D58
00007d1c  LDRSH           R0, [SP,#0x2C+arg_0]
00007d20  MOV             R2, #1
00007d24  MOV             R1, #0
00007d28  ADD             R8, SP, #0x2C+var_1C
00007d2c  STM             R8, {R0-R2,R4}
00007d30  MOV             R2, #0
00007d34  MOV             R3, #0
00007d38  STMFA           SP, {R1-R3}
00007d3c  STR             R5, [SP,#0x2C+var_2C]
00007d40  LDRH            R0, [SP,#0x2C+arg_2]
00007d44  ADD             R3, SP, #0x2C+arg_0
00007d48  ADD             R0, R0, #1
00007d4c  MOV             R2, R0,LSL#16
00007d50  MOV             R2, R2,ASR#16
00007d54  B               loc_7DD0
00007d58  LDRSH           R1, [SP,#0x2C+arg_6]
00007d5c  ADD             R1, R1, R0
00007d60  ADD             R0, R4, #0xC
00007d64  MOV             R8, R0
00007d68  BL              sub_104
00007d6c  LDR             R1, [R9,#0x140]
00007d70  ADD             R0, R0, #1
00007d74  MOV             R1, R1,LSR#3
00007d78  BL              sub_1DC
00007d7c  LDRH            R0, [SP,#0x2C+arg_2]
00007d80  LDRH            R2, [SP,#0x2C+arg_6]
00007d84  MUL             R1, R8, R1
00007d88  ADD             R0, R0, R2
00007d8c  SUB             R0, R0, R4
00007d90  SUB             R0, R0, #0xC
00007d94  SUB             R0, R0, R1
00007d98  ADD             R0, R0, #1
00007d9c  MOV             LR, R0,LSL#16
00007da0  LDRSH           R0, [SP,#0x2C+arg_0]
00007da4  MOV             R1, #0
00007da8  MOV             R2, #1
00007dac  ADD             R8, SP, #0x2C+var_1C
00007db0  STM             R8, {R0-R2,R4}
00007db4  MOV             R2, #0
00007db8  MOV             R3, #0
00007dbc  STMFA           SP, {R1-R3}
00007dc0  MOV             LR, LR,ASR#16
00007dc4  MOV             R2, LR
00007dc8  STR             R5, [SP,#0x2C+var_2C]
00007dcc  ADD             R3, SP, #0x2C+arg_0
00007dd0  MOV             R1, R7
00007dd4  MOV             R0, R6
00007dd8  BL              sub_98BC
00007ddc  ADD             SP, SP, #0x2C ; ','
00007de0  POP             {R4-R9,LR}
00007de4  BX              LR
