0001ece8  PUSH            {R4-R8,LR}
0001ecec  SUB             R12, R1, #0x100
0001ecf0  SUBS            R12, R12, #2
0001ecf4  MOV             R5, R0
0001ecf8  BNE             loc_1EE9C
0001ecfc  ADD             R4, R5, #0x100
0001ed00  LDRH            R0, [R4,#0x4A]
0001ed04  MOV             R6, #0
0001ed08  MOV             R8, #1
0001ed0c  CMP             R0, #1
0001ed10  BNE             loc_1ED2C
0001ed14  LDRSH           R1, [R4,#0x4C]
0001ed18  CMP             R1, #0
0001ed1c  STRHLE          R6, [R4,#0x48]
0001ed20  STRBLE          R8, [R4,#0xC]
0001ed24  MOVLE           R0, #0
0001ed28  BLE             loc_1EEA0
0001ed2c  SUBS            R12, R2, #0xE000
0001ed30  SUBSGE          R12, R12, #0x33 ; '3'
0001ed34  BEQ             loc_1ED88
0001ed38  BGT             loc_1ED4C
0001ed3c  SUB             R12, R2, #0xE000
0001ed40  SUBS            R12, R12, #0x21 ; '!'
0001ed44  BNE             loc_1EE9C
0001ed48  B               loc_1ED70
0001ed4c  SUB             R12, R2, #0xE000
0001ed50  SUBS            R12, R12, #0x34 ; '4'
0001ed54  BEQ             loc_1ED98
0001ed58  SUB             R12, R2, #0xE000
0001ed5c  SUBS            R12, R12, #0x36 ; '6'
0001ed60  BEQ             loc_1EDC0
0001ed64  SUB             R12, R2, #0xE000
0001ed68  SUBS            R12, R12, #0x37 ; '7'
0001ed6c  BNE             loc_1EE9C
0001ed70  CMP             R0, #6
0001ed74  CMPNE           R0, #5
0001ed78  CMPNE           R0, #1
0001ed7c  CMPNE           R0, #4
0001ed80  BNE             loc_1EE9C
0001ed84  B               loc_1EE24
0001ed88  CMP             R0, #1
0001ed8c  CMPNE           R0, #5
0001ed90  BNE             loc_1EE9C
0001ed94  B               loc_1EDA4
0001ed98  CMP             R0, #1
0001ed9c  CMPNE           R0, #5
0001eda0  BNE             loc_1EE9C
0001eda4  LDRSH           R0, [R4,#0x4E]
0001eda8  ADD             R0, R0, #1
0001edac  ADD             R1, R0, R0,LSR#31
0001edb0  MOV             R1, R1,ASR#1
0001edb4  SUB             R0, R0, R1,LSL#1
0001edb8  STRH            R0, [R4,#0x4E]
0001edbc  B               loc_1EE9C
0001edc0  LDRSH           R0, [R4,#0x4A]
0001edc4  LDR             R7, =(start - 0x1EDD0)
0001edc8  ADD             R7, PC, R7; start
0001edcc  CMP             R0, #1
0001edd0  BEQ             loc_1EE18
0001edd4  CMP             R0, #5
0001edd8  BNE             loc_1EE9C
0001eddc  LDR             R0, [R7,#(dword_8 - 0xC)]
0001ede0  ADR             LR, loc_1EDEC
0001ede4  LDR             R0, [R0,#0xC0]
0001ede8  BX              R0
0001edec  LDR             R5, [R0,#0x54]
0001edf0  LDR             R0, [R7,#(dword_8 - 0xC)]
0001edf4  LDR             R0, [R0,#0xC0]
0001edf8  MOV             LR, PC
0001edfc  BX              R0
0001ee00  LDRH            R1, [R4,#0x4E]
0001ee04  MOV             R2, R5
0001ee08  RSBS            R1, R1, #1
0001ee0c  MOVCC           R1, #0
0001ee10  BL              sub_24C64
0001ee14  B               loc_1EE24
0001ee18  LDRH            R0, [R4,#0x4E]
0001ee1c  CMP             R0, #1
0001ee20  BNE             loc_1EE2C
0001ee24  STRH            R6, [R4,#0x48]
0001ee28  B               loc_1EE9C
0001ee2c  LDR             R0, [R5,#0x110]
0001ee30  ADR             LR, loc_1EE5C
0001ee34  LDR             R0, [R0]
0001ee38  LDRH            R1, [R0,#0x2C]!
0001ee3c  SUB             R1, R1, #1
0001ee40  STRH            R1, [R0]
0001ee44  LDRH            R0, [R4,#0x4C]
0001ee48  SUB             R0, R0, #1
0001ee4c  STRH            R0, [R4,#0x4C]
0001ee50  LDR             R0, [R7,#(dword_8 - 0xC)]
0001ee54  LDR             R0, [R0,#0xC0]
0001ee58  BX              R0
0001ee5c  MOV             R1, #8
0001ee60  BL              sub_24190
0001ee64  LDR             R0, [R5,#0x110]
0001ee68  ADR             LR, loc_1EE7C
0001ee6c  STRB            R8, [R0,#0x20]
0001ee70  LDR             R0, [R7,#(dword_8 - 0xC)]
0001ee74  LDR             R0, [R0,#0xC0]
0001ee78  BX              R0
0001ee7c  LDR             R0, [R0,#0x760]
0001ee80  MOV             R3, #0
0001ee84  STRB            R6, [R0,#0x234]
0001ee88  STRH            R6, [R4,#0x48]
0001ee8c  LDR             R0, [R5,#0x118]
0001ee90  LDR             R2, =0x23F3
0001ee94  MOV             R1, #0
0001ee98  BL              sub_E00
0001ee9c  MOV             R0, #1
0001eea0  POP             {R4-R8,LR}
0001eea4  BX              LR
