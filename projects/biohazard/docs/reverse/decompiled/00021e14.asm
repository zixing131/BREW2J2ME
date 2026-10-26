00021e14  PUSH            {R2-R8,LR}
00021e18  MOV             R5, R0
00021e1c  LDRH            R0, [R1]
00021e20  MOV             R8, R3
00021e24  MOV             R7, R1
00021e28  SUB             R12, R0, #0x500
00021e2c  SUBS            R12, R12, #0xB
00021e30  MOV             R4, R2
00021e34  BNE             locret_21F74
00021e38  LDR             R6, [R8]
00021e3c  MOV             R1, #8
00021e40  ADD             R0, R6, #2
00021e44  BL              sub_9D8
00021e48  STR             R0, [SP,#8+var_4]
00021e4c  ADD             R0, R6, #0xD
00021e50  MOV             R1, #8
00021e54  BL              sub_9D8
00021e58  STR             R0, [SP,#8+var_8]
00021e5c  LDRSH           R1, [R5,#0x7E]
00021e60  LDR             R2, [SP,#8+var_4]
00021e64  MOV             R12, #0
00021e68  CMP             R1, R2
00021e6c  BGT             locret_21F74
00021e70  LDRSH           R3, [R5,#0x82]
00021e74  ADD             R3, R1, R3
00021e78  CMP             R3, R2
00021e7c  BLE             locret_21F74
00021e80  LDRSH           R3, [R5,#0x80]
00021e84  CMP             R3, R0
00021e88  BGT             locret_21F74
00021e8c  LDRSH           LR, [R5,#0x84]
00021e90  ADD             R3, R3, LR
00021e94  CMP             R3, R0
00021e98  BLE             locret_21F74
00021e9c  SUB             R0, R2, R1
00021ea0  STR             R0, [SP,#8+var_4]
00021ea4  LDRSH           R0, [R5,#0x80]
00021ea8  LDR             R1, [SP,#8+var_8]
00021eac  SUB             R0, R1, R0
00021eb0  STR             R0, [SP,#8+var_8]
00021eb4  CMP             R0, #0x1D
00021eb8  BGE             loc_21EF4
00021ebc  LDR             R0, [SP,#8+var_4]
00021ec0  CMP             R0, #0x35 ; '5'
00021ec4  LDRLT           R0, =0xE021
00021ec8  BLT             loc_21F64
00021ecc  CMP             R0, #0x62 ; 'b'
00021ed0  LDRLT           R0, =0xE022
00021ed4  BLT             loc_21F64
00021ed8  CMP             R0, #0x8F
00021edc  LDRLT           R0, =0xE023
00021ee0  BLT             loc_21F64
00021ee4  CMP             R0, #0xBC
00021ee8  LDRGE           R0, =0xE025
00021eec  LDRLT           R0, =0xE024
00021ef0  B               loc_21F64
00021ef4  CMP             R0, #0x3A ; ':'
00021ef8  LDR             R0, [SP,#8+var_4]
00021efc  BGE             loc_21F34
00021f00  CMP             R0, #0x35 ; '5'
00021f04  LDRLT           R0, =0xE026
00021f08  BLT             loc_21F64
00021f0c  CMP             R0, #0x62 ; 'b'
00021f10  LDRLT           R0, =0xE027
00021f14  BLT             loc_21F64
00021f18  CMP             R0, #0x8F
00021f1c  LDRLT           R0, =0xE028
00021f20  BLT             loc_21F64
00021f24  CMP             R0, #0xBC
00021f28  LDRGE           R0, =0xE02A
00021f2c  LDRLT           R0, =0xE029
00021f30  B               loc_21F64
00021f34  CMP             R0, #0x2A ; '*'
00021f38  LDRLT           R0, =0xE02C
00021f3c  BLT             loc_21F64
00021f40  CMP             R0, #0x4C ; 'L'
00021f44  LDRLT           R0, =0xE02B
00021f48  BLT             loc_21F64
00021f4c  CMP             R0, #0x6E ; 'n'
00021f50  LDRLT           R0, =0xE045
00021f54  BLT             loc_21F64
00021f58  CMP             R0, #0xAB
00021f5c  LDRGE           R0, =0xE035
00021f60  LDRLT           R0, =0xE030
00021f64  STRH            R0, [R4]
00021f68  MOV             R0, #0x100
00021f6c  STRH            R0, [R7]
00021f70  STR             R12, [R8]
00021f74  POP             {R2-R8,PC}
