00026e2c  PUSH            {R4-R7,LR}
00026e30  SUB             SP, SP, #0x2C
00026e34  LDR             R1, [R0,#0xE0]
00026e38  MOV             R7, R2
00026e3c  MOV             R5, R0
00026e40  BL              sub_1058
00026e44  MOV             R4, R0
00026e48  LDR             R0, [R0,#0x8C]
00026e4c  CMP             R0, #0
00026e50  MOVEQ           R0, #3
00026e54  BEQ             loc_26F28
00026e58  LDR             R6, =(start - 0x26E64)
00026e5c  ADD             R6, PC, R6; start
00026e60  LDR             R0, [R4,#0x17C]
00026e64  CMP             R0, #0
00026e68  BNE             loc_26E8C
00026e6c  LDR             R0, [R6,#(dword_8 - 0xC)]
00026e70  LDR             R1, [R0,#0x68]
00026e74  MOV             R0, #0x7D0
00026e78  BLX             R1
00026e7c  STR             R0, [R4,#0x17C]
00026e80  CMP             R0, #0
00026e84  MOVEQ           R0, #2
00026e88  BEQ             loc_26F28
00026e8c  LDR             R0, [R6,#(dword_8 - 0xC)]
00026e90  LDR             R2, =(aAcceptXMethodG - 0x26E9C); "Accept: */*\r\nX-Method: GET\r\n"
00026e94  ADD             R2, PC, R2; "Accept: */*\r\nX-Method: GET\r\n"
00026e98  LDR             R3, [R0,#0x144]
00026e9c  ADD             R0, R4, #0xD8
00026ea0  MOV             R6, R0
00026ea4  MOV             R1, #0xA0
00026ea8  BLX             R3
00026eac  LDR             R0, =(sub_26068 - 0x26EB8)
00026eb0  ADD             R0, PC, R0; sub_26068
00026eb4  STR             R0, [R4,#0xA4]
00026eb8  STR             R5, [R4,#0xA8]
00026ebc  LDR             R0, =(sub_26F4C - 0x26ED8)
00026ec0  LDR             R1, =0x20001
00026ec4  STRB            R7, [R4,#0xD0]
00026ec8  MOV             R3, #0
00026ecc  MOV             R2, #0x10
00026ed0  ADD             R0, PC, R0; sub_26F4C
00026ed4  ADD             R7, SP, #0x2C+var_10
00026ed8  STM             R7, {R0-R3}
00026edc  LDR             R2, =(nullsub_3 - 0x26EEC)
00026ee0  ADD             R3, R1, #2
00026ee4  ADD             R2, PC, R2; nullsub_3
00026ee8  ADD             R1, R1, #3
00026eec  ADD             R0, SP, #0x2C+var_1C
00026ef0  STM             R0, {R1-R3}
00026ef4  LDR             R3, =0x10002
00026ef8  STR             R6, [SP,#0x2C+var_20]
00026efc  ADD             R1, R3, #0x10000
00026f00  STMEA           SP, {R1,R5}
00026f04  STR             R3, [SP,#0x2C+var_24]
00026f08  LDR             R0, [R4,#0x8C]
00026f0c  LDR             R3, [R4,#0xD4]
00026f10  LDR             R1, [R0]
00026f14  ADD             R2, R4, #0x94
00026f18  LDR             R12, [R1,#0x18]
00026f1c  ADD             R1, R4, #0x90
00026f20  BLX             R12
00026f24  MOV             R0, #0
00026f28  ADD             SP, SP, #0x2C ; ','
00026f2c  POP             {R4-R7,PC}
