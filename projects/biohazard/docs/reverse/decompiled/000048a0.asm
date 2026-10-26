000048a0  PUSH            {R4-R11,LR}
000048a4  MOV             R4, R0
000048a8  LDR             R0, [R0,#0x8D0]
000048ac  SUB             SP, SP, #0x6C
000048b0  STR             R0, [SP,#0x6C+var_1C]
000048b4  LDR             R3, [R4,#0x83C]
000048b8  LDR             R6, [R4,#0x830]
000048bc  STR             R3, [SP,#0x6C+var_4C]
000048c0  LDR             R0, [R4,#0x898]
000048c4  MOV             R11, R1
000048c8  LDRB            R1, [R0,#9]
000048cc  CMP             R1, #0
000048d0  LDRBNE          R0, [R0,#0xB]
000048d4  MOVEQ           R0, #0
000048d8  MOVNE           R0, R0,LSL#7
000048dc  STR             R0, [SP,#0x6C+var_50]
000048e0  LDR             R0, [R4,#0x838]
000048e4  LDR             R7, [R4,#0x834]
000048e8  STR             R0, [SP,#0x6C+var_54]
000048ec  MOV             R0, R7
000048f0  BL              sub_197A8
000048f4  MOV             R2, R0,ASR#8
000048f8  STR             R2, [SP,#0x6C+var_58]
000048fc  MOV             R0, R7
00004900  BL              sub_196D8
00004904  MOV             R0, R0,ASR#8
00004908  STR             R0, [SP,#0x6C+var_5C]
0000490c  LDR             R0, [R4,#0x840]
00004910  CMP             R11, #4
00004914  MOV             R1, R0,LSL#2
00004918  STR             R1, [SP,#0x6C+var_68]
0000491c  LDR             R0, [R4,#0x828]
00004920  MOV             R1, R0,LSL#2
00004924  STR             R1, [SP,#0x6C+var_60]
00004928  LDR             R0, [R4,#0x82C]
0000492c  MOV             R1, R0,LSL#2
00004930  STR             R1, [SP,#0x6C+var_64]
00004934  LDREQ           R0, [R4,#0x898]
00004938  LDREQ           R0, [R0,#0x34]
0000493c  BEQ             loc_4968
00004940  CMP             R11, #2
00004944  LDREQ           R0, [R4,#0x898]
00004948  LDREQ           R0, [R0,#0x2C]
0000494c  BEQ             loc_4968
00004950  CMP             R11, #5
00004954  MOVEQ           R0, #0x28 ; '('
00004958  BEQ             loc_4968
0000495c  CMP             R11, #6
00004960  MOVNE           R0, #0
00004964  MOVEQ           R0, #0x64 ; 'd'
00004968  STR             R0, [SP,#0x6C+var_48]
0000496c  LDR             R0, [SP,#0x6C+var_54]
00004970  MOV             R1, #0
00004974  LDR             R3, [SP,#0x6C+var_4C]
00004978  STR             R1, [SP,#0x6C+var_44]
0000497c  MOV             R1, R0,LSL#3
00004980  SUB             R3, R6, R3
00004984  LDR             R0, [SP,#0x6C+var_50]
00004988  STR             R3, [SP,#0x6C+var_C]
0000498c  LDR             R3, [SP,#0x6C+var_54]
00004990  STR             R1, [SP,#0x6C+var_4]
00004994  SUB             R0, R0, R6
00004998  MOV             R1, R0,LSL#8
0000499c  ADD             R0, R4, #0x800
000049a0  STR             R0, [SP,#0x6C+var_8]
000049a4  SUB             R0, R6, #0xB4
000049a8  MOV             R0, R0,LSL#8
000049ac  MOV             R2, R6,LSL#8
000049b0  MUL             R2, R3, R2
000049b4  MUL             R0, R3, R0
000049b8  MUL             R1, R3, R1
000049bc  ADD             R3, SP, #0x6C+var_18
000049c0  STM             R3, {R0-R2}
000049c4  B               loc_4F70
000049c8  CMP             R11, #4
000049cc  BNE             loc_4A1C
000049d0  LDR             R0, [R4,#0x898]
000049d4  MOV             R2, #0x13
000049d8  LDR             R0, [R0,#0x38]
000049dc  LDR             R1, [SP,#0x6C+var_44]
000049e0  MUL             R1, R2, R1
000049e4  ADD             R10, R0, R1,LSL#2
000049e8  LDRSH           R0, [R10,#0x3C]
000049ec  MOV             R2, #0x15
000049f0  STR             R0, [SP,#0x6C+var_20]
000049f4  LDRSH           R0, [R10,#0x3E]
000049f8  STR             R0, [SP,#0x6C+var_24]
000049fc  MOV             R0, #0
00004a00  STR             R0, [SP,#0x6C+var_2C]
00004a04  LDRH            R1, [R10,#0x14]
00004a08  LDR             R0, [R4,#0x88C]
00004a0c  MUL             R1, R2, R1
00004a10  ADD             R0, R0, R1,LSL#2
00004a14  LDRB            R1, [R0,#6]
00004a18  B               loc_4B08
00004a1c  CMP             R11, #2
00004a20  BNE             loc_4ABC
00004a24  LDR             R0, [R4,#0x898]
00004a28  LDR             R0, [R0,#0x30]
00004a2c  LDR             R1, [SP,#0x6C+var_44]
00004a30  ADD             R1, R1, R1,LSL#2
00004a34  ADD             R8, R0, R1,LSL#3
00004a38  LDRB            R1, [R8,#0x14]
00004a3c  LDR             R0, [R4,#0x87C]
00004a40  ADD             R1, R1, R1,LSL#3
00004a44  ADD             R0, R0, R1,LSL#2
00004a48  LDRSH           R1, [R8,#0x18]
00004a4c  STR             R1, [SP,#0x6C+var_20]
00004a50  LDRSH           R1, [R8,#0x1A]
00004a54  STR             R1, [SP,#0x6C+var_24]
00004a58  LDRB            R1, [R0,#7]
00004a5c  STR             R1, [SP,#0x6C+var_2C]
00004a60  LDRB            R1, [R0,#6]
00004a64  STR             R1, [SP,#0x6C+var_28]
00004a68  LDRB            R1, [R0,#0x1C]
00004a6c  CMP             R1, #0
00004a70  LDRNE           R1, [R4,#0x8B0]
00004a74  CMPNE           R1, #0
00004a78  BEQ             loc_4A90
00004a7c  LDRSB           R0, [R0,#0x1D]
00004a80  ADD             R0, R1, R0
00004a84  LDRB            R0, [R0,#0x28]
00004a88  CMP             R0, #1
00004a8c  BEQ             loc_4F64
00004a90  LDRB            R0, [R8,#0x15]
00004a94  CMP             R0, #0
00004a98  LDRNE           R0, [R4,#0x8B0]
00004a9c  CMPNE           R0, #0
00004aa0  BEQ             loc_4D28
00004aa4  LDRH            R1, [R8,#0x16]
00004aa8  ADD             R0, R0, R1
00004aac  LDRB            R0, [R0,#0x28]
00004ab0  CMP             R0, #1
00004ab4  BEQ             loc_4F64
00004ab8  B               loc_4D28
00004abc  CMP             R11, #5
00004ac0  BNE             loc_4B10
00004ac4  LDR             R0, [R4,#0x898]
00004ac8  LDR             R1, [SP,#0x6C+var_44]
00004acc  ADD             R1, R1, R1,LSL#1
00004ad0  ADD             R0, R0, R1,LSL#4
00004ad4  ADD             R9, R0, #0x4C ; 'L'
00004ad8  LDRB            R0, [R0,#0x6C]
00004adc  CMP             R0, #0
00004ae0  LDRBNE          R0, [R9,#0x21]
00004ae4  CMPNE           R0, #0
00004ae8  BEQ             loc_4F64
00004aec  LDRSH           R0, [R9,#0x22]
00004af0  MOV             R1, #0xA
00004af4  STR             R0, [SP,#0x6C+var_20]
00004af8  LDRSH           R0, [R9,#0x24]
00004afc  STR             R0, [SP,#0x6C+var_24]
00004b00  MOV             R0, #0
00004b04  STR             R0, [SP,#0x6C+var_2C]
00004b08  STR             R1, [SP,#0x6C+var_28]
00004b0c  B               loc_4D28
00004b10  CMP             R11, #6
00004b14  BNE             loc_4D28
00004b18  LDR             R0, [R4,#0x898]
00004b1c  LDR             R1, [SP,#0x6C+var_44]
00004b20  RSB             R1, R1, R1,LSL#3
00004b24  ADD             R0, R0, R1,LSL#3
00004b28  ADD             R6, R0, #0x400
00004b2c  LDRB            R0, [R0,#0x7E0]
00004b30  ADD             R6, R6, #0x3CC
00004b34  CMP             R0, #0
00004b38  BEQ             loc_4F64
00004b3c  LDRSH           R0, [R6,#0x18]
00004b40  STR             R0, [SP,#0x6C+var_20]
00004b44  LDRSH           R0, [R6,#0x1A]
00004b48  LDR             R1, [SP,#0x6C+var_60]
00004b4c  LDR             R2, [SP,#0x6C+var_58]
00004b50  STR             R0, [SP,#0x6C+var_24]
00004b54  LDR             R0, [SP,#0x6C+var_20]
00004b58  RSB             R1, R1, R0,LSL#2
00004b5c  STR             R1, [SP,#0x6C+var_30]
00004b60  LDR             R1, [SP,#0x6C+var_64]
00004b64  LDR             R0, [SP,#0x6C+var_24]
00004b68  RSB             R1, R1, R0,LSL#2
00004b6c  STR             R1, [SP,#0x6C+var_34]
00004b70  LDR             R1, [SP,#0x6C+var_30]
00004b74  LDR             R0, [SP,#0x6C+var_5C]
00004b78  MUL             R0, R1, R0
00004b7c  LDR             R1, [SP,#0x6C+var_34]
00004b80  MLA             R0, R1, R2, R0
00004b84  MOV             R7, R0,ASR#8
00004b88  CMP             R7, #0
00004b8c  BLE             loc_4F64
00004b90  LDR             R1, [SP,#0x6C+var_68]
00004b94  CMP             R7, R1
00004b98  BGE             loc_4F64
00004b9c  LDR             R1, [SP,#0x6C+var_4]
00004ba0  LDR             R0, [R6,#4]
00004ba4  MUL             R1, R0, R1
00004ba8  MOV             R0, #3
00004bac  BL              sub_1DC
00004bb0  MOV             R1, R0
00004bb4  MOV             R0, R7
00004bb8  BL              sub_1DC
00004bbc  STR             R0, [R6,#0x30]
00004bc0  LDR             R0, [SP,#0x6C+var_5C]
00004bc4  LDR             R1, [SP,#0x6C+var_34]
00004bc8  LDR             R2, [SP,#0x6C+var_58]
00004bcc  MUL             R0, R1, R0
00004bd0  LDR             R1, [SP,#0x6C+var_30]
00004bd4  MUL             R2, R1, R2
00004bd8  SUB             R0, R0, R2
00004bdc  LDR             R1, [SP,#0x6C+var_54]
00004be0  MOV             R0, R0,ASR#8
00004be4  MUL             R1, R0, R1
00004be8  MOV             R0, R7
00004bec  BL              sub_104
00004bf0  STR             R0, [SP,#0x6C+var_38]
00004bf4  LDR             R1, [SP,#0x6C+var_18]
00004bf8  MOV             R0, R7
00004bfc  BL              sub_104
00004c00  LDR             R1, [SP,#0x6C+var_C]
00004c04  RSB             R0, R0, R1,LSL#8
00004c08  LDR             R1, [SP,#0x6C+var_8]
00004c0c  MOV             R0, R0,ASR#8
00004c10  LDRH            R1, [R1,#0x9C]
00004c14  LDR             R2, [SP,#0x6C+var_38]
00004c18  STR             R0, [R6,#0x24]
00004c1c  ADD             R1, R2, R1,LSR#1
00004c20  STR             R1, [R6,#0x20]
00004c24  LDRSH           R0, [R6,#0x1C]
00004c28  STR             R0, [SP,#0x6C+var_20]
00004c2c  LDRSH           R0, [R6,#0x1E]
00004c30  LDR             R1, [SP,#0x6C+var_60]
00004c34  LDR             R2, [SP,#0x6C+var_58]
00004c38  STR             R0, [SP,#0x6C+var_24]
00004c3c  LDR             R0, [SP,#0x6C+var_20]
00004c40  RSB             R1, R1, R0,LSL#2
00004c44  STR             R1, [SP,#0x6C+var_30]
00004c48  LDR             R1, [SP,#0x6C+var_64]
00004c4c  LDR             R0, [SP,#0x6C+var_24]
00004c50  RSB             R1, R1, R0,LSL#2
00004c54  STR             R1, [SP,#0x6C+var_34]
00004c58  LDR             R1, [SP,#0x6C+var_30]
00004c5c  LDR             R0, [SP,#0x6C+var_5C]
00004c60  MUL             R0, R1, R0
00004c64  LDR             R1, [SP,#0x6C+var_34]
00004c68  MLA             R0, R1, R2, R0
00004c6c  MOV             R0, R0,ASR#8
00004c70  STR             R0, [SP,#0x6C+var_3C]
00004c74  CMP             R0, #0
00004c78  BLE             loc_4F64
00004c7c  LDR             R0, [SP,#0x6C+var_3C]
00004c80  LDR             R1, [SP,#0x6C+var_68]
00004c84  CMP             R0, R1
00004c88  BGE             loc_4F64
00004c8c  LDR             R1, [SP,#0x6C+var_4]
00004c90  LDR             R0, [R6,#4]
00004c94  MUL             R1, R0, R1
00004c98  MOV             R0, #3
00004c9c  BL              sub_1DC
00004ca0  MOV             R1, R0
00004ca4  LDR             R0, [SP,#0x6C+var_3C]
00004ca8  BL              sub_1DC
00004cac  STR             R0, [R6,#0x34]
00004cb0  LDR             R0, [SP,#0x6C+var_3C]
00004cb4  LDR             R1, [SP,#0x6C+var_34]
00004cb8  CMP             R7, R0
00004cbc  LDR             R0, [SP,#0x6C+var_5C]
00004cc0  LDR             R2, [SP,#0x6C+var_58]
00004cc4  MUL             R0, R1, R0
00004cc8  LDR             R1, [SP,#0x6C+var_30]
00004ccc  LDRGT           R7, [SP,#0x6C+var_3C]
00004cd0  MUL             R2, R1, R2
00004cd4  SUB             R0, R0, R2
00004cd8  LDR             R1, [SP,#0x6C+var_54]
00004cdc  MOV             R0, R0,ASR#8
00004ce0  MUL             R1, R0, R1
00004ce4  LDR             R0, [SP,#0x6C+var_3C]
00004ce8  BL              sub_104
00004cec  MOV             R5, R0
00004cf0  LDR             R0, [SP,#0x6C+var_3C]
00004cf4  LDR             R1, [SP,#0x6C+var_18]
00004cf8  BL              sub_104
00004cfc  LDR             R1, [SP,#0x6C+var_C]
00004d00  RSB             R0, R0, R1,LSL#8
00004d04  LDR             R1, [SP,#0x6C+var_8]
00004d08  MOV             R0, R0,ASR#8
00004d0c  LDRH            R1, [R1,#0x9C]
00004d10  STR             R0, [R6,#0x2C]
00004d14  ADD             R1, R5, R1,LSR#1
00004d18  STR             R1, [R6,#0x28]
00004d1c  STR             R7, [R6,#8]
00004d20  MOV             R5, R6
00004d24  B               loc_4E9C
00004d28  LDR             R0, [SP,#0x6C+var_20]
00004d2c  LDR             R1, [SP,#0x6C+var_60]
00004d30  LDR             R2, [SP,#0x6C+var_58]
00004d34  RSB             R1, R1, R0,LSL#2
00004d38  STR             R1, [SP,#0x6C+var_30]
00004d3c  LDR             R1, [SP,#0x6C+var_64]
00004d40  LDR             R0, [SP,#0x6C+var_24]
00004d44  RSB             R6, R1, R0,LSL#2
00004d48  LDR             R0, [SP,#0x6C+var_5C]
00004d4c  LDR             R1, [SP,#0x6C+var_30]
00004d50  MUL             R0, R1, R0
00004d54  MLA             R0, R6, R2, R0
00004d58  MOV             R7, R0,ASR#8
00004d5c  CMP             R7, #0
00004d60  BLE             loc_4F64
00004d64  LDR             R1, [SP,#0x6C+var_68]
00004d68  CMP             R7, R1
00004d6c  BGE             loc_4F64
00004d70  MOV             R1, R6
00004d74  LDR             R0, [SP,#0x6C+var_30]
00004d78  BL              sub_1973C
00004d7c  STR             R0, [SP,#0x6C+var_6C]
00004d80  LDR             R0, [SP,#0x6C+var_54]
00004d84  LDR             R1, [SP,#0x6C+var_28]
00004d88  MUL             R0, R1, R0
00004d8c  BL              sub_2A0
00004d90  MOV             R1, R0,LSL#8
00004d94  LDR             R0, [SP,#0x6C+var_6C]
00004d98  BL              sub_104
00004d9c  STR             R0, [SP,#0x6C+var_40]
00004da0  LDR             R1, [SP,#0x6C+var_30]
00004da4  LDR             R2, [SP,#0x6C+var_58]
00004da8  LDR             R0, [SP,#0x6C+var_5C]
00004dac  MUL             R2, R1, R2
00004db0  MUL             R0, R6, R0
00004db4  SUB             R0, R0, R2
00004db8  LDR             R1, [SP,#0x6C+var_54]
00004dbc  MOV             R0, R0,ASR#8
00004dc0  MUL             R1, R0, R1
00004dc4  MOV             R0, R7
00004dc8  BL              sub_104
00004dcc  MOV             R6, R0
00004dd0  LDR             R0, [SP,#0x6C+var_2C]
00004dd4  CMP             R0, #0
00004dd8  BEQ             loc_4DF4
00004ddc  MOV             R0, R7
00004de0  LDR             R1, [SP,#0x6C+var_14]
00004de4  BL              sub_104
00004de8  LDR             R1, [SP,#0x6C+var_C]
00004dec  ADD             R0, R0, R1,LSL#8
00004df0  B               loc_4E10
00004df4  CMP             R11, #5
00004df8  LDRNE           R1, [SP,#0x6C+var_10]
00004dfc  MOV             R0, R7
00004e00  LDREQ           R1, [SP,#0x6C+var_18]
00004e04  BL              sub_104
00004e08  LDR             R1, [SP,#0x6C+var_C]
00004e0c  RSB             R0, R0, R1,LSL#8
00004e10  LDR             R1, [SP,#0x6C+var_8]
00004e14  MOV             R0, R0,ASR#8
00004e18  LDRH            R1, [R1,#0x9C]
00004e1c  CMP             R11, #4
00004e20  ADD             R1, R6, R1,LSR#1
00004e24  BNE             loc_4E60
00004e28  STR             R0, [R10,#0x2C]
00004e2c  STR             R1, [R10,#0x28]
00004e30  LDR             R0, [SP,#0x6C+var_40]
00004e34  STR             R0, [R10,#0x30]
00004e38  STR             R7, [R10,#8]
00004e3c  LDR             R1, [SP,#0x6C+var_18]
00004e40  MOV             R0, R7
00004e44  BL              sub_104
00004e48  LDR             R1, [SP,#0x6C+var_C]
00004e4c  MOV             R5, R10
00004e50  RSB             R0, R0, R1,LSL#8
00004e54  MOV             R0, R0,ASR#8
00004e58  STR             R0, [R10,#0x34]
00004e5c  B               loc_4E9C
00004e60  CMP             R11, #2
00004e64  STREQ           R0, [R8,#0x20]
00004e68  STREQ           R1, [R8,#0x1C]
00004e6c  LDREQ           R0, [SP,#0x6C+var_40]
00004e70  MOVEQ           R5, R8
00004e74  STREQ           R0, [R8,#0x24]
00004e78  STREQ           R7, [R8,#8]
00004e7c  BEQ             loc_4E9C
00004e80  CMP             R11, #5
00004e84  STREQ           R0, [R9,#0x18]
00004e88  STREQ           R1, [R9,#0x14]
00004e8c  LDREQ           R0, [SP,#0x6C+var_40]
00004e90  MOVEQ           R5, R9
00004e94  STREQ           R0, [R9,#0x1C]
00004e98  STREQ           R7, [R9,#8]
00004e9c  LDR             R0, [R4,#0x8D0]
00004ea0  CMP             R0, #0
00004ea4  STREQ           R5, [R4,#0x8D0]
00004ea8  STREQ           R5, [R4,#0x8D4]
00004eac  STREQ           R0, [R5,#0xC]
00004eb0  STREQ           R0, [R5,#0x10]
00004eb4  BEQ             loc_4F60
00004eb8  LDR             R1, [R0,#8]
00004ebc  CMP             R1, R7
00004ec0  STRLT           R0, [R5,#0xC]
00004ec4  MOVLT           R0, #0
00004ec8  STRLT           R0, [R5,#0x10]
00004ecc  LDRLT           R0, [R4,#0x8D0]
00004ed0  STRLT           R5, [R0,#0x10]
00004ed4  STRLT           R5, [R4,#0x8D0]
00004ed8  BLT             loc_4F60
00004edc  LDR             R0, [R4,#0x8D4]
00004ee0  LDR             R0, [R0,#8]
00004ee4  CMP             R0, R7
00004ee8  BLT             loc_4F0C
00004eec  MOV             R0, #0
00004ef0  STR             R0, [R5,#0xC]
00004ef4  LDR             R0, [R4,#0x8D4]
00004ef8  STR             R5, [R0,#0xC]
00004efc  LDR             R0, [R4,#0x8D4]
00004f00  STR             R0, [R5,#0x10]
00004f04  STR             R5, [R4,#0x8D4]
00004f08  B               loc_4F60
00004f0c  LDR             R0, [SP,#0x6C+var_1C]
00004f10  LDR             R0, [R0,#8]
00004f14  CMP             R0, R7
00004f18  LDR             R0, [SP,#0x6C+var_1C]
00004f1c  BLT             loc_4F3C
00004f20  LDR             R1, [R0,#0xC]
00004f24  LDR             R2, [R1,#8]
00004f28  CMP             R2, R7
00004f2c  MOVGE           R0, R1
00004f30  BGE             loc_4F20
00004f34  B               loc_4F48
00004f38  LDR             R0, [R0,#0x10]
00004f3c  LDR             R1, [R0,#8]
00004f40  CMP             R1, R7
00004f44  BLT             loc_4F38
00004f48  LDR             R1, [R0,#0xC]
00004f4c  STR             R0, [R5,#0x10]
00004f50  STR             R1, [R5,#0xC]
00004f54  LDR             R1, [R0,#0xC]
00004f58  STR             R5, [R1,#0x10]
00004f5c  STR             R5, [R0,#0xC]
00004f60  STR             R5, [SP,#0x6C+var_1C]
00004f64  LDR             R1, [SP,#0x6C+var_44]
00004f68  ADD             R1, R1, #1
00004f6c  STR             R1, [SP,#0x6C+var_44]
00004f70  ADD             R1, SP, #0x6C+var_48
00004f74  LDM             R1, {R0,R1}
00004f78  CMP             R1, R0
00004f7c  BLT             loc_49C8
00004f80  ADD             SP, SP, #0x6C ; 'l'
00004f84  POP             {R4-R11,LR}
00004f88  BX              LR
