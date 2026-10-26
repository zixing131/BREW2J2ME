00010c58  PUSH            {R4-R11,LR}
00010c5c  SUB             SP, SP, #0x44
00010c60  ADD             R12, SP, #0x44+arg_4
00010c64  LDM             R12, {R5,R8,R12}
00010c68  LDR             R10, [SP,#0x44+arg_0]
00010c6c  LDR             LR, [R0,#0x14]
00010c70  CMP             LR, #0
00010c74  MOVEQ           R0, #7
00010c78  BEQ             loc_11418
00010c7c  LDRH            R6, [R0,#0xC]
00010c80  ADD             R1, R6, R1
00010c84  MOV             R7, R1,LSL#16
00010c88  LDRH            R1, [R0,#0xE]
00010c8c  MOV             R7, R7,ASR#16
00010c90  ADD             R3, R7, R3
00010c94  ADD             R1, R1, R2
00010c98  MOV             R2, R1,LSL#16
00010c9c  LDRH            R1, [R0,#4]
00010ca0  MOV             R2, R2,ASR#16
00010ca4  CMP             R1, R7
00010ca8  MOVLT           R1, R7
00010cac  MOV             R6, R1,LSL#16
00010cb0  LDRH            R1, [R0,#6]
00010cb4  LDRH            R7, [R0,#8]
00010cb8  LDRH            R9, [R0,#0xA]
00010cbc  CMP             R1, R2
00010cc0  MOVLT           R1, R2
00010cc4  CMP             R3, R7
00010cc8  MOVGT           R3, R7
00010ccc  MOV             R7, R3,LSL#16
00010cd0  ADD             R3, R2, R10
00010cd4  CMP             R3, R9
00010cd8  MOVGT           R3, R9
00010cdc  MOV             R3, R3,LSL#16
00010ce0  MOV             R7, R7,ASR#16
00010ce4  MOV             R1, R1,LSL#16
00010ce8  MOV             R6, R6,ASR#16
00010cec  CMP             R7, R6
00010cf0  MOV             R1, R1,ASR#16
00010cf4  MOV             R3, R3,ASR#16
00010cf8  CMPGT           R3, R1
00010cfc  BLE             loc_11414
00010d00  MOV             R9, #1
00010d04  ANDS            R11, R9, R5,LSR#2
00010d08  BEQ             loc_10D14
00010d0c  CMP             R8, R12
00010d10  MOVEQ           R11, #0
00010d14  MOV             R9, #1
00010d18  ANDS            R9, R9, R5,LSR#4
00010d1c  MOVNE           R5, #0
00010d20  STRNE           R5, [SP,#0x44+var_10]
00010d24  STR             R9, [SP,#0x44+var_14]
00010d28  BNE             loc_10D5C
00010d2c  MOV             R4, R5,LSR#8
00010d30  MOV             R9, #1
00010d34  ANDS            R5, R9, R5,LSR#1
00010d38  STR             R5, [SP,#0x44+var_10]
00010d3c  BEQ             loc_10D5C
00010d40  CMP             R4, #0
00010d44  BEQ             loc_11414
00010d48  CMP             R4, #0x20 ; ' '
00010d4c  MOVEQ           R5, #0
00010d50  RSB             R4, R4, #0x20 ; ' '
00010d54  AND             R4, R4, #0xFF
00010d58  STREQ           R5, [SP,#0x44+var_10]
00010d5c  AND             R9, R8, #0x1F
00010d60  STR             R9, [SP,#0x44+var_4]
00010d64  AND             R9, R8, #0x7E0
00010d68  STR             R9, [SP,#0x44+var_8]
00010d6c  ADD             R5, LR, R1,LSL#2
00010d70  ADD             LR, LR, R3,LSL#2
00010d74  AND             R9, R8, #0xF800
00010d78  CMP             R11, #0
00010d7c  BEQ             loc_11108
00010d80  MOV             R0, R9,LSR#8
00010d84  STR             R0, [SP,#0x44+var_24]
00010d88  LDR             R0, [SP,#0x44+var_8]
00010d8c  TST             R6, #1
00010d90  MOV             R0, R0,LSR#3
00010d94  STR             R0, [SP,#0x44+var_28]
00010d98  LDR             R0, [SP,#0x44+var_4]
00010d9c  MOV             R0, R0,LSL#3
00010da0  STR             R0, [SP,#0x44+var_2C]
00010da4  AND             R0, R12, #0xF800
00010da8  MOV             R0, R0,LSR#8
00010dac  STR             R0, [SP,#0x44+var_30]
00010db0  AND             R0, R12, #0x7E0
00010db4  MOV             R0, R0,LSR#3
00010db8  STR             R0, [SP,#0x44+var_34]
00010dbc  MOV             R0, R12,LSL#27
00010dc0  MOV             R0, R0,LSR#24
00010dc4  STR             R0, [SP,#0x44+var_38]
00010dc8  SUB             R0, R3, R2
00010dcc  MOV             R0, R0,LSL#16
00010dd0  MOV             R0, R0,ASR#16
00010dd4  STR             R0, [SP,#0x44+var_20]
00010dd8  ADDNE           R0, R6, #1
00010ddc  MOVEQ           R0, R6
00010de0  MOV             R0, R0,LSL#16
00010de4  MOV             R0, R0,ASR#16
00010de8  STR             R0, [SP,#0x44+var_18]
00010dec  TST             R7, #1
00010df0  MOVEQ           R0, R7
00010df4  SUBNE           R0, R7, #1
00010df8  MOV             R3, R0,LSL#16
00010dfc  MOV             R3, R3,ASR#16
00010e00  LDR             R0, [SP,#0x44+var_18]
00010e04  STR             R3, [SP,#0x44+var_1C]
00010e08  SUB             R0, R3, R0
00010e0c  MOV             R9, R0,ASR#1
00010e10  SUB             R0, R1, R2
00010e14  MOV             R8, R0,LSL#16
00010e18  RSB             R1, R4, #0x20 ; ' '
00010e1c  STR             R1, [SP,#0x44+var_C]
00010e20  MOV             R8, R8,LSR#16
00010e24  B               loc_110F8
00010e28  SUB             R0, R10, R8
00010e2c  MOV             R11, R0,LSL#16
00010e30  LDR             R0, [SP,#0x44+var_24]
00010e34  MOV             R11, R11,ASR#16
00010e38  LDR             R1, [SP,#0x44+var_30]
00010e3c  MUL             R0, R11, R0
00010e40  MLA             R1, R8, R1, R0
00010e44  MOV             R0, R10
00010e48  BL              sub_104
00010e4c  AND             R1, R0, #0xFF
00010e50  LDR             R0, [SP,#0x44+var_28]
00010e54  STR             R1, [SP,#0x44+var_3C]
00010e58  LDR             R1, [SP,#0x44+var_34]
00010e5c  MUL             R0, R11, R0
00010e60  MLA             R1, R8, R1, R0
00010e64  MOV             R0, R10
00010e68  BL              sub_104
00010e6c  AND             R0, R0, #0xFF
00010e70  STR             R0, [SP,#0x44+var_40]
00010e74  LDR             R0, [SP,#0x44+var_2C]
00010e78  LDR             R1, [SP,#0x44+var_38]
00010e7c  MUL             R0, R11, R0
00010e80  MLA             R1, R8, R1, R0
00010e84  MOV             R0, R10
00010e88  BL              sub_104
00010e8c  LDR             R1, [SP,#0x44+var_3C]
00010e90  LDR             R2, [SP,#0x44+var_40]
00010e94  MOV             R1, R1,LSR#3
00010e98  MOV             R1, R1,LSL#11
00010e9c  MOV             R2, R2,LSR#2
00010ea0  ORR             R1, R1, R2,LSL#5
00010ea4  AND             R0, R0, #0xFF
00010ea8  ORR             R0, R1, R0,LSR#3
00010eac  LDR             R1, [SP,#0x44+var_14]
00010eb0  CMP             R1, #0
00010eb4  BEQ             loc_10F44
00010eb8  TST             R6, #1
00010ebc  LDRNE           R1, [R5]
00010ec0  LDR             R3, =0x7BEF
00010ec4  ADDNE           R1, R1, R6,LSL#1
00010ec8  LDRHNE          R2, [R1]
00010ecc  AND             R0, R3, R0,LSR#1
00010ed0  ANDNE           R2, R3, R2,LSR#1
00010ed4  ADDNE           R2, R2, R0
00010ed8  STRHNE          R2, [R1]
00010edc  AND             R1, R7, #1
00010ee0  CMP             R1, #0
00010ee4  CMPNE           R6, R7
00010ee8  BGE             loc_10F08
00010eec  LDR             R1, [R5]
00010ef0  LDR             R2, [SP,#0x44+var_1C]
00010ef4  ADD             R1, R1, R2,LSL#1
00010ef8  LDRH            R2, [R1]
00010efc  AND             R2, R3, R2,LSR#1
00010f00  ADD             R2, R2, R0
00010f04  STRH            R2, [R1]
00010f08  CMP             R9, #0
00010f0c  BEQ             loc_110F0
00010f10  ORR             R3, R0, R0,LSL#16
00010f14  LDR             R0, [R5],#4
00010f18  LDR             R1, [SP,#0x44+var_18]
00010f1c  LDR             R12, =0xFBEF7BEF
00010f20  ADD             R0, R0, R1,LSL#1
00010f24  ADD             R2, R0, R9,LSL#2
00010f28  CMP             R0, R2
00010f2c  LDRCC           R1, [R0]
00010f30  ANDCC           R1, R12, R1,LSR#1
00010f34  ADDCC           R1, R1, R3
00010f38  STRCC           R1, [R0],#4
00010f3c  BCC             loc_10F28
00010f40  B               loc_110F0
00010f44  LDR             R1, [SP,#0x44+var_10]
00010f48  CMP             R1, #0
00010f4c  BEQ             loc_1109C
00010f50  AND             R1, R0, #0xF800
00010f54  MOV             R1, R1,LSL#11
00010f58  AND             R2, R0, #0x7E0
00010f5c  ORR             R1, R1, R2,LSL#5
00010f60  AND             R2, R0, #0x1F
00010f64  ORR             R2, R1, R2
00010f68  LDR             R1, [SP,#0x44+var_C]
00010f6c  TST             R6, #1
00010f70  MUL             R2, R1, R2
00010f74  BEQ             loc_10FC0
00010f78  LDR             R1, [R5]
00010f7c  ADD             R3, R1, R6,LSL#1
00010f80  LDRH            R1, [R3]
00010f84  AND             R12, R1, #0xF800
00010f88  AND             LR, R1, #0x7E0
00010f8c  MOV             R12, R12,LSL#11
00010f90  ORR             R12, R12, LR,LSL#5
00010f94  AND             R1, R1, #0x1F
00010f98  ORR             R1, R12, R1
00010f9c  MLA             R1, R4, R1, R2
00010fa0  MOV             R1, R1,LSR#5
00010fa4  AND             R12, R1, #0x7C00000
00010fa8  AND             LR, R1, #0xFC00
00010fac  MOV             R12, R12,LSR#11
00010fb0  ORR             R12, R12, LR,LSR#5
00010fb4  AND             R1, R1, #0x1F
00010fb8  ORR             R1, R12, R1
00010fbc  STRH            R1, [R3]
00010fc0  AND             R1, R7, #1
00010fc4  CMP             R1, #0
00010fc8  CMPNE           R6, R7
00010fcc  BGE             loc_1101C
00010fd0  LDR             R1, [R5]
00010fd4  LDR             R3, [SP,#0x44+var_1C]
00010fd8  ADD             R3, R1, R3,LSL#1
00010fdc  LDRH            R1, [R3]
00010fe0  AND             R12, R1, #0xF800
00010fe4  AND             LR, R1, #0x7E0
00010fe8  MOV             R12, R12,LSL#11
00010fec  ORR             R12, R12, LR,LSL#5
00010ff0  AND             R1, R1, #0x1F
00010ff4  ORR             R1, R12, R1
00010ff8  MLA             R1, R4, R1, R2
00010ffc  MOV             R1, R1,LSR#5
00011000  AND             R2, R1, #0x7C00000
00011004  AND             R12, R1, #0xFC00
00011008  MOV             R2, R2,LSR#11
0001100c  ORR             R2, R2, R12,LSR#5
00011010  AND             R1, R1, #0x1F
00011014  ORR             R1, R2, R1
00011018  STRH            R1, [R3]
0001101c  CMP             R9, #0
00011020  BEQ             loc_11414
00011024  LDR             R11, =0x7E0F81F
00011028  ORR             R0, R0, R0,LSL#16
0001102c  AND             R2, R0, R11
00011030  LDR             R1, [SP,#0x44+var_C]
00011034  BIC             R0, R0, #0x7E00000
00011038  BIC             R0, R0, #0xF800
0001103c  MOV             R0, R0,LSR#5
00011040  MUL             R12, R1, R0
00011044  LDR             R0, [R5],#4
00011048  MUL             R3, R1, R2
0001104c  LDR             R1, [SP,#0x44+var_18]
00011050  ADD             R0, R0, R1,LSL#1
00011054  ADD             R2, R0, R9,LSL#2
00011058  B               loc_11090
0001105c  LDR             R1, [R0]
00011060  LDR             R11, =0x7E0F81F
00011064  AND             LR, R1, R11
00011068  BIC             R1, R1, #0x7E00000
0001106c  BIC             R1, R1, #0xF800
00011070  MOV             R1, R1,LSR#5
00011074  MLA             LR, R4, LR, R3
00011078  AND             LR, R11, LR,LSR#5
0001107c  MOV             R11, R11,ROR#16
00011080  MLA             R1, R4, R1, R12
00011084  AND             R1, R1, R11
00011088  ORR             R1, LR, R1
0001108c  STR             R1, [R0],#4
00011090  CMP             R0, R2
00011094  BCC             loc_1105C
00011098  B               loc_110F0
0001109c  TST             R6, #1
000110a0  LDRNE           R1, [R5]
000110a4  ADDNE           R1, R1, R6,LSL#1
000110a8  STRHNE          R0, [R1]
000110ac  AND             R1, R7, #1
000110b0  CMP             R1, #0
000110b4  CMPNE           R6, R7
000110b8  LDRLT           R1, [R5]
000110bc  LDRLT           R2, [SP,#0x44+var_1C]
000110c0  ADDLT           R1, R1, R2,LSL#1
000110c4  STRHLT          R0, [R1]
000110c8  CMP             R9, #0
000110cc  BEQ             loc_110F0
000110d0  ORR             R2, R0, R0,LSL#16
000110d4  LDR             R0, [R5],#4
000110d8  LDR             R1, [SP,#0x44+var_18]
000110dc  ADD             R0, R0, R1,LSL#1
000110e0  ADD             R1, R0, R9,LSL#2
000110e4  CMP             R0, R1
000110e8  STRCC           R2, [R0],#4
000110ec  BCC             loc_110E4
000110f0  ADD             R0, R8, #1
000110f4  BIC             R8, R0, #0x10000
000110f8  LDR             R0, [SP,#0x44+var_20]
000110fc  CMP             R8, R0
00011100  BLT             loc_10E28
00011104  B               loc_11414
00011108  LDR             R2, [SP,#0x44+var_14]
0001110c  CMP             R2, #0
00011110  BEQ             loc_111E4
00011114  LDR             R4, =0x7BEF
00011118  TST             R6, #1
0001111c  AND             R2, R4, R8,LSR#1
00011120  BEQ             loc_11158
00011124  CMP             R5, LR
00011128  LDRCC           R3, [R5],#4
0001112c  ADDCC           R3, R3, R6,LSL#1
00011130  LDRHCC          R12, [R3]
00011134  ANDCC           R12, R4, R12,LSR#1
00011138  ADDCC           R12, R12, R2
0001113c  STRHCC          R12, [R3]
00011140  BCC             loc_11124
00011144  ADD             R3, R6, #1
00011148  MOV             R6, R3,LSL#16
0001114c  LDR             R3, [R0,#0x14]
00011150  MOV             R6, R6,ASR#16
00011154  ADD             R5, R3, R1,LSL#2
00011158  AND             R3, R7, #1
0001115c  CMP             R3, #0
00011160  CMPNE           R6, R7
00011164  BGE             loc_1119C
00011168  SUB             R3, R7, #1
0001116c  MOV             R7, R3,LSL#16
00011170  MOV             R7, R7,ASR#16
00011174  CMP             R5, LR
00011178  LDRCC           R3, [R5],#4
0001117c  ADDCC           R3, R3, R7,LSL#1
00011180  LDRHCC          R12, [R3]
00011184  ANDCC           R12, R4, R12,LSR#1
00011188  ADDCC           R12, R12, R2
0001118c  STRHCC          R12, [R3]
00011190  BCC             loc_11174
00011194  LDR             R0, [R0,#0x14]
00011198  ADD             R5, R0, R1,LSL#2
0001119c  SUB             R0, R7, R6
000111a0  MOVS            R0, R0,ASR#1
000111a4  BEQ             loc_11414
000111a8  ORR             R1, R2, R2,LSL#16
000111ac  LDR             R4, =0xFBEF7BEF
000111b0  B               loc_111D8
000111b4  LDR             R2, [R5],#4
000111b8  ADD             R2, R2, R6,LSL#1
000111bc  ADD             R12, R2, R0,LSL#2
000111c0  CMP             R2, R12
000111c4  LDRCC           R3, [R2]
000111c8  ANDCC           R3, R4, R3,LSR#1
000111cc  ADDCC           R3, R3, R1
000111d0  STRCC           R3, [R2],#4
000111d4  BCC             loc_111C0
000111d8  CMP             R5, LR
000111dc  BCC             loc_111B4
000111e0  B               loc_11414
000111e4  LDR             R2, [SP,#0x44+var_10]
000111e8  CMP             R2, #0
000111ec  BEQ             loc_11378
000111f0  MOV             R2, R9,LSL#11
000111f4  LDR             R9, [SP,#0x44+var_8]
000111f8  TST             R6, #1
000111fc  ORR             R2, R2, R9,LSL#5
00011200  LDR             R9, [SP,#0x44+var_4]
00011204  ORR             R3, R2, R9
00011208  RSB             R2, R4, #0x20 ; ' '
0001120c  MUL             R12, R2, R3
00011210  BEQ             loc_1127C
00011214  B               loc_11260
00011218  LDR             R3, [R5],#4
0001121c  ADD             R9, R3, R6,LSL#1
00011220  LDRH            R3, [R9]
00011224  AND             R10, R3, #0xF800
00011228  AND             R11, R3, #0x7E0
0001122c  MOV             R10, R10,LSL#11
00011230  ORR             R10, R10, R11,LSL#5
00011234  AND             R3, R3, #0x1F
00011238  ORR             R3, R10, R3
0001123c  MLA             R3, R4, R3, R12
00011240  MOV             R3, R3,LSR#5
00011244  AND             R10, R3, #0x7C00000
00011248  AND             R11, R3, #0xFC00
0001124c  MOV             R10, R10,LSR#11
00011250  ORR             R10, R10, R11,LSR#5
00011254  AND             R3, R3, #0x1F
00011258  ORR             R3, R10, R3
0001125c  STRH            R3, [R9]
00011260  CMP             R5, LR
00011264  BCC             loc_11218
00011268  ADD             R3, R6, #1
0001126c  MOV             R6, R3,LSL#16
00011270  LDR             R3, [R0,#0x14]
00011274  MOV             R6, R6,ASR#16
00011278  ADD             R5, R3, R1,LSL#2
0001127c  AND             R3, R7, #1
00011280  CMP             R3, #0
00011284  CMPNE           R6, R7
00011288  BGE             loc_112F4
0001128c  SUB             R3, R7, #1
00011290  MOV             R7, R3,LSL#16
00011294  MOV             R7, R7,ASR#16
00011298  B               loc_112E4
0001129c  LDR             R3, [R5],#4
000112a0  ADD             R9, R3, R7,LSL#1
000112a4  LDRH            R3, [R9]
000112a8  AND             R10, R3, #0xF800
000112ac  AND             R11, R3, #0x7E0
000112b0  MOV             R10, R10,LSL#11
000112b4  ORR             R10, R10, R11,LSL#5
000112b8  AND             R3, R3, #0x1F
000112bc  ORR             R3, R10, R3
000112c0  MLA             R3, R4, R3, R12
000112c4  MOV             R3, R3,LSR#5
000112c8  AND             R10, R3, #0x7C00000
000112cc  AND             R11, R3, #0xFC00
000112d0  MOV             R10, R10,LSR#11
000112d4  ORR             R10, R10, R11,LSR#5
000112d8  AND             R3, R3, #0x1F
000112dc  ORR             R3, R10, R3
000112e0  STRH            R3, [R9]
000112e4  CMP             R5, LR
000112e8  BCC             loc_1129C
000112ec  LDR             R0, [R0,#0x14]
000112f0  ADD             R5, R0, R1,LSL#2
000112f4  SUB             R0, R7, R6
000112f8  MOVS            R0, R0,ASR#1
000112fc  BEQ             loc_11414
00011300  LDR             R3, =0x7E0F81F
00011304  ORR             R12, R8, R8,LSL#16
00011308  AND             R1, R12, R3
0001130c  BIC             R12, R12, #0x7E00000
00011310  BIC             R12, R12, #0xF800
00011314  MOV             R12, R12,LSR#5
00011318  MUL             R1, R2, R1
0001131c  MUL             R2, R12, R2
00011320  MOV             R10, R3,ROR#16
00011324  B               loc_1136C
00011328  LDR             R12, [R5],#4
0001132c  ADD             R12, R12, R6,LSL#1
00011330  ADD             R8, R12, R0,LSL#2
00011334  B               loc_11364
00011338  LDR             R7, [R12]
0001133c  AND             R9, R7, R3
00011340  BIC             R7, R7, #0x7E00000
00011344  BIC             R7, R7, #0xF800
00011348  MOV             R7, R7,LSR#5
0001134c  MLA             R7, R4, R7, R2
00011350  MLA             R9, R4, R9, R1
00011354  AND             R9, R3, R9,LSR#5
00011358  AND             R7, R7, R10
0001135c  ORR             R7, R9, R7
00011360  STR             R7, [R12],#4
00011364  CMP             R12, R8
00011368  BCC             loc_11338
0001136c  CMP             R5, LR
00011370  BCC             loc_11328
00011374  B               loc_11414
00011378  TST             R6, #1
0001137c  BEQ             loc_113A8
00011380  CMP             R5, LR
00011384  LDRCC           R2, [R5],#4
00011388  ADDCC           R2, R2, R6,LSL#1
0001138c  STRHCC          R8, [R2]
00011390  BCC             loc_11380
00011394  ADD             R2, R6, #1
00011398  MOV             R6, R2,LSL#16
0001139c  LDR             R2, [R0,#0x14]
000113a0  MOV             R6, R6,ASR#16
000113a4  ADD             R5, R2, R1,LSL#2
000113a8  AND             R2, R7, #1
000113ac  CMP             R2, #0
000113b0  CMPNE           R6, R7
000113b4  BGE             loc_113E0
000113b8  SUB             R2, R7, #1
000113bc  MOV             R7, R2,LSL#16
000113c0  MOV             R7, R7,ASR#16
000113c4  CMP             R5, LR
000113c8  LDRCC           R2, [R5],#4
000113cc  ADDCC           R2, R2, R7,LSL#1
000113d0  STRHCC          R8, [R2]
000113d4  BCC             loc_113C4
000113d8  LDR             R0, [R0,#0x14]
000113dc  ADD             R5, R0, R1,LSL#2
000113e0  SUB             R0, R7, R6
000113e4  MOVS            R0, R0,ASR#1
000113e8  BEQ             loc_11414
000113ec  ORR             R3, R8, R8,LSL#16
000113f0  B               loc_1140C
000113f4  LDR             R1, [R5],#4
000113f8  ADD             R1, R1, R6,LSL#1
000113fc  ADD             R2, R1, R0,LSL#2
00011400  CMP             R1, R2
00011404  STRCC           R3, [R1],#4
00011408  BCC             loc_11400
0001140c  CMP             R5, LR
00011410  BCC             loc_113F4
00011414  MOV             R0, #0
00011418  ADD             SP, SP, #0x44 ; 'D'
0001141c  POP             {R4-R11,LR}
00011420  BX              LR
