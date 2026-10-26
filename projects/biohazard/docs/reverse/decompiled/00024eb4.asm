00024eb4  PUSH            {R0-R6,LR}
00024eb8  MOVS            R5, R0
00024ebc  MOV             R4, R1
00024ec0  CMPNE           R4, #0
00024ec4  MOVEQ           R0, #1
00024ec8  BEQ             loc_24F8C
00024ecc  LDR             R1, [R5,#0xE0]
00024ed0  MOV             R0, R5
00024ed4  BL              sub_1058
00024ed8  MOV             R6, R0
00024edc  LDR             R2, [R4,#0x24]
00024ee0  LDR             R0, [R0,#0xC]
00024ee4  MOV             R1, #0x8000
00024ee8  BL              sub_14568
00024eec  LDRSH           R1, [R4,#0x2C]
00024ef0  CMP             R1, R0
00024ef4  MOVGE           R0, #0
00024ef8  STRGE           R0, [R4,#8]
00024efc  BGE             loc_24F50
00024f00  SUB             R0, R0, R1
00024f04  STR             R0, [R4,#8]
00024f08  LDR             R0, [R4,#0x30]
00024f0c  CMP             R0, #0
00024f10  BNE             loc_24F34
00024f14  LDR             R2, [R4,#0x24]
00024f18  ADD             R3, R4, #0x30 ; '0'
00024f1c  STMEA           SP, {R2,R3}
00024f20  MOV             R3, #0xFF00
00024f24  LDR             R2, =0xC0DCC000
00024f28  MOV             R1, #0x8000
00024f2c  MOV             R0, R5
00024f30  BL              sub_D4F8
00024f34  LDR             R0, [R5]
00024f38  LDR             R1, [R4,#0xC]
00024f3c  LDR             R3, [R0]
00024f40  LDR             R2, [R4,#0x34]
00024f44  LDR             R12, [R3,#0x2C]
00024f48  MOV             R3, R5
00024f4c  BLX             R12
00024f50  LDR             R2, [R4,#0x1C]
00024f54  LDR             R0, [R6,#0xC]
00024f58  MOV             R1, #1
00024f5c  BL              sub_14594
00024f60  LDRSH           R0, [R4,#0x28]
00024f64  LDRSH           R1, [R4,#0x2A]
00024f68  LDR             R3, =0x8010
00024f6c  ADD             R2, R4, #0x28 ; '('
00024f70  STMEA           SP, {R0-R3}
00024f74  LDR             R2, [R4,#0x24]
00024f78  LDR             R0, [R6,#0xC]
00024f7c  MOV             R3, #0xFFFFFFFF
00024f80  MOV             R1, #0x8000
00024f84  BL              sub_1441C
00024f88  MOV             R0, #0
00024f8c  ADD             SP, SP, #0x10
00024f90  POP             {R4-R6,PC}
