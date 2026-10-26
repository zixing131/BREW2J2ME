0001e974  PUSH            {R4-R6,LR}
0001e978  SUB             R12, R1, #0x100
0001e97c  SUBS            R12, R12, #2
0001e980  MOV             R4, R0
0001e984  BNE             loc_1EB9C
0001e988  ADD             R5, R4, #0x100
0001e98c  LDRH            R0, [R5,#0x22]
0001e990  MOV             R6, #0
0001e994  CMP             R0, #1
0001e998  BNE             loc_1E9C8
0001e99c  LDRSH           R3, [R4,#2]
0001e9a0  LDR             R1, [R4,#0x110]
0001e9a4  LDR             R1, [R1,#0x1C]
0001e9a8  ADD             R3, R4, R3,LSL#3
0001e9ac  LDRSH           R3, [R3,#6]
0001e9b0  CMP             R1, R3
0001e9b4  STRHLT          R6, [R5,#0x22]
0001e9b8  MOVLT           R0, #4
0001e9bc  STRBLT          R0, [R5,#0xC]
0001e9c0  MOVLT           R0, #0
0001e9c4  BLT             loc_1EBA0
0001e9c8  SUBS            R12, R2, #0xE000
0001e9cc  SUBSGE          R12, R12, #0x33 ; '3'
0001e9d0  BEQ             loc_1EA44
0001e9d4  BGT             loc_1EA10
0001e9d8  SUB             R12, R2, #0xE000
0001e9dc  SUBS            R12, R12, #0x21 ; '!'
0001e9e0  BEQ             loc_1EA34
0001e9e4  SUB             R12, R2, #0xE000
0001e9e8  SUBS            R12, R12, #0x31 ; '1'
0001e9ec  BEQ             loc_1EA64
0001e9f0  SUB             R12, R2, #0xE000
0001e9f4  SUBS            R12, R12, #0x32 ; '2'
0001e9f8  CMPEQ           R0, #0
0001e9fc  LDRSHEQ         R0, [R4,#2]
0001ea00  ADDEQ           R1, R0, #1
0001ea04  LDRSHEQ         R0, [R4]
0001ea08  BEQ             loc_1EA7C
0001ea0c  B               loc_1EB9C
0001ea10  SUB             R12, R2, #0xE000
0001ea14  SUBS            R12, R12, #0x34 ; '4'
0001ea18  BEQ             loc_1EA44
0001ea1c  SUB             R12, R2, #0xE000
0001ea20  SUBS            R12, R12, #0x36 ; '6'
0001ea24  BEQ             loc_1EA94
0001ea28  SUB             R12, R2, #0xE000
0001ea2c  SUBS            R12, R12, #0x37 ; '7'
0001ea30  BNE             loc_1EB9C
0001ea34  CMP             R0, #0
0001ea38  STRHEQ          R6, [R5,#0x48]
0001ea3c  BEQ             loc_1EB9C
0001ea40  B               loc_1EB98
0001ea44  CMP             R0, #1
0001ea48  LDRSHEQ         R0, [R5,#0x4E]
0001ea4c  ADDEQ           R0, R0, #1
0001ea50  ADDEQ           R1, R0, R0,LSR#31
0001ea54  MOVEQ           R1, R1,ASR#1
0001ea58  SUBEQ           R0, R0, R1,LSL#1
0001ea5c  STRHEQ          R0, [R5,#0x4E]
0001ea60  B               loc_1EB9C
0001ea64  CMP             R0, #0
0001ea68  BNE             loc_1EB9C
0001ea6c  LDRSH           R1, [R4,#2]
0001ea70  LDRSH           R0, [R4]
0001ea74  ADD             R1, R1, R0
0001ea78  SUB             R1, R1, #1
0001ea7c  BL              sub_104
0001ea80  STRH            R1, [R4,#2]
0001ea84  MOV             R0, R4
0001ea88  BL              sub_252A0
0001ea8c  STR             R6, [R4,#0x140]
0001ea90  B               loc_1EB9C
0001ea94  CMP             R0, #0
0001ea98  BNE             loc_1EAE4
0001ea9c  MOV             R0, #1
0001eaa0  STRH            R0, [R5,#0x22]
0001eaa4  STRH            R6, [R5,#0x4E]
0001eaa8  LDR             R0, [R4,#0x110]
0001eaac  LDR             R1, [R0,#0x1C]
0001eab0  LDRSH           R0, [R4,#2]
0001eab4  ADD             R2, R4, R0,LSL#3
0001eab8  LDRSH           R2, [R2,#6]
0001eabc  CMP             R1, R2
0001eac0  BLT             loc_1EB9C
0001eac4  CMP             R0, #3
0001eac8  LDRGE           R2, =0x242D
0001eacc  LDR             R0, [R4,#0x118]
0001ead0  MOV             R3, #0
0001ead4  MOV             R1, #0
0001ead8  LDRLT           R2, =0x242A
0001eadc  BL              sub_E00
0001eae0  B               loc_1EB9C
0001eae4  LDRH            R0, [R5,#0x4E]
0001eae8  CMP             R0, #0
0001eaec  BNE             loc_1EB98
0001eaf0  LDRSH           R2, [R4,#2]
0001eaf4  LDR             R0, [R4,#0x110]
0001eaf8  ADD             R2, R4, R2,LSL#3
0001eafc  LDRSH           R2, [R2,#6]
0001eb00  LDR             R1, [R0,#0x1C]!
0001eb04  SUB             R1, R1, R2
0001eb08  STR             R1, [R0]
0001eb0c  LDRSH           R0, [R4,#2]
0001eb10  LDR             R1, [R4,#0x110]
0001eb14  CMP             R0, #3
0001eb18  BGE             loc_1EB58
0001eb1c  ADD             R1, R1, #0x300
0001eb20  ADD             R1, R1, #0x22 ; '"'
0001eb24  ADD             R0, R4, R0,LSL#3
0001eb28  LDRH            R0, [R0,#8]
0001eb2c  LDRH            R2, [R1]
0001eb30  ADD             R0, R2, R0
0001eb34  STRH            R0, [R1]
0001eb38  LDR             R0, [R4,#0x110]
0001eb3c  ADD             R1, R0, #0x300
0001eb40  LDRSH           R0, [R1,#0x22]
0001eb44  SUBS            R12, R0, #0x300
0001eb48  SUBSGE          R12, R12, #0xE7
0001eb4c  LDRGE           R0, =0x3E7
0001eb50  STRH            R0, [R1,#0x22]
0001eb54  B               loc_1EB84
0001eb58  ADD             R0, R4, R0,LSL#3
0001eb5c  LDRSH           R0, [R0,#8]
0001eb60  LDR             R2, [R1,#0x24]!
0001eb64  ADD             R0, R2, R0
0001eb68  STR             R0, [R1]
0001eb6c  LDR             R1, [R4,#0x110]
0001eb70  LDR             R2, =0x1869F
0001eb74  LDR             R0, [R1,#0x24]
0001eb78  CMP             R0, R2
0001eb7c  MOVGE           R0, R2
0001eb80  STR             R0, [R1,#0x24]
0001eb84  MOV             R3, #0
0001eb88  LDR             R0, [R4,#0x118]
0001eb8c  LDR             R2, =0x242E
0001eb90  MOV             R1, #0
0001eb94  BL              sub_E00
0001eb98  STRH            R6, [R5,#0x22]
0001eb9c  MOV             R0, #1
0001eba0  POP             {R4-R6,LR}
0001eba4  BX              LR
