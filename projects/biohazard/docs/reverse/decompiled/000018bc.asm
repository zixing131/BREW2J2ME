000018bc  PUSH            {R0-R11,LR}
000018c0  SUB             SP, SP, #0xBC
000018c4  ADD             R11, SP, #0x100
000018c8  LDM             R11, {R5,R11}
000018cc  MOV             R12, R2
000018d0  ADD             R2, SP, #0xCC+arg_18
000018d4  MOV             LR, R1
000018d8  LDM             R2, {R1,R2}
000018dc  LDR             R8, [SP,#0xCC+arg_0]
000018e0  CMP             R3, R5
000018e4  CMPEQ           R8, R11
000018e8  LDR             R9, [SP,#0xCC+arg_C]
000018ec  MOV             R10, R3
000018f0  BNE             loc_1938
000018f4  LDR             R3, [SP,#0xCC+arg_20]
000018f8  STR             R1, [SP,#0xCC+var_BC]
000018fc  STR             R3, [SP,#0xCC+var_B4]
00001900  ADD             R3, SP, #0xCC+arg_4
00001904  STR             R2, [SP,#0xCC+var_B8]
00001908  STR             R9, [SP,#0xCC+var_C0]
0000190c  LDM             R3, {R2,R3}
00001910  STMFA           SP, {R2,R3}
00001914  STR             R8, [SP,#0xCC+var_CC]
00001918  LDR             R0, [SP,#0xCC+var_10]
0000191c  MOV             R3, R10
00001920  MOV             R2, R12
00001924  MOV             R1, LR
00001928  BL              sub_3324
0000192c  ADD             SP, SP, #0xCC
00001930  POP             {R4-R11,LR}
00001934  BX              LR
00001938  LDR             R0, [SP,#0xCC+var_10]
0000193c  LDR             R0, [R0,#0x14]
00001940  STR             R0, [SP,#0xCC+var_14]
00001944  CMP             R0, #0
00001948  MOVEQ           R0, #7
0000194c  BEQ             loc_192C
00001950  LDR             R0, [SP,#0xCC+arg_4]
00001954  CMP             R0, #0
00001958  MOVEQ           R0, #2
0000195c  BEQ             loc_192C
00001960  LDR             R0, [SP,#0xCC+arg_4]
00001964  LDR             R0, [R0,#8]
00001968  STR             R0, [SP,#0xCC+var_18]
0000196c  CMP             R0, #0
00001970  MOVEQ           R0, #0x65 ; 'e'
00001974  BEQ             loc_192C
00001978  CMP             R10, #0
0000197c  CMPGT           R8, #0
00001980  CMPGT           R5, #0
00001984  CMPGT           R11, #0
00001988  BLE             loc_331C
0000198c  LDR             R0, [SP,#0xCC+arg_4]
00001990  LDRH            R0, [R0,#4]
00001994  AND             R3, R0, #3
00001998  CMP             R3, #2
0000199c  STR             R0, [SP,#0xCC+var_1C]
000019a0  MOVEQ           R0, #1
000019a4  STR             R3, [SP,#0xCC+var_30]
000019a8  BEQ             loc_192C
000019ac  AND             R3, R1, #1
000019b0  STR             R3, [SP,#0xCC+var_34]
000019b4  MOV             R3, #1
000019b8  LDR             R6, [SP,#0xCC+arg_20]
000019bc  AND             R4, R3, R1,LSR#1
000019c0  MOV             R0, R6,LSL#16
000019c4  AND             R6, R3, R1,LSR#3
000019c8  AND             R7, R3, R1,LSR#2
000019cc  ANDS            R3, R3, R1,LSR#4
000019d0  STR             R3, [SP,#0xCC+var_3C]
000019d4  STR             R6, [SP,#0xCC+var_38]
000019d8  LDRNE           R6, [SP,#0xCC+arg_20]
000019dc  MOVEQ           R3, #1
000019e0  ANDEQ           R1, R3, R1,LSR#5
000019e4  MOVNE           R1, R6,LSL#8
000019e8  MOVNE           R1, R1,LSR#24
000019ec  STRNE           R1, [SP,#0xCC+var_44]
000019f0  MOVNE           R1, #0
000019f4  STR             R1, [SP,#0xCC+var_40]
000019f8  LDR             R1, [SP,#0xCC+var_38]
000019fc  MOV             R0, R0,LSR#16
00001a00  CMP             R1, #0
00001a04  BEQ             loc_1A38
00001a08  AND             R3, R2, #0xFF
00001a0c  STR             R3, [SP,#0xCC+var_48]
00001a10  RSB             R1, R3, #0x20 ; ' '
00001a14  AND             R3, R1, #0xFF
00001a18  STR             R3, [SP,#0xCC+var_94]
00001a1c  LDR             R3, [SP,#0xCC+var_48]
00001a20  CMP             R3, #0
00001a24  BEQ             loc_331C
00001a28  LDR             R3, [SP,#0xCC+var_48]
00001a2c  CMP             R3, #0x20 ; ' '
00001a30  MOVEQ           R1, #0
00001a34  STREQ           R1, [SP,#0xCC+var_38]
00001a38  MOV             R2, #0
00001a3c  STR             R2, [SP,#0xCC+var_9C]
00001a40  LDR             R6, [SP,#0xCC+arg_20]
00001a44  LDR             R2, [SP,#0xCC+var_3C]
00001a48  AND             R1, R6, #0xF800
00001a4c  MOV             R1, R1,LSL#11
00001a50  AND             R3, R6, #0x7E0
00001a54  ORR             R1, R1, R3,LSL#5
00001a58  AND             R3, R6, #0x1F
00001a5c  ORR             R1, R1, R3
00001a60  STR             R1, [SP,#0xCC+var_20]
00001a64  CMP             R2, #0
00001a68  BEQ             loc_1AAC
00001a6c  LDR             R1, [SP,#0xCC+var_44]
00001a70  RSB             R1, R1, #0x20 ; ' '
00001a74  AND             R3, R1, #0xFF
00001a78  LDR             R1, [SP,#0xCC+var_44]
00001a7c  STR             R3, [SP,#0xCC+var_98]
00001a80  CMP             R1, #0
00001a84  MOVEQ           R2, #0
00001a88  STREQ           R2, [SP,#0xCC+var_3C]
00001a8c  BEQ             loc_1AAC
00001a90  LDR             R1, [SP,#0xCC+var_44]
00001a94  CMP             R1, #0x20 ; ' '
00001a98  MOVEQ           R2, #1
00001a9c  ADDEQ           R1, SP, #0xCC+var_A0
00001aa0  STMEQ           R1, {R0,R2}
00001aa4  LDREQ           R1, [SP,#0xCC+var_20]
00001aa8  STREQ           R1, [SP,#0xCC+var_A4]
00001aac  LDR             R0, [SP,#0xCC+var_10]
00001ab0  MOV             R1, R5,LSL#16
00001ab4  LDRH            R0, [R0,#0xC]
00001ab8  ADD             R0, R0, LR
00001abc  MOV             R6, R0,LSL#16
00001ac0  LDR             R0, [SP,#0xCC+var_10]
00001ac4  MOV             R6, R6,ASR#16
00001ac8  LDRH            R0, [R0,#0xE]
00001acc  ADD             R0, R0, R12
00001ad0  MOV             R0, R0,LSL#16
00001ad4  MOV             R0, R0,ASR#16
00001ad8  STR             R0, [SP,#0xCC+var_8]
00001adc  MOV             R0, R10
00001ae0  BL              sub_104
00001ae4  MOV             R5, R0
00001ae8  MOV             R0, R8
00001aec  MOV             R1, R11,LSL#16
00001af0  BL              sub_104
00001af4  STR             R0, [SP,#0xCC+var_7C]
00001af8  LDR             R0, [SP,#0xCC+var_10]
00001afc  ADD             R3, R6, R10
00001b00  LDRH            R0, [R0,#4]
00001b04  CMP             R0, R6
00001b08  MOVLT           R0, R6
00001b0c  MOV             R2, R0,LSL#16
00001b10  MOV             R2, R2,ASR#16
00001b14  LDR             R0, [SP,#0xCC+var_10]
00001b18  STR             R2, [SP,#0xCC+var_4C]
00001b1c  LDRH            R0, [R0,#6]
00001b20  LDR             R1, [SP,#0xCC+var_8]
00001b24  CMP             R0, R1
00001b28  LDRLT           R0, [SP,#0xCC+var_8]
00001b2c  MOV             R12, R0,LSL#16
00001b30  MOV             R12, R12,ASR#16
00001b34  STR             R12, [SP,#0xCC+var_50]
00001b38  LDR             R0, [SP,#0xCC+var_10]
00001b3c  LDRH            R0, [R0,#8]
00001b40  CMP             R3, R0
00001b44  MOVLE           R0, R3
00001b48  MOV             R2, R0,LSL#16
00001b4c  LDR             R0, [SP,#0xCC+var_8]
00001b50  MOV             R2, R2,ASR#16
00001b54  ADD             R1, R0, R8
00001b58  LDR             R0, [SP,#0xCC+var_10]
00001b5c  LDRH            R0, [R0,#0xA]
00001b60  LDR             R12, [SP,#0xCC+var_4C]
00001b64  SUB             R12, R2, R12
00001b68  CMP             R1, R0
00001b6c  MOVLE           R0, R1
00001b70  MOV             R8, R12,LSL#16
00001b74  MOV             R8, R8,ASR#16
00001b78  CMP             R8, #0
00001b7c  LDRGT           R12, [SP,#0xCC+var_50]
00001b80  MOV             R0, R0,LSL#16
00001b84  MOV             R0, R0,ASR#16
00001b88  SUBGT           R12, R0, R12
00001b8c  MOVGT           R12, R12,LSL#16
00001b90  MOVGT           R12, R12,ASR#16
00001b94  MOVGT           R11, R12
00001b98  CMPGT           R12, #0
00001b9c  BLE             loc_331C
00001ba0  CMP             R4, #0
00001ba4  MUL             R12, R5, R8
00001ba8  MOV             R12, R12,ASR#16
00001bac  LDREQ           R2, [SP,#0xCC+var_4C]
00001bb0  STR             R12, [SP,#0xCC+var_54]
00001bb4  SUBNE           R2, R3, R2
00001bb8  SUBEQ           R2, R2, R6
00001bbc  LDR             LR, [SP,#0xCC+var_7C]
00001bc0  CMP             R7, #0
00001bc4  MUL             R12, LR, R11
00001bc8  MOV             R12, R12,ASR#16
00001bcc  STR             R12, [SP,#0xCC+var_58]
00001bd0  LDREQ           R12, [SP,#0xCC+var_50]
00001bd4  LDREQ           R0, [SP,#0xCC+var_8]
00001bd8  LDR             LR, [SP,#0xCC+var_7C]
00001bdc  SUBEQ           R0, R12, R0
00001be0  SUBNE           R0, R1, R0
00001be4  MUL             R0, LR, R0
00001be8  ADD             R1, R9, R0,ASR#16
00001bec  LDR             R3, [SP,#0xCC+arg_8]
00001bf0  MUL             R2, R5, R2
00001bf4  ADD             R3, R3, R2,ASR#16
00001bf8  MOV             R2, R2,LSL#16
00001bfc  MOV             R1, R1,LSL#16
00001c00  MOV             R0, R0,LSL#16
00001c04  MOV             R0, R0,LSR#16
00001c08  MOV             R10, R1,ASR#16
00001c0c  MOV             R2, R2,LSR#16
00001c10  SUB             R2, R2, R5,ASR#1
00001c14  LDR             R1, [SP,#0xCC+arg_4]
00001c18  SUB             R0, R0, LR,ASR#1
00001c1c  STR             R0, [SP,#0xCC+var_88]
00001c20  STR             R2, [SP,#0xCC+var_84]
00001c24  LDR             R12, [SP,#0xCC+var_54]
00001c28  LDRH            R1, [R1]
00001c2c  MOV             R6, R3,LSL#16
00001c30  MOV             R6, R6,ASR#16
00001c34  ADD             R0, R6, R12
00001c38  CMP             R0, R1
00001c3c  STR             R1, [SP,#0xCC+var_24]
00001c40  BLE             loc_1C60
00001c44  LDR             R1, [SP,#0xCC+var_24]
00001c48  SUB             R0, R1, R6
00001c4c  MOV             R1, R0,LSL#16
00001c50  MOV             R0, R5
00001c54  BL              sub_104
00001c58  MOV             R8, R0,LSL#16
00001c5c  MOV             R8, R8,ASR#16
00001c60  LDR             R1, [SP,#0xCC+arg_4]
00001c64  LDR             R12, [SP,#0xCC+var_58]
00001c68  LDRH            R1, [R1,#2]
00001c6c  ADD             R0, R10, R12
00001c70  CMP             R0, R1
00001c74  STR             R1, [SP,#0xCC+var_28]
00001c78  BLE             loc_1C98
00001c7c  LDR             R1, [SP,#0xCC+var_28]
00001c80  SUB             R0, R1, R10
00001c84  MOV             R1, R0,LSL#16
00001c88  LDR             R0, [SP,#0xCC+var_7C]
00001c8c  BL              sub_104
00001c90  MOV             R12, R0,LSL#16
00001c94  MOV             R11, R12,ASR#16
00001c98  CMP             R8, #0
00001c9c  CMPGT           R11, #0
00001ca0  BLE             loc_331C
00001ca4  LDR             R0, [SP,#0xCC+var_1C]
00001ca8  MOV             R1, #1
00001cac  AND             R0, R1, R0,LSR#4
00001cb0  LDR             R1, [SP,#0xCC+var_1C]
00001cb4  TST             R1, #0x20
00001cb8  MOVEQ           R1, #0
00001cbc  STREQ           R1, [SP,#0xCC+var_34]
00001cc0  LDR             R1, [SP,#0xCC+var_30]
00001cc4  CMP             R1, #1
00001cc8  LDREQ           R2, [SP,#0xCC+var_20]
00001ccc  STREQ           R2, [SP,#0xCC+var_90]
00001cd0  LDR             R2, [SP,#0xCC+var_3C]
00001cd4  CMP             R2, #0
00001cd8  LDRNE           R1, [SP,#0xCC+var_44]
00001cdc  LDRNE           R2, [SP,#0xCC+var_20]
00001ce0  MULNE           R2, R1, R2
00001ce4  STRNE           R2, [SP,#0xCC+var_90]
00001ce8  LDR             R12, [SP,#0xCC+var_50]
00001cec  LDR             R1, [SP,#0xCC+var_14]
00001cf0  CMP             R7, #0
00001cf4  ADDEQ           R9, R1, R12,LSL#2
00001cf8  ADDNE           R1, R1, R12,LSL#2
00001cfc  ADDNE           R1, R1, R11,LSL#2
00001d00  SUBNE           R9, R1, #4
00001d04  MOV             R12, R11
00001d08  ADDEQ           R1, R9, R12,LSL#2
00001d0c  SUBNE           R1, R9, R12,LSL#2
00001d10  STR             R1, [SP,#0xCC+var_5C]
00001d14  LDR             R1, [SP,#0xCC+var_88]
00001d18  STR             R1, [SP,#0xCC+var_80]
00001d1c  LDR             R1, [SP,#0xCC+var_40]
00001d20  CMP             R1, #0
00001d24  BEQ             loc_21EC
00001d28  LDR             R3, [SP,#0xCC+var_30]
00001d2c  MOV             R1, #1
00001d30  LDR             R2, [SP,#0xCC+arg_20]
00001d34  CMP             R3, #0
00001d38  BNE             loc_1D70
00001d3c  CMP             R2, #0
00001d40  BEQ             loc_1D70
00001d44  LDRH            R3, [R2,#4]
00001d48  AND             R3, R3, #3
00001d4c  CMP             R3, #1
00001d50  CMPEQ           R0, #0
00001d54  LDREQ           R3, [SP,#0xCC+var_24]
00001d58  LDRHEQ          R12, [R2]
00001d5c  CMPEQ           R3, R12
00001d60  LDREQ           R3, [SP,#0xCC+var_28]
00001d64  LDRHEQ          R12, [R2,#2]
00001d68  CMPEQ           R3, R12
00001d6c  BEQ             loc_1D74
00001d70  MOV             R1, #0
00001d74  CMP             R1, #0
00001d78  BEQ             loc_21EC
00001d7c  LDRH            R0, [R2,#4]
00001d80  MOV             R1, R10
00001d84  TST             R0, #0x10
00001d88  LDR             R0, [SP,#0xCC+var_18]
00001d8c  BNE             loc_1F60
00001d90  ADD             R1, R0, R1,LSL#2
00001d94  STR             R1, [SP,#0xCC+var_60]
00001d98  LDR             R0, [R2,#8]
00001d9c  ADD             R1, R0, R10,LSL#2
00001da0  STR             R1, [SP,#0xCC+var_68]
00001da4  B               loc_1F50
00001da8  LDR             R0, [SP,#0xCC+var_7C]
00001dac  LDR             R1, [SP,#0xCC+var_80]
00001db0  CMP             R4, #0
00001db4  ADD             R1, R1, R0
00001db8  STR             R1, [SP,#0xCC+var_80]
00001dbc  MOV             R0, R1,ASR#16
00001dc0  LDR             R1, [SP,#0xCC+var_60]
00001dc4  LDR             R1, [R1,R0,LSL#2]
00001dc8  ADD             R10, R1, R6,LSL#1
00001dcc  LDR             R1, [SP,#0xCC+var_68]
00001dd0  STR             R10, [SP,#0xCC+var_64]
00001dd4  LDR             R0, [R1,R0,LSL#2]
00001dd8  ADD             R2, R0, R6
00001ddc  STR             R2, [SP,#0xCC+var_6C]
00001de0  BEQ             loc_1E10
00001de4  CMP             R7, #0
00001de8  MOV             R0, R9
00001dec  ADDEQ           R9, R0, #4
00001df0  SUBNE           R9, R0, #4
00001df4  LDR             R0, [R0]
00001df8  LDR             R2, [SP,#0xCC+var_4C]
00001dfc  ADD             R0, R0, R2,LSL#1
00001e00  ADD             R0, R0, R8,LSL#1
00001e04  SUB             R0, R0, #2
00001e08  SUB             R1, R0, R8,LSL#1
00001e0c  B               loc_1E30
00001e10  CMP             R7, #0
00001e14  MOV             R0, R9
00001e18  ADDEQ           R9, R0, #4
00001e1c  SUBNE           R9, R0, #4
00001e20  LDR             R0, [R0]
00001e24  LDR             R2, [SP,#0xCC+var_4C]
00001e28  ADD             R0, R0, R2,LSL#1
00001e2c  ADD             R1, R0, R8,LSL#1
00001e30  LDR             LR, [SP,#0xCC+var_84]
00001e34  B               loc_1F48
00001e38  ADD             LR, LR, R5
00001e3c  LDR             R2, [SP,#0xCC+var_6C]
00001e40  MOV             R12, LR,ASR#16
00001e44  LDRB            R2, [R2,R12]
00001e48  CMP             R2, #0
00001e4c  BEQ             loc_1F34
00001e50  LDR             R3, [SP,#0xCC+var_38]
00001e54  CMP             R3, #0
00001e58  LDRNE           R3, [SP,#0xCC+var_48]
00001e5c  MULNE           R2, R3, R2
00001e60  MOVNE           R2, R2,LSL#19
00001e64  MOVNE           R2, R2,LSR#24
00001e68  CMP             R2, #0x20 ; ' '
00001e6c  BNE             loc_1EA0
00001e70  LDR             R10, [SP,#0xCC+var_64]
00001e74  CMP             R4, #0
00001e78  ADD             R2, R10, R12,LSL#1
00001e7c  LDRH            R3, [R2]
00001e80  BEQ             loc_1E90
00001e84  MOV             R2, R0
00001e88  SUB             R0, R0, #2
00001e8c  B               loc_1E98
00001e90  MOV             R2, R0
00001e94  ADD             R0, R0, #2
00001e98  STRH            R3, [R2]
00001e9c  B               loc_1F48
00001ea0  CMP             R2, #0
00001ea4  BNE             loc_1EB4
00001ea8  CMP             R4, #0
00001eac  BEQ             loc_1F44
00001eb0  B               loc_1F3C
00001eb4  RSB             R3, R2, #0x20 ; ' '
00001eb8  AND             R10, R3, #0xFF
00001ebc  STR             R10, [SP,#0xCC+var_94]
00001ec0  LDRH            R3, [R0]
00001ec4  LDR             R10, [SP,#0xCC+var_64]
00001ec8  CMP             R4, #0
00001ecc  ADD             R12, R10, R12,LSL#1
00001ed0  AND             R10, R3, #0xF800
00001ed4  AND             R11, R3, #0x7E0
00001ed8  MOV             R10, R10,LSL#11
00001edc  ORR             R10, R10, R11,LSL#5
00001ee0  AND             R3, R3, #0x1F
00001ee4  LDRH            R12, [R12]
00001ee8  ORR             R3, R10, R3
00001eec  LDR             R10, [SP,#0xCC+var_94]
00001ef0  AND             R11, R12, #0x7E0
00001ef4  MUL             R3, R10, R3
00001ef8  AND             R10, R12, #0xF800
00001efc  MOV             R10, R10,LSL#11
00001f00  ORR             R10, R10, R11,LSL#5
00001f04  AND             R12, R12, #0x1F
00001f08  ORR             R12, R10, R12
00001f0c  MLA             R3, R2, R12, R3
00001f10  MOV             R2, R3,LSR#5
00001f14  AND             R3, R2, #0x7C00000
00001f18  AND             R12, R2, #0xFC00
00001f1c  MOV             R3, R3,LSR#11
00001f20  ORR             R3, R3, R12,LSR#5
00001f24  AND             R2, R2, #0x1F
00001f28  ORR             R3, R3, R2
00001f2c  BEQ             loc_1E90
00001f30  B               loc_1E84
00001f34  CMP             R4, #0
00001f38  BEQ             loc_1F44
00001f3c  SUB             R0, R0, #2
00001f40  B               loc_1F48
00001f44  ADD             R0, R0, #2
00001f48  CMP             R0, R1
00001f4c  BNE             loc_1E38
00001f50  LDR             R1, [SP,#0xCC+var_5C]
00001f54  CMP             R9, R1
00001f58  BNE             loc_1DA8
00001f5c  B               loc_331C
00001f60  ADD             R0, R0, R1,LSL#2
00001f64  STR             R0, [SP,#0xCC+var_60]
00001f68  LDR             R0, [R2,#8]
00001f6c  ADD             R3, R0, R10,LSL#2
00001f70  STR             R3, [SP,#0xCC+var_68]
00001f74  LDR             R0, [R2,#0xC]
00001f78  ADD             R0, R0, R10
00001f7c  STR             R0, [SP,#0xCC+var_70]
00001f80  LDR             R0, [R2,#0x10]
00001f84  ADD             R3, R0, R10
00001f88  STR             R3, [SP,#0xCC+var_74]
00001f8c  B               loc_21DC
00001f90  LDR             R0, [SP,#0xCC+var_7C]
00001f94  LDR             R1, [SP,#0xCC+var_80]
00001f98  ADD             R1, R1, R0
00001f9c  STR             R1, [SP,#0xCC+var_80]
00001fa0  LDR             R0, [SP,#0xCC+var_70]
00001fa4  MOV             R1, R1,ASR#16
00001fa8  LDRB            R2, [R0,R1]
00001fac  LDR             R3, [SP,#0xCC+var_74]
00001fb0  LDRB            R3, [R3,R1]
00001fb4  CMP             R6, R2
00001fb8  MOVLE           R0, R2
00001fbc  MOVGT           R0, R6
00001fc0  ADD             R3, R3, R2
00001fc4  SUB             R3, R3, R0
00001fc8  MOV             R3, R3,LSL#16
00001fcc  MOV             R3, R3,ASR#16
00001fd0  STR             R3, [SP,#0xCC+var_A8]
00001fd4  CMP             R3, #0
00001fd8  BGT             loc_1FEC
00001fdc  CMP             R7, #0
00001fe0  ADDEQ           R9, R9, #4
00001fe4  SUBNE           R9, R9, #4
00001fe8  B               loc_21DC
00001fec  LDR             R3, [SP,#0xCC+var_68]
00001ff0  LDR             R11, [SP,#0xCC+var_84]
00001ff4  LDR             R3, [R3,R1,LSL#2]
00001ff8  SUB             R2, R0, R2
00001ffc  MOV             R2, R2,LSL#16
00002000  ADD             R2, R3, R2,ASR#16
00002004  STR             R2, [SP,#0xCC+var_6C]
00002008  LDR             R2, [SP,#0xCC+var_60]
0000200c  CMP             R4, #0
00002010  LDR             R1, [R2,R1,LSL#2]
00002014  ADD             R12, R1, R0,LSL#1
00002018  STR             R12, [SP,#0xCC+var_64]
0000201c  LDR             R1, [R9]
00002020  LDR             R2, [SP,#0xCC+var_10]
00002024  BEQ             loc_2078
00002028  LDRH            R2, [R2,#4]
0000202c  SUB             R0, R0, R6
00002030  ADD             R1, R1, R2,LSL#1
00002034  SUB             R10, R1, #2
00002038  MOV             R1, R0,LSL#16
0000203c  MOV             R0, R5
00002040  BL              sub_104
00002044  CMP             R7, #0
00002048  MOV             R1, R9
0000204c  ADDEQ           R9, R1, #4
00002050  SUBNE           R9, R1, #4
00002054  LDR             R1, [R1]
00002058  LDR             R2, [SP,#0xCC+var_4C]
0000205c  ADD             R1, R1, R2,LSL#1
00002060  SUB             R0, R1, R0,LSL#1
00002064  ADD             R0, R0, R8,LSL#1
00002068  SUB             R0, R0, #2
0000206c  CMP             R10, R0
00002070  BCS             loc_21DC
00002074  B               loc_21C4
00002078  LDRH            R2, [R2,#8]
0000207c  SUB             R0, R0, R6
00002080  ADD             R10, R1, R2,LSL#1
00002084  MOV             R1, R0,LSL#16
00002088  MOV             R0, R5
0000208c  BL              sub_104
00002090  CMP             R7, #0
00002094  MOV             R1, R9
00002098  ADDEQ           R9, R1, #4
0000209c  SUBNE           R9, R1, #4
000020a0  LDR             R1, [R1]
000020a4  LDR             R2, [SP,#0xCC+var_4C]
000020a8  ADD             R1, R1, R2,LSL#1
000020ac  ADD             R0, R1, R0,LSL#1
000020b0  CMP             R10, R0
000020b4  BLS             loc_21DC
000020b8  B               loc_21C4
000020bc  LDR             R1, [SP,#0xCC+var_6C]
000020c0  LDRB            R1, [R1,R3]
000020c4  CMP             R1, #0
000020c8  BEQ             loc_21B0
000020cc  LDR             R2, [SP,#0xCC+var_38]
000020d0  CMP             R2, #0
000020d4  LDRNE           R2, [SP,#0xCC+var_48]
000020d8  MULNE           R1, R2, R1
000020dc  MOVNE           R1, R1,LSL#19
000020e0  MOVNE           R1, R1,LSR#24
000020e4  CMP             R1, #0x20 ; ' '
000020e8  BNE             loc_211C
000020ec  LDR             R12, [SP,#0xCC+var_64]
000020f0  CMP             R4, #0
000020f4  ADD             R1, R12, R3,LSL#1
000020f8  LDRH            R2, [R1]
000020fc  BEQ             loc_210C
00002100  MOV             R1, R0
00002104  SUB             R0, R0, #2
00002108  B               loc_2114
0000210c  MOV             R1, R0
00002110  ADD             R0, R0, #2
00002114  STRH            R2, [R1]
00002118  B               loc_21C4
0000211c  CMP             R1, #0
00002120  BNE             loc_2130
00002124  CMP             R4, #0
00002128  BEQ             loc_21C0
0000212c  B               loc_21B8
00002130  RSB             R2, R1, #0x20 ; ' '
00002134  AND             R12, R2, #0xFF
00002138  STR             R12, [SP,#0xCC+var_94]
0000213c  LDRH            R2, [R0]
00002140  LDR             R12, [SP,#0xCC+var_64]
00002144  CMP             R4, #0
00002148  ADD             R3, R12, R3,LSL#1
0000214c  AND             R12, R2, #0xF800
00002150  AND             LR, R2, #0x7E0
00002154  MOV             R12, R12,LSL#11
00002158  ORR             R12, R12, LR,LSL#5
0000215c  AND             R2, R2, #0x1F
00002160  LDRH            R3, [R3]
00002164  ORR             R2, R12, R2
00002168  LDR             R12, [SP,#0xCC+var_94]
0000216c  AND             LR, R3, #0x7E0
00002170  MUL             R2, R12, R2
00002174  AND             R12, R3, #0xF800
00002178  MOV             R12, R12,LSL#11
0000217c  ORR             R12, R12, LR,LSL#5
00002180  AND             R3, R3, #0x1F
00002184  ORR             R3, R12, R3
00002188  MLA             R2, R1, R3, R2
0000218c  MOV             R1, R2,LSR#5
00002190  AND             R2, R1, #0x7C00000
00002194  AND             R3, R1, #0xFC00
00002198  MOV             R2, R2,LSR#11
0000219c  ORR             R2, R2, R3,LSR#5
000021a0  AND             R1, R1, #0x1F
000021a4  ORR             R2, R2, R1
000021a8  BEQ             loc_210C
000021ac  B               loc_2100
000021b0  CMP             R4, #0
000021b4  BEQ             loc_21C0
000021b8  SUB             R0, R0, #2
000021bc  B               loc_21C4
000021c0  ADD             R0, R0, #2
000021c4  CMP             R0, R10
000021c8  ADDNE           R11, R11, R5
000021cc  LDRNE           R1, [SP,#0xCC+var_A8]
000021d0  MOVNE           R3, R11,ASR#16
000021d4  CMPNE           R3, R1
000021d8  BLT             loc_20BC
000021dc  LDR             R1, [SP,#0xCC+var_5C]
000021e0  CMP             R9, R1
000021e4  BNE             loc_1F90
000021e8  B               loc_331C
000021ec  LDR             LR, =0x7E0FC1F
000021f0  CMP             R0, #0
000021f4  BEQ             loc_2B80
000021f8  LDR             R1, [SP,#0xCC+arg_4]
000021fc  LDR             R0, [R1,#0x14]
00002200  ADD             R1, R0, R10
00002204  STR             R1, [SP,#0xCC+var_78]
00002208  LDR             R1, [SP,#0xCC+arg_4]
0000220c  LDR             R0, [R1,#0xC]
00002210  ADD             R0, R0, R10
00002214  STR             R0, [SP,#0xCC+var_70]
00002218  LDR             R0, [R1,#0x10]
0000221c  LDR             R1, [SP,#0xCC+var_30]
00002220  ADD             R2, R0, R10
00002224  LDR             R0, [SP,#0xCC+var_18]
00002228  CMP             R1, #0
0000222c  MOV             R1, R10
00002230  STR             R2, [SP,#0xCC+var_74]
00002234  ADDEQ           R2, R0, R1,LSL#2
00002238  ADDNE           R3, R0, R1,LSL#2
0000223c  LDREQ           R1, [SP,#0xCC+arg_4]
00002240  STRNE           R3, [SP,#0xCC+var_68]
00002244  STREQ           R2, [SP,#0xCC+var_60]
00002248  LDRHEQ          R2, [R1,#6]
0000224c  LDR             R12, [SP,#0xCC+var_54]
00002250  STREQ           R2, [SP,#0xCC+var_8C]
00002254  ADD             R2, R12, R6
00002258  STR             R2, [SP,#0xCC+var_2C]
0000225c  B               loc_2B70
00002260  LDR             R1, [SP,#0xCC+var_30]
00002264  LDR             R0, [SP,#0xCC+var_7C]
00002268  CMP             R1, #0
0000226c  LDR             R1, [SP,#0xCC+var_80]
00002270  ADD             R1, R1, R0
00002274  STR             R1, [SP,#0xCC+var_80]
00002278  BNE             loc_29B0
0000227c  MOV             R2, R1,ASR#16
00002280  LDR             R0, [SP,#0xCC+var_70]
00002284  STR             R2, [SP,#0xCC+var_AC]
00002288  LDRB            R1, [R0,R2]
0000228c  LDR             R2, [SP,#0xCC+var_74]
00002290  LDR             R3, [SP,#0xCC+var_AC]
00002294  CMP             R6, R1
00002298  LDRB            R2, [R2,R3]
0000229c  MOVLE           R0, R1
000022a0  MOVGT           R0, R6
000022a4  ADD             R2, R2, R1
000022a8  SUB             R2, R2, R0
000022ac  MOV             R3, R2,LSL#16
000022b0  LDR             R2, [SP,#0xCC+var_2C]
000022b4  MOV             R3, R3,ASR#16
000022b8  SUB             R2, R2, R0
000022bc  CMP             R2, R3
000022c0  MOVLT           R2, R2,LSL#16
000022c4  MOVLT           R2, R2,ASR#16
000022c8  STR             R3, [SP,#0xCC+var_A8]
000022cc  STRLT           R2, [SP,#0xCC+var_A8]
000022d0  LDR             R2, [SP,#0xCC+var_A8]
000022d4  CMP             R2, #0
000022d8  BGT             loc_22E8
000022dc  CMP             R7, #0
000022e0  BEQ             loc_29FC
000022e4  B               loc_29F4
000022e8  LDR             R2, [SP,#0xCC+var_60]
000022ec  LDR             R3, [SP,#0xCC+var_AC]
000022f0  SUB             R1, R0, R1
000022f4  LDR             R11, [SP,#0xCC+var_84]
000022f8  LDR             R2, [R2,R3,LSL#2]
000022fc  MOV             R1, R1,LSL#16
00002300  MOV             R1, R1,ASR#16
00002304  ADD             R2, R2, R1,LSL#1
00002308  STR             R2, [SP,#0xCC+var_64]
0000230c  LDR             R2, [SP,#0xCC+var_38]
00002310  CMP             R2, #0
00002314  BEQ             loc_2578
00002318  LDR             R1, [R9]
0000231c  LDR             R2, [SP,#0xCC+var_10]
00002320  CMP             R4, #0
00002324  BEQ             loc_2378
00002328  LDRH            R2, [R2,#4]
0000232c  SUB             R0, R0, R6
00002330  ADD             R1, R1, R2,LSL#1
00002334  SUB             R10, R1, #2
00002338  MOV             R1, R0,LSL#16
0000233c  MOV             R0, R5
00002340  BL              sub_104
00002344  CMP             R7, #0
00002348  MOV             R1, R9
0000234c  ADDEQ           R9, R1, #4
00002350  SUBNE           R9, R1, #4
00002354  LDR             R1, [R1]
00002358  LDR             R2, [SP,#0xCC+var_4C]
0000235c  ADD             R1, R1, R2,LSL#1
00002360  SUB             R0, R1, R0,LSL#1
00002364  ADD             R0, R0, R8,LSL#1
00002368  SUB             R0, R0, #2
0000236c  CMP             R10, R0
00002370  BCS             loc_2B70
00002374  B               loc_23B8
00002378  LDRH            R2, [R2,#8]
0000237c  SUB             R0, R0, R6
00002380  ADD             R10, R1, R2,LSL#1
00002384  MOV             R1, R0,LSL#16
00002388  MOV             R0, R5
0000238c  BL              sub_104
00002390  CMP             R7, #0
00002394  MOV             R1, R9
00002398  ADDEQ           R9, R1, #4
0000239c  SUBNE           R9, R1, #4
000023a0  LDR             R1, [R1]
000023a4  LDR             R2, [SP,#0xCC+var_4C]
000023a8  ADD             R1, R1, R2,LSL#1
000023ac  ADD             R0, R1, R0,LSL#1
000023b0  CMP             R10, R0
000023b4  BLS             loc_2B70
000023b8  LDR             R1, [SP,#0xCC+var_78]
000023bc  LDR             R2, [SP,#0xCC+var_AC]
000023c0  LDR             LR, =0x7E0FC1F
000023c4  LDRB            R1, [R1,R2]
000023c8  CMP             R1, #0
000023cc  BNE             loc_2498
000023d0  B               loc_255C
000023d4  LDR             R2, [SP,#0xCC+var_64]
000023d8  ADD             R1, R2, R1,LSL#1
000023dc  LDRH            R1, [R1]
000023e0  LDR             R2, [SP,#0xCC+var_8C]
000023e4  CMP             R1, R2
000023e8  BEQ             loc_248C
000023ec  LDR             R2, [SP,#0xCC+var_9C]
000023f0  CMP             R2, #0
000023f4  LDRNE           R1, [SP,#0xCC+var_A4]
000023f8  BNE             loc_242C
000023fc  AND             R2, R1, #0xF800
00002400  AND             R3, R1, #0x7E0
00002404  MOV             R2, R2,LSL#11
00002408  ORR             R2, R2, R3,LSL#5
0000240c  AND             R1, R1, #0x1F
00002410  ORR             R1, R2, R1
00002414  LDR             R2, [SP,#0xCC+var_3C]
00002418  CMP             R2, #0
0000241c  LDRNE           R2, [SP,#0xCC+var_90]
00002420  LDRNE           R3, [SP,#0xCC+var_98]
00002424  MLANE           R1, R3, R1, R2
00002428  ANDNE           R1, LR, R1,LSR#5
0000242c  LDRH            R2, [R0]
00002430  CMP             R4, #0
00002434  AND             R3, R2, #0xF800
00002438  AND             R12, R2, #0x7E0
0000243c  MOV             R3, R3,LSL#11
00002440  ORR             R3, R3, R12,LSL#5
00002444  AND             R2, R2, #0x1F
00002448  ORR             R2, R3, R2
0000244c  LDR             R3, [SP,#0xCC+var_94]
00002450  MUL             R2, R3, R2
00002454  LDR             R3, [SP,#0xCC+var_48]
00002458  MLA             R1, R3, R1, R2
0000245c  MOV             R1, R1,LSR#5
00002460  AND             R2, R1, #0x7C00000
00002464  AND             R3, R1, #0xFC00
00002468  MOV             R2, R2,LSR#11
0000246c  ORR             R2, R2, R3,LSR#5
00002470  AND             R1, R1, #0x1F
00002474  ORR             R2, R2, R1
00002478  MOV             R1, R0
0000247c  ADDEQ           R0, R1, #2
00002480  SUBNE           R0, R1, #2
00002484  STRH            R2, [R1]
00002488  B               loc_2498
0000248c  CMP             R4, #0
00002490  ADDEQ           R0, R0, #2
00002494  SUBNE           R0, R0, #2
00002498  CMP             R0, R10
0000249c  ADDNE           R11, R11, R5
000024a0  LDRNE           R2, [SP,#0xCC+var_A8]
000024a4  MOVNE           R1, R11,ASR#16
000024a8  CMPNE           R1, R2
000024ac  BLT             loc_23D4
000024b0  B               loc_2B70
000024b4  LDR             R2, [SP,#0xCC+var_9C]
000024b8  CMP             R2, #0
000024bc  LDRNE           R1, [SP,#0xCC+var_A4]
000024c0  BNE             loc_2500
000024c4  LDR             R2, [SP,#0xCC+var_64]
000024c8  ADD             R1, R2, R1,LSL#1
000024cc  LDRH            R1, [R1]
000024d0  AND             R2, R1, #0xF800
000024d4  AND             R3, R1, #0x7E0
000024d8  MOV             R2, R2,LSL#11
000024dc  ORR             R2, R2, R3,LSL#5
000024e0  AND             R1, R1, #0x1F
000024e4  ORR             R1, R2, R1
000024e8  LDR             R2, [SP,#0xCC+var_3C]
000024ec  CMP             R2, #0
000024f0  LDRNE           R2, [SP,#0xCC+var_90]
000024f4  LDRNE           R3, [SP,#0xCC+var_98]
000024f8  MLANE           R1, R3, R1, R2
000024fc  ANDNE           R1, LR, R1,LSR#5
00002500  LDRH            R2, [R0]
00002504  CMP             R4, #0
00002508  AND             R3, R2, #0xF800
0000250c  AND             R12, R2, #0x7E0
00002510  MOV             R3, R3,LSL#11
00002514  ORR             R3, R3, R12,LSL#5
00002518  AND             R2, R2, #0x1F
0000251c  ORR             R2, R3, R2
00002520  LDR             R3, [SP,#0xCC+var_94]
00002524  MUL             R2, R3, R2
00002528  LDR             R3, [SP,#0xCC+var_48]
0000252c  MLA             R1, R3, R1, R2
00002530  MOV             R1, R1,LSR#5
00002534  AND             R2, R1, #0x7C00000
00002538  AND             R3, R1, #0xFC00
0000253c  MOV             R2, R2,LSR#11
00002540  ORR             R2, R2, R3,LSR#5
00002544  AND             R1, R1, #0x1F
00002548  ORR             R2, R2, R1
0000254c  MOV             R1, R0
00002550  ADDEQ           R0, R1, #2
00002554  SUBNE           R0, R1, #2
00002558  STRH            R2, [R1]
0000255c  CMP             R0, R10
00002560  ADDNE           R11, R11, R5
00002564  LDRNE           R2, [SP,#0xCC+var_A8]
00002568  MOVNE           R1, R11,ASR#16
0000256c  CMPNE           R1, R2
00002570  BLT             loc_24B4
00002574  B               loc_2B70
00002578  LDR             R2, [SP,#0xCC+var_3C]
0000257c  CMP             R2, #0
00002580  BEQ             loc_27A0
00002584  LDR             R1, [R9]
00002588  LDR             R2, [SP,#0xCC+var_10]
0000258c  CMP             R4, #0
00002590  BEQ             loc_25E4
00002594  LDRH            R2, [R2,#4]
00002598  SUB             R0, R0, R6
0000259c  ADD             R1, R1, R2,LSL#1
000025a0  SUB             R10, R1, #2
000025a4  MOV             R1, R0,LSL#16
000025a8  MOV             R0, R5
000025ac  BL              sub_104
000025b0  CMP             R7, #0
000025b4  MOV             R1, R9
000025b8  ADDEQ           R9, R1, #4
000025bc  SUBNE           R9, R1, #4
000025c0  LDR             R1, [R1]
000025c4  LDR             R2, [SP,#0xCC+var_4C]
000025c8  ADD             R1, R1, R2,LSL#1
000025cc  SUB             R0, R1, R0,LSL#1
000025d0  ADD             R0, R0, R8,LSL#1
000025d4  SUB             R0, R0, #2
000025d8  CMP             R10, R0
000025dc  BCS             loc_2B70
000025e0  B               loc_2624
000025e4  LDRH            R2, [R2,#8]
000025e8  SUB             R0, R0, R6
000025ec  ADD             R10, R1, R2,LSL#1
000025f0  MOV             R1, R0,LSL#16
000025f4  MOV             R0, R5
000025f8  BL              sub_104
000025fc  CMP             R7, #0
00002600  MOV             R1, R9
00002604  ADDEQ           R9, R1, #4
00002608  SUBNE           R9, R1, #4
0000260c  LDR             R1, [R1]
00002610  LDR             R2, [SP,#0xCC+var_4C]
00002614  ADD             R1, R1, R2,LSL#1
00002618  ADD             R0, R1, R0,LSL#1
0000261c  CMP             R10, R0
00002620  BLS             loc_2B70
00002624  LDR             R1, [SP,#0xCC+var_78]
00002628  LDR             R2, [SP,#0xCC+var_AC]
0000262c  LDRB            R1, [R1,R2]
00002630  CMP             R1, #0
00002634  BEQ             loc_272C
00002638  B               loc_26E0
0000263c  LDR             R2, [SP,#0xCC+var_64]
00002640  ADD             R1, R2, R1,LSL#1
00002644  LDRH            R1, [R1]
00002648  LDR             R2, [SP,#0xCC+var_8C]
0000264c  CMP             R1, R2
00002650  BEQ             loc_26D4
00002654  LDR             R2, [SP,#0xCC+var_9C]
00002658  CMP             R2, #0
0000265c  BEQ             loc_2688
00002660  CMP             R4, #0
00002664  LDR             R2, [SP,#0xCC+var_A0]
00002668  BEQ             loc_2678
0000266c  MOV             R1, R0
00002670  SUB             R0, R0, #2
00002674  B               loc_2680
00002678  MOV             R1, R0
0000267c  ADD             R0, R0, #2
00002680  STRH            R2, [R1]
00002684  B               loc_26E0
00002688  AND             R2, R1, #0xF800
0000268c  AND             R3, R1, #0x7E0
00002690  MOV             R2, R2,LSL#11
00002694  ORR             R2, R2, R3,LSL#5
00002698  AND             R1, R1, #0x1F
0000269c  ORR             R1, R2, R1
000026a0  LDR             R2, [SP,#0xCC+var_90]
000026a4  LDR             R3, [SP,#0xCC+var_98]
000026a8  CMP             R4, #0
000026ac  MLA             R1, R3, R1, R2
000026b0  MOV             R1, R1,LSR#5
000026b4  AND             R2, R1, #0x7C00000
000026b8  AND             R3, R1, #0xFC00
000026bc  MOV             R2, R2,LSR#11
000026c0  ORR             R2, R2, R3,LSR#5
000026c4  AND             R1, R1, #0x1F
000026c8  ORR             R2, R2, R1
000026cc  BEQ             loc_2678
000026d0  B               loc_266C
000026d4  CMP             R4, #0
000026d8  ADDEQ           R0, R0, #2
000026dc  SUBNE           R0, R0, #2
000026e0  CMP             R0, R10
000026e4  ADDNE           R11, R11, R5
000026e8  LDRNE           R2, [SP,#0xCC+var_A8]
000026ec  MOVNE           R1, R11,ASR#16
000026f0  CMPNE           R1, R2
000026f4  BLT             loc_263C
000026f8  B               loc_2B70
000026fc  LDR             R2, [SP,#0xCC+var_9C]
00002700  CMP             R2, #0
00002704  BEQ             loc_2748
00002708  CMP             R4, #0
0000270c  LDR             R2, [SP,#0xCC+var_A0]
00002710  BEQ             loc_2720
00002714  MOV             R1, R0
00002718  SUB             R0, R0, #2
0000271c  B               loc_2728
00002720  MOV             R1, R0
00002724  ADD             R0, R0, #2
00002728  STRH            R2, [R1]
0000272c  CMP             R0, R10
00002730  ADDNE           R11, R11, R5
00002734  LDRNE           R2, [SP,#0xCC+var_A8]
00002738  MOVNE           R1, R11,ASR#16
0000273c  CMPNE           R1, R2
00002740  BLT             loc_26FC
00002744  B               loc_2B70
00002748  LDR             R2, [SP,#0xCC+var_64]
0000274c  CMP             R4, #0
00002750  ADD             R1, R2, R1,LSL#1
00002754  LDRH            R1, [R1]
00002758  AND             R2, R1, #0xF800
0000275c  AND             R3, R1, #0x7E0
00002760  MOV             R2, R2,LSL#11
00002764  ORR             R2, R2, R3,LSL#5
00002768  AND             R1, R1, #0x1F
0000276c  ORR             R1, R2, R1
00002770  LDR             R2, [SP,#0xCC+var_90]
00002774  LDR             R3, [SP,#0xCC+var_98]
00002778  MLA             R1, R3, R1, R2
0000277c  MOV             R1, R1,LSR#5
00002780  AND             R2, R1, #0x7C00000
00002784  AND             R3, R1, #0xFC00
00002788  MOV             R2, R2,LSR#11
0000278c  ORR             R2, R2, R3,LSR#5
00002790  AND             R1, R1, #0x1F
00002794  ORR             R2, R2, R1
00002798  BEQ             loc_2720
0000279c  B               loc_2714
000027a0  LDR             R1, [SP,#0xCC+var_78]
000027a4  LDR             R2, [SP,#0xCC+var_AC]
000027a8  LDRB            R1, [R1,R2]
000027ac  CMP             R1, #0
000027b0  BEQ             loc_28BC
000027b4  LDR             R1, [R9]
000027b8  LDR             R2, [SP,#0xCC+var_10]
000027bc  CMP             R4, #0
000027c0  BEQ             loc_2844
000027c4  LDRH            R2, [R2,#4]
000027c8  SUB             R0, R0, R6
000027cc  ADD             R1, R1, R2,LSL#1
000027d0  SUB             R10, R1, #2
000027d4  MOV             R1, R0,LSL#16
000027d8  MOV             R0, R5
000027dc  BL              sub_104
000027e0  CMP             R7, #0
000027e4  MOV             R1, R9
000027e8  ADDEQ           R9, R1, #4
000027ec  SUBNE           R9, R1, #4
000027f0  LDR             R1, [R1]
000027f4  LDR             R2, [SP,#0xCC+var_4C]
000027f8  ADD             R1, R1, R2,LSL#1
000027fc  SUB             R0, R1, R0,LSL#1
00002800  ADD             R0, R0, R8,LSL#1
00002804  B               loc_2820
00002808  LDR             R2, [SP,#0xCC+var_64]
0000280c  ADD             R1, R2, R1,LSL#1
00002810  LDRH            R1, [R1]
00002814  LDR             R2, [SP,#0xCC+var_8C]
00002818  CMP             R1, R2
0000281c  STRHNE          R1, [R0]
00002820  SUB             R0, R0, #2
00002824  CMP             R0, R10
00002828  BLS             loc_2B70
0000282c  ADD             R11, R11, R5
00002830  LDR             R2, [SP,#0xCC+var_A8]
00002834  MOV             R1, R11,ASR#16
00002838  CMP             R1, R2
0000283c  BLT             loc_2808
00002840  B               loc_2B70
00002844  LDRH            R2, [R2,#8]
00002848  SUB             R0, R0, R6
0000284c  ADD             R10, R1, R2,LSL#1
00002850  MOV             R1, R0,LSL#16
00002854  MOV             R0, R5
00002858  BL              sub_104
0000285c  CMP             R7, #0
00002860  MOV             R1, R9
00002864  ADDEQ           R9, R1, #4
00002868  SUBNE           R9, R1, #4
0000286c  LDR             R1, [R1]
00002870  LDR             R2, [SP,#0xCC+var_4C]
00002874  ADD             R1, R1, R2,LSL#1
00002878  ADD             R0, R1, R0,LSL#1
0000287c  B               loc_289C
00002880  LDR             R2, [SP,#0xCC+var_64]
00002884  ADD             R1, R2, R1,LSL#1
00002888  LDRH            R1, [R1]
0000288c  LDR             R2, [SP,#0xCC+var_8C]
00002890  CMP             R1, R2
00002894  STRHNE          R1, [R0]
00002898  ADD             R0, R0, #2
0000289c  CMP             R0, R10
000028a0  BCS             loc_2B70
000028a4  ADD             R11, R11, R5
000028a8  LDR             R2, [SP,#0xCC+var_A8]
000028ac  MOV             R1, R11,ASR#16
000028b0  CMP             R1, R2
000028b4  BLT             loc_2880
000028b8  B               loc_2B70
000028bc  LDR             R1, [R9]
000028c0  LDR             R2, [SP,#0xCC+var_10]
000028c4  CMP             R4, #0
000028c8  BEQ             loc_2944
000028cc  LDRH            R2, [R2,#4]
000028d0  SUB             R0, R0, R6
000028d4  ADD             R1, R1, R2,LSL#1
000028d8  SUB             R10, R1, #2
000028dc  MOV             R1, R0,LSL#16
000028e0  MOV             R0, R5
000028e4  BL              sub_104
000028e8  CMP             R7, #0
000028ec  MOV             R1, R9
000028f0  ADDEQ           R9, R1, #4
000028f4  SUBNE           R9, R1, #4
000028f8  LDR             R1, [R1]
000028fc  LDR             R2, [SP,#0xCC+var_4C]
00002900  ADD             R1, R1, R2,LSL#1
00002904  SUB             R0, R1, R0,LSL#1
00002908  ADD             R0, R0, R8,LSL#1
0000290c  B               loc_2920
00002910  LDR             R2, [SP,#0xCC+var_64]
00002914  ADD             R1, R2, R1,LSL#1
00002918  LDRH            R1, [R1]
0000291c  STRH            R1, [R0]
00002920  SUB             R0, R0, #2
00002924  CMP             R0, R10
00002928  BLS             loc_2B70
0000292c  ADD             R11, R11, R5
00002930  LDR             R2, [SP,#0xCC+var_A8]
00002934  MOV             R1, R11,ASR#16
00002938  CMP             R1, R2
0000293c  BLT             loc_2910
00002940  B               loc_2B70
00002944  LDRH            R2, [R2,#8]
00002948  SUB             R0, R0, R6
0000294c  ADD             R10, R1, R2,LSL#1
00002950  MOV             R1, R0,LSL#16
00002954  MOV             R0, R5
00002958  BL              sub_104
0000295c  CMP             R7, #0
00002960  MOV             R1, R9
00002964  ADDEQ           R9, R1, #4
00002968  SUBNE           R9, R1, #4
0000296c  LDR             R1, [R1]
00002970  LDR             R2, [SP,#0xCC+var_4C]
00002974  ADD             R1, R1, R2,LSL#1
00002978  ADD             R0, R1, R0,LSL#1
0000297c  B               loc_2990
00002980  LDR             R2, [SP,#0xCC+var_64]
00002984  ADD             R1, R2, R1,LSL#1
00002988  LDRH            R1, [R1]
0000298c  STRH            R1, [R0],#2
00002990  CMP             R0, R10
00002994  BCS             loc_2B70
00002998  ADD             R11, R11, R5
0000299c  LDR             R2, [SP,#0xCC+var_A8]
000029a0  MOV             R1, R11,ASR#16
000029a4  CMP             R1, R2
000029a8  BLT             loc_2980
000029ac  B               loc_2B70
000029b0  LDR             R0, [SP,#0xCC+var_70]
000029b4  MOV             R1, R1,ASR#16
000029b8  LDRB            R2, [R0,R1]
000029bc  LDR             R3, [SP,#0xCC+var_74]
000029c0  LDRB            R3, [R3,R1]
000029c4  CMP             R6, R2
000029c8  MOVLE           R0, R2
000029cc  MOVGT           R0, R6
000029d0  ADD             R3, R3, R2
000029d4  SUB             R3, R3, R0
000029d8  MOV             R3, R3,LSL#16
000029dc  MOV             R3, R3,ASR#16
000029e0  STR             R3, [SP,#0xCC+var_A8]
000029e4  CMP             R3, #0
000029e8  BGT             loc_2A04
000029ec  CMP             R7, #0
000029f0  BEQ             loc_29FC
000029f4  SUB             R9, R9, #4
000029f8  B               loc_2B70
000029fc  ADD             R9, R9, #4
00002a00  B               loc_2B70
00002a04  LDR             R3, [SP,#0xCC+var_68]
00002a08  LDR             R11, [SP,#0xCC+var_84]
00002a0c  LDR             R1, [R3,R1,LSL#2]
00002a10  SUB             R2, R0, R2
00002a14  MOV             R2, R2,LSL#16
00002a18  ADD             R2, R1, R2,ASR#16
00002a1c  STR             R2, [SP,#0xCC+var_6C]
00002a20  LDR             R1, [R9]
00002a24  LDR             R2, [SP,#0xCC+var_10]
00002a28  CMP             R4, #0
00002a2c  BEQ             loc_2A80
00002a30  LDRH            R2, [R2,#4]
00002a34  SUB             R0, R0, R6
00002a38  ADD             R1, R1, R2,LSL#1
00002a3c  SUB             R10, R1, #2
00002a40  MOV             R1, R0,LSL#16
00002a44  MOV             R0, R5
00002a48  BL              sub_104
00002a4c  CMP             R7, #0
00002a50  MOV             R1, R9
00002a54  ADDEQ           R9, R1, #4
00002a58  SUBNE           R9, R1, #4
00002a5c  LDR             R1, [R1]
00002a60  LDR             R2, [SP,#0xCC+var_4C]
00002a64  ADD             R1, R1, R2,LSL#1
00002a68  SUB             R0, R1, R0,LSL#1
00002a6c  ADD             R0, R0, R8,LSL#1
00002a70  SUB             R0, R0, #2
00002a74  CMP             R10, R0
00002a78  BCS             loc_2B70
00002a7c  B               loc_2B58
00002a80  LDRH            R2, [R2,#8]
00002a84  SUB             R0, R0, R6
00002a88  ADD             R10, R1, R2,LSL#1
00002a8c  MOV             R1, R0,LSL#16
00002a90  MOV             R0, R5
00002a94  BL              sub_104
00002a98  CMP             R7, #0
00002a9c  MOV             R1, R9
00002aa0  ADDEQ           R9, R1, #4
00002aa4  SUBNE           R9, R1, #4
00002aa8  LDR             R1, [R1]
00002aac  LDR             R2, [SP,#0xCC+var_4C]
00002ab0  ADD             R1, R1, R2,LSL#1
00002ab4  ADD             R0, R1, R0,LSL#1
00002ab8  CMP             R10, R0
00002abc  BLS             loc_2B70
00002ac0  B               loc_2B58
00002ac4  LDR             R2, [SP,#0xCC+var_6C]
00002ac8  LDRB            R1, [R2,R1]
00002acc  CMP             R1, #0
00002ad0  BEQ             loc_2B4C
00002ad4  LDR             R2, [SP,#0xCC+var_38]
00002ad8  CMP             R2, #0
00002adc  LDRNE           R3, [SP,#0xCC+var_48]
00002ae0  LDRH            R2, [R0]
00002ae4  MULNE           R1, R3, R1
00002ae8  AND             R3, R2, #0xF800
00002aec  AND             R12, R2, #0x7E0
00002af0  MOV             R3, R3,LSL#11
00002af4  ORR             R3, R3, R12,LSL#5
00002af8  AND             R2, R2, #0x1F
00002afc  MOVNE           R1, R1,LSL#19
00002b00  MOVNE           R1, R1,LSR#24
00002b04  ORR             R2, R3, R2
00002b08  RSB             R3, R1, #0x20 ; ' '
00002b0c  MUL             R2, R3, R2
00002b10  LDR             R3, [SP,#0xCC+var_90]
00002b14  CMP             R4, #0
00002b18  MLA             R2, R1, R3, R2
00002b1c  MOV             R1, R2,LSR#5
00002b20  AND             R2, R1, #0x7C00000
00002b24  AND             R3, R1, #0xFC00
00002b28  MOV             R2, R2,LSR#11
00002b2c  ORR             R2, R2, R3,LSR#5
00002b30  AND             R1, R1, #0x1F
00002b34  ORR             R2, R2, R1
00002b38  MOV             R1, R0
00002b3c  ADDEQ           R0, R1, #2
00002b40  SUBNE           R0, R1, #2
00002b44  STRH            R2, [R1]
00002b48  B               loc_2B58
00002b4c  CMP             R4, #0
00002b50  ADDEQ           R0, R0, #2
00002b54  SUBNE           R0, R0, #2
00002b58  CMP             R0, R10
00002b5c  ADDNE           R11, R11, R5
00002b60  LDRNE           R2, [SP,#0xCC+var_A8]
00002b64  MOVNE           R1, R11,ASR#16
00002b68  CMPNE           R1, R2
00002b6c  BLT             loc_2AC4
00002b70  LDR             R1, [SP,#0xCC+var_5C]
00002b74  CMP             R9, R1
00002b78  BNE             loc_2260
00002b7c  B               loc_331C
00002b80  LDR             R1, [SP,#0xCC+var_30]
00002b84  CMP             R1, #1
00002b88  BNE             loc_2CC4
00002b8c  LDR             R0, [SP,#0xCC+var_18]
00002b90  ADD             R1, R0, R10,LSL#2
00002b94  STR             R1, [SP,#0xCC+var_68]
00002b98  B               loc_2CB4
00002b9c  LDR             R0, [SP,#0xCC+var_7C]
00002ba0  LDR             R1, [SP,#0xCC+var_80]
00002ba4  CMP             R4, #0
00002ba8  ADD             R1, R1, R0
00002bac  STR             R1, [SP,#0xCC+var_80]
00002bb0  MOV             R0, R1,ASR#16
00002bb4  LDR             R1, [SP,#0xCC+var_68]
00002bb8  LDR             R0, [R1,R0,LSL#2]
00002bbc  ADD             R11, R0, R6
00002bc0  BEQ             loc_2BF0
00002bc4  CMP             R7, #0
00002bc8  MOV             R0, R9
00002bcc  ADDEQ           R9, R0, #4
00002bd0  SUBNE           R9, R0, #4
00002bd4  LDR             R0, [R0]
00002bd8  LDR             R2, [SP,#0xCC+var_4C]
00002bdc  ADD             R0, R0, R2,LSL#1
00002be0  ADD             R0, R0, R8,LSL#1
00002be4  SUB             R0, R0, #2
00002be8  SUB             R1, R0, R8,LSL#1
00002bec  B               loc_2C10
00002bf0  CMP             R7, #0
00002bf4  MOV             R0, R9
00002bf8  ADDEQ           R9, R0, #4
00002bfc  SUBNE           R9, R0, #4
00002c00  LDR             R0, [R0]
00002c04  LDR             R2, [SP,#0xCC+var_4C]
00002c08  ADD             R0, R0, R2,LSL#1
00002c0c  ADD             R1, R0, R8,LSL#1
00002c10  LDR             R12, [SP,#0xCC+var_84]
00002c14  B               loc_2CAC
00002c18  ADD             R12, R12, R5
00002c1c  LDRB            R2, [R11,R12,ASR#16]
00002c20  CMP             R2, #0
00002c24  BEQ             loc_2CA0
00002c28  LDR             R3, [SP,#0xCC+var_38]
00002c2c  CMP             R3, #0
00002c30  LDRNE           R3, [SP,#0xCC+var_48]
00002c34  MULNE           R2, R3, R2
00002c38  LDRH            R3, [R0]
00002c3c  MOVNE           R2, R2,LSL#19
00002c40  MOVNE           R2, R2,LSR#24
00002c44  AND             LR, R3, #0xF800
00002c48  AND             R10, R3, #0x7E0
00002c4c  MOV             LR, LR,LSL#11
00002c50  ORR             LR, LR, R10,LSL#5
00002c54  AND             R3, R3, #0x1F
00002c58  ORR             R3, LR, R3
00002c5c  RSB             LR, R2, #0x20 ; ' '
00002c60  MUL             R3, LR, R3
00002c64  LDR             LR, [SP,#0xCC+var_90]
00002c68  CMP             R4, #0
00002c6c  MLA             R3, R2, LR, R3
00002c70  MOV             R2, R3,LSR#5
00002c74  AND             R3, R2, #0x7C00000
00002c78  AND             LR, R2, #0xFC00
00002c7c  MOV             R3, R3,LSR#11
00002c80  ORR             R3, R3, LR,LSR#5
00002c84  AND             R2, R2, #0x1F
00002c88  ORR             R3, R3, R2
00002c8c  MOV             R2, R0
00002c90  ADDEQ           R0, R2, #2
00002c94  SUBNE           R0, R2, #2
00002c98  STRH            R3, [R2]
00002c9c  B               loc_2CAC
00002ca0  CMP             R4, #0
00002ca4  ADDEQ           R0, R0, #2
00002ca8  SUBNE           R0, R0, #2
00002cac  CMP             R0, R1
00002cb0  BNE             loc_2C18
00002cb4  LDR             R1, [SP,#0xCC+var_5C]
00002cb8  CMP             R9, R1
00002cbc  BNE             loc_2B9C
00002cc0  B               loc_331C
00002cc4  LDR             R1, [SP,#0xCC+var_30]
00002cc8  CMP             R1, #0
00002ccc  BNE             loc_331C
00002cd0  LDR             R1, [SP,#0xCC+var_34]
00002cd4  LDR             R0, [SP,#0xCC+var_18]
00002cd8  CMP             R1, #0
00002cdc  LDRNE           R1, [SP,#0xCC+arg_4]
00002ce0  ADD             R0, R0, R10,LSL#2
00002ce4  LDRHNE          R2, [R1,#6]
00002ce8  LDR             R1, [SP,#0xCC+var_38]
00002cec  STRNE           R2, [SP,#0xCC+var_8C]
00002cf0  CMP             R1, #0
00002cf4  BEQ             loc_2F2C
00002cf8  B               loc_2F1C
00002cfc  ADD             LR, SP, #0xCC+var_80
00002d00  LDM             LR, {R1,LR}
00002d04  LDR             R12, [SP,#0xCC+var_84]
00002d08  ADD             R1, R1, LR
00002d0c  STR             R1, [SP,#0xCC+var_80]
00002d10  MOV             R1, R1,ASR#16
00002d14  LDR             R1, [R0,R1,LSL#2]
00002d18  CMP             R4, #0
00002d1c  ADD             LR, R1, R6,LSL#1
00002d20  STR             LR, [SP,#0xCC+var_64]
00002d24  BEQ             loc_2D54
00002d28  CMP             R7, #0
00002d2c  MOV             R1, R9
00002d30  ADDEQ           R9, R1, #4
00002d34  SUBNE           R9, R1, #4
00002d38  LDR             R1, [R1]
00002d3c  LDR             R2, [SP,#0xCC+var_4C]
00002d40  ADD             R1, R1, R2,LSL#1
00002d44  ADD             R1, R1, R8,LSL#1
00002d48  SUB             R1, R1, #2
00002d4c  SUB             R2, R1, R8,LSL#1
00002d50  B               loc_2D74
00002d54  CMP             R7, #0
00002d58  MOV             R1, R9
00002d5c  ADDEQ           R9, R1, #4
00002d60  SUBNE           R9, R1, #4
00002d64  LDR             R1, [R1]
00002d68  LDR             R2, [SP,#0xCC+var_4C]
00002d6c  ADD             R1, R1, R2,LSL#1
00002d70  ADD             R2, R1, R8,LSL#1
00002d74  LDR             R3, [SP,#0xCC+var_34]
00002d78  CMP             R3, #0
00002d7c  BEQ             loc_2F14
00002d80  B               loc_2E54
00002d84  ADD             R12, R12, R5
00002d88  LDR             LR, [SP,#0xCC+var_64]
00002d8c  MOV             R3, R12,ASR#16
00002d90  ADD             R3, LR, R3,LSL#1
00002d94  LDRH            R3, [R3]
00002d98  LDR             LR, [SP,#0xCC+var_8C]
00002d9c  CMP             R3, LR
00002da0  BEQ             loc_2E48
00002da4  LDR             LR, [SP,#0xCC+var_9C]
00002da8  CMP             LR, #0
00002dac  LDRNE           R3, [SP,#0xCC+var_A4]
00002db0  BNE             loc_2DE8
00002db4  AND             LR, R3, #0xF800
00002db8  AND             R10, R3, #0x7E0
00002dbc  MOV             LR, LR,LSL#11
00002dc0  ORR             LR, LR, R10,LSL#5
00002dc4  AND             R3, R3, #0x1F
00002dc8  ORR             R3, LR, R3
00002dcc  LDR             LR, [SP,#0xCC+var_3C]
00002dd0  CMP             LR, #0
00002dd4  LDRNE           R10, [SP,#0xCC+var_98]
00002dd8  LDRNE           LR, [SP,#0xCC+var_90]
00002ddc  MLANE           R3, R10, R3, LR
00002de0  LDRNE           LR, =0x7E0FC1F
00002de4  ANDNE           R3, LR, R3,LSR#5
00002de8  LDRH            R10, [R1]
00002dec  CMP             R4, #0
00002df0  AND             LR, R10, #0xF800
00002df4  MOV             R11, LR,LSL#11
00002df8  AND             LR, R10, #0x7E0
00002dfc  ORR             LR, R11, LR,LSL#5
00002e00  AND             R10, R10, #0x1F
00002e04  ORR             LR, LR, R10
00002e08  LDR             R10, [SP,#0xCC+var_94]
00002e0c  MUL             LR, R10, LR
00002e10  LDR             R10, [SP,#0xCC+var_48]
00002e14  MLA             R3, R10, R3, LR
00002e18  MOV             R3, R3,LSR#5
00002e1c  AND             LR, R3, #0x7C00000
00002e20  AND             R10, R3, #0xFC00
00002e24  MOV             LR, LR,LSR#11
00002e28  ORR             LR, LR, R10,LSR#5
00002e2c  AND             R3, R3, #0x1F
00002e30  ORR             LR, LR, R3
00002e34  MOV             R3, R1
00002e38  ADDEQ           R1, R3, #2
00002e3c  SUBNE           R1, R3, #2
00002e40  STRH            LR, [R3]
00002e44  B               loc_2E54
00002e48  CMP             R4, #0
00002e4c  ADDEQ           R1, R1, #2
00002e50  SUBNE           R1, R1, #2
00002e54  CMP             R1, R2
00002e58  BNE             loc_2D84
00002e5c  B               loc_2F1C
00002e60  LDR             LR, [SP,#0xCC+var_9C]
00002e64  CMP             LR, #0
00002e68  LDRNE           R3, [SP,#0xCC+var_A4]
00002e6c  BNE             loc_2EB8
00002e70  ADD             R12, R12, R5
00002e74  LDR             LR, [SP,#0xCC+var_64]
00002e78  MOV             R3, R12,ASR#16
00002e7c  ADD             R3, LR, R3,LSL#1
00002e80  LDRH            R3, [R3]
00002e84  AND             LR, R3, #0xF800
00002e88  AND             R10, R3, #0x7E0
00002e8c  MOV             LR, LR,LSL#11
00002e90  ORR             LR, LR, R10,LSL#5
00002e94  AND             R3, R3, #0x1F
00002e98  ORR             R3, LR, R3
00002e9c  LDR             LR, [SP,#0xCC+var_3C]
00002ea0  CMP             LR, #0
00002ea4  LDRNE           R10, [SP,#0xCC+var_98]
00002ea8  LDRNE           LR, [SP,#0xCC+var_90]
00002eac  MLANE           R3, R10, R3, LR
00002eb0  LDRNE           LR, =0x7E0FC1F
00002eb4  ANDNE           R3, LR, R3,LSR#5
00002eb8  LDRH            LR, [R1]
00002ebc  CMP             R4, #0
00002ec0  AND             R10, LR, #0xF800
00002ec4  AND             R11, LR, #0x7E0
00002ec8  MOV             R10, R10,LSL#11
00002ecc  ORR             R10, R10, R11,LSL#5
00002ed0  AND             LR, LR, #0x1F
00002ed4  ORR             LR, R10, LR
00002ed8  LDR             R10, [SP,#0xCC+var_94]
00002edc  MUL             LR, R10, LR
00002ee0  LDR             R10, [SP,#0xCC+var_48]
00002ee4  MLA             R3, R10, R3, LR
00002ee8  MOV             R3, R3,LSR#5
00002eec  AND             LR, R3, #0x7C00000
00002ef0  AND             R10, R3, #0xFC00
00002ef4  MOV             LR, LR,LSR#11
00002ef8  ORR             LR, LR, R10,LSR#5
00002efc  AND             R3, R3, #0x1F
00002f00  ORR             LR, LR, R3
00002f04  MOV             R3, R1
00002f08  ADDEQ           R1, R3, #2
00002f0c  SUBNE           R1, R3, #2
00002f10  STRH            LR, [R3]
00002f14  CMP             R1, R2
00002f18  BNE             loc_2E60
00002f1c  LDR             R1, [SP,#0xCC+var_5C]
00002f20  CMP             R9, R1
00002f24  BNE             loc_2CFC
00002f28  B               loc_331C
00002f2c  LDR             R2, [SP,#0xCC+var_3C]
00002f30  CMP             R2, #0
00002f34  BEQ             loc_311C
00002f38  B               loc_30AC
00002f3c  ADD             LR, SP, #0xCC+var_80
00002f40  LDM             LR, {R1,LR}
00002f44  LDR             R3, [SP,#0xCC+var_84]
00002f48  ADD             R1, R1, LR
00002f4c  STR             R1, [SP,#0xCC+var_80]
00002f50  MOV             R1, R1,ASR#16
00002f54  LDR             R1, [R0,R1,LSL#2]
00002f58  CMP             R4, #0
00002f5c  ADD             LR, R1, R6,LSL#1
00002f60  BEQ             loc_2F90
00002f64  CMP             R7, #0
00002f68  MOV             R1, R9
00002f6c  ADDEQ           R9, R1, #4
00002f70  SUBNE           R9, R1, #4
00002f74  LDR             R1, [R1]
00002f78  LDR             R2, [SP,#0xCC+var_4C]
00002f7c  ADD             R1, R1, R2,LSL#1
00002f80  ADD             R1, R1, R8,LSL#1
00002f84  SUB             R1, R1, #2
00002f88  SUB             R2, R1, R8,LSL#1
00002f8c  B               loc_2FB0
00002f90  CMP             R7, #0
00002f94  MOV             R1, R9
00002f98  ADDEQ           R9, R1, #4
00002f9c  SUBNE           R9, R1, #4
00002fa0  LDR             R1, [R1]
00002fa4  LDR             R2, [SP,#0xCC+var_4C]
00002fa8  ADD             R1, R1, R2,LSL#1
00002fac  ADD             R2, R1, R8,LSL#1
00002fb0  LDR             R12, [SP,#0xCC+var_34]
00002fb4  CMP             R12, #0
00002fb8  BEQ             loc_30A4
00002fbc  B               loc_3068
00002fc0  ADD             R3, R3, R5
00002fc4  MOV             R12, R3,ASR#16
00002fc8  ADD             R12, LR, R12,LSL#1
00002fcc  LDRH            R12, [R12]
00002fd0  LDR             R10, [SP,#0xCC+var_8C]
00002fd4  CMP             R12, R10
00002fd8  BEQ             loc_305C
00002fdc  LDR             R10, [SP,#0xCC+var_9C]
00002fe0  CMP             R10, #0
00002fe4  BEQ             loc_3010
00002fe8  CMP             R4, #0
00002fec  LDR             R10, [SP,#0xCC+var_A0]
00002ff0  BEQ             loc_3000
00002ff4  MOV             R12, R1
00002ff8  SUB             R1, R1, #2
00002ffc  B               loc_3008
00003000  MOV             R12, R1
00003004  ADD             R1, R1, #2
00003008  STRH            R10, [R12]
0000300c  B               loc_3068
00003010  AND             R10, R12, #0xF800
00003014  AND             R11, R12, #0x7E0
00003018  MOV             R10, R10,LSL#11
0000301c  ORR             R10, R10, R11,LSL#5
00003020  AND             R12, R12, #0x1F
00003024  ORR             R12, R10, R12
00003028  LDR             R10, [SP,#0xCC+var_98]
0000302c  LDR             R11, [SP,#0xCC+var_90]
00003030  CMP             R4, #0
00003034  MLA             R12, R10, R12, R11
00003038  MOV             R12, R12,LSR#5
0000303c  AND             R10, R12, #0x7C00000
00003040  AND             R11, R12, #0xFC00
00003044  MOV             R10, R10,LSR#11
00003048  ORR             R10, R10, R11,LSR#5
0000304c  AND             R12, R12, #0x1F
00003050  ORR             R10, R10, R12
00003054  BEQ             loc_3000
00003058  B               loc_2FF4
0000305c  CMP             R4, #0
00003060  ADDEQ           R1, R1, #2
00003064  SUBNE           R1, R1, #2
00003068  CMP             R1, R2
0000306c  BNE             loc_2FC0
00003070  B               loc_30AC
00003074  LDR             R10, [SP,#0xCC+var_9C]
00003078  CMP             R10, #0
0000307c  BEQ             loc_30BC
00003080  CMP             R4, #0
00003084  LDR             R10, [SP,#0xCC+var_A0]
00003088  BEQ             loc_3098
0000308c  MOV             R12, R1
00003090  SUB             R1, R1, #2
00003094  B               loc_30A0
00003098  MOV             R12, R1
0000309c  ADD             R1, R1, #2
000030a0  STRH            R10, [R12]
000030a4  CMP             R1, R2
000030a8  BNE             loc_3074
000030ac  LDR             R1, [SP,#0xCC+var_5C]
000030b0  CMP             R9, R1
000030b4  BNE             loc_2F3C
000030b8  B               loc_331C
000030bc  ADD             R3, R3, R5
000030c0  MOV             R12, R3,ASR#16
000030c4  ADD             R12, LR, R12,LSL#1
000030c8  LDRH            R12, [R12]
000030cc  CMP             R4, #0
000030d0  AND             R10, R12, #0xF800
000030d4  AND             R11, R12, #0x7E0
000030d8  MOV             R10, R10,LSL#11
000030dc  ORR             R10, R10, R11,LSL#5
000030e0  AND             R12, R12, #0x1F
000030e4  ORR             R12, R10, R12
000030e8  LDR             R10, [SP,#0xCC+var_98]
000030ec  LDR             R11, [SP,#0xCC+var_90]
000030f0  MLA             R12, R10, R12, R11
000030f4  MOV             R12, R12,LSR#5
000030f8  AND             R10, R12, #0x7C00000
000030fc  AND             R11, R12, #0xFC00
00003100  MOV             R10, R10,LSR#11
00003104  ORR             R10, R10, R11,LSR#5
00003108  AND             R12, R12, #0x1F
0000310c  ORR             R10, R10, R12
00003110  BEQ             loc_3098
00003114  B               loc_308C
0000311c  LDR             R1, [SP,#0xCC+var_34]
00003120  CMP             R1, #0
00003124  BEQ             loc_3234
00003128  CMP             R4, #0
0000312c  BEQ             loc_3224
00003130  B               loc_31A8
00003134  CMP             R7, #0
00003138  MOV             R1, R9
0000313c  ADDEQ           R9, R1, #4
00003140  SUBNE           R9, R1, #4
00003144  LDR             R1, [R1]
00003148  LDR             R2, [SP,#0xCC+var_4C]
0000314c  ADD             LR, SP, #0xCC+var_80
00003150  LDM             LR, {R3,LR}
00003154  ADD             R1, R1, R2,LSL#1
00003158  ADD             R3, R3, LR
0000315c  STR             R3, [SP,#0xCC+var_80]
00003160  MOV             R3, R3,ASR#16
00003164  LDR             R3, [R0,R3,LSL#2]
00003168  ADD             R1, R1, R8,LSL#1
0000316c  SUB             R1, R1, #2
00003170  SUB             R2, R1, R8,LSL#1
00003174  LDR             R12, [SP,#0xCC+var_84]
00003178  ADD             LR, R3, R6,LSL#1
0000317c  B               loc_31A0
00003180  ADD             R12, R12, R5
00003184  MOV             R3, R12,ASR#16
00003188  ADD             R3, LR, R3,LSL#1
0000318c  LDRH            R3, [R3]
00003190  LDR             R10, [SP,#0xCC+var_8C]
00003194  CMP             R3, R10
00003198  STRHNE          R3, [R1]
0000319c  SUB             R1, R1, #2
000031a0  CMP             R1, R2
000031a4  BNE             loc_3180
000031a8  LDR             R1, [SP,#0xCC+var_5C]
000031ac  CMP             R9, R1
000031b0  BNE             loc_3134
000031b4  B               loc_331C
000031b8  CMP             R7, #0
000031bc  MOV             R1, R9
000031c0  ADDEQ           R9, R1, #4
000031c4  SUBNE           R9, R1, #4
000031c8  LDR             R1, [R1]
000031cc  LDR             R2, [SP,#0xCC+var_4C]
000031d0  ADD             LR, SP, #0xCC+var_80
000031d4  LDM             LR, {R3,LR}
000031d8  ADD             R1, R1, R2,LSL#1
000031dc  ADD             R3, R3, LR
000031e0  STR             R3, [SP,#0xCC+var_80]
000031e4  MOV             R3, R3,ASR#16
000031e8  LDR             R3, [R0,R3,LSL#2]
000031ec  LDR             R12, [SP,#0xCC+var_84]
000031f0  ADD             R2, R1, R8,LSL#1
000031f4  ADD             LR, R3, R6,LSL#1
000031f8  B               loc_321C
000031fc  ADD             R12, R12, R5
00003200  MOV             R3, R12,ASR#16
00003204  ADD             R3, LR, R3,LSL#1
00003208  LDRH            R3, [R3]
0000320c  LDR             R10, [SP,#0xCC+var_8C]
00003210  CMP             R3, R10
00003214  STRHNE          R3, [R1]
00003218  ADD             R1, R1, #2
0000321c  CMP             R1, R2
00003220  BNE             loc_31FC
00003224  LDR             R1, [SP,#0xCC+var_5C]
00003228  CMP             R9, R1
0000322c  BNE             loc_31B8
00003230  B               loc_331C
00003234  CMP             R4, #0
00003238  BEQ             loc_3310
0000323c  B               loc_32A4
00003240  CMP             R7, #0
00003244  MOV             R1, R9
00003248  ADDEQ           R9, R1, #4
0000324c  SUBNE           R9, R1, #4
00003250  LDR             R1, [R1]
00003254  LDR             R2, [SP,#0xCC+var_4C]
00003258  ADD             LR, SP, #0xCC+var_80
0000325c  LDM             LR, {R3,LR}
00003260  ADD             R1, R1, R2,LSL#1
00003264  ADD             R3, R3, LR
00003268  STR             R3, [SP,#0xCC+var_80]
0000326c  MOV             R3, R3,ASR#16
00003270  LDR             R3, [R0,R3,LSL#2]
00003274  ADD             R1, R1, R8,LSL#1
00003278  ADD             LR, R3, R6,LSL#1
0000327c  LDR             R3, [SP,#0xCC+var_84]
00003280  SUB             R1, R1, #2
00003284  SUB             R2, R1, R8,LSL#1
00003288  CMP             R1, R2
0000328c  ADDNE           R3, R3, R5
00003290  MOVNE           R12, R3,ASR#16
00003294  ADDNE           R12, LR, R12,LSL#1
00003298  LDRHNE          R12, [R12]
0000329c  STRHNE          R12, [R1],#-2
000032a0  BNE             loc_3288
000032a4  LDR             R1, [SP,#0xCC+var_5C]
000032a8  CMP             R9, R1
000032ac  BNE             loc_3240
000032b0  B               loc_331C
000032b4  CMP             R7, #0
000032b8  MOV             R1, R9
000032bc  ADDEQ           R9, R1, #4
000032c0  SUBNE           R9, R1, #4
000032c4  LDR             R1, [R1]
000032c8  LDR             R2, [SP,#0xCC+var_4C]
000032cc  ADD             LR, SP, #0xCC+var_80
000032d0  LDM             LR, {R3,LR}
000032d4  ADD             R1, R1, R2,LSL#1
000032d8  ADD             R3, R3, LR
000032dc  STR             R3, [SP,#0xCC+var_80]
000032e0  MOV             R3, R3,ASR#16
000032e4  LDR             R3, [R0,R3,LSL#2]
000032e8  ADD             R2, R1, R8,LSL#1
000032ec  ADD             LR, R3, R6,LSL#1
000032f0  LDR             R3, [SP,#0xCC+var_84]
000032f4  CMP             R1, R2
000032f8  ADDNE           R3, R3, R5
000032fc  MOVNE           R12, R3,ASR#16
00003300  ADDNE           R12, LR, R12,LSL#1
00003304  LDRHNE          R12, [R12]
00003308  STRHNE          R12, [R1],#2
0000330c  BNE             loc_32F4
00003310  LDR             R1, [SP,#0xCC+var_5C]
00003314  CMP             R9, R1
00003318  BNE             loc_32B4
0000331c  MOV             R0, #0
00003320  B               loc_192C
