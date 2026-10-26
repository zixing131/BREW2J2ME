00006e98  PUSH            {R0-R2,R4-R11,LR}
00006e9c  MOV             R7, R0
00006ea0  LDR             R0, [R0,#0x898]
00006ea4  MOV             R9, R1
00006ea8  LDR             R1, [R0,#0x18]
00006eac  ADD             R4, R7, #0x800
00006eb0  SUB             SP, SP, #0x38
00006eb4  CMP             R1, #0
00006eb8  BNE             loc_6F08
00006ebc  LDRH            R2, [R0,#0x10]
00006ec0  LDRH            R0, [R4,#0x9E]
00006ec4  LDR             R12, [R7,#0x8B8]
00006ec8  LDR             LR, [R7,#0x8B4]
00006ecc  SUB             R0, R0, R12
00006ed0  SUB             R0, R0, LR
00006ed4  MOV             R0, R0,LSL#16
00006ed8  MOV             R0, R0,ASR#16
00006edc  MOV             R3, #0
00006ee0  MOV             R1, #0
00006ee4  STMEA           SP, {R0-R3}
00006ee8  LDRH            R0, [R4,#0xA2]
00006eec  LDRSH           R3, [R4,#0x9C]
00006ef0  LDRSH           R1, [R4,#0xA0]
00006ef4  ADD             R0, R0, R12
00006ef8  MOV             R2, R0,LSL#16
00006efc  MOV             R2, R2,ASR#16
00006f00  MOV             R0, R9
00006f04  BL              sub_10C58
00006f08  MOV             R11, #0
00006f0c  B               loc_720C
00006f10  LDR             R0, [R0,#0x1C]
00006f14  ADD             R5, R0, R11,LSL#4
00006f18  LDRB            R0, [R5]
00006f1c  CMP             R0, #1
00006f20  BNE             loc_6F8C
00006f24  LDRH            R1, [R4,#0x9E]
00006f28  LDR             R2, [R7,#0x8B4]
00006f2c  LDRSH           R0, [R5,#0xA]
00006f30  SUB             R1, R1, R2
00006f34  LDRH            R2, [R5,#8]
00006f38  LDRH            R12, [R4,#0x9C]
00006f3c  SUB             R1, R1, R2
00006f40  SUB             LR, R1, R0
00006f44  LDR             R1, [R5,#4]
00006f48  MOV             R3, R1,LSL#16
00006f4c  MOV             R2, R1,LSR#16
00006f50  MOV             R1, #4
00006f54  MOV             R3, R3,LSR#16
00006f58  STMEA           SP, {R0-R3}
00006f5c  LDRH            R0, [R4,#0xA2]
00006f60  MOV             R3, R12,LSL#16
00006f64  MOV             R3, R3,ASR#16
00006f68  ADD             R0, R0, LR
00006f6c  MOV             R2, R0,LSL#16
00006f70  LDRH            R0, [R4,#0xA0]
00006f74  MOV             R2, R2,ASR#16
00006f78  MOV             R1, R0,LSL#16
00006f7c  MOV             R1, R1,ASR#16
00006f80  MOV             R0, R9
00006f84  BL              sub_10C58
00006f88  B               loc_7208
00006f8c  CMP             R0, #2
00006f90  BNE             loc_70C0
00006f94  LDR             R1, [R5,#4]
00006f98  LDR             R0, [SP,#0x44+var_4]
00006f9c  BL              sub_11DD8
00006fa0  LDRH            R8, [R0]
00006fa4  LDRH            R1, [R0,#2]
00006fa8  MOV             R10, R0
00006fac  STR             R1, [SP,#0x44+var_1C]
00006fb0  LDRH            R0, [R4,#0x9E]
00006fb4  LDR             R1, [R7,#0x8B4]
00006fb8  SUB             R0, R0, R1
00006fbc  LDRSH           R1, [R5,#8]
00006fc0  SUB             R0, R0, R1
00006fc4  LDR             R1, [SP,#0x44+var_1C]
00006fc8  SUB             R1, R0, R1
00006fcc  STR             R1, [SP,#0x44+var_24]
00006fd0  LDRSH           R0, [R5,#0xA]
00006fd4  LDR             R1, [R7,#0x834]
00006fd8  SUB             R0, R0, R1
00006fdc  MUL             R1, R8, R0
00006fe0  LDRSH           R0, [R5,#0xC]
00006fe4  MUL             R1, R0, R1
00006fe8  MOV             R0, #0xE10
00006fec  BL              sub_104
00006ff0  MOV             R6, R0
00006ff4  LDR             R0, [R7,#0x8A4]
00006ff8  LDRSH           R1, [R5,#0xE]
00006ffc  MUL             R0, R1, R0
00007000  BL              sub_2E4
00007004  SUB             R1, R6, R0
00007008  MOV             R0, R8
0000700c  BL              sub_104
00007010  MOV             R0, #1
00007014  STR             R0, [SP,#0x44+var_28]
00007018  LDRB            R0, [R5,#1]
0000701c  MOV             R6, R1
00007020  CMP             R1, #0
00007024  SUBGT           R6, R6, R8
00007028  CMP             R0, #0
0000702c  MOVNE           R0, #3
00007030  STRNE           R0, [SP,#0x44+var_28]
00007034  LDR             R0, [SP,#0x44+var_1C]
00007038  MOV             R3, R8,LSL#16
0000703c  MOV             R1, R0,LSL#16
00007040  MOV             R1, R1,ASR#16
00007044  MOV             R3, R3,ASR#16
00007048  STR             R3, [SP,#0x44+var_14]
0000704c  STR             R1, [SP,#0x44+var_10]
00007050  B               loc_70B0
00007054  LDRH            R3, [R5,#2]
00007058  LDR             R1, [SP,#0x44+var_28]
0000705c  MOV             R2, #0
00007060  MOV             R0, #0
00007064  ADD             R12, SP, #0x44+var_38
00007068  STM             R12, {R0-R3}
0000706c  LDR             R1, [SP,#0x44+var_10]
00007070  MOV             R3, #0
00007074  STMEA           SP, {R1,R10}
00007078  STR             R3, [SP,#0x44+var_3C]
0000707c  LDRH            R0, [R4,#0xA2]
00007080  LDR             R1, [SP,#0x44+var_24]
00007084  ADD             R0, R0, R1
00007088  MOV             R2, R0,LSL#16
0000708c  LDRH            R0, [R4,#0xA0]
00007090  LDR             R3, [SP,#0x44+var_14]
00007094  MOV             R2, R2,ASR#16
00007098  ADD             R0, R0, R6
0000709c  MOV             R1, R0,LSL#16
000070a0  MOV             R1, R1,ASR#16
000070a4  MOV             R0, R9
000070a8  BL              sub_3324
000070ac  ADD             R6, R6, R8
000070b0  LDRH            R0, [R4,#0x9C]
000070b4  CMP             R0, R6
000070b8  BGT             loc_7054
000070bc  B               loc_7208
000070c0  CMP             R0, #3
000070c4  BNE             loc_7208
000070c8  LDR             R1, [R5,#4]
000070cc  LDR             R0, [SP,#0x44+var_4]
000070d0  BL              sub_11DD8
000070d4  LDRH            R2, [R0]
000070d8  MOV             R6, R0
000070dc  STR             R2, [SP,#0x44+var_18]
000070e0  LDRH            R8, [R0,#2]
000070e4  LDRH            R0, [R4,#0x9E]
000070e8  LDR             R1, [R7,#0x8B4]
000070ec  SUB             R0, R0, R1
000070f0  LDRSH           R1, [R5,#8]
000070f4  SUB             R0, R0, R1
000070f8  SUB             R0, R0, R8
000070fc  STR             R0, [SP,#0x44+var_24]
00007100  LDRSH           R0, [R5,#0xA]
00007104  LDR             R1, [R7,#0x834]
00007108  SUB             R10, R0, R1
0000710c  LDR             R0, [R7,#0x8A4]
00007110  LDRSH           R1, [R5,#0xE]
00007114  MUL             R0, R1, R0
00007118  BL              sub_2E4
0000711c  SUB             R1, R10, R0
00007120  MOV             R0, #0x168
00007124  BL              sub_104
00007128  CMP             R1, #0xB4
0000712c  SUBGT           R1, R1, #0x168
00007130  LDRSH           R0, [R5,#0xC]
00007134  CMN             R1, #0xB4
00007138  ADDLE           R1, R1, #0x168
0000713c  MUL             R0, R1, R0
00007140  BL              sub_2A0
00007144  LDRH            R1, [R4,#0x9C]
00007148  LDR             R2, [SP,#0x44+var_18]
0000714c  MOV             R10, #1
00007150  SUB             R1, R1, R2
00007154  ADD             R1, R1, R1,LSR#31
00007158  SUB             R0, R0, R1,ASR#1
0000715c  STR             R0, [SP,#0x44+var_20]
00007160  LDRB            R0, [R5,#1]
00007164  LDR             R5, [R7,#0x898]
00007168  CMP             R0, #0
0000716c  LDRB            R0, [R5,#0x16]
00007170  MOVNE           R10, #3
00007174  CMP             R0, #0
00007178  MOVEQ           R3, #0
0000717c  MOVEQ           R2, #0
00007180  MOVEQ           R1, R10
00007184  BEQ             loc_71AC
00007188  MOV             R1, R0,LSL#5
0000718c  MOV             R0, #0x64 ; 'd'
00007190  BL              sub_1DC
00007194  LDRH            R1, [R5,#0x14]
00007198  CMP             R0, #0x20 ; ' '
0000719c  MOVGT           R0, #0x20 ; ' '
000071a0  ORR             R3, R1, R0,LSL#16
000071a4  ORR             R1, R10, #0x10
000071a8  MOV             R2, #0
000071ac  MOV             R0, #0
000071b0  ADD             R5, SP, #0x44+var_38
000071b4  STM             R5, {R0-R3}
000071b8  MOV             R1, R8,LSL#16
000071bc  MOV             R1, R1,ASR#16
000071c0  STMEA           SP, {R1,R6}
000071c4  MOV             R3, #0
000071c8  STR             R3, [SP,#0x44+var_3C]
000071cc  LDRH            R0, [R4,#0xA2]
000071d0  LDR             R1, [SP,#0x44+var_24]
000071d4  ADD             R0, R0, R1
000071d8  MOV             R2, R0,LSL#16
000071dc  LDRH            R0, [R4,#0xA0]
000071e0  LDR             R1, [SP,#0x44+var_20]
000071e4  MOV             R2, R2,ASR#16
000071e8  ADD             R0, R0, R1
000071ec  MOV             R1, R0,LSL#16
000071f0  LDR             R0, [SP,#0x44+var_18]
000071f4  MOV             R1, R1,ASR#16
000071f8  MOV             R3, R0,LSL#16
000071fc  MOV             R3, R3,ASR#16
00007200  MOV             R0, R9
00007204  BL              sub_3324
00007208  ADD             R11, R11, #1
0000720c  LDR             R0, [R7,#0x898]
00007210  LDR             R1, [R0,#0x18]
00007214  CMP             R1, R11
00007218  BHI             loc_6F10
0000721c  ADD             SP, SP, #0x44 ; 'D'
00007220  POP             {R4-R11,LR}
00007224  BX              LR
