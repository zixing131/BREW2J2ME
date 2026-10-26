00020c54  PUSH            {R4-R11,LR}
00020c58  MOV             R4, R0
00020c5c  LDR             R0, [R0,#0x898]
00020c60  LDR             R1, [R4,#0x8A4]
00020c64  SUB             SP, SP, #0x34
00020c68  LDR             R7, [R0,#0x28]
00020c6c  ADD             R1, R1, #1
00020c70  STR             R1, [R4,#0x8A4]
00020c74  CMP             R0, #0
00020c78  BEQ             loc_21394
00020c7c  ADD             R0, R4, #0x800
00020c80  ADD             R0, R0, #0x28 ; '('
00020c84  STR             R0, [SP,#0x34+var_4]
00020c88  BL              sub_20458
00020c8c  ADD             R11, R4, #0x830
00020c90  LDMDB           R11, {R10,R11}
00020c94  MOV             R8, #0
00020c98  B               loc_21114
00020c9c  MOV             R1, #0x13
00020ca0  LDR             R0, [R0,#0x38]
00020ca4  MUL             R2, R1, R8
00020ca8  ADD             R5, R0, R2,LSL#2
00020cac  LDRH            R0, [R5,#0x44]
00020cb0  CMP             R0, #2
00020cb4  BEQ             loc_21110
00020cb8  LDRH            R1, [R5,#0x14]
00020cbc  MOV             R2, #0x15
00020cc0  LDR             R0, [R4,#0x88C]
00020cc4  MUL             R1, R2, R1
00020cc8  ADD             R6, R0, R1,LSL#2
00020ccc  LDR             R0, [R4,#0x8B0]
00020cd0  LDRB            R0, [R0,#0x20]
00020cd4  CMP             R0, #1
00020cd8  BNE             loc_20D08
00020cdc  LDR             R0, =(start - 0x20CE8)
00020ce0  ADD             R0, PC, R0; start
00020ce4  LDR             R0, [R0,#(dword_8 - 0xC)]
00020ce8  ADR             LR, loc_20CF4
00020cec  LDR             R0, [R0,#0xC0]
00020cf0  BX              R0
00020cf4  LDR             R0, [R0,#0x760]
00020cf8  LDRB            R0, [R0,#0x234]
00020cfc  CMP             R0, #0
00020d00  MOVEQ           R1, #0
00020d04  STRBEQ          R1, [R5,#0x40]
00020d08  LDRSH           R0, [R5,#0x38]
00020d0c  CMP             R0, #0
00020d10  BGT             loc_20DAC
00020d14  LDRSH           R0, [R5,#0x3C]
00020d18  SUB             R0, R0, #8
00020d1c  MOV             R1, R0,ASR#31
00020d20  ADD             R0, R0, R1,LSR#28
00020d24  MOV             R1, R0,ASR#4
00020d28  STR             R1, [SP,#0x34+var_8]
00020d2c  LDRSH           R0, [R5,#0x3E]
00020d30  SUB             R0, R0, #8
00020d34  MOV             R2, R0,ASR#31
00020d38  ADD             R0, R0, R2,LSR#28
00020d3c  MOV             R0, R0,ASR#4
00020d40  STR             R0, [SP,#0x34+var_C]
00020d44  LDR             R0, [R7,R0,LSL#2]
00020d48  LDRB            R1, [R0,R1]!
00020d4c  BIC             R1, R1, #4
00020d50  STRB            R1, [R0]
00020d54  LDR             R0, [SP,#0x34+var_C]
00020d58  ADD             R0, R7, R0,LSL#2
00020d5c  LDR             R0, [R0,#4]
00020d60  LDR             R1, [SP,#0x34+var_8]
00020d64  LDRB            R1, [R0,R1]!
00020d68  BIC             R1, R1, #4
00020d6c  STRB            R1, [R0]
00020d70  LDR             R0, [SP,#0x34+var_C]
00020d74  ADD             R0, R7, R0,LSL#2
00020d78  LDR             R0, [R0,#4]
00020d7c  LDR             R1, [SP,#0x34+var_8]
00020d80  ADD             R0, R0, R1
00020d84  LDRB            R1, [R0,#1]!
00020d88  BIC             R1, R1, #4
00020d8c  STRB            R1, [R0]
00020d90  LDR             R0, [SP,#0x34+var_C]
00020d94  LDR             R0, [R7,R0,LSL#2]
00020d98  LDR             R1, [SP,#0x34+var_8]
00020d9c  ADD             R0, R0, R1
00020da0  LDRB            R1, [R0,#1]!
00020da4  BIC             R1, R1, #4
00020da8  STRB            R1, [R0]
00020dac  LDRB            R0, [R5,#0x49]
00020db0  CMP             R0, #0
00020db4  SUBNE           R0, R0, #1
00020db8  STRBNE          R0, [R5,#0x49]
00020dbc  LDRB            R0, [R5,#0x48]
00020dc0  CMP             R0, #0
00020dc4  SUBNE           R0, R0, #1
00020dc8  STRBNE          R0, [R5,#0x48]
00020dcc  BNE             loc_21110
00020dd0  LDRSH           R0, [R5,#0x38]
00020dd4  CMP             R0, #0
00020dd8  BGT             loc_20E10
00020ddc  MOV             R0, #2
00020de0  STRH            R0, [R5,#0x44]
00020de4  LDRB            R0, [R5,#0x24]
00020de8  CMP             R0, #0
00020dec  BEQ             loc_21110
00020df0  LDR             R0, [R4,#0x8B0]
00020df4  MOV             R9, #1
00020df8  STRB            R9, [R0,#0x338]
00020dfc  LDRH            R0, [R5,#0x26]
00020e00  LDR             R1, [R4,#0x8B0]
00020e04  ADD             R1, R1, #0x300
00020e08  STRH            R0, [R1,#0x3A]
00020e0c  B               loc_21110
00020e10  LDR             R0, [R4,#0x8B0]
00020e14  LDRB            R0, [R0,#0x20]
00020e18  CMP             R0, #1
00020e1c  BEQ             loc_21110
00020e20  LDRB            R0, [R5,#0x40]
00020e24  CMP             R0, #0
00020e28  BNE             loc_20E90
00020e2c  LDRSH           R0, [R5,#0x1C]
00020e30  SUB             R0, R10, R0
00020e34  STR             R0, [SP,#0x34+var_8]
00020e38  LDRSH           R0, [R5,#0x1E]
00020e3c  LDR             R1, [SP,#0x34+var_8]
00020e40  SUB             R0, R11, R0
00020e44  STR             R0, [SP,#0x34+var_C]
00020e48  CMP             R1, #0
00020e4c  LDRSHGE         R2, [R5,#0x22]
00020e50  CMPGE           R2, R1
00020e54  CMPGE           R0, #0
00020e58  LDRSHGE         R1, [R5,#0x20]
00020e5c  CMPGE           R1, R0
00020e60  LDRGE           R0, [R4,#0x8B0]
00020e64  LDRBGE          R0, [R0,#0x20]
00020e68  CMPGE           R0, #0
00020e6c  BNE             loc_21110
00020e70  MOV             R0, #1
00020e74  STRB            R0, [R5,#0x40]
00020e78  MOV             R1, #0
00020e7c  STRB            R1, [R5,#0x41]
00020e80  STRB            R1, [R5,#0x47]
00020e84  STRH            R1, [R5,#0x44]
00020e88  MOV             R0, #0xA
00020e8c  STRB            R0, [R5,#0x46]
00020e90  LDRSH           R0, [R5,#0x3E]
00020e94  SUB             R1, R11, R0
00020e98  LDRSH           R0, [R5,#0x3C]
00020e9c  SUB             R0, R10, R0
00020ea0  BL              sub_19868
00020ea4  STRH            R0, [R5,#0x3A]
00020ea8  LDRSH           R0, [R5,#0x3E]
00020eac  SUB             R1, R0, R11
00020eb0  LDRSH           R0, [R5,#0x3C]
00020eb4  SUB             R0, R0, R10
00020eb8  BL              sub_1973C
00020ebc  MOV             R3, #1
00020ec0  STMEA           SP, {R0,R3}
00020ec4  LDRSH           R3, [R5,#0x3A]
00020ec8  LDRSH           R2, [R5,#0x3E]
00020ecc  MOV             R9, R0
00020ed0  MOV             R0, R4
00020ed4  LDRSH           R1, [R5,#0x3C]
00020ed8  BL              sub_58EC
00020edc  STR             R0, [SP,#0x34+var_14]
00020ee0  LDRB            R0, [R5,#0x46]
00020ee4  CMP             R0, #0xA
00020ee8  BCC             loc_20F78
00020eec  LDRB            R0, [R6,#0x46]
00020ef0  MOV             R1, #1
00020ef4  ADD             R1, R1, R0,LSL#1
00020ef8  MOV             R0, #0
00020efc  BL              sub_19748
00020f00  LDRB            R1, [R6,#0x45]
00020f04  LDRB            R2, [R6,#0x46]
00020f08  ADD             R1, R1, R2
00020f0c  SUB             R1, R1, R0
00020f10  MOV             R0, #0xA
00020f14  MUL             R1, R0, R1
00020f18  MOV             R0, #0x64 ; 'd'
00020f1c  BL              sub_104
00020f20  STRB            R0, [R5,#0x41]
00020f24  MOV             R1, #0
00020f28  STRB            R1, [R5,#0x46]
00020f2c  MOV             R1, #1
00020f30  STRH            R1, [R5,#0x44]
00020f34  LDRB            R0, [R6,#0x48]
00020f38  ADD             R1, R1, R0,LSL#1
00020f3c  MOV             R0, #0
00020f40  BL              sub_19748
00020f44  LDRB            R1, [R6,#0x47]
00020f48  LDRB            R2, [R6,#0x48]
00020f4c  ADD             R1, R1, R2
00020f50  SUB             R0, R1, R0
00020f54  STR             R0, [SP,#0x34+var_10]
00020f58  MOV             R0, #0
00020f5c  MOV             R1, #2
00020f60  BL              sub_19748
00020f64  CMP             R0, #0
00020f68  LDR             R0, [SP,#0x34+var_10]
00020f6c  RSBEQ           R0, R0, #0
00020f70  STRB            R0, [R5,#0x47]
00020f74  B               loc_21028
00020f78  LDRB            R1, [R5,#0x41]
00020f7c  CMP             R0, R1
00020f80  MOVCS           R1, #0
00020f84  STRHCS          R1, [R5,#0x44]
00020f88  BCS             loc_2101C
00020f8c  LDRH            R0, [R6,#0x4A]
00020f90  CMP             R0, R9
00020f94  BLT             loc_20FA4
00020f98  LDR             R0, [SP,#0x34+var_14]
00020f9c  CMP             R0, #0
00020fa0  BNE             loc_20FB0
00020fa4  LDRSH           R0, [R5,#0x3A]
00020fa8  LDRSB           R1, [R5,#0x47]
00020fac  B               loc_20FCC
00020fb0  MOV             R1, #2
00020fb4  MOV             R0, #0
00020fb8  BL              sub_19748
00020fbc  CMP             R0, #0
00020fc0  LDRSH           R1, [R5,#0x3A]
00020fc4  MOVEQ           R0, #0xFFFFFFA6
00020fc8  MOVNE           R0, #0x5A ; 'Z'
00020fcc  ADD             R0, R0, R1
00020fd0  LDRSH           R1, [R5,#0x3C]
00020fd4  MOV             R3, #1
00020fd8  ADD             R2, SP, #0x34+var_C
00020fdc  STR             R1, [SP,#0x34+var_8]
00020fe0  LDRSH           R1, [R5,#0x3E]
00020fe4  STR             R1, [SP,#0x34+var_C]
00020fe8  STMEA           SP, {R2,R3}
00020fec  MOV             R1, R0,LSL#16
00020ff0  MOV             R1, R1,ASR#16
00020ff4  MOV             R0, R4
00020ff8  LDRB            R2, [R6,#0x44]
00020ffc  ADD             R3, SP, #0x34+var_8
00021000  BL              sub_1BAB8
00021004  LDR             R0, [SP,#0x34+var_8]
00021008  STRH            R0, [R5,#0x3C]
0002100c  LDR             R0, [SP,#0x34+var_C]
00021010  STRH            R0, [R5,#0x3E]
00021014  MOV             R0, #1
00021018  STRH            R0, [R5,#0x44]
0002101c  LDRB            R0, [R5,#0x46]
00021020  ADD             R0, R0, #1
00021024  STRB            R0, [R5,#0x46]
00021028  LDR             R0, [SP,#0x34+var_14]
0002102c  CMP             R0, #0
00021030  BEQ             loc_21110
00021034  LDRH            R0, [R6,#0x42]
00021038  CMP             R0, R9
0002103c  BLT             loc_21110
00021040  LDRB            R9, [R6,#0x40]
00021044  CMP             R9, #0
00021048  MOVEQ           R9, #1
0002104c  BEQ             loc_21058
00021050  CMP             R9, #0x32 ; '2'
00021054  BGT             loc_21084
00021058  MOV             R0, #0x64 ; 'd'
0002105c  LDR             R1, [R4,#0x8A4]
00021060  BL              sub_1DC
00021064  STR             R1, [SP,#0x34+var_20]
00021068  MOV             R1, #0x32 ; '2'
0002106c  MOV             R0, R9
00021070  BL              sub_104
00021074  LDR             R1, [SP,#0x34+var_20]
00021078  BL              sub_1DC
0002107c  CMP             R1, #0
00021080  BNE             loc_21110
00021084  MOV             R1, #2
00021088  MOV             R0, #0
0002108c  BL              sub_19748
00021090  CMP             R0, #0
00021094  BEQ             loc_21110
00021098  LDRB            R0, [R6,#0x41]
0002109c  MOV             R9, #1
000210a0  ADD             R1, R9, R0,LSL#1
000210a4  MOV             R0, #0
000210a8  BL              sub_19748
000210ac  LDRH            R1, [R5,#0x3A]
000210b0  LDRB            R2, [R6,#0x41]
000210b4  SUB             R1, R1, R2
000210b8  ADD             R3, R0, R1
000210bc  MOV             R0, R4
000210c0  BL              sub_1209C
000210c4  MOV             R1, #5
000210c8  STRB            R1, [R0]
000210cc  MOV             R1, #0
000210d0  STR             R1, [R0,#4]
000210d4  STRB            R9, [R0,#0x20]
000210d8  LDRB            R2, [R6,#0x3C]
000210dc  STRB            R2, [R0,#0x21]
000210e0  LDRH            R2, [R5,#0x3C]
000210e4  STRH            R2, [R0,#0x22]
000210e8  LDRH            R2, [R5,#0x3E]
000210ec  STRH            R2, [R0,#0x24]
000210f0  STRH            R3, [R0,#0x26]
000210f4  STRH            R1, [R0,#0x28]
000210f8  LDRH            R1, [R6,#0x42]
000210fc  STRH            R1, [R0,#0x2A]
00021100  LDRB            R1, [R6,#0x3D]
00021104  STRH            R1, [R0,#0x2C]
00021108  LDRH            R1, [R6,#0x3E]
0002110c  STRH            R1, [R0,#0x2E]
00021110  ADD             R8, R8, #1
00021114  LDR             R0, [R4,#0x898]
00021118  LDR             R1, [R0,#0x34]
0002111c  CMP             R1, R8
00021120  BHI             loc_20C9C
00021124  MOV             R8, #0
00021128  LDR             R0, [R4,#0x898]
0002112c  ADD             R1, R8, R8,LSL#1
00021130  ADD             R0, R0, R1,LSL#4
00021134  ADD             R5, R0, #0x4C ; 'L'
00021138  LDRB            R0, [R0,#0x6C]
0002113c  CMP             R0, #0
00021140  BEQ             loc_21334
00021144  LDR             R0, [R4,#0x828]
00021148  MOV             R2, #8
0002114c  SUB             R0, R0, #8
00021150  MOV             R1, R0,ASR#31
00021154  ADD             R0, R0, R1,LSR#28
00021158  MOV             R3, R0,ASR#4
0002115c  STR             R3, [SP,#0x34+var_18]
00021160  LDR             R0, [R4,#0x82C]
00021164  MOV             R6, #0
00021168  SUB             R0, R0, #8
0002116c  MOV             R1, R0,ASR#31
00021170  ADD             R0, R0, R1,LSR#28
00021174  MOV             R11, R0,ASR#4
00021178  MOV             R0, #0
0002117c  STR             R0, [SP,#0x34+var_20]
00021180  STR             R0, [SP,#0x34+var_24]
00021184  LDRSH           R9, [R5,#0x22]
00021188  LDRSH           R10, [R5,#0x24]
0002118c  LDRSH           R0, [R5,#0x26]
00021190  STR             R2, [SP,#0x34+var_28]
00021194  STR             R0, [SP,#0x34+var_1C]
00021198  BL              sub_196D8
0002119c  STR             R0, [SP,#0x34+var_2C]
000211a0  LDR             R0, [SP,#0x34+var_1C]
000211a4  BL              sub_197A8
000211a8  LDR             R3, [SP,#0x34+var_18]
000211ac  STR             R0, [SP,#0x34+var_30]
000211b0  ADD             R0, R3, #1
000211b4  ADD             LR, R11, #1
000211b8  B               loc_21270
000211bc  LDR             R2, [SP,#0x34+var_28]
000211c0  ADD             R6, R6, R2
000211c4  CMP             R6, R1
000211c8  LDR             R2, [SP,#0x34+var_2C]
000211cc  MOVGE           R6, R1
000211d0  MUL             R1, R2, R6
000211d4  ADD             R1, R9, R1,ASR#16
000211d8  LDR             R2, [SP,#0x34+var_30]
000211dc  STR             R1, [SP,#0x34+var_8]
000211e0  MUL             R1, R2, R6
000211e4  ADD             R2, R10, R1,ASR#16
000211e8  LDR             R1, [SP,#0x34+var_8]
000211ec  STR             R2, [SP,#0x34+var_C]
000211f0  MOV             R3, R1,ASR#31
000211f4  ADD             R1, R1, R3,LSR#28
000211f8  MOV             R3, R2,ASR#31
000211fc  ADD             R2, R2, R3,LSR#28
00021200  MOV             R1, R1,ASR#4
00021204  CMP             R1, #0
00021208  MOV             R2, R2,ASR#4
0002120c  BLT             loc_21270
00021210  LDR             R3, [R4,#0x898]
00021214  LDRH            R12, [R3]
00021218  CMP             R1, R12,LSL#1
0002121c  BGE             loc_21270
00021220  CMP             R2, #0
00021224  BLT             loc_21270
00021228  LDRH            R3, [R3,#2]
0002122c  CMP             R2, R3,LSL#1
00021230  BGE             loc_21270
00021234  LDR             R3, [SP,#0x34+var_18]
00021238  CMP             R1, R3
0002123c  CMPNE           R0, R1
00021240  BNE             loc_21258
00021244  CMP             R2, R11
00021248  CMPNE           LR, R2
0002124c  MOVEQ           R0, #1
00021250  STREQ           R0, [SP,#0x34+var_20]
00021254  BEQ             loc_2127C
00021258  LDR             R2, [R7,R2,LSL#2]
0002125c  LDRB            R1, [R2,R1]
00021260  TST             R1, #2
00021264  MOVNE           R0, #1
00021268  STRNE           R0, [SP,#0x34+var_24]
0002126c  BNE             loc_2127C
00021270  LDRSH           R1, [R5,#0x2C]
00021274  CMP             R1, R6
00021278  BGT             loc_211BC
0002127c  LDR             R0, [SP,#0x34+var_8]
00021280  STRH            R0, [R5,#0x22]
00021284  LDR             R0, [SP,#0x34+var_C]
00021288  STRH            R0, [R5,#0x24]
0002128c  LDRH            R0, [R5,#0x28]
00021290  ADD             R0, R0, R6
00021294  STRH            R0, [R5,#0x28]
00021298  LDRB            R0, [R5,#0x21]
0002129c  CMP             R0, #0
000212a0  BEQ             loc_212DC
000212a4  MOV             R0, R4
000212a8  BL              sub_120D0
000212ac  MOV             R1, #6
000212b0  STRB            R1, [R0]
000212b4  MOV             R1, #1
000212b8  STRB            R1, [R0,#0x14]
000212bc  MOV             R1, #0
000212c0  STR             R1, [R0,#4]
000212c4  STRH            R9, [R0,#0x18]
000212c8  STRH            R10, [R0,#0x1A]
000212cc  LDRH            R1, [R5,#0x22]
000212d0  STRH            R1, [R0,#0x1C]
000212d4  LDRH            R1, [R5,#0x24]
000212d8  STRH            R1, [R0,#0x1E]
000212dc  LDR             R0, [SP,#0x34+var_20]
000212e0  CMP             R0, #0
000212e4  BEQ             loc_21310
000212e8  MOV             R1, #0
000212ec  STRB            R1, [R5,#0x20]
000212f0  LDR             R0, [R4,#0x8B0]
000212f4  LDRSH           R2, [R5,#0x2E]
000212f8  LDR             R0, [R0,#0x18]
000212fc  LDR             R1, [R0]
00021300  SUB             R1, R1, R2
00021304  STR             R1, [R0]
00021308  MOV             R0, #3
0002130c  STRB            R0, [R4,#0x871]
00021310  LDR             R0, [SP,#0x34+var_24]
00021314  CMP             R0, #0
00021318  MOVNE           R1, #0
0002131c  STRBNE          R1, [R5,#0x20]
00021320  LDRSH           R0, [R5,#0x28]
00021324  LDRSH           R1, [R5,#0x2A]
00021328  CMP             R0, R1
0002132c  MOVGT           R1, #0
00021330  STRBGT          R1, [R5,#0x20]
00021334  ADD             R8, R8, #1
00021338  CMP             R8, #0x28 ; '('
0002133c  BLT             loc_21128
00021340  MOV             R0, #0
00021344  MOV             R3, #0
00021348  LDR             R1, [R4,#0x898]
0002134c  RSB             R2, R0, R0,LSL#3
00021350  ADD             R1, R1, R2,LSL#3
00021354  ADD             R1, R1, #0x400
00021358  ADD             R1, R1, #0x3CC
0002135c  LDRB            R2, [R1,#0x14]
00021360  CMP             R2, #1
00021364  BNE             loc_21380
00021368  LDR             R2, [R1,#4]
0002136c  ADD             R2, R2, #1
00021370  STR             R2, [R1,#4]
00021374  CMP             R2, #4
00021378  STRCS           R3, [R1,#4]
0002137c  STRBCS          R3, [R1,#0x14]
00021380  ADD             R0, R0, #1
00021384  CMP             R0, #0x64 ; 'd'
00021388  BLT             loc_21348
0002138c  LDR             R0, [SP,#0x34+var_4]
00021390  BL              sub_1098
00021394  ADD             SP, SP, #0x34 ; '4'
00021398  POP             {R4-R11,LR}
0002139c  BX              LR
