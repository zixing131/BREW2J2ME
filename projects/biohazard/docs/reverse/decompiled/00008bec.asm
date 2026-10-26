00008bec  PUSH            {R0-R11,LR}
00008bf0  LDRSH           R0, [R3,#0xC]
00008bf4  SUB             SP, SP, #0x7C
00008bf8  MOV             R6, R3
00008bfc  STR             R0, [SP,#0x8C+var_28]
00008c00  LDRSH           R3, [R3,#0xE]
00008c04  STR             R3, [SP,#0x8C+var_2C]
00008c08  LDRSH           R3, [R6,#0x10]
00008c0c  STR             R3, [SP,#0x8C+var_30]
00008c10  LDRSH           R12, [R6,#0x12]
00008c14  STR             R12, [SP,#0x8C+var_34]
00008c18  LDRSH           R3, [R6,#0x14]
00008c1c  STR             R3, [SP,#0x8C+var_38]
00008c20  LDRSH           R12, [R6,#0x16]
00008c24  STR             R12, [SP,#0x8C+var_3C]
00008c28  LDRSH           R3, [R6,#0x18]
00008c2c  STR             R3, [SP,#0x8C+var_40]
00008c30  LDRSH           R3, [R6,#0x1A]
00008c34  LDR             R0, [SP,#0x8C+var_10]
00008c38  STR             R3, [SP,#0x8C+var_44]
00008c3c  LDR             R1, [R0,#0x830]
00008c40  LDRH            R0, [R6,#2]
00008c44  SUB             R0, R0, #1
00008c48  SUB             R4, R1, R0,LSL#2
00008c4c  LDR             R1, [SP,#0x8C+var_10]
00008c50  LDR             R1, [R1,#0x83C]
00008c54  SUB             R1, R1, R0,LSL#2
00008c58  LDR             R0, [SP,#0x8C+var_10]
00008c5c  STR             R1, [SP,#0x8C+var_48]
00008c60  LDR             R7, [R0,#0x834]!
00008c64  LDR             R1, [R0,#4]
00008c68  MOV             R0, R7
00008c6c  STR             R1, [SP,#0x8C+var_4C]
00008c70  BL              sub_197A8
00008c74  MOV             R10, R0,ASR#8
00008c78  MOV             R0, R7
00008c7c  BL              sub_196D8
00008c80  MOV             R11, R0,ASR#8
00008c84  LDRSH           R0, [R6,#6]
00008c88  BL              sub_197A8
00008c8c  MOV             R8, R0,ASR#8
00008c90  LDRSH           R0, [R6,#6]
00008c94  BL              sub_196D8
00008c98  MOV             R9, R0,ASR#8
00008c9c  LDR             R0, [SP,#0x8C+var_10]
00008ca0  LDR             R0, [R0,#0x828]
00008ca4  STR             R0, [SP,#0x8C+var_14]
00008ca8  MOV             R1, R0,LSL#2
00008cac  LDR             R0, [SP,#0x8C+var_10]
00008cb0  LDR             R0, [R0,#0x82C]
00008cb4  LDR             R3, [SP,#0x8C+var_2C]
00008cb8  STR             R0, [SP,#0x8C+var_18]
00008cbc  MOV             R2, R0,LSL#2
00008cc0  LDR             R0, [SP,#0x8C+var_28]
00008cc4  RSB             R3, R2, R3,LSL#2
00008cc8  RSB             R0, R1, R0,LSL#2
00008ccc  MUL             R12, R0, R11
00008cd0  MLA             R0, R3, R10, R12
00008cd4  LDR             R3, [SP,#0x8C+var_30]
00008cd8  LDR             R12, [SP,#0x8C+var_34]
00008cdc  RSB             R3, R1, R3,LSL#2
00008ce0  MUL             LR, R3, R11
00008ce4  RSB             R12, R2, R12,LSL#2
00008ce8  MLA             R3, R12, R10, LR
00008cec  MOV             R0, R0,ASR#8
00008cf0  MOV             R3, R3,ASR#8
00008cf4  CMP             R3, R0
00008cf8  MOV             R5, R0
00008cfc  MOVLT           R5, R3
00008d00  MOVGT           R0, R3
00008d04  LDR             R3, [SP,#0x8C+var_38]
00008d08  LDR             R12, [SP,#0x8C+var_3C]
00008d0c  RSB             R3, R1, R3,LSL#2
00008d10  MUL             LR, R3, R11
00008d14  RSB             R12, R2, R12,LSL#2
00008d18  MLA             R3, R12, R10, LR
00008d1c  MOV             R3, R3,ASR#8
00008d20  CMP             R3, R5
00008d24  MOVLT           R5, R3
00008d28  CMP             R3, R0
00008d2c  MOVGT           R0, R3
00008d30  LDR             R3, [SP,#0x8C+var_40]
00008d34  RSB             R1, R1, R3,LSL#2
00008d38  LDR             R3, [SP,#0x8C+var_44]
00008d3c  RSB             R2, R2, R3,LSL#2
00008d40  MUL             R3, R1, R11
00008d44  MLA             R1, R2, R10, R3
00008d48  MOV             R1, R1,ASR#8
00008d4c  CMP             R1, R5
00008d50  MOVLT           R5, R1
00008d54  CMP             R1, R0
00008d58  MOVGT           R0, R1
00008d5c  CMP             R0, #0
00008d60  BLE             loc_928C
00008d64  LDR             R1, [SP,#0x8C+var_4C]
00008d68  MOV             R2, R4,LSL#8
00008d6c  MUL             R10, R1, R2
00008d70  MOV             R1, R10
00008d74  BL              sub_104
00008d78  LDR             R1, [SP,#0x8C+var_48]
00008d7c  SUB             R1, R4, R1
00008d80  RSB             R0, R0, R1,LSL#8
00008d84  MOV             R0, R0,ASR#8
00008d88  STR             R0, [SP,#0x8C+var_60]
00008d8c  CMP             R0, #0
00008d90  STR             R1, [SP,#0x8C+var_1C]
00008d94  BLE             loc_928C
00008d98  CMP             R5, #0
00008d9c  BLE             loc_8DBC
00008da0  MOV             R1, R10
00008da4  MOV             R0, R5
00008da8  BL              sub_104
00008dac  LDR             R1, [SP,#0x8C+var_1C]
00008db0  RSB             R0, R0, R1,LSL#8
00008db4  MOVS            R5, R0,ASR#8
00008db8  BPL             loc_8DC0
00008dbc  MOV             R5, #0
00008dc0  MOV             R0, #0x640
00008dc4  STR             R0, [SP,#0x8C+var_6C]
00008dc8  LDR             R0, [SP,#0x8C+var_10]
00008dcc  LDR             R0, [R0,#0x898]
00008dd0  LDRB            R1, [R0,#0x13]
00008dd4  MOV             R1, R1,LSL#2
00008dd8  STR             R1, [SP,#0x8C+var_70]
00008ddc  LDRH            R0, [R0,#0x10]
00008de0  AND             R1, R0, #0xF800
00008de4  MOV             R1, R1,LSL#11
00008de8  AND             R2, R0, #0x7E0
00008dec  ORR             R1, R1, R2,LSL#5
00008df0  AND             R2, R0, #0x1F
00008df4  ORR             R1, R1, R2
00008df8  STR             R0, [SP,#0x8C+var_8C]
00008dfc  STR             R1, [SP,#0x8C+var_68]
00008e00  LDR             R1, [SP,#0x8C+var_28]
00008e04  LDR             R0, [SP,#0x8C+var_14]
00008e08  LDR             R3, [SP,#0x8C+var_2C]
00008e0c  SUB             R0, R0, R1
00008e10  MOV             R0, R0,LSL#2
00008e14  MUL             R1, R9, R0
00008e18  LDR             R2, [SP,#0x8C+var_18]
00008e1c  MUL             R0, R8, R0
00008e20  SUB             R2, R2, R3
00008e24  MOV             R2, R2,LSL#2
00008e28  MLA             R1, R8, R2, R1
00008e2c  STR             R1, [SP,#0x8C+var_58]
00008e30  MUL             R1, R9, R2
00008e34  SUB             R2, R0, R1
00008e38  STR             R2, [SP,#0x8C+var_5C]
00008e3c  LDRSH           R0, [R6,#6]
00008e40  SUB             R0, R7, R0
00008e44  BL              sub_197A8
00008e48  MOV             R2, R0,ASR#8
00008e4c  STR             R2, [SP,#0x8C+var_50]
00008e50  LDRSH           R0, [R6,#6]
00008e54  SUB             R0, R7, R0
00008e58  BL              sub_196D8
00008e5c  MOV             R1, R0,ASR#8
00008e60  STR             R1, [SP,#0x8C+var_54]
00008e64  LDR             R1, [R6,#8]
00008e68  LDR             R0, [SP,#0x8C+var_8]
00008e6c  BL              sub_11DD8
00008e70  LDR             R1, [SP,#0x8C+var_10]
00008e74  ADD             R3, R1, #0x800
00008e78  STR             R3, [SP,#0x8C+var_20]
00008e7c  LDRH            R7, [R3,#0x9C]
00008e80  LDRH            R1, [R0]
00008e84  MOV             R1, R1,LSL#10
00008e88  STR             R1, [SP,#0x8C+var_7C]
00008e8c  LDRH            R1, [R0,#2]
00008e90  MOV             R11, R1,LSL#10
00008e94  LDR             R1, [SP,#0x8C+var_C]
00008e98  LDR             R1, [R1,#0x14]
00008e9c  LDRH            R2, [R3,#0xA2]
00008ea0  LDR             R3, [SP,#0x8C+var_20]
00008ea4  ADD             R1, R1, R2,LSL#2
00008ea8  LDRH            R2, [R3,#0x9E]
00008eac  ADD             R1, R1, R2,LSL#2
00008eb0  SUB             R1, R1, #4
00008eb4  SUB             R3, R1, R5,LSL#2
00008eb8  STR             R3, [SP,#0x8C+var_84]
00008ebc  LDR             LR, [R0,#8]
00008ec0  LDR             R1, [SP,#0x8C+var_4C]
00008ec4  STR             R5, [SP,#0x8C+var_64]
00008ec8  MUL             R0, R1, R4
00008ecc  MOV             R0, R0,LSL#8
00008ed0  STR             R0, [SP,#0x8C+var_24]
00008ed4  STR             LR, [SP,#0x8C+var_88]
00008ed8  B               loc_927C
00008edc  LDR             R0, [SP,#0x8C+var_1C]
00008ee0  LDR             R5, [SP,#0x8C+var_64]
00008ee4  LDR             R1, [SP,#0x8C+var_24]
00008ee8  SUB             R0, R0, R5
00008eec  BL              sub_104
00008ef0  MOV             R10, R0
00008ef4  MOV             R1, R0
00008ef8  LDR             R0, [SP,#0x8C+var_4C]
00008efc  BL              sub_104
00008f00  LDR             R2, [SP,#0x8C+var_50]
00008f04  LDR             R3, [SP,#0x8C+var_20]
00008f08  MUL             R1, R0, R2
00008f0c  MOV             R2, R1,ASR#31
00008f10  ADD             R1, R1, R2,LSR#24
00008f14  MOV             R1, R1,ASR#8
00008f18  RSB             R6, R1, #0
00008f1c  LDR             R1, [SP,#0x8C+var_54]
00008f20  MUL             R0, R1, R0
00008f24  MOV             R1, R0,ASR#31
00008f28  ADD             R0, R0, R1,LSR#24
00008f2c  MOV             R0, R0,ASR#8
00008f30  LDR             R1, [SP,#0x8C+var_54]
00008f34  RSB             R4, R0, #0
00008f38  MUL             R0, R1, R10
00008f3c  MOV             R1, R0,ASR#31
00008f40  ADD             R0, R0, R1,LSR#24
00008f44  LDR             R1, [SP,#0x8C+var_58]
00008f48  ADD             R2, R1, R0,ASR#8
00008f4c  LDRH            R1, [R3,#0x9C]
00008f50  MUL             R0, R6, R1
00008f54  ADD             R0, R0, R0,LSR#31
00008f58  SUB             R9, R2, R0,ASR#1
00008f5c  LDR             R2, [SP,#0x8C+var_50]
00008f60  MUL             R1, R4, R1
00008f64  MUL             R0, R2, R10
00008f68  MOV             R2, R0,ASR#31
00008f6c  ADD             R0, R0, R2,LSR#24
00008f70  LDR             R2, [SP,#0x8C+var_5C]
00008f74  ADD             R1, R1, R1,LSR#31
00008f78  SUB             R0, R2, R0,ASR#8
00008f7c  SUB             R1, R0, R1,ASR#1
00008f80  STR             R1, [SP,#0x8C+var_74]
00008f84  CMP             R9, #0
00008f88  BGE             loc_8FB0
00008f8c  CMP             R6, #0
00008f90  BLE             loc_8FD4
00008f94  MLA             R0, R7, R6, R9
00008f98  CMP             R0, #0
00008f9c  SUBGE           R0, R6, R9
00008fa0  SUBGE           R1, R0, #1
00008fa4  MOVGE           R0, R6
00008fa8  BGE             loc_8FEC
00008fac  B               loc_8FD4
00008fb0  LDR             R1, [SP,#0x8C+var_7C]
00008fb4  CMP             R9, R1
00008fb8  MOVLT           R5, #0
00008fbc  BLT             loc_8FF4
00008fc0  CMP             R6, #0
00008fc4  LDRLT           R1, [SP,#0x8C+var_7C]
00008fc8  MLALT           R0, R7, R6, R9
00008fcc  CMPLT           R0, R1
00008fd0  BLT             loc_8FDC
00008fd4  MOV             R5, R7
00008fd8  B               loc_8FF4
00008fdc  LDR             R1, [SP,#0x8C+var_7C]
00008fe0  SUB             R0, R9, R1
00008fe4  SUB             R1, R0, R6
00008fe8  RSB             R0, R6, #0
00008fec  BL              sub_104
00008ff0  MOV             R5, R0
00008ff4  CMP             R5, R7
00008ff8  BGE             loc_9068
00008ffc  LDR             R1, [SP,#0x8C+var_74]
00009000  MLAS            R0, R4, R5, R1
00009004  BPL             loc_9030
00009008  CMP             R4, #0
0000900c  BLE             loc_904C
00009010  SUB             R1, R7, R5
00009014  MLA             R2, R1, R4, R0
00009018  CMP             R2, #0
0000901c  SUBGE           R0, R4, R0
00009020  SUBGE           R1, R0, #1
00009024  MOVGE           R0, R4
00009028  BGE             loc_9060
0000902c  B               loc_904C
00009030  CMP             R0, R11
00009034  BLT             loc_9068
00009038  CMP             R4, #0
0000903c  SUBLT           R1, R7, R5
00009040  MLALT           R2, R1, R4, R0
00009044  CMPLT           R2, R11
00009048  BLT             loc_9054
0000904c  MOV             R5, R7
00009050  B               loc_9068
00009054  SUB             R0, R0, R11
00009058  SUB             R1, R0, R4
0000905c  RSB             R0, R4, #0
00009060  BL              sub_104
00009064  ADD             R5, R0, R5
00009068  CMP             R5, R7
0000906c  MOVGE           R8, #0
00009070  BGE             loc_9118
00009074  LDR             R1, [SP,#0x8C+var_74]
00009078  MLA             R0, R7, R6, R9
0000907c  CMP             R0, #0
00009080  ADDLT           R0, R0, R6
00009084  MLA             R1, R7, R4, R1
00009088  STR             R1, [SP,#0x8C+var_78]
0000908c  ADDLT           R0, R0, #1
00009090  RSBLT           R1, R0, #0
00009094  RSBLT           R0, R6, #0
00009098  BLT             loc_90C0
0000909c  LDR             R1, [SP,#0x8C+var_7C]
000090a0  CMP             R0, R1
000090a4  MOVLT           R8, #0
000090a8  BLT             loc_90C8
000090ac  LDR             R1, [SP,#0x8C+var_7C]
000090b0  SUB             R0, R0, R1
000090b4  ADD             R0, R0, R6
000090b8  SUB             R1, R0, #1
000090bc  MOV             R0, R6
000090c0  BL              sub_104
000090c4  MOV             R8, R0
000090c8  ADD             R0, R5, R8
000090cc  CMP             R0, R7
000090d0  BGE             loc_9118
000090d4  LDR             R1, [SP,#0x8C+var_78]
000090d8  MUL             R0, R4, R8
000090dc  SUB             R0, R1, R0
000090e0  CMP             R0, #0
000090e4  ADDLT           R0, R0, R4
000090e8  ADDLT           R0, R0, #1
000090ec  RSBLT           R1, R0, #0
000090f0  RSBLT           R0, R4, #0
000090f4  BLT             loc_9110
000090f8  CMP             R0, R11
000090fc  BLT             loc_9118
00009100  SUB             R0, R0, R11
00009104  ADD             R0, R0, R4
00009108  SUB             R1, R0, #1
0000910c  MOV             R0, R4
00009110  BL              sub_104
00009114  ADD             R8, R0, R8
00009118  SUB             R0, R7, R5
0000911c  SUB             R3, R0, R8
00009120  LDR             R1, [SP,#0x8C+var_74]
00009124  MLA             R8, R5, R6, R9
00009128  STR             R3, [SP,#0x8C+var_80]
0000912c  CMP             R3, #0
00009130  LDRLE           R3, [SP,#0x8C+var_84]
00009134  MLA             R9, R5, R4, R1
00009138  SUBLE           R3, R3, #4
0000913c  STRLE           R3, [SP,#0x8C+var_84]
00009140  BLE             loc_9270
00009144  LDR             R0, [SP,#0x8C+var_70]
00009148  CMP             R0, R10,ASR#8
0000914c  MOVGT           R0, #0
00009150  BGT             loc_918C
00009154  LDR             R0, [SP,#0x8C+var_70]
00009158  RSB             R0, R0, R10,ASR#8
0000915c  MOV             R1, R0,LSL#5
00009160  LDR             R0, [SP,#0x8C+var_10]
00009164  LDR             R0, [R0,#0x898]
00009168  LDRB            R0, [R0,#0x12]
0000916c  MUL             R1, R0, R1
00009170  MOV             R0, #0x64 ; 'd'
00009174  BL              sub_104
00009178  MOV             R1, R0
0000917c  LDR             R0, [SP,#0x8C+var_6C]
00009180  BL              sub_104
00009184  CMP             R0, #0x20 ; ' '
00009188  MOVHI           R0, #0x20 ; ' '
0000918c  LDR             R1, [SP,#0x8C+var_68]
00009190  LDR             R3, [SP,#0x8C+var_84]
00009194  MUL             R1, R0, R1
00009198  LDR             R2, [R3],#-4
0000919c  STR             R3, [SP,#0x8C+var_84]
000091a0  LDR             R3, [SP,#0x8C+var_20]
000091a4  RSBS            R0, R0, #0x20 ; ' '
000091a8  LDRH            R3, [R3,#0xA0]
000091ac  ADD             R2, R2, R3,LSL#1
000091b0  LDR             R3, [SP,#0x8C+var_80]
000091b4  ADD             R2, R2, R5,LSL#1
000091b8  ADD             R12, R2, R3,LSL#1
000091bc  BNE             loc_91D4
000091c0  CMP             R2, R12
000091c4  LDRCC           R0, [SP,#0x8C+var_8C]
000091c8  STRHCC          R0, [R2],#2
000091cc  BCC             loc_91C0
000091d0  B               loc_9270
000091d4  CMP             R0, #0x20 ; ' '
000091d8  BNE             loc_9268
000091dc  CMP             R2, R12
000091e0  BCS             loc_9270
000091e4  LDR             LR, [SP,#0x8C+var_88]
000091e8  MOV             R0, R9,ASR#10
000091ec  LDR             R0, [LR,R0,LSL#2]
000091f0  MOV             R1, R8,ASR#10
000091f4  ADD             R0, R0, R1,LSL#1
000091f8  LDRH            R0, [R0]
000091fc  ADD             R8, R8, R6
00009200  ADD             R9, R9, R4
00009204  STRH            R0, [R2],#2
00009208  B               loc_91DC
0000920c  LDR             LR, [SP,#0x8C+var_88]
00009210  MOV             R3, R9,ASR#10
00009214  LDR             R3, [LR,R3,LSL#2]
00009218  MOV             LR, R8,ASR#10
0000921c  ADD             R3, R3, LR,LSL#1
00009220  LDRH            R3, [R3]
00009224  ADD             R8, R8, R6
00009228  ADD             R9, R9, R4
0000922c  AND             LR, R3, #0xF800
00009230  AND             R5, R3, #0x7E0
00009234  MOV             LR, LR,LSL#11
00009238  ORR             LR, LR, R5,LSL#5
0000923c  AND             R3, R3, #0x1F
00009240  ORR             R3, LR, R3
00009244  MLA             R3, R0, R3, R1
00009248  MOV             R3, R3,LSR#5
0000924c  AND             LR, R3, #0x7C00000
00009250  AND             R5, R3, #0xFC00
00009254  MOV             LR, LR,LSR#11
00009258  ORR             LR, LR, R5,LSR#5
0000925c  AND             R3, R3, #0x1F
00009260  ORR             R3, LR, R3
00009264  STRH            R3, [R2],#2
00009268  CMP             R2, R12
0000926c  BCC             loc_920C
00009270  LDR             R5, [SP,#0x8C+var_64]
00009274  ADD             R5, R5, #1
00009278  STR             R5, [SP,#0x8C+var_64]
0000927c  LDR             R0, [SP,#0x8C+var_60]
00009280  LDR             R5, [SP,#0x8C+var_64]
00009284  CMP             R5, R0
00009288  BLE             loc_8EDC
0000928c  ADD             SP, SP, #0x8C
00009290  POP             {R4-R11,LR}
00009294  BX              LR
