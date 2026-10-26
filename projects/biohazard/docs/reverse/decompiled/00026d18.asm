00026d18  PUSH            {R4,R5,LR}
00026d1c  SUB             SP, SP, #0x2C
00026d20  LDR             R1, [R0,#0xE0]
00026d24  MOV             R5, R0
00026d28  BL              sub_1058
00026d2c  MOV             R4, R0
00026d30  LDR             R0, [R0,#0x188]
00026d34  ADD             R1, R0, #1
00026d38  STR             R1, [R4,#0x188]
00026d3c  LDRB            R0, [R4,#0x18C]
00026d40  CMP             R0, #0
00026d44  MOVNE           R0, #0
00026d48  STRBNE          R0, [R4,#0x18C]
00026d4c  BNE             loc_26D84
00026d50  CMP             R1, #4
00026d54  BLT             loc_26D84
00026d58  MOV             R0, R5
00026d5c  BL              sub_25F94
00026d60  MOV             R3, #0
00026d64  STR             R3, [SP,#0x2C+var_2C]
00026d68  STR             R3, [SP,#0x2C+var_28]
00026d6c  MOV             R2, #0
00026d70  LDR             R1, =(off_3F0+1)
00026d74  MOV             R0, R5
00026d78  BL              sub_21CCC
00026d7c  ADD             SP, SP, #0x2C ; ','
00026d80  POP             {R4,R5,PC}
00026d84  MOV             R0, R5
00026d88  BL              sub_26C90
00026d8c  MOV             R0, R5
00026d90  BL              sub_26170
00026d94  CMP             R0, #0
00026d98  BNE             loc_26D7C
00026d9c  LDR             R0, =(sub_26068 - 0x26DA8)
00026da0  ADD             R0, PC, R0; sub_26068
00026da4  STR             R0, [R4,#0xA4]
00026da8  LDR             R0, =(sub_26F4C - 0x26DC4)
00026dac  LDR             R1, =0x20001
00026db0  STR             R5, [R4,#0xA8]
00026db4  MOV             R3, #0
00026db8  MOV             R2, #0x10
00026dbc  ADD             R0, PC, R0; sub_26F4C
00026dc0  ADD             R12, SP, #0x2C+var_10
00026dc4  STM             R12, {R0-R3}
00026dc8  LDR             R2, =(nullsub_3 - 0x26DD8)
00026dcc  ADD             R3, R1, #2
00026dd0  ADD             R2, PC, R2; nullsub_3
00026dd4  ADD             R1, R1, #3
00026dd8  ADD             R0, R4, #0xD8
00026ddc  ADD             R12, SP, #0x2C+var_20
00026de0  STM             R12, {R0-R3}
00026de4  LDR             R3, =0x10002
00026de8  ADD             R2, R4, #0x94
00026dec  ADD             R1, R3, #0x10000
00026df0  STMEA           SP, {R1,R5}
00026df4  STR             R3, [SP,#0x2C+var_24]
00026df8  LDR             R0, [R4,#0x8C]
00026dfc  LDR             R3, [R4,#0xD4]
00026e00  LDR             R1, [R0]
00026e04  LDR             R12, [R1,#0x18]
00026e08  ADD             R1, R4, #0x90
00026e0c  BLX             R12
00026e10  B               loc_26D7C
