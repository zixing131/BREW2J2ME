00009990  PUSH            {R0-R2,R4-R11,LR}
00009994  MOV             R6, R0
00009998  LDR             R0, =(start - 0x99AC)
0000999c  SUB             SP, SP, #0x160
000099a0  MOV             R8, R1
000099a4  ADD             R0, PC, R0; start
000099a8  LDR             R0, [R0,#(dword_8 - 0xC)]
000099ac  ADR             LR, loc_99B8
000099b0  LDR             R0, [R0,#0xC0]
000099b4  BX              R0
000099b8  LDR             R0, [R0,#0x28]
000099bc  STR             R0, [SP,#0x16C+var_64]
000099c0  LDR             R0, [R0,#0x64]
000099c4  STR             R0, [SP,#0x16C+var_68]
000099c8  LDR             R0, [R6,#0x898]
000099cc  LDRH            R0, [R0,#0x10]
000099d0  STR             R0, [SP,#0x16C+var_58]
000099d4  LDR             R1, [R8,#0x28]
000099d8  LDRSH           R1, [R1,#0x18]
000099dc  STR             R0, [SP,#0x16C+var_130]
000099e0  MOV             R0, #0
000099e4  STRH            R0, [SP,#0x16C+var_EE]
000099e8  LDRH            R0, [R8]
000099ec  MOV             R4, R1,LSR#1
000099f0  LDR             R1, =0x1069
000099f4  STRH            R0, [SP,#0x16C+var_EC]
000099f8  LDRH            R0, [R8,#2]
000099fc  STRH            R0, [SP,#0x16C+var_EA]
00009a00  LDR             R0, [SP,#0x16C+var_4]
00009a04  BL              sub_11DD8
00009a08  STR             R0, [SP,#0x16C+var_144]
00009a0c  LDR             R2, [R6,#0x8D0]
00009a10  LDR             R0, [SP,#0x16C+var_58]
00009a14  LDR             R1, [SP,#0x16C+var_58]
00009a18  AND             R0, R0, #0xF800
00009a1c  MOV             R0, R0,LSL#11
00009a20  AND             R1, R1, #0x7E0
00009a24  ORR             R0, R0, R1,LSL#5
00009a28  LDR             R1, [SP,#0x16C+var_58]
00009a2c  ADD             R5, R6, #0x800
00009a30  AND             R1, R1, #0x1F
00009a34  ORR             R1, R0, R1
00009a38  STR             R1, [SP,#0x16C+var_10]
00009a3c  STR             R2, [SP,#0x16C+var_3C]
00009a40  B               loc_A7B4
00009a44  LDR             R2, [SP,#0x16C+var_3C]
00009a48  LDRB            R0, [R2]
00009a4c  CMP             R0, #1
00009a50  BNE             loc_9E5C
00009a54  LDR             R7, [SP,#0x16C+var_3C]
00009a58  LDRB            R0, [R7,#0x24]
00009a5c  CMP             R0, #0
00009a60  BEQ             loc_9AA4
00009a64  LDR             R0, [R6,#0x898]
00009a68  LDRH            R1, [R7,#0x26]
00009a6c  LDR             R0, [R0,#0x48]
00009a70  RSB             R1, R1, R1,LSL#3
00009a74  ADD             R3, R0, R1,LSL#2
00009a78  LDRH            R0, [R3,#4]
00009a7c  CMP             R0, #0
00009a80  BEQ             loc_9AA4
00009a84  SUB             R0, R0, #1
00009a88  STRH            R0, [R3,#4]
00009a8c  LDRH            R0, [R3,#4]
00009a90  CMP             R0, #0
00009a94  MOVEQ           R1, R8
00009a98  MOVEQ           R0, R6
00009a9c  LDREQ           R2, [SP,#0x16C+var_4]
00009aa0  BLEQ            sub_8BEC
00009aa4  LDR             R0, [R7,#0x28]
00009aa8  MOV             R1, #0
00009aac  STR             R0, [SP,#0x16C+var_F8]
00009ab0  LDR             R0, [R7,#0x2C]
00009ab4  STR             R0, [SP,#0x16C+var_FC]
00009ab8  LDR             R0, [R7,#0x38]
00009abc  STR             R0, [SP,#0x16C+var_100]
00009ac0  LDR             R0, [R7,#0x40]
00009ac4  STR             R0, [SP,#0x16C+var_104]
00009ac8  LDR             R0, [R7,#0x30]
00009acc  STR             R0, [SP,#0x16C+var_108]
00009ad0  LDR             R0, [R7,#0x34]
00009ad4  STR             R0, [SP,#0x16C+var_10C]
00009ad8  LDR             R0, [R7,#0x3C]
00009adc  STR             R0, [SP,#0x16C+var_110]
00009ae0  LDR             R0, [R7,#0x44]
00009ae4  STR             R1, [SP,#0x16C+var_118]
00009ae8  STR             R1, [SP,#0x16C+var_11C]
00009aec  STR             R1, [SP,#0x16C+var_120]
00009af0  STR             R0, [SP,#0x16C+var_114]
00009af4  LDRH            R1, [R7,#0x14]
00009af8  LDR             R0, [R6,#0x824]
00009afc  ADD             R0, R0, R1,LSL#5
00009b00  LDRH            R1, [R0,#2]
00009b04  STR             R1, [SP,#0x16C+var_124]
00009b08  LDR             R12, [R0,#8]
00009b0c  STR             R12, [SP,#0x16C+var_128]
00009b10  LDRH            R0, [R0,#4]
00009b14  ANDS            R12, R0, #0x20 ; ' '
00009b18  MOVNE           R12, #1
00009b1c  STR             R12, [SP,#0x16C+var_12C]
00009b20  LDRH            R0, [R7,#0x16]
00009b24  TST             R0, #4
00009b28  BEQ             loc_9B4C
00009b2c  LDR             R0, [SP,#0x16C+var_114]
00009b30  RSB             R0, R0, #0
00009b34  STR             R0, [SP,#0x16C+var_114]
00009b38  LDRB            R0, [R7,#0x21]
00009b3c  LDR             R1, [SP,#0x16C+var_104]
00009b40  RSB             R0, R1, R0,LSL#8
00009b44  SUB             R0, R0, #1
00009b48  STR             R0, [SP,#0x16C+var_104]
00009b4c  LDR             R0, [SP,#0x16C+var_124]
00009b50  MOV             R1, #0
00009b54  STR             R1, [SP,#0x16C+var_F4]
00009b58  SUB             R10, R0, #1
00009b5c  STR             R10, [SP,#0x16C+var_14]
00009b60  B               loc_9E48
00009b64  ADD             R1, SP, #0x16C+var_F8
00009b68  LDM             R1, {R0,R1}
00009b6c  ADD             R12, R0, R1
00009b70  LDR             R0, [SP,#0x16C+var_104]
00009b74  LDR             R1, [SP,#0x16C+var_120]
00009b78  STR             R12, [SP,#0x16C+var_50]
00009b7c  ADD             R0, R0, R1
00009b80  MOV             R10, R0,ASR#8
00009b84  CMP             R10, #0
00009b88  LDR             R0, [SP,#0x16C+var_124]
00009b8c  MOVLT           R10, #0
00009b90  CMP             R10, R0
00009b94  LDR             R0, [SP,#0x16C+var_100]
00009b98  LDR             R1, [SP,#0x16C+var_11C]
00009b9c  LDRGE           R10, [SP,#0x16C+var_14]
00009ba0  SUB             R0, R0, R1
00009ba4  MOV             R9, R0,ASR#8
00009ba8  LDR             R0, [SP,#0x16C+var_FC]
00009bac  LDR             R1, [SP,#0x16C+var_118]
00009bb0  SUB             R0, R0, R1
00009bb4  MOV             R11, R0,ASR#8
00009bb8  LDRB            R0, [R7,#0x20]
00009bbc  MOV             R1, R0,LSL#16
00009bc0  MOV             R0, R9
00009bc4  BL              sub_104
00009bc8  CMP             R11, #0
00009bcc  MOVLT           R2, #0x20 ; ' '
00009bd0  MOV             R1, #0
00009bd4  BLT             loc_9BEC
00009bd8  LDR             R2, [R6,#0x8C8]
00009bdc  LDR             R2, [R2,R11,LSL#2]
00009be0  STR             R2, [SP,#0x16C+var_5C]
00009be4  LDR             R2, [R6,#0x8C4]
00009be8  LDRB            R2, [R2,R11]
00009bec  LDRH            R3, [R5,#0xA0]
00009bf0  LDR             R12, [SP,#0x16C+var_50]
00009bf4  ADD             R3, R3, R12
00009bf8  STR             R3, [SP,#0x16C+var_50]
00009bfc  LDRH            LR, [R5,#0x9E]
00009c00  STR             LR, [SP,#0x16C+var_18]
00009c04  LDRH            R12, [R5,#0xA2]
00009c08  SUB             R3, LR, R11
00009c0c  ADD             R3, R3, R12
00009c10  SUB             LR, R3, R9
00009c14  CMP             LR, R12
00009c18  ADDLT           LR, R3, #1
00009c1c  SUBLT           R9, LR, R12
00009c20  LDR             LR, [SP,#0x16C+var_18]
00009c24  ADD             LR, R12, LR
00009c28  CMP             LR, R3
00009c2c  BGT             loc_9C50
00009c30  LDR             LR, [SP,#0x16C+var_18]
00009c34  SUB             R3, R3, LR
00009c38  SUB             R3, R3, R12
00009c3c  ADD             R3, R3, #1
00009c40  MLA             R1, R0, R3, R1
00009c44  SUB             R9, R9, R3
00009c48  ADD             R3, LR, R12
00009c4c  SUB             R3, R3, #1
00009c50  LDR             R12, [R8,#0x14]
00009c54  LDR             R3, [R12,R3,LSL#2]
00009c58  LDR             R12, [SP,#0x16C+var_50]
00009c5c  ADD             R3, R3, R12,LSL#1
00009c60  ADD             R3, R3, R4,LSL#1
00009c64  MUL             R12, R4, R9
00009c68  SUB             LR, R3, R12,LSL#1
00009c6c  LDR             R12, [SP,#0x16C+var_128]
00009c70  LDR             R9, [R12,R10,LSL#2]
00009c74  LDR             R12, [SP,#0x16C+var_12C]
00009c78  CMP             R12, #0
00009c7c  BEQ             loc_9D64
00009c80  CMP             R2, #0
00009c84  BNE             loc_9CBC
00009c88  B               loc_9CB0
00009c8c  MOV             R2, R1,ASR#16
00009c90  ADD             R2, R9, R2,LSL#1
00009c94  LDRH            R2, [R2]
00009c98  SUB             R3, R3, R4,LSL#1
00009c9c  ADD             R1, R1, R0
00009ca0  SUB             R12, R2, #0xF800
00009ca4  SUBS            R12, R12, #0x1F
00009ca8  LDRNE           R2, [SP,#0x16C+var_130]
00009cac  STRHNE          R2, [R3]
00009cb0  CMP             R3, LR
00009cb4  BHI             loc_9C8C
00009cb8  B               loc_9E0C
00009cbc  CMP             R2, #0x20 ; ' '
00009cc0  BNE             loc_9D58
00009cc4  B               loc_9CE8
00009cc8  MOV             R2, R1,ASR#16
00009ccc  ADD             R2, R9, R2,LSL#1
00009cd0  LDRH            R2, [R2]
00009cd4  SUB             R3, R3, R4,LSL#1
00009cd8  ADD             R1, R1, R0
00009cdc  SUB             R12, R2, #0xF800
00009ce0  SUBS            R12, R12, #0x1F
00009ce4  STRHNE          R2, [R3]
00009ce8  CMP             R3, LR
00009cec  BHI             loc_9CC8
00009cf0  B               loc_9E0C
00009cf4  MOV             R12, R1,ASR#16
00009cf8  ADD             R12, R9, R12,LSL#1
00009cfc  LDRH            R10, [R12]
00009d00  SUB             R12, R10, #0xF800
00009d04  SUBS            R12, R12, #0x1F
00009d08  SUBEQ           R3, R3, R4,LSL#1
00009d0c  BEQ             loc_9D54
00009d10  AND             R12, R10, #0xF800
00009d14  AND             R11, R10, #0x7E0
00009d18  MOV             R12, R12,LSL#11
00009d1c  ORR             R12, R12, R11,LSL#5
00009d20  AND             R10, R10, #0x1F
00009d24  ORR             R12, R12, R10
00009d28  LDR             R10, [SP,#0x16C+var_5C]
00009d2c  SUB             R3, R3, R4,LSL#1
00009d30  MLA             R12, R2, R12, R10
00009d34  MOV             R12, R12,LSR#5
00009d38  AND             R10, R12, #0x7C00000
00009d3c  AND             R11, R12, #0xFC00
00009d40  MOV             R10, R10,LSR#11
00009d44  ORR             R10, R10, R11,LSR#5
00009d48  AND             R12, R12, #0x1F
00009d4c  ORR             R12, R10, R12
00009d50  STRH            R12, [R3]
00009d54  ADD             R1, R1, R0
00009d58  CMP             R3, LR
00009d5c  BHI             loc_9CF4
00009d60  B               loc_9E0C
00009d64  CMP             R2, #0
00009d68  BNE             loc_9D84
00009d6c  CMP             R3, LR
00009d70  LDRHI           R2, [SP,#0x16C+var_130]
00009d74  SUBHI           R3, R3, R4,LSL#1
00009d78  STRHHI          R2, [R3]
00009d7c  BHI             loc_9D6C
00009d80  B               loc_9E0C
00009d84  CMP             R2, #0x20 ; ' '
00009d88  BNE             loc_9E04
00009d8c  CMP             R3, LR
00009d90  MOVHI           R2, R1,ASR#16
00009d94  ADDHI           R2, R9, R2,LSL#1
00009d98  LDRHHI          R2, [R2]
00009d9c  SUBHI           R3, R3, R4,LSL#1
00009da0  ADDHI           R1, R1, R0
00009da4  STRHHI          R2, [R3]
00009da8  BHI             loc_9D8C
00009dac  B               loc_9E0C
00009db0  MOV             R12, R1,ASR#16
00009db4  ADD             R12, R9, R12,LSL#1
00009db8  LDRH            R12, [R12]
00009dbc  SUB             R3, R3, R4,LSL#1
00009dc0  ADD             R1, R1, R0
00009dc4  AND             R10, R12, #0xF800
00009dc8  AND             R11, R12, #0x7E0
00009dcc  MOV             R10, R10,LSL#11
00009dd0  ORR             R10, R10, R11,LSL#5
00009dd4  AND             R12, R12, #0x1F
00009dd8  ORR             R12, R10, R12
00009ddc  LDR             R10, [SP,#0x16C+var_5C]
00009de0  MLA             R12, R2, R12, R10
00009de4  MOV             R12, R12,LSR#5
00009de8  AND             R10, R12, #0x7C00000
00009dec  AND             R11, R12, #0xFC00
00009df0  MOV             R10, R10,LSR#11
00009df4  ORR             R10, R10, R11,LSR#5
00009df8  AND             R12, R12, #0x1F
00009dfc  ORR             R12, R10, R12
00009e00  STRH            R12, [R3]
00009e04  CMP             R3, LR
00009e08  BHI             loc_9DB0
00009e0c  LDR             R0, [SP,#0x16C+var_10C]
00009e10  LDR             R1, [SP,#0x16C+var_118]
00009e14  ADD             R1, R1, R0
00009e18  STR             R1, [SP,#0x16C+var_118]
00009e1c  LDR             R1, [SP,#0x16C+var_11C]
00009e20  LDR             R0, [SP,#0x16C+var_110]
00009e24  ADD             R1, R1, R0
00009e28  STR             R1, [SP,#0x16C+var_11C]
00009e2c  LDR             R1, [SP,#0x16C+var_120]
00009e30  LDR             R0, [SP,#0x16C+var_114]
00009e34  ADD             R1, R1, R0
00009e38  STR             R1, [SP,#0x16C+var_120]
00009e3c  LDR             R1, [SP,#0x16C+var_F4]
00009e40  SUB             R1, R1, #1
00009e44  STR             R1, [SP,#0x16C+var_F4]
00009e48  LDR             R0, [SP,#0x16C+var_108]
00009e4c  LDR             R1, [SP,#0x16C+var_F4]
00009e50  CMP             R1, R0
00009e54  BGE             loc_9B64
00009e58  B               loc_A7A8
00009e5c  CMP             R0, #2
00009e60  BNE             loc_A264
00009e64  LDR             R2, [SP,#0x16C+var_3C]
00009e68  STR             R2, [SP,#0x16C+var_60]
00009e6c  LDRB            R1, [R2,#0x14]
00009e70  LDR             R0, [R6,#0x87C]
00009e74  ADD             R1, R1, R1,LSL#3
00009e78  ADD             R7, R0, R1,LSL#2
00009e7c  LDRB            R0, [R7,#0x1E]
00009e80  CMP             R0, #0
00009e84  BNE             loc_A1AC
00009e88  LDR             R1, [R7]
00009e8c  LDR             R0, [SP,#0x16C+var_4]
00009e90  BL              sub_11DD8
00009e94  STR             R0, [SP,#0x16C+var_40]
00009e98  LDRH            R1, [R0]
00009e9c  STR             R1, [SP,#0x16C+var_44]
00009ea0  LDRH            R1, [R0,#2]
00009ea4  LDRB            R0, [R7,#4]
00009ea8  BL              sub_1DC
00009eac  MOV             R10, R0
00009eb0  LDR             R0, [SP,#0x16C+var_60]
00009eb4  LDR             R12, [R0,#0x24]
00009eb8  LDR             R1, [SP,#0x16C+var_44]
00009ebc  STR             R12, [SP,#0x16C+var_1C]
00009ec0  MUL             R0, R1, R12
00009ec4  MOV             R11, R0,ASR#8
00009ec8  MUL             R1, R10, R12
00009ecc  MOV             R0, R1,ASR#8
00009ed0  STR             R0, [SP,#0x16C+var_4C]
00009ed4  LDR             R0, [SP,#0x16C+var_60]
00009ed8  LDR             R0, [R0,#0x1C]
00009edc  LDRH            R1, [R5,#0xA0]
00009ee0  ADD             R1, R0, R1
00009ee4  STR             R1, [SP,#0x16C+var_20]
00009ee8  LDRSH           R0, [R7,#8]
00009eec  MUL             R0, R12, R0
00009ef0  SUB             R0, R1, R0,ASR#8
00009ef4  STR             R0, [SP,#0x16C+var_50]
00009ef8  LDRH            R1, [R5,#0x9E]
00009efc  LDR             R0, [SP,#0x16C+var_60]
00009f00  LDR             R0, [R0,#0x20]
00009f04  LDRH            R3, [R5,#0xA2]
00009f08  SUB             R2, R1, R0
00009f0c  ADD             R3, R2, R3
00009f10  STR             R3, [SP,#0x16C+var_24]
00009f14  LDRSH           R2, [R7,#0xA]
00009f18  MUL             R2, R12, R2
00009f1c  SUB             R2, R3, R2,ASR#8
00009f20  STR             R2, [SP,#0x16C+var_54]
00009f24  LDRB            R2, [R7,#7]
00009f28  CMP             R2, #0
00009f2c  BEQ             loc_9F44
00009f30  CMP             R0, R1
00009f34  SUBLT           R1, R1, #1
00009f38  SUBLT           R0, R1, R0
00009f3c  BLT             loc_9F54
00009f40  B               loc_9F4C
00009f44  CMP             R0, #0
00009f48  BGE             loc_9F54
00009f4c  MOV             R9, #0
00009f50  B               loc_9F64
00009f54  LDR             R1, [R6,#0x8C4]
00009f58  LDRB            R0, [R1,R0]
00009f5c  RSB             R0, R0, #0x20 ; ' '
00009f60  AND             R9, R0, #0xFF
00009f64  LDRB            R0, [R7,#5]
00009f68  CMP             R0, #0
00009f6c  BEQ             loc_9F84
00009f70  RSB             R0, R0, #0x64 ; 'd'
00009f74  MUL             R1, R9, R0
00009f78  MOV             R0, #0x64 ; 'd'
00009f7c  BL              sub_104
00009f80  AND             R9, R0, #0xFF
00009f84  LDR             R0, [R7]
00009f88  SUBS            R12, R0, #0x800
00009f8c  SUBSCS          R12, R12, #0x35 ; '5'
00009f90  BCC             loc_A0D4
00009f94  SUBS            R12, R0, #0x800
00009f98  SUBSCS          R12, R12, #0x38 ; '8'
00009f9c  BHI             loc_A0D4
00009fa0  LDR             R0, [R6,#0x8A4]
00009fa4  BL              sub_2E4
00009fa8  ADD             R0, R1, R1,LSL#1
00009fac  STR             R0, [SP,#0x16C+var_13C]
00009fb0  CMP             R0, #0xF
00009fb4  LDRGT           R0, [SP,#0x16C+var_13C]
00009fb8  LDR             R2, [SP,#0x16C+var_54]
00009fbc  RSBGT           R0, R0, #0x1E
00009fc0  STRGT           R0, [SP,#0x16C+var_13C]
00009fc4  LDR             R0, [SP,#0x16C+var_13C]
00009fc8  LDR             R12, [SP,#0x16C+var_1C]
00009fcc  LDR             R3, [SP,#0x16C+var_24]
00009fd0  MUL             R1, R0, R12
00009fd4  SUB             R2, R2, R1,ASR#8
00009fd8  LDR             R0, [SP,#0x16C+var_20]
00009fdc  STR             R2, [SP,#0x16C+var_54]
00009fe0  STR             R0, [SP,#0x16C+var_134]
00009fe4  STR             R3, [SP,#0x16C+var_138]
00009fe8  LDR             R0, [R6,#0x898]
00009fec  LDRH            R0, [R0,#0x10]
00009ff0  AND             R1, R0, #0xF800
00009ff4  AND             R2, R0, #0x7E0
00009ff8  MOV             R1, R1,LSL#11
00009ffc  ORR             R1, R1, R2,LSL#5
0000a000  AND             R0, R0, #0x1F
0000a004  ORR             R0, R1, R0
0000a008  MUL             R1, R0, R9
0000a00c  MOV             R0, R1,LSR#5
0000a010  AND             R1, R0, #0x7C00000
0000a014  AND             R2, R0, #0xFC00
0000a018  MOV             R1, R1,LSR#11
0000a01c  ORR             R1, R1, R2,LSR#5
0000a020  AND             R0, R0, #0x1F
0000a024  ORR             R3, R1, R0
0000a028  STR             R3, [SP,#0x16C+var_140]
0000a02c  MOV             R1, R11
0000a030  MOV             R0, #6
0000a034  BL              sub_104
0000a038  STR             R0, [SP,#0x16C+var_14C]
0000a03c  LDR             R0, [SP,#0x16C+var_13C]
0000a040  RSB             R0, R0, #0xF
0000a044  MUL             R0, R11, R0
0000a048  STR             R0, [SP,#0x16C+var_28]
0000a04c  MOV             R1, R0
0000a050  MOV             R0, #0x78 ; 'x'
0000a054  BL              sub_104
0000a058  MOV             R1, R0
0000a05c  LDR             R0, [SP,#0x16C+var_14C]
0000a060  ADD             R0, R0, R1
0000a064  MOV             R0, R0,LSL#16
0000a068  MOV             R0, R0,LSR#16
0000a06c  STR             R0, [SP,#0x16C+var_2C]
0000a070  ADD             R0, R11, R11,LSR#31
0000a074  MOV             R0, R0,ASR#1
0000a078  STR             R0, [SP,#0x16C+var_30]
0000a07c  MOV             R0, #0x3C ; '<'
0000a080  LDR             R1, [SP,#0x16C+var_28]
0000a084  BL              sub_104
0000a088  MOV             R1, R0
0000a08c  LDR             R0, [SP,#0x16C+var_30]
0000a090  MOV             R2, #0
0000a094  ADD             R0, R0, R1
0000a098  MOV             R12, R0,LSL#16
0000a09c  LDR             R0, [SP,#0x16C+var_2C]
0000a0a0  MOV             R1, #0x10
0000a0a4  LDR             R3, [SP,#0x16C+var_140]
0000a0a8  STMEA           SP, {R0-R3}
0000a0ac  LDR             R0, [SP,#0x16C+var_138]
0000a0b0  MOV             R12, R12,LSR#16
0000a0b4  MOV             R2, R0,LSL#16
0000a0b8  LDR             R0, [SP,#0x16C+var_134]
0000a0bc  MOV             R2, R2,ASR#16
0000a0c0  MOV             R1, R0,LSL#16
0000a0c4  MOV             R1, R1,ASR#16
0000a0c8  MOV             R0, R8
0000a0cc  MOV             R3, R12
0000a0d0  BL              sub_105D0
0000a0d4  LDRSB           R0, [R7,#0xC]
0000a0d8  LDR             R1, [R6,#0x8A4]
0000a0dc  BL              sub_1DC
0000a0e0  ADD             R0, R7, R1
0000a0e4  LDRSB           R12, [R0,#0xD]
0000a0e8  CMP             R12, #0
0000a0ec  BLE             loc_A124
0000a0f0  LDR             R0, [SP,#0x16C+var_58]
0000a0f4  MOV             R2, #0
0000a0f8  ORR             R3, R0, R9,LSL#16
0000a0fc  MOV             R0, R10,LSL#16
0000a100  MOV             R0, R0,ASR#16
0000a104  ADD             R9, SP, #0x16C+var_158
0000a108  MOV             R1, #0x11
0000a10c  STM             R9, {R0-R3}
0000a110  LDR             R0, [SP,#0x16C+var_44]
0000a114  MOV             R3, R0,LSL#16
0000a118  MOV             R3, R3,ASR#16
0000a11c  SUB             R0, R12, #1
0000a120  B               loc_A15C
0000a124  BGE             loc_A1AC
0000a128  LDR             R0, [SP,#0x16C+var_58]
0000a12c  MOV             R2, #0
0000a130  ORR             R3, R0, R9,LSL#16
0000a134  MOV             R0, R10,LSL#16
0000a138  MOV             R0, R0,ASR#16
0000a13c  ADD             R9, SP, #0x16C+var_158
0000a140  MOV             R1, #0x13
0000a144  STM             R9, {R0-R3}
0000a148  LDR             R0, [SP,#0x16C+var_44]
0000a14c  MOV             R3, R0,LSL#16
0000a150  ADD             R0, R12, #1
0000a154  RSB             R0, R0, #0
0000a158  MOV             R3, R3,ASR#16
0000a15c  MUL             R0, R10, R0
0000a160  MOV             R2, R0,LSL#16
0000a164  LDR             R0, [SP,#0x16C+var_40]
0000a168  MOV             R2, R2,ASR#16
0000a16c  MOV             R1, #0
0000a170  STMFA           SP, {R0-R3}
0000a174  LDR             R0, [SP,#0x16C+var_4C]
0000a178  LDR             R2, [SP,#0x16C+var_54]
0000a17c  MOV             R3, R0,LSL#16
0000a180  LDR             R0, [SP,#0x16C+var_50]
0000a184  MOV             R3, R3,ASR#16
0000a188  STR             R3, [SP,#0x16C+var_16C]
0000a18c  MOV             R1, R0,LSL#16
0000a190  MOV             R3, R11,LSL#16
0000a194  MOV             R2, R2,LSL#16
0000a198  MOV             R2, R2,ASR#16
0000a19c  MOV             R3, R3,ASR#16
0000a1a0  MOV             R1, R1,ASR#16
0000a1a4  MOV             R0, R8
0000a1a8  BL              sub_18BC
0000a1ac  LDRB            R0, [R7,#0x1F]
0000a1b0  CMP             R0, #1
0000a1b4  BNE             loc_A7A8
0000a1b8  LDRSH           R1, [R7,#0x20]
0000a1bc  LDR             R0, [SP,#0x16C+var_64]
0000a1c0  MOV             R3, #0x80
0000a1c4  ADD             R2, SP, #0x16C+var_E8
0000a1c8  BL              sub_19618
0000a1cc  MOV             R2, #0
0000a1d0  ADD             R1, SP, #0x16C+var_E8
0000a1d4  LDR             R0, [SP,#0x16C+var_68]
0000a1d8  BL              sub_12BC8
0000a1dc  MOV             R1, R0
0000a1e0  LDR             R0, [SP,#0x16C+var_68]
0000a1e4  ADD             R1, R1, R1,LSR#31
0000a1e8  LDRH            R0, [R0,#0x30]
0000a1ec  LDR             R2, [SP,#0x16C+var_60]
0000a1f0  LDRH            R3, [R5,#0xA0]
0000a1f4  LDR             R2, [R2,#0x1C]
0000a1f8  ADD             R0, R0, R0,LSR#31
0000a1fc  ADD             R2, R2, R3
0000a200  SUB             R1, R2, R1,ASR#1
0000a204  LDRH            R2, [R5,#0x9E]
0000a208  LDR             R3, [R6,#0x830]
0000a20c  SUB             R2, R2, R3
0000a210  LDR             R3, [R6,#0x83C]
0000a214  ADD             R2, R2, R3
0000a218  LDRH            R3, [R5,#0xA2]
0000a21c  STRH            R1, [SP,#0x16C+var_F0]
0000a220  MOV             R1, #0
0000a224  ADD             R2, R2, R3
0000a228  SUB             LR, R2, R0,ASR#1
0000a22c  ADD             R0, SP, #0x16C+var_158
0000a230  MOV             R2, #0
0000a234  MOV             R3, #0
0000a238  STR             R1, [SP,#0x16C+var_15C]
0000a23c  STM             R0, {R1-R3}
0000a240  ADD             R0, SP, #0x16C+var_E8
0000a244  STMEA           SP, {R0-R3}
0000a248  MOV             R2, LR,LSL#16
0000a24c  MOV             R2, R2,ASR#16
0000a250  LDR             R0, [SP,#0x16C+var_68]
0000a254  ADD             R3, SP, #0x16C+var_F0
0000a258  MOV             R1, R8
0000a25c  BL              sub_98BC
0000a260  B               loc_A7A8
0000a264  CMP             R0, #4
0000a268  BNE             loc_A5A4
0000a26c  LDR             R11, [SP,#0x16C+var_3C]
0000a270  MOV             R2, #0x15
0000a274  LDRH            R1, [R11,#0x14]
0000a278  LDR             R0, [R6,#0x88C]
0000a27c  MUL             R1, R2, R1
0000a280  ADD             R9, R0, R1,LSL#2
0000a284  LDR             R1, [R9]
0000a288  LDR             R0, [SP,#0x16C+var_4]
0000a28c  BL              sub_11DD8
0000a290  STR             R0, [SP,#0x16C+var_40]
0000a294  LDRH            R2, [R0]
0000a298  STR             R2, [SP,#0x16C+var_44]
0000a29c  LDRH            R1, [R0,#2]
0000a2a0  LDRB            R0, [R9,#4]
0000a2a4  BL              sub_1DC
0000a2a8  LDR             R1, [R11,#0x30]
0000a2ac  LDR             R2, [SP,#0x16C+var_44]
0000a2b0  MOV             R7, R0
0000a2b4  MUL             R0, R2, R1
0000a2b8  MOV             R0, R0,ASR#8
0000a2bc  STR             R0, [SP,#0x16C+var_48]
0000a2c0  MUL             R2, R7, R1
0000a2c4  MOV             R0, R2,ASR#8
0000a2c8  STR             R0, [SP,#0x16C+var_4C]
0000a2cc  LDR             R0, [R11,#0x28]
0000a2d0  LDRH            R2, [R5,#0xA0]
0000a2d4  ADD             R12, R0, R2
0000a2d8  STR             R12, [SP,#0x16C+var_134]
0000a2dc  LDRH            R2, [R5,#0x9E]
0000a2e0  LDR             R0, [R11,#0x2C]
0000a2e4  LDRH            R3, [R5,#0xA2]
0000a2e8  SUB             R2, R2, R0
0000a2ec  CMP             R0, #0
0000a2f0  ADD             R2, R2, R3
0000a2f4  STR             R2, [SP,#0x16C+var_138]
0000a2f8  LDRSH           R3, [R9,#8]
0000a2fc  MOVLT           R10, #0
0000a300  MUL             R3, R1, R3
0000a304  SUB             R3, R12, R3,ASR#8
0000a308  STR             R3, [SP,#0x16C+var_50]
0000a30c  LDRSH           R3, [R9,#0xA]
0000a310  MUL             R3, R1, R3
0000a314  SUB             R1, R2, R3,ASR#8
0000a318  STR             R1, [SP,#0x16C+var_54]
0000a31c  LDRGE           R1, [R6,#0x8C4]
0000a320  LDRBGE          R0, [R1,R0]
0000a324  LDR             R1, [SP,#0x16C+var_10]
0000a328  RSBGE           R0, R0, #0x20 ; ' '
0000a32c  ANDGE           R10, R0, #0xFF
0000a330  MUL             R0, R1, R10
0000a334  MOV             R0, R0,LSR#5
0000a338  AND             R1, R0, #0x7C00000
0000a33c  AND             R2, R0, #0xFC00
0000a340  MOV             R1, R1,LSR#11
0000a344  ORR             R1, R1, R2,LSR#5
0000a348  AND             R0, R0, #0x1F
0000a34c  ORR             R3, R1, R0
0000a350  LDR             R1, [SP,#0x16C+var_48]
0000a354  STR             R3, [SP,#0x16C+var_140]
0000a358  MOV             R0, R1,ASR#31
0000a35c  ADD             R0, R1, R0,LSR#29
0000a360  MOV             R0, R0,ASR#3
0000a364  MOV             R0, R0,LSL#16
0000a368  MOV             R0, R0,LSR#16
0000a36c  STR             R0, [SP,#0x16C+var_34]
0000a370  MOV             R0, #3
0000a374  BL              sub_104
0000a378  MOV             R12, R0,LSL#16
0000a37c  LDR             R0, [SP,#0x16C+var_34]
0000a380  MOV             R2, #0
0000a384  MOV             R1, #0x10
0000a388  LDR             R3, [SP,#0x16C+var_140]
0000a38c  STMEA           SP, {R0-R3}
0000a390  MOV             R12, R12,LSR#16
0000a394  MOV             R3, R12
0000a398  LDR             R12, [SP,#0x16C+var_134]
0000a39c  LDR             R2, [SP,#0x16C+var_138]
0000a3a0  MOV             R1, R12,LSL#16
0000a3a4  MOV             R2, R2,LSL#16
0000a3a8  MOV             R2, R2,ASR#16
0000a3ac  MOV             R1, R1,ASR#16
0000a3b0  MOV             R0, R8
0000a3b4  BL              sub_105D0
0000a3b8  LDRH            R0, [R11,#0x44]
0000a3bc  ADD             R9, R9, R0,LSL#4
0000a3c0  LDRSB           R0, [R9,#0xC]
0000a3c4  LDR             R1, [R6,#0x8A4]
0000a3c8  BL              sub_1DC
0000a3cc  ADD             R0, R9, R1
0000a3d0  LDRSB           R12, [R0,#0xD]
0000a3d4  CMP             R12, #0
0000a3d8  BLE             loc_A410
0000a3dc  LDR             R0, [SP,#0x16C+var_58]
0000a3e0  MOV             R2, #0
0000a3e4  ORR             R3, R0, R10,LSL#16
0000a3e8  MOV             R0, R7,LSL#16
0000a3ec  MOV             R0, R0,ASR#16
0000a3f0  MOV             R1, #0x11
0000a3f4  ADD             R9, SP, #0x16C+var_158
0000a3f8  STM             R9, {R0-R3}
0000a3fc  LDR             R0, [SP,#0x16C+var_44]
0000a400  MOV             R3, R0,LSL#16
0000a404  MOV             R3, R3,ASR#16
0000a408  SUB             R0, R12, #1
0000a40c  B               loc_A448
0000a410  BGE             loc_A49C
0000a414  LDR             R0, [SP,#0x16C+var_58]
0000a418  MOV             R2, #0
0000a41c  ORR             R3, R0, R10,LSL#16
0000a420  MOV             R0, R7,LSL#16
0000a424  MOV             R0, R0,ASR#16
0000a428  MOV             R1, #0x13
0000a42c  ADD             R9, SP, #0x16C+var_158
0000a430  STM             R9, {R0-R3}
0000a434  LDR             R0, [SP,#0x16C+var_44]
0000a438  MOV             R3, R0,LSL#16
0000a43c  ADD             R0, R12, #1
0000a440  RSB             R0, R0, #0
0000a444  MOV             R3, R3,ASR#16
0000a448  MUL             R0, R7, R0
0000a44c  MOV             R2, R0,LSL#16
0000a450  LDR             R0, [SP,#0x16C+var_40]
0000a454  MOV             R2, R2,ASR#16
0000a458  MOV             R1, #0
0000a45c  STMFA           SP, {R0-R3}
0000a460  LDR             R0, [SP,#0x16C+var_4C]
0000a464  LDR             R1, [SP,#0x16C+var_54]
0000a468  MOV             R3, R0,LSL#16
0000a46c  MOV             R3, R3,ASR#16
0000a470  LDR             R0, [SP,#0x16C+var_48]
0000a474  STR             R3, [SP,#0x16C+var_16C]
0000a478  MOV             R3, R0,LSL#16
0000a47c  LDR             R0, [SP,#0x16C+var_50]
0000a480  MOV             R2, R1,LSL#16
0000a484  MOV             R1, R0,LSL#16
0000a488  MOV             R1, R1,ASR#16
0000a48c  MOV             R0, R8
0000a490  MOV             R2, R2,ASR#16
0000a494  MOV             R3, R3,ASR#16
0000a498  BL              sub_18BC
0000a49c  LDRB            R7, [R11,#0x49]
0000a4a0  CMP             R7, #0
0000a4a4  BEQ             loc_A7A8
0000a4a8  LDR             R0, [SP,#0x16C+var_144]
0000a4ac  LDRH            R2, [R0]
0000a4b0  STR             R2, [SP,#0x16C+var_44]
0000a4b4  LDRH            R1, [R0,#2]
0000a4b8  MOV             R0, #3
0000a4bc  BL              sub_1DC
0000a4c0  LDR             R1, [R11,#0x30]
0000a4c4  LDR             R2, [SP,#0x16C+var_44]
0000a4c8  MOV             R9, R0
0000a4cc  MUL             R0, R2, R1
0000a4d0  MOV             R12, R0,ASR#8
0000a4d4  MUL             R1, R9, R1
0000a4d8  CMP             R7, #4
0000a4dc  RSBCC           R0, R7, #4
0000a4e0  MOV             LR, R1,ASR#8
0000a4e4  SUBCC           R7, R0, #1
0000a4e8  ADDCS           R0, R12, R12,LSR#31
0000a4ec  LDR             R1, [R11,#0x28]
0000a4f0  LDRH            R2, [R5,#0xA0]
0000a4f4  MOVCS           R12, R0,ASR#1
0000a4f8  ADDCS           R0, LR, LR,LSR#31
0000a4fc  MOVCS           LR, R0,ASR#1
0000a500  ADD             R0, R12, R12,LSR#31
0000a504  ADD             R1, R1, R2
0000a508  SUB             R0, R1, R0,ASR#1
0000a50c  STR             R0, [SP,#0x16C+var_50]
0000a510  LDRH            R1, [R5,#0x9E]
0000a514  LDR             R2, [R11,#0x34]
0000a518  ADD             R0, LR, LR,LSR#31
0000a51c  SUB             R1, R1, R2
0000a520  LDRH            R2, [R5,#0xA2]
0000a524  MOVCS           R7, #0
0000a528  ADD             R1, R1, R2
0000a52c  SUB             R11, R1, R0,ASR#1
0000a530  LDR             R0, [R6,#0x898]
0000a534  MOV             R1, #0x11
0000a538  LDRH            R0, [R0,#0x10]
0000a53c  MOV             R2, #0
0000a540  ORR             R3, R0, R10,LSL#16
0000a544  MOV             R0, R9,LSL#16
0000a548  MOV             R0, R0,ASR#16
0000a54c  ADD             R10, SP, #0x16C+var_158
0000a550  STM             R10, {R0-R3}
0000a554  LDR             R2, [SP,#0x16C+var_44]
0000a558  MUL             R0, R9, R7
0000a55c  MOV             R3, R2,LSL#16
0000a560  MOV             R2, R0,LSL#16
0000a564  LDR             R0, [SP,#0x16C+var_144]
0000a568  MOV             R2, R2,ASR#16
0000a56c  MOV             R3, R3,ASR#16
0000a570  MOV             R1, #0
0000a574  STMFA           SP, {R0-R3}
0000a578  MOV             R3, LR,LSL#16
0000a57c  MOV             R3, R3,ASR#16
0000a580  LDR             R0, [SP,#0x16C+var_50]
0000a584  STR             R3, [SP,#0x16C+var_16C]
0000a588  MOV             R3, R12,LSL#16
0000a58c  MOV             R2, R11,LSL#16
0000a590  MOV             R1, R0,LSL#16
0000a594  MOV             R1, R1,ASR#16
0000a598  MOV             R2, R2,ASR#16
0000a59c  MOV             R3, R3,ASR#16
0000a5a0  B               loc_A678
0000a5a4  CMP             R0, #5
0000a5a8  BNE             loc_A684
0000a5ac  LDR             R7, [SP,#0x16C+var_3C]
0000a5b0  LDRB            R0, [R7,#0x21]
0000a5b4  CMP             R0, #1
0000a5b8  LDRNE           R1, =0x9C6
0000a5bc  LDR             R0, [SP,#0x16C+var_4]
0000a5c0  LDREQ           R1, =0x9C5
0000a5c4  BL              sub_11DD8
0000a5c8  MOVS            R12, R0
0000a5cc  BEQ             loc_A7A8
0000a5d0  LDRH            LR, [R12]
0000a5d4  LDR             R1, [R7,#0x1C]
0000a5d8  LDRH            R0, [R12,#2]
0000a5dc  MUL             R2, LR, R1
0000a5e0  MOV             R9, R2,ASR#8
0000a5e4  MUL             R1, R0, R1
0000a5e8  LDRH            R3, [R5,#0xA0]
0000a5ec  LDR             R2, [R7,#0x14]
0000a5f0  MOV             R10, R1,ASR#8
0000a5f4  ADD             R1, R9, R9,LSR#31
0000a5f8  ADD             R2, R2, R3
0000a5fc  SUB             R11, R2, R1,ASR#1
0000a600  LDRH            R1, [R5,#0x9E]
0000a604  LDR             R2, [R7,#0x18]
0000a608  MOV             R3, #0
0000a60c  SUB             R1, R1, R2
0000a610  LDRH            R2, [R5,#0xA2]
0000a614  MOV             R0, R0,LSL#16
0000a618  MOV             R0, R0,ASR#16
0000a61c  ADD             R1, R1, R2
0000a620  ADD             R2, R10, R10,LSR#31
0000a624  SUB             R7, R1, R2,ASR#1
0000a628  MOV             R1, #1
0000a62c  STR             R3, [SP,#0x16C+var_14C]
0000a630  MOV             R3, LR,LSL#16
0000a634  STR             R1, [SP,#0x16C+var_154]
0000a638  MOV             R2, #0
0000a63c  STR             R0, [SP,#0x16C+var_158]
0000a640  ADD             R0, SP, #0x16C+var_164
0000a644  STR             R2, [SP,#0x16C+var_150]
0000a648  MOV             R1, #0
0000a64c  MOV             R3, R3,ASR#16
0000a650  STM             R0, {R1-R3}
0000a654  MOV             R3, R10,LSL#16
0000a658  MOV             R3, R3,ASR#16
0000a65c  STMEA           SP, {R3,R12}
0000a660  MOV             R3, R9,LSL#16
0000a664  MOV             R2, R7,LSL#16
0000a668  MOV             R1, R11,LSL#16
0000a66c  MOV             R1, R1,ASR#16
0000a670  MOV             R2, R2,ASR#16
0000a674  MOV             R3, R3,ASR#16
0000a678  MOV             R0, R8
0000a67c  BL              sub_18BC
0000a680  B               loc_A7A8
0000a684  CMP             R0, #6
0000a688  BNE             loc_A7A8
0000a68c  LDR             R7, [SP,#0x16C+var_3C]
0000a690  LDR             R0, [R7,#4]
0000a694  CMP             R0, #1
0000a698  LDREQ           R1, =0xFFFF
0000a69c  BEQ             loc_A6AC
0000a6a0  CMP             R0, #2
0000a6a4  LDRNE           R1, =0xC618
0000a6a8  LDREQ           R1, =0xE71C
0000a6ac  LDRH            R0, [R5,#0xA0]
0000a6b0  LDR             R2, [R7,#0x20]
0000a6b4  LDR             R3, [R7,#0x24]
0000a6b8  ADD             LR, R2, R0
0000a6bc  LDRH            R2, [R5,#0x9E]
0000a6c0  SUB             R12, R2, R3
0000a6c4  LDRH            R3, [R5,#0xA2]
0000a6c8  ADD             R9, R12, R3
0000a6cc  LDR             R12, [R7,#0x30]
0000a6d0  ADD             R12, R12, R12,LSR#31
0000a6d4  MOV             R10, R12,ASR#1
0000a6d8  SUB             R12, R9, R10
0000a6dc  ADD             R10, R10, R9
0000a6e0  LDR             R9, [R7,#0x28]
0000a6e4  ADD             R9, R9, R0
0000a6e8  LDR             R0, [R7,#0x2C]
0000a6ec  SUB             R0, R2, R0
0000a6f0  ADD             R2, R0, R3
0000a6f4  LDR             R0, [R7,#0x34]
0000a6f8  ADD             R0, R0, R0,LSR#31
0000a6fc  MOV             R3, R0,ASR#1
0000a700  SUB             R0, R2, R3
0000a704  ADD             R2, R3, R2
0000a708  MOV             R3, R1,LSL#16
0000a70c  MOV             R0, R0,LSL#16
0000a710  MOV             R0, R0,ASR#16
0000a714  MOV             R3, R3,LSR#16
0000a718  STR             R2, [SP,#0x16C+var_148]
0000a71c  ADD             R2, SP, #0x16C+var_164
0000a720  STR             R0, [SP,#0x16C+var_38]
0000a724  MOV             R1, #0
0000a728  STM             R2, {R0,R1,R3}
0000a72c  STR             R3, [SP,#0x16C+var_158]
0000a730  MOV             R7, R3
0000a734  MOV             R3, R9,LSL#16
0000a738  MOV             R2, R10,LSL#16
0000a73c  MOV             R2, R2,ASR#16
0000a740  MOV             R3, R3,ASR#16
0000a744  STMEA           SP, {R2,R3}
0000a748  MOV             R9, R3
0000a74c  MOV             R3, LR,LSL#16
0000a750  MOV             R3, R3,ASR#16
0000a754  MOV             R11, R2
0000a758  MOV             R2, R12,LSL#16
0000a75c  MOV             R2, R2,ASR#16
0000a760  MOV             R10, R3
0000a764  MOV             R1, R3
0000a768  MOV             R0, R8
0000a76c  BL              sub_1165C
0000a770  LDR             R0, [SP,#0x16C+var_148]
0000a774  MOV             R1, #0
0000a778  MOV             R0, R0,LSL#16
0000a77c  MOV             R0, R0,ASR#16
0000a780  ADD             R2, SP, #0x16C+var_164
0000a784  STM             R2, {R0,R1,R7}
0000a788  STR             R7, [SP,#0x16C+var_158]
0000a78c  LDR             R2, [SP,#0x16C+var_38]
0000a790  STR             R9, [SP,#0x16C+var_168]
0000a794  STR             R11, [SP,#0x16C+var_16C]
0000a798  MOV             R1, R9
0000a79c  MOV             R0, R8
0000a7a0  MOV             R3, R10
0000a7a4  BL              sub_1165C
0000a7a8  LDR             R2, [SP,#0x16C+var_3C]
0000a7ac  LDR             R2, [R2,#0xC]
0000a7b0  STR             R2, [SP,#0x16C+var_3C]
0000a7b4  LDR             R2, [SP,#0x16C+var_3C]
0000a7b8  CMP             R2, #0
0000a7bc  BNE             loc_9A44
0000a7c0  ADD             SP, SP, #0x16C
0000a7c4  POP             {R4-R11,LR}
0000a7c8  BX              LR
