00007dec  PUSH            {R0-R7,LR}
00007df0  SUB             SP, SP, #0x14
00007df4  LDR             R2, [SP,#0x24+arg_4]
00007df8  MOV             R5, R0
00007dfc  LDR             R0, [R0,#0x14]
00007e00  CMP             R0, #0
00007e04  MOVEQ           R0, #7
00007e08  BEQ             loc_8158
00007e0c  LDRSH           R0, [SP,#0x24+var_C]
00007e10  LDRSH           R1, [SP,#0x24+var_4]
00007e14  MOV             R4, R2
00007e18  CMP             R0, R1
00007e1c  LDRSH           R0, [SP,#0x24+var_8]
00007e20  LDRSH           R1, [SP,#0x24+arg_0]
00007e24  BNE             loc_7E7C
00007e28  CMP             R0, R1
00007e2c  MOV             R1, #0
00007e30  MOV             R3, #0
00007e34  BGE             loc_7E58
00007e38  LDRH            R0, [SP,#0x24+arg_0]
00007e3c  LDRH            R12, [SP,#0x24+var_8]
00007e40  SUB             R0, R0, R12
00007e44  MOV             R0, R0,LSL#16
00007e48  MOV             R0, R0,ASR#16
00007e4c  STMEA           SP, {R0-R3}
00007e50  MOV             R3, #1
00007e54  B               loc_7ED4
00007e58  LDRH            R0, [SP,#0x24+var_8]
00007e5c  LDRH            R12, [SP,#0x24+arg_0]
00007e60  SUB             R0, R0, R12
00007e64  MOV             R0, R0,LSL#16
00007e68  MOV             R0, R0,ASR#16
00007e6c  STMEA           SP, {R0-R3}
00007e70  LDRSH           R2, [SP,#0x24+arg_0]
00007e74  MOV             R3, #1
00007e78  B               loc_7ED8
00007e7c  CMP             R0, R1
00007e80  BNE             loc_7EE8
00007e84  LDRSH           R0, [SP,#0x24+var_C]
00007e88  LDRSH           R1, [SP,#0x24+var_4]
00007e8c  MOV             R3, #0
00007e90  CMP             R0, R1
00007e94  MOV             R0, #1
00007e98  MOV             R1, #0
00007e9c  STMEA           SP, {R0-R3}
00007ea0  LDRHGE          R0, [SP,#0x24+var_C]
00007ea4  LDRHGE          R1, [SP,#0x24+var_4]
00007ea8  LDRSHGE         R2, [SP,#0x24+var_8]
00007eac  SUBGE           R0, R0, R1
00007eb0  MOVGE           R3, R0,LSL#16
00007eb4  MOVGE           R3, R3,ASR#16
00007eb8  LDRSHGE         R1, [SP,#0x24+var_4]
00007ebc  BGE             loc_7EDC
00007ec0  LDRH            R0, [SP,#0x24+var_4]
00007ec4  LDRH            R1, [SP,#0x24+var_C]
00007ec8  SUB             R0, R0, R1
00007ecc  MOV             R3, R0,LSL#16
00007ed0  MOV             R3, R3,ASR#16
00007ed4  LDRSH           R2, [SP,#0x24+var_8]
00007ed8  LDRSH           R1, [SP,#0x24+var_C]
00007edc  MOV             R0, R5
00007ee0  BL              sub_10C58
00007ee4  B               loc_8154
00007ee8  LDRH            R0, [R5,#0xC]
00007eec  LDRH            R1, [SP,#0x24+var_C]
00007ef0  ADD             R0, R0, R1
00007ef4  STRH            R0, [SP,#0x24+var_C]
00007ef8  LDRH            R0, [R5,#0xE]
00007efc  LDRH            R1, [SP,#0x24+var_8]
00007f00  ADD             R0, R0, R1
00007f04  STRH            R0, [SP,#0x24+var_8]
00007f08  LDRH            R0, [R5,#0xC]
00007f0c  LDRH            R1, [SP,#0x24+var_4]
00007f10  ADD             R0, R0, R1
00007f14  STRH            R0, [SP,#0x24+var_4]
00007f18  LDRH            R0, [R5,#0xE]
00007f1c  LDRH            R1, [SP,#0x24+arg_0]
00007f20  ADD             R0, R0, R1
00007f24  STRH            R0, [SP,#0x24+arg_0]
00007f28  LDRSH           R0, [R5,#4]
00007f2c  LDRSH           R1, [R5,#8]
00007f30  LDRSH           R3, [R5,#0xA]
00007f34  LDRSH           R2, [R5,#6]
00007f38  STMFA           SP, {R0-R3}
00007f3c  ADD             R3, SP, #0x24+arg_0
00007f40  STR             R3, [SP,#0x24+var_24]
00007f44  ADD             R3, SP, #0x24+var_4
00007f48  ADD             R2, SP, #0x24+var_8
00007f4c  ADD             R1, SP, #0x24+var_C
00007f50  MOV             R0, R5
00007f54  BL              sub_21584
00007f58  CMP             R0, #0
00007f5c  BEQ             loc_8154
00007f60  LDRH            R0, [SP,#0x24+var_4]
00007f64  LDRH            R1, [SP,#0x24+var_C]
00007f68  SUB             R0, R0, R1
00007f6c  LDRH            R1, [SP,#0x24+arg_0]
00007f70  LDRH            R2, [SP,#0x24+var_8]
00007f74  MOV             R0, R0,LSL#16
00007f78  MOV             R0, R0,ASR#16
00007f7c  CMP             R0, #0
00007f80  RSBLT           R0, R0, #0
00007f84  SUB             R1, R1, R2
00007f88  MOV             R1, R1,LSL#16
00007f8c  MOVLT           R0, R0,LSL#16
00007f90  MOVLT           R0, R0,ASR#16
00007f94  MOV             R1, R1,ASR#16
00007f98  CMP             R1, #0
00007f9c  RSBLT           R1, R1, #0
00007fa0  MOVLT           R1, R1,LSL#16
00007fa4  MOVLT           R1, R1,ASR#16
00007fa8  CMP             R0, R1
00007fac  BLT             loc_8084
00007fb0  LDRSH           R2, [SP,#0x24+var_C]
00007fb4  LDRSH           R3, [SP,#0x24+var_4]
00007fb8  CMP             R2, R3
00007fbc  BLE             loc_7FE0
00007fc0  LDRH            R3, [SP,#0x24+var_4]
00007fc4  LDRH            R2, [SP,#0x24+var_C]
00007fc8  STRH            R3, [SP,#0x24+var_C]
00007fcc  STRH            R2, [SP,#0x24+var_4]
00007fd0  LDRH            R3, [SP,#0x24+arg_0]
00007fd4  LDRH            R2, [SP,#0x24+var_8]
00007fd8  STRH            R3, [SP,#0x24+var_8]
00007fdc  STRH            R2, [SP,#0x24+arg_0]
00007fe0  LDRSH           R2, [SP,#0x24+arg_0]
00007fe4  LDRSH           R3, [SP,#0x24+var_8]
00007fe8  LDRSH           R12, [SP,#0x24+var_8]
00007fec  CMP             R2, R3
00007ff0  SUB             R3, R1, R0
00007ff4  RSB             R0, R0, R1,LSL#1
00007ff8  MOV             R2, R1,LSL#17
00007ffc  LDRSH           R1, [SP,#0x24+var_C]
00008000  LDR             R5, [R5,#0x14]
00008004  MOV             R0, R0,LSL#16
00008008  MOV             R3, R3,LSL#17
0000800c  MOV             R3, R3,ASR#16
00008010  MOV             R0, R0,ASR#16
00008014  MOV             R2, R2,ASR#16
00008018  MOVGE           LR, #0
0000801c  MOVLT           LR, #1
00008020  ADD             R5, R5, R12,LSL#2
00008024  B               loc_8074
00008028  ADD             R12, R1, #1
0000802c  MOV             R12, R12,LSL#16
00008030  MOV             R12, R12,ASR#16
00008034  MOV             R7, R1
00008038  LDR             R6, [R5]
0000803c  CMP             R0, #0
00008040  ADDLT           R0, R0, R2
00008044  MOV             R1, R12
00008048  ADD             R12, R6, R7,LSL#1
0000804c  MOVLT           R0, R0,LSL#16
00008050  MOVLT           R0, R0,ASR#16
00008054  STRH            R4, [R12]
00008058  BLT             loc_8074
0000805c  ADD             R0, R0, R3
00008060  CMP             LR, #0
00008064  ADDEQ           R5, R5, #4
00008068  MOV             R0, R0,LSL#16
0000806c  MOV             R0, R0,ASR#16
00008070  SUBNE           R5, R5, #4
00008074  LDRSH           R12, [SP,#0x24+var_4]
00008078  CMP             R1, R12
0000807c  BLE             loc_8028
00008080  B               loc_8154
00008084  LDRSH           R2, [SP,#0x24+var_8]
00008088  LDRSH           R3, [SP,#0x24+arg_0]
0000808c  CMP             R2, R3
00008090  BLE             loc_80B4
00008094  LDRH            R3, [SP,#0x24+var_4]
00008098  LDRH            R2, [SP,#0x24+var_C]
0000809c  STRH            R3, [SP,#0x24+var_C]
000080a0  STRH            R2, [SP,#0x24+var_4]
000080a4  LDRH            R3, [SP,#0x24+arg_0]
000080a8  LDRH            R2, [SP,#0x24+var_8]
000080ac  STRH            R3, [SP,#0x24+var_8]
000080b0  STRH            R2, [SP,#0x24+arg_0]
000080b4  LDRSH           R2, [SP,#0x24+var_4]
000080b8  LDRSH           R3, [SP,#0x24+var_C]
000080bc  LDRSH           R6, [SP,#0x24+var_8]
000080c0  CMP             R2, R3
000080c4  SUB             R3, R0, R1
000080c8  MOV             R2, R0,LSL#17
000080cc  RSB             R0, R1, R0,LSL#1
000080d0  LDRSH           R1, [SP,#0x24+var_C]
000080d4  LDR             R12, [R5,#0x14]
000080d8  MOV             R0, R0,LSL#16
000080dc  MOV             R3, R3,LSL#17
000080e0  MOV             R3, R3,ASR#16
000080e4  MOV             R0, R0,ASR#16
000080e8  MOV             R2, R2,ASR#16
000080ec  MOVGE           LR, #0
000080f0  MOVLT           LR, #1
000080f4  ADD             R5, R12, R6,LSL#2
000080f8  B               loc_8148
000080fc  LDR             R12, [R5],#4
00008100  CMP             R0, #0
00008104  ADDLT           R0, R0, R2
00008108  MOVLT           R0, R0,LSL#16
0000810c  ADD             R12, R12, R1,LSL#1
00008110  STRH            R4, [R12]
00008114  MOVLT           R0, R0,ASR#16
00008118  BLT             loc_813C
0000811c  CMP             LR, #0
00008120  ADDEQ           R1, R1, #1
00008124  SUBNE           R1, R1, #1
00008128  ADD             R0, R0, R3
0000812c  MOV             R0, R0,LSL#16
00008130  MOV             R1, R1,LSL#16
00008134  MOV             R1, R1,ASR#16
00008138  MOV             R0, R0,ASR#16
0000813c  ADD             R12, R6, #1
00008140  MOV             R6, R12,LSL#16
00008144  MOV             R6, R6,ASR#16
00008148  LDRSH           R12, [SP,#0x24+arg_0]
0000814c  CMP             R6, R12
00008150  BLE             loc_80FC
00008154  MOV             R0, #0
00008158  ADD             SP, SP, #0x24 ; '$'
0000815c  POP             {R4-R7,LR}
00008160  BX              LR
