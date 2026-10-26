00024d28  LDR             R3, [R0,#0x38]
00024d2c  LDRH            R12, [R3,#8]
00024d30  CMP             R12, R1
00024d34  MOVLS           R0, #0
00024d38  BXLS            LR
00024d3c  STRH            R1, [R0,#0x48]
00024d40  LDR             R3, [R3]
00024d44  ADD             R1, R1, R1,LSL#1
00024d48  ADD             R1, R3, R1,LSL#3
00024d4c  STR             R1, [R0,#0x44]
00024d50  MOV             R1, #0
00024d54  STRH            R1, [R0,#0x4A]
00024d58  MOV             R3, #1
00024d5c  STRH            R3, [R0,#0x3C]
00024d60  STR             R2, [R0,#0x4C]
00024d64  STRB            R1, [R0,#0x50]
00024d68  STRB            R1, [R0,#0x51]
00024d6c  STRH            R1, [R0,#0x3E]
00024d70  STRB            R1, [R0,#5]
00024d74  MOV             R0, #1
00024d78  BX              LR
