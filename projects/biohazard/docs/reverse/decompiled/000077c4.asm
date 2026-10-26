000077c4  PUSH            {R0-R11,LR}
000077c8  LDR             R9, =(start - 0x77E4)
000077cc  SUB             SP, SP, #0x26C
000077d0  MOV             R6, R2
000077d4  MOV             R5, R1
000077d8  MOV             R4, R0
000077dc  ADD             R9, PC, R9; start
000077e0  LDR             R0, [R9,#(dword_8 - 0xC)]
000077e4  ADR             LR, loc_77F0
000077e8  LDR             R0, [R0,#0xC0]
000077ec  BX              R0
000077f0  LDR             R8, [R0,#0x28]
000077f4  MOV             R10, #0
000077f8  LDR             R7, [R8,#0x64]
000077fc  STRH            R10, [SP,#0x27C+var_258]
00007800  STRH            R10, [SP,#0x27C+var_256]
00007804  LDRH            R0, [R5]
00007808  MOV             R2, #8
0000780c  MOV             R1, #3
00007810  STRH            R0, [SP,#0x27C+var_254]
00007814  LDRH            R0, [R5,#2]
00007818  STRH            R0, [SP,#0x27C+var_252]
0000781c  LDR             R0, [R4,#0x188]
00007820  BL              sub_103F4
00007824  LDRH            R0, [R5]
00007828  LDR             R1, [R4,#0x188]
0000782c  MOV             R0, R0,LSR#1
00007830  STRH            R0, [R1,#0xE]
00007834  LDR             R0, [R4,#0x188]
00007838  STRH            R10, [R0,#0x10]
0000783c  LDR             R0, [R4,#0x188]
00007840  STRH            R10, [R0,#8]
00007844  LDR             R0, [R4,#0x188]
00007848  BL              sub_21BA8
0000784c  MOV             R2, R6
00007850  MOV             R1, R5
00007854  LDR             R0, [R4,#0x188]
00007858  BL              sub_1CE08
0000785c  LDR             R0, [R4,#0x190]
00007860  LDRB            R0, [R0,#0x20]
00007864  CMP             R0, #0
00007868  BEQ             loc_78FC
0000786c  LDR             R1, [R4,#0x188]
00007870  MOV             R0, #2
00007874  STRH            R0, [R1,#8]
00007878  LDR             R0, [R4,#0x188]
0000787c  BL              sub_21BA8
00007880  MOV             R2, R6
00007884  MOV             R1, R5
00007888  LDR             R0, [R4,#0x188]
0000788c  BL              sub_1CE08
00007890  MOV             R3, #0x50 ; 'P'
00007894  ADD             R2, SP, #0x27C+var_110
00007898  LDR             R1, =0x1F42
0000789c  MOV             R0, R8
000078a0  BL              sub_19618
000078a4  LDR             R0, [R9,#(dword_8 - 0xC)]
000078a8  LDR             R2, =(aT00000H00ff00S - 0x78B8); "$T00000$H00ff00%s"
000078ac  ADD             R3, SP, #0x27C+var_110
000078b0  ADD             R2, PC, R2; "$T00000$H00ff00%s"
000078b4  LDR             R12, [R0,#0x3C]
000078b8  ADD             R0, SP, #0x27C+var_250
000078bc  MOV             R1, #0x140
000078c0  MOV             LR, PC
000078c4  BX              R12
000078c8  MOV             R3, #0
000078cc  MOV             R2, #0
000078d0  MOV             R1, #0
000078d4  MOV             R0, #0x4C ; 'L'
000078d8  ADD             R11, SP, #0x27C+var_26C
000078dc  STM             R11, {R0-R3}
000078e0  ADD             R0, SP, #0x27C+var_250
000078e4  STMEA           SP, {R0-R3}
000078e8  ADD             R3, SP, #0x27C+var_258
000078ec  MOV             R2, #1
000078f0  MOV             R1, R5
000078f4  MOV             R0, R7
000078f8  BL              sub_98BC
000078fc  LDR             R0, [R4,#0x190]
00007900  LDR             R1, =0x31E
00007904  LDRSH           R1, [R1,R0]
00007908  CMP             R1, #0
0000790c  BLT             loc_794C
00007910  MOV             R2, #0x21C
00007914  LDRSH           R2, [R2,R0]
00007918  CMP             R1, R2
0000791c  BGE             loc_794C
00007920  ADD             R0, R0, R1,LSL#3
00007924  LDRB            R0, [R0,#0x21F]
00007928  LDR             R1, [R4,#0x188]
0000792c  ADD             R0, R0, #6
00007930  STRH            R0, [R1,#8]
00007934  LDR             R0, [R4,#0x188]
00007938  BL              sub_21BA8
0000793c  MOV             R2, R6
00007940  MOV             R1, R5
00007944  LDR             R0, [R4,#0x188]
00007948  BL              sub_1CE08
0000794c  LDR             R1, =0x13A7
00007950  MOV             R0, R6
00007954  BL              sub_11DD8
00007958  MOVS            R11, R0
0000795c  BEQ             loc_79C0
00007960  LDR             R0, [R4,#0x190]
00007964  MOV             R2, #0x5E ; '^'
00007968  LDR             R1, [R0,#0x18]
0000796c  LDR             R0, [R0,#0x14]
00007970  LDR             R1, [R1]
00007974  LDR             R0, [R0]
00007978  MUL             R1, R2, R1
0000797c  BL              sub_104
00007980  MOV             R12, R0,LSL#16
00007984  MOV             R1, #0
00007988  STR             R1, [SP,#0x27C+var_270]
0000798c  ADD             R0, SP, #0x27C+var_26C
00007990  MOV             R3, #0
00007994  MOV             R2, #0
00007998  STM             R0, {R1-R3}
0000799c  STR             R3, [SP,#0x27C+var_274]
000079a0  MOV             R1, #0xA
000079a4  STMEA           SP, {R1,R11}
000079a8  MOV             R12, R12,ASR#16
000079ac  MOV             R3, R12
000079b0  MOV             R1, #0
000079b4  MOV             R2, #0xE
000079b8  MOV             R0, R5
000079bc  BL              sub_3324
000079c0  STRH            R10, [SP,#0x27C+var_250]
000079c4  LDR             R0, [R4,#0x190]
000079c8  LDR             R3, =algn_322
000079cc  LDR             R11, =(aT00000Hffff00D - 0x79E0); "$T00000$Hffff00%d"
000079d0  LDRSH           R3, [R0,R3]
000079d4  LDR             R0, [R9,#(dword_8 - 0xC)]
000079d8  ADD             R11, PC, R11; "$T00000$Hffff00%d"
000079dc  LDR             R12, [R0,#0x3C]
000079e0  ADD             R0, SP, #0x27C+var_250
000079e4  MOV             R2, R11
000079e8  MOV             R1, #0x140
000079ec  MOV             LR, PC
000079f0  BX              R12
000079f4  MOV             R3, #0
000079f8  MOV             R2, #0xFFFFFFFF
000079fc  MOV             R1, #0
00007a00  MOV             R0, #0x24 ; '$'
00007a04  ADD             R12, SP, #0x27C+var_26C
00007a08  STM             R12, {R0-R3}
00007a0c  MOV             R2, #0
00007a10  ADD             R0, SP, #0x27C+var_250
00007a14  STMEA           SP, {R0-R3}
00007a18  ADD             R3, SP, #0x27C+var_258
00007a1c  MOV             R2, #2
00007a20  MOV             R1, R5
00007a24  MOV             R0, R7
00007a28  BL              sub_98BC
00007a2c  STRH            R10, [SP,#0x27C+var_250]
00007a30  LDR             R0, [R4,#0x190]
00007a34  LDRB            R1, [R0,#0x21]
00007a38  CMP             R1, #0
00007a3c  BEQ             loc_7A64
00007a40  LDR             R0, [R9,#(dword_8 - 0xC)]
00007a44  LDR             R2, =(aT00000Hffff00m - 0x7A50); "$T00000$Hffff00Max"
00007a48  ADD             R2, PC, R2; "$T00000$Hffff00Max"
00007a4c  LDR             R3, [R0,#0x3C]
00007a50  ADD             R0, SP, #0x27C+var_250
00007a54  MOV             R1, #0x140
00007a58  MOV             LR, PC
00007a5c  BX              R3
00007a60  B               loc_7A84
00007a64  LDR             R3, [R0,#0x24]
00007a68  LDR             R0, [R9,#(dword_8 - 0xC)]
00007a6c  MOV             R2, R11
00007a70  LDR             R12, [R0,#0x3C]
00007a74  ADD             R0, SP, #0x27C+var_250
00007a78  MOV             R1, #0x140
00007a7c  MOV             LR, PC
00007a80  BX              R12
00007a84  MOV             R3, #0
00007a88  MOV             R2, #0
00007a8c  MOV             R1, #0
00007a90  MOV             R0, #0x4B ; 'K'
00007a94  ADD             R11, SP, #0x27C+var_26C
00007a98  STM             R11, {R0-R3}
00007a9c  ADD             R0, SP, #0x27C+var_250
00007aa0  STMEA           SP, {R0-R3}
00007aa4  ADD             R3, SP, #0x27C+var_258
00007aa8  MOV             R2, #0x14
00007aac  MOV             R1, R5
00007ab0  MOV             R0, R7
00007ab4  BL              sub_98BC
00007ab8  STRH            R10, [SP,#0x27C+var_250]
00007abc  LDR             R1, [R4,#0x190]
00007ac0  MOV             R3, #0x21C
00007ac4  ADD             R2, R1, #0x300
00007ac8  LDRSH           R0, [R2,#0x1E]
00007acc  LDRSH           R3, [R3,R1]
00007ad0  CMP             R0, R3
00007ad4  BGE             loc_7BB4
00007ad8  CMP             R0, #0
00007adc  BLT             loc_7BB4
00007ae0  LDRH            R2, [R2,#0x1E]
00007ae4  ADD             R0, SP, #0x27C+var_26C
00007ae8  BL              sub_12F30
00007aec  LDRB            R0, [SP,#0x27C+var_260]
00007af0  CMP             R0, #0
00007af4  BEQ             loc_7B1C
00007af8  LDR             R0, [R9,#(dword_8 - 0xC)]
00007afc  LDR             R2, =(aT00001H00ff00S_0 - 0x7B08); "$T00001$H00ff00$S000000Max-Max"
00007b00  ADD             R2, PC, R2; "$T00001$H00ff00$S000000Max-Max"
00007b04  LDR             R3, [R0,#0x3C]
00007b08  ADD             R0, SP, #0x27C+var_250
00007b0c  MOV             R1, #0x140
00007b10  MOV             LR, PC
00007b14  BX              R3
00007b18  B               loc_7BB4
00007b1c  LDR             R0, [R4,#0x18C]
00007b20  LDRB            R0, [R0,#0x85C]
00007b24  CMP             R0, #0
00007b28  BEQ             loc_7B88
00007b2c  MOV             R3, #0x100
00007b30  ADD             R2, SP, #0x27C+var_110
00007b34  LDR             R1, =0x1F4E
00007b38  MOV             R0, R8
00007b3c  BL              sub_19618
00007b40  LDR             R0, [R4,#0x18C]
00007b44  LDRB            R1, [SP,#0x27C+var_25E]
00007b48  LDRB            R2, [R0,#0x85D]
00007b4c  LDRB            R0, [R0,#0x85E]
00007b50  MUL             R1, R2, R1
00007b54  BL              sub_1DC
00007b58  LDRB            R3, [SP,#0x27C+var_25F]
00007b5c  LDR             R2, =(aT00001H00ff00S_1 - 0x7B74); "$T00001$H00ff00$S000000%s:%d-%d"
00007b60  STMEA           SP, {R0,R3}
00007b64  LDR             R0, [R9,#(dword_8 - 0xC)]
00007b68  ADD             R3, SP, #0x27C+var_110
00007b6c  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s:%d-%d"
00007b70  LDR             R12, [R0,#0x3C]
00007b74  ADD             R0, SP, #0x27C+var_250
00007b78  MOV             R1, #0x140
00007b7c  MOV             LR, PC
00007b80  BX              R12
00007b84  B               loc_7BB4
00007b88  LDRB            R3, [SP,#0x27C+var_25F]
00007b8c  LDR             R2, =(aT00001H00ff00S_2 - 0x7BA4); "$T00001$H00ff00$S000000%d-%d"
00007b90  STR             R3, [SP,#0x27C+var_27C]
00007b94  LDRB            R3, [SP,#0x27C+var_25E]
00007b98  LDR             R0, [R9,#(dword_8 - 0xC)]
00007b9c  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%d-%d"
00007ba0  LDR             R12, [R0,#0x3C]
00007ba4  ADD             R0, SP, #0x27C+var_250
00007ba8  MOV             R1, #0x140
00007bac  MOV             LR, PC
00007bb0  BX              R12
00007bb4  MOV             R1, #0
00007bb8  STR             R1, [SP,#0x27C+var_26C]
00007bbc  MOV             R3, #0
00007bc0  MOV             R2, #0
00007bc4  ADD             R0, SP, #0x27C+var_268
00007bc8  STM             R0, {R1-R3}
00007bcc  ADD             R0, SP, #0x27C+var_250
00007bd0  STMEA           SP, {R0-R3}
00007bd4  ADD             R3, SP, #0x27C+var_258
00007bd8  MOV             R2, #0x2E ; '.'
00007bdc  MOV             R1, R5
00007be0  MOV             R0, R7
00007be4  BL              sub_98BC
00007be8  LDR             R0, [SP,#0x27C+var_4]
00007bec  CMP             R0, #0
00007bf0  BNE             loc_7C24
00007bf4  LDRH            R0, [R5,#2]
00007bf8  LDR             R1, [R4,#0x188]
00007bfc  STRH            R0, [R1,#0x10]
00007c00  LDR             R1, [R4,#0x188]
00007c04  MOV             R0, #1
00007c08  STRH            R0, [R1,#8]
00007c0c  LDR             R0, [R4,#0x188]
00007c10  BL              sub_21BA8
00007c14  MOV             R2, R6
00007c18  MOV             R1, R5
00007c1c  LDR             R0, [R4,#0x188]
00007c20  BL              sub_1CE08
00007c24  ADD             SP, SP, #0x27C
00007c28  POP             {R4-R11,LR}
00007c2c  BX              LR
