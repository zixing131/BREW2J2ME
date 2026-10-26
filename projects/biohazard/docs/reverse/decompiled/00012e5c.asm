00012e5c  PUSH            {R3,LR}
00012e60  MOV             R2, #0
00012e64  STRH            R2, [SP,#4+var_4]
00012e68  CMP             R1, #0
00012e6c  MOVGE           R2, #0x21C
00012e70  LDRSHGE         R2, [R2,R0]
00012e74  CMPGE           R2, R1
00012e78  BLE             loc_12F24
00012e7c  ADD             R1, R0, R1,LSL#3
00012e80  LDRB            R2, [R1,#0x21F]
00012e84  LDR             R0, [R0,#0x10]
00012e88  ADD             R2, R2, R2,LSL#3
00012e8c  ADD             R0, R0, R2,LSL#3
00012e90  LDRH            R2, [R0,#6]
00012e94  LDRH            R3, [R0,#0xE]
00012e98  ADD             R2, R2, R3
00012e9c  LDRH            R3, [R0,#0x16]
00012ea0  ADD             R2, R2, R3
00012ea4  LDRH            R3, [R0,#0x26]
00012ea8  LDRH            R0, [R0,#0x2E]
00012eac  ADD             R2, R2, R3
00012eb0  ADD             R0, R2, R0
00012eb4  STRH            R0, [SP,#4+var_4]
00012eb8  LDRSH           R0, [SP,#4+var_4]
00012ebc  CMP             R0, #0
00012ec0  MOVLE           R0, #0xFFFFFFFF
00012ec4  BLE             loc_12F28
00012ec8  LDRB            R0, [R1,#0x220]
00012ecc  LDRB            R2, [R1,#0x221]
00012ed0  ADD             R0, R0, R2
00012ed4  LDRB            R2, [R1,#0x222]
00012ed8  ADD             R0, R0, R2
00012edc  LDRB            R2, [R1,#0x223]
00012ee0  LDRB            R1, [R1,#0x224]
00012ee4  ADD             R0, R0, R2
00012ee8  ADD             R1, R0, R1
00012eec  MOV             R0, #0x64 ; 'd'
00012ef0  MUL             R1, R0, R1
00012ef4  LDRSH           R0, [SP,#4+var_4]
00012ef8  BL              sub_104
00012efc  STRH            R0, [SP,#4+var_4]
00012f00  LDRSH           R0, [SP,#4+var_4]
00012f04  CMP             R0, #0x64 ; 'd'
00012f08  MOVGE           R0, #0x64 ; 'd'
00012f0c  BGE             loc_12F20
00012f10  LDRSH           R0, [SP,#4+var_4]
00012f14  CMP             R0, #0
00012f18  LDRSHGT         R0, [SP,#4+var_4]
00012f1c  MOVLE           R0, #0
00012f20  STRH            R0, [SP,#4+var_4]
00012f24  LDRSH           R0, [SP,#4+var_4]
00012f28  POP             {R3,LR}
00012f2c  BX              LR
