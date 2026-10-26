000235f4  PUSH            {R4-R11,LR}
000235f8  MOV             R6, R0
000235fc  MOV             R0, R1
00023600  LDR             R1, [R6,#8]
00023604  SUB             SP, SP, #0x1C
00023608  CMP             R1, #0
0002360c  BEQ             loc_23634
00023610  CMP             R1, #0x100
00023614  BHI             loc_23634
00023618  CMP             R0, #0
0002361c  BEQ             loc_23634
00023620  LDR             R1, [R6]
00023624  BL              sub_11DD8
00023628  STR             R0, [SP,#0x1C+var_10]
0002362c  CMP             R0, #0
00023630  BNE             loc_23644
00023634  MOV             R0, #0
00023638  ADD             SP, SP, #0x1C
0002363c  POP             {R4-R11,LR}
00023640  BX              LR
00023644  LDR             R11, =(start - 0x23654)
00023648  MOV             R5, #0
0002364c  ADD             R11, PC, R11; start
00023650  LDR             R0, [R6,#0x80C]
00023654  CMP             R0, #0
00023658  BEQ             loc_23670
0002365c  LDR             R1, [R11,#(dword_8 - 0xC)]
00023660  ADR             LR, loc_2366C
00023664  LDR             R1, [R1,#0x6C]
00023668  BX              R1
0002366c  STR             R5, [R6,#0x80C]
00023670  LDR             R1, [R11,#(dword_8 - 0xC)]
00023674  MOV             R7, #0x20 ; ' '
00023678  LDR             R1, [R1,#0x68]
0002367c  MOV             R8, #0x180
00023680  MOV             R0, #0x3600
00023684  MOV             LR, PC
00023688  BX              R1
0002368c  MOV             R4, R0
00023690  ADD             R2, R0, #0x600
00023694  MOV             R1, #0
00023698  STR             R2, [R0],#4
0002369c  ADD             R1, R1, #1
000236a0  CMP             R1, R8
000236a4  ADD             R2, R2, R7
000236a8  BLT             loc_23698
000236ac  MOV             R8, #0
000236b0  LDR             R9, [R4]
000236b4  B               loc_236D4
000236b8  MOV             R0, #0x20 ; ' '
000236bc  ADD             R1, R0, R8,LSL#5
000236c0  MOV             R0, R7
000236c4  BL              sub_104
000236c8  RSB             R0, R0, #0x20 ; ' '
000236cc  STRB            R0, [R9],#1
000236d0  ADD             R8, R8, #1
000236d4  CMP             R8, R7
000236d8  BLT             loc_236B8
000236dc  ADD             R9, R4, #4
000236e0  MOV             R8, #1
000236e4  LDR             R10, [R4]
000236e8  B               loc_2370C
000236ec  LDR             R1, [R11,#(dword_8 - 0xC)]
000236f0  LDR             R0, [R9],#4
000236f4  LDR             R3, [R1]
000236f8  MOV             R1, R10
000236fc  MOV             R2, R7
00023700  MOV             LR, PC
00023704  BX              R3
00023708  ADD             R8, R8, #1
0002370c  CMP             R8, R7
00023710  BLT             loc_236EC
00023714  ADD             LR, R4, R7,LSL#2
00023718  MOV             R3, #0
0002371c  B               loc_23748
00023720  LDR             R2, [LR],#4
00023724  LDR             R0, [R4]
00023728  ADD             R1, R0, R3
0002372c  MOV             R0, #0
00023730  CMP             R0, R7
00023734  LDRBLT          R12, [R1],R7
00023738  ADDLT           R0, R0, #1
0002373c  STRBLT          R12, [R2],#1
00023740  BLT             loc_23730
00023744  ADD             R3, R3, #1
00023748  CMP             R3, R7
0002374c  BLT             loc_23720
00023750  ADD             R0, R4, R7,LSL#3
00023754  MOV             R8, R0
00023758  MOV             R9, R4
0002375c  MOV             LR, #0
00023760  B               loc_23790
00023764  LDR             R1, [R9],#4
00023768  LDR             R3, [R8],#4
0002376c  ADD             R1, R1, R7
00023770  SUB             R2, R1, #1
00023774  MOV             R1, #0
00023778  CMP             R1, R7
0002377c  LDRBLT          R12, [R2],#-1
00023780  ADDLT           R1, R1, #1
00023784  STRBLT          R12, [R3],#1
00023788  BLT             loc_23778
0002378c  ADD             LR, LR, #1
00023790  CMP             LR, R7
00023794  BLT             loc_23764
00023798  ADD             R1, R7, R7,LSL#1
0002379c  STR             R1, [SP,#0x1C+var_4]
000237a0  ADD             R9, R4, R1,LSL#2
000237a4  SUB             R10, R0, #4
000237a8  MOV             R8, #0
000237ac  B               loc_237D8
000237b0  LDR             R11, =(start - 0x237C0)
000237b4  LDR             R1, [R10],#-4
000237b8  ADD             R11, PC, R11; start
000237bc  LDR             R2, [R11,#(dword_8 - 0xC)]
000237c0  LDR             R0, [R9],#4
000237c4  LDR             R3, [R2]
000237c8  MOV             R2, R7
000237cc  MOV             LR, PC
000237d0  BX              R3
000237d4  ADD             R8, R8, #1
000237d8  CMP             R8, R7
000237dc  BLT             loc_237B0
000237e0  ADD             R11, R4, R7,LSL#4
000237e4  STR             R11, [SP,#0x1C+var_8]
000237e8  MOV             R10, #0
000237ec  B               loc_23844
000237f0  MOV             R9, #0
000237f4  LDR             R8, [R11],#4
000237f8  B               loc_23838
000237fc  MOV             R1, R9
00023800  MOV             R0, R10
00023804  BL              sub_1973C
00023808  MOV             R0, R0,LSL#16
0002380c  MOV             R0, R0,LSR#16
00023810  CMP             R0, R7
00023814  STRBGE          R5, [R8]
00023818  BGE             loc_23830
0002381c  MOV             R1, R0,LSL#5
00023820  MOV             R0, R7
00023824  BL              sub_104
00023828  RSB             R0, R0, #0x20 ; ' '
0002382c  STRB            R0, [R8]
00023830  ADD             R8, R8, #1
00023834  ADD             R9, R9, #1
00023838  CMP             R9, R7
0002383c  BLT             loc_237FC
00023840  ADD             R10, R10, #1
00023844  CMP             R10, R7
00023848  BLT             loc_237F0
0002384c  ADD             R0, R7, R7,LSL#2
00023850  LDR             R11, =(start - 0x23868)
00023854  ADD             R9, R4, R0,LSL#2
00023858  SUB             R10, R9, #4
0002385c  MOV             R8, #0
00023860  ADD             R11, PC, R11; start
00023864  B               loc_23888
00023868  LDR             R2, [R11,#(dword_8 - 0xC)]
0002386c  LDR             R1, [R10],#-4
00023870  LDR             R0, [R9],#4
00023874  LDR             R3, [R2]
00023878  MOV             R2, R7
0002387c  MOV             LR, PC
00023880  BX              R3
00023884  ADD             R8, R8, #1
00023888  CMP             R8, R7
0002388c  BLT             loc_23868
00023890  LDR             R1, [SP,#0x1C+var_4]
00023894  MOV             LR, #0
00023898  LDR             R8, [SP,#0x1C+var_8]
0002389c  ADD             R0, R4, R1,LSL#3
000238a0  B               loc_238D0
000238a4  LDR             R1, [R8],#4
000238a8  LDR             R3, [R0],#4
000238ac  ADD             R1, R1, R7
000238b0  SUB             R2, R1, #1
000238b4  MOV             R1, #0
000238b8  CMP             R1, R7
000238bc  LDRBLT          R12, [R2],#-1
000238c0  ADDLT           R1, R1, #1
000238c4  STRBLT          R12, [R3],#1
000238c8  BLT             loc_238B8
000238cc  ADD             LR, LR, #1
000238d0  CMP             LR, R7
000238d4  BLT             loc_238A4
000238d8  RSB             R0, R7, R7,LSL#3
000238dc  ADD             R9, R4, R0,LSL#2
000238e0  SUB             R10, R9, #4
000238e4  MOV             R8, #0
000238e8  B               loc_2390C
000238ec  LDR             R2, [R11,#(dword_8 - 0xC)]
000238f0  LDR             R1, [R10],#-4
000238f4  LDR             R0, [R9],#4
000238f8  LDR             R3, [R2]
000238fc  MOV             R2, R7
00023900  MOV             LR, PC
00023904  BX              R3
00023908  ADD             R8, R8, #1
0002390c  CMP             R8, R7
00023910  BLT             loc_238EC
00023914  LDR             R0, [R4,R7,LSL#5]
00023918  LDR             R2, [R4,R7,LSL#4]
0002391c  MUL             R1, R7, R7
00023920  ADD             R1, R0, R1,LSL#2
00023924  CMP             R0, R1
00023928  LDRBCC          R3, [R2],#1
0002392c  RSBCC           R3, R3, #0x20 ; ' '
00023930  STRBCC          R3, [R0],#1
00023934  BCC             loc_23924
00023938  LDR             R0, [R6,#8]
0002393c  MOV             R2, #0x20 ; ' '
00023940  STR             R2, [SP,#0x1C+var_14]
00023944  LDR             R1, [R11,#(dword_8 - 0xC)]
00023948  MOV             R0, R0,LSL#21
0002394c  MOV             R0, R0,LSR#16
00023950  MOV             R0, R0,LSL#5
00023954  LDR             R1, [R1,#0x68]
00023958  MOV             R0, R0,LSL#1
0002395c  MOV             LR, PC
00023960  BX              R1
00023964  STR             R0, [R6,#0x80C]
00023968  LDR             R2, [SP,#0x1C+var_14]
0002396c  MOV             R8, R0
00023970  MUL             R11, R2, R2
00023974  MOV             R0, R11,LSL#1
00023978  STR             R0, [SP,#0x1C+var_C]
0002397c  MOV             R7, #0
00023980  B               loc_23BF0
00023984  ADD             R0, R6, R7,LSL#2
00023988  LDR             R1, [R0,#0xC]
0002398c  MOV             R0, R1,LSL#8
00023990  MOV             R9, R0,LSR#24
00023994  AND             R0, R1, #0xFF
00023998  MOV             R5, R1,LSR#24
0002399c  MOV             R1, R1,LSL#16
000239a0  MOV             R10, R1,LSR#24
000239a4  SUB             R1, R0, #7
000239a8  CMP             R1, #3
000239ac  MOVHI           R2, #0
000239b0  ADDHI           R1, R6, R7
000239b4  STRBHI          R2, [R1,#0x60C]
000239b8  BHI             loc_239D8
000239bc  MOV             R2, #1
000239c0  ADD             R1, R6, R7
000239c4  CMP             R0, #7
000239c8  CMPNE           R0, #9
000239cc  STRB            R2, [R1,#0x60C]
000239d0  MOVNE           R2, #0
000239d4  STRB            R2, [R1,#0x70C]
000239d8  LDR             R1, [SP,#0x1C+var_10]
000239dc  LDR             R1, [R1,#8]
000239e0  LDR             R2, [SP,#0x1C+var_14]
000239e4  MUL             R0, R2, R0
000239e8  LDR             R1, [R1,R0,LSL#2]
000239ec  LDR             R0, =(start - 0x239F8)
000239f0  ADD             R0, PC, R0; start
000239f4  LDR             R0, [R0,#(dword_8 - 0xC)]
000239f8  ADR             LR, loc_23A0C
000239fc  LDR             R3, [R0]
00023a00  LDR             R2, [SP,#0x1C+var_C]
00023a04  MOV             R0, R8
00023a08  BX              R3
00023a0c  CMP             R9, #0
00023a10  BEQ             loc_23AB4
00023a14  LDR             R1, [SP,#0x1C+var_10]
00023a18  MOV             R0, R8
00023a1c  LDR             R1, [R1,#8]
00023a20  LDR             R2, [SP,#0x1C+var_14]
00023a24  MUL             R3, R2, R10
00023a28  LDR             R1, [R1,R3,LSL#2]
00023a2c  LDR             R3, [SP,#0x1C+var_14]
00023a30  SUB             R2, R9, #1
00023a34  MUL             R2, R3, R2
00023a38  LDR             R3, [R4,R2,LSL#2]
00023a3c  ADD             R10, R8, R11,LSL#1
00023a40  B               loc_23AAC
00023a44  LDRH            R2, [R0]
00023a48  AND             R12, R2, #0xF800
00023a4c  AND             LR, R2, #0x7E0
00023a50  MOV             R12, R12,LSL#11
00023a54  ORR             R12, R12, LR,LSL#5
00023a58  AND             R2, R2, #0x1F
00023a5c  ORR             R12, R12, R2
00023a60  LDRH            R2, [R1],#2
00023a64  AND             LR, R2, #0xF800
00023a68  AND             R9, R2, #0x7E0
00023a6c  MOV             LR, LR,LSL#11
00023a70  ORR             LR, LR, R9,LSL#5
00023a74  AND             R2, R2, #0x1F
00023a78  ORR             LR, LR, R2
00023a7c  LDRB            R2, [R3],#1
00023a80  MUL             R12, R2, R12
00023a84  RSB             R2, R2, #0x20 ; ' '
00023a88  MLA             R12, R2, LR, R12
00023a8c  MOV             R2, R12,LSR#5
00023a90  AND             R12, R2, #0x7C00000
00023a94  AND             LR, R2, #0xFC00
00023a98  MOV             R12, R12,LSR#11
00023a9c  ORR             R12, R12, LR,LSR#5
00023aa0  AND             R2, R2, #0x1F
00023aa4  ORR             R2, R12, R2
00023aa8  STRH            R2, [R0],#2
00023aac  CMP             R0, R10
00023ab0  BCC             loc_23A44
00023ab4  CMP             R5, #0
00023ab8  BEQ             loc_23B50
00023abc  MOV             R0, R8
00023ac0  ADD             R1, R8, R11,LSL#1
00023ac4  CMP             R5, #0xD
00023ac8  BCC             loc_23AE8
00023acc  LDR             R3, =0x7BEF
00023ad0  CMP             R0, R1
00023ad4  LDRHCC          R2, [R0]
00023ad8  ANDCC           R2, R3, R2,LSR#1
00023adc  STRHCC          R2, [R0],#2
00023ae0  BCC             loc_23AD0
00023ae4  B               loc_23B50
00023ae8  SUB             R2, R5, #1
00023aec  LDR             R3, [SP,#0x1C+var_14]
00023af0  MOV             R5, #0x20 ; ' '
00023af4  MUL             R2, R3, R2
00023af8  LDR             R3, [R4,R2,LSL#2]
00023afc  B               loc_23B48
00023b00  LDRH            R2, [R0]
00023b04  AND             R12, R2, #0xF800
00023b08  AND             LR, R2, #0x7E0
00023b0c  MOV             R12, R12,LSL#11
00023b10  ORR             R12, R12, LR,LSL#5
00023b14  AND             R2, R2, #0x1F
00023b18  ORR             R2, R12, R2
00023b1c  LDRB            R12, [R3],#1
00023b20  SUB             R12, R5, R12,LSR#1
00023b24  MUL             R12, R2, R12
00023b28  MOV             R2, R12,LSR#5
00023b2c  AND             R12, R2, #0x7C00000
00023b30  AND             LR, R2, #0xFC00
00023b34  MOV             R12, R12,LSR#11
00023b38  ORR             R12, R12, LR,LSR#5
00023b3c  AND             R2, R2, #0x1F
00023b40  ORR             R2, R12, R2
00023b44  STRH            R2, [R0],#2
00023b48  CMP             R0, R1
00023b4c  BCC             loc_23B00
00023b50  MOV             R1, #0
00023b54  MOV             R10, R1
00023b58  MOV             R9, R1
00023b5c  MOV             R2, R8
00023b60  MOV             R5, #0
00023b64  CMP             R11, R5
00023b68  BLE             loc_23B90
00023b6c  LDRH            R0, [R2],#2
00023b70  ADD             R5, R5, #1
00023b74  AND             R3, R0, #0xF800
00023b78  ADD             R1, R1, R3,LSR#8
00023b7c  AND             R3, R0, #0x7E0
00023b80  AND             R0, R0, #0x1F
00023b84  ADD             R10, R10, R0,LSL#3
00023b88  ADD             R9, R9, R3,LSR#3
00023b8c  B               loc_23B64
00023b90  MOV             R0, R5
00023b94  BL              sub_1DC
00023b98  STR             R0, [SP,#0x1C+var_18]
00023b9c  MOV             R0, R5
00023ba0  MOV             R1, R9
00023ba4  BL              sub_1DC
00023ba8  MOV             R9, R0
00023bac  MOV             R0, R5
00023bb0  MOV             R1, R10
00023bb4  BL              sub_1DC
00023bb8  MOV             R1, R0
00023bbc  LDR             R0, [SP,#0x1C+var_18]
00023bc0  MOV             R2, #0xF800
00023bc4  AND             R2, R2, R0,LSL#8
00023bc8  MOV             R3, #0x7E0
00023bcc  AND             R0, R3, R9,LSL#3
00023bd0  ORR             R2, R2, R0
00023bd4  MOV             R0, R1,LSL#24
00023bd8  ADD             R1, R6, R7,LSL#1
00023bdc  ADD             R1, R1, #0x400
00023be0  ORR             R0, R2, R0,LSR#27
00023be4  STRH            R0, [R1,#0xC]
00023be8  ADD             R7, R7, #1
00023bec  ADD             R8, R8, R11,LSL#1
00023bf0  LDR             R0, [R6,#8]
00023bf4  CMP             R0, R7
00023bf8  BHI             loc_23984
00023bfc  LDR             R0, =(start - 0x23C08)
00023c00  ADD             R0, PC, R0; start
00023c04  LDR             R0, [R0,#(dword_8 - 0xC)]
00023c08  ADR             LR, loc_23C18
00023c0c  LDR             R1, [R0,#0x6C]
00023c10  MOV             R0, R4
00023c14  BX              R1
00023c18  MOV             R0, #1
00023c1c  B               loc_23638
