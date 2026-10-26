00023e5c  PUSH            {R0-R11,LR}
00023e60  SUB             SP, SP, #4
00023e64  LDR             R0, [SP,#0x14+arg_8]
00023e68  ADD             R9, SP, #0x14+arg_0
00023e6c  LDM             R9, {R7,R9}
00023e70  MOV             R8, R3
00023e74  MOV             R6, R2
00023e78  MOV             R4, R1
00023e7c  CMN             R0, #1
00023e80  BNE             loc_23F54
00023e84  ADD             R0, R7, R7,LSR#31
00023e88  MOV             R5, R0,ASR#1
00023e8c  MOV             R0, R5
00023e90  BL              sub_3C
00023e94  ADD             R1, R5, R6
00023e98  ADD             R3, R4, R9
00023e9c  ADD             R2, R3, R5
00023ea0  MOV             R12, R6
00023ea4  ADD             R6, R6, R7
00023ea8  SUB             R3, R3, R5
00023eac  MOV             R1, R1,LSL#16
00023eb0  MUL             LR, R5, R5
00023eb4  ADD             R5, R4, R8
00023eb8  MOV             R1, R1,ASR#16
00023ebc  STR             R6, [SP,#0x14+var_14]
00023ec0  MOV             R0, R9
00023ec4  LDR             R10, =0xFFFF
00023ec8  B               loc_23F48
00023ecc  SUB             R7, R12, R1
00023ed0  MUL             R9, R7, R7
00023ed4  MOV             R6, R4
00023ed8  B               loc_23F34
00023edc  LDR             R7, [SP,#0x14+var_10]
00023ee0  CMP             R2, R6
00023ee4  LDR             R7, [R7,#0x14]
00023ee8  LDR             R7, [R7,R12,LSL#2]
00023eec  ADD             R7, R7, R6,LSL#1
00023ef0  BLT             loc_23F24
00023ef4  CMP             R3, R6
00023ef8  BGT             loc_23F24
00023efc  SUB             R8, R6, R4
00023f00  SUB             R8, R8, R0
00023f04  MLA             R11, R8, R8, R9
00023f08  CMP             R12, R1
00023f0c  BGT             loc_23F1C
00023f10  CMP             R11, LR
00023f14  BLE             loc_23F28
00023f18  B               loc_23F24
00023f1c  CMP             R11, LR
00023f20  BLE             loc_23F28
00023f24  STRH            R10, [R7]
00023f28  ADD             R6, R6, #1
00023f2c  MOV             R6, R6,LSL#16
00023f30  MOV             R6, R6,ASR#16
00023f34  CMP             R5, R6
00023f38  BGT             loc_23EDC
00023f3c  ADD             R12, R12, #1
00023f40  MOV             R12, R12,LSL#16
00023f44  MOV             R12, R12,ASR#16
00023f48  LDR             R6, [SP,#0x14+var_14]
00023f4c  CMP             R6, R12
00023f50  BGT             loc_23ECC
00023f54  ADD             SP, SP, #0x14
00023f58  POP             {R4-R11,LR}
00023f5c  BX              LR
