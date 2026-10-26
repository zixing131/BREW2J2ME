00020458  PUSH            {R4-R11,LR}
0002045c  MOV             R4, R0
00020460  LDR             R0, [R0,#0x4C]
00020464  SUB             SP, SP, #0x124
00020468  LDR             R5, [R0,#0x8B0]
0002046c  LDRB            R0, [R4,#0x49]
00020470  MOV             R10, #0
00020474  MOV             R8, #1
00020478  CMP             R0, #0
0002047c  SUBNE           R0, R0, #1
00020480  STRBNE          R0, [R4,#0x49]
00020484  LDRB            R0, [R4,#0x24]
00020488  CMP             R0, #0
0002048c  BEQ             loc_204A4
00020490  LDRB            R0, [R4,#0x2A]
00020494  CMP             R0, #0
00020498  STRBEQ          R8, [R4,#0x25]
0002049c  STRBEQ          R10, [R4,#0x24]
000204a0  STRBEQ          R10, [R4,#0x28]
000204a4  LDRB            R0, [R4,#0x25]
000204a8  CMP             R0, #0
000204ac  BEQ             loc_204E8
000204b0  LDRB            R0, [R4,#0x28]
000204b4  CMP             R0, #2
000204b8  BNE             loc_204D0
000204bc  CMP             R5, #0
000204c0  LDRBNE          R0, [R4,#0x27]
000204c4  LDRNE           R1, =0x31E
000204c8  STRHNE          R0, [R1,R5]
000204cc  B               loc_204DC
000204d0  CMP             R0, #4
000204d4  STRBEQ          R10, [R4,#0x28]
000204d8  STRBEQ          R10, [R4,#0x25]
000204dc  LDRB            R0, [R4,#0x28]
000204e0  ADD             R0, R0, #1
000204e4  STRB            R0, [R4,#0x28]
000204e8  LDRB            R0, [R4,#0x2A]
000204ec  CMP             R0, #0
000204f0  BEQ             loc_20510
000204f4  LDRB            R0, [R4,#0x2B]
000204f8  ADD             R0, R0, #1
000204fc  AND             R0, R0, #0xFF
00020500  STRB            R0, [R4,#0x2B]
00020504  LDRB            R1, [R4,#0x2C]
00020508  CMP             R0, R1
0002050c  STRBCS          R10, [R4,#0x2A]
00020510  ADD             R0, R5, #0x300
00020514  STR             R0, [SP,#0x124+var_4]
00020518  LDRSH           R9, [R0,#0x1E]
0002051c  MOV             R7, #0
00020520  CMP             R9, #0
00020524  MOVGE           R0, #0x21C
00020528  LDRSHGE         R0, [R0,R5]
0002052c  CMPGE           R0, R9
00020530  STRBLE          R10, [R4,#0x29]
00020534  BLE             loc_20AD8
00020538  MOV             R2, R9,LSL#16
0002053c  MOV             R2, R2,LSR#16
00020540  MOV             R1, R5
00020544  ADD             R0, SP, #0x124+var_18
00020548  BL              sub_12F30
0002054c  LDRB            R0, [SP,#0x124+var_7]
00020550  MOV             R2, #0x1D
00020554  LDR             R1, [R4,#0x4C]
00020558  MUL             R0, R2, R0
0002055c  LDR             R1, [R1,#0x894]
00020560  ADD             R6, R1, R0,LSL#2
00020564  LDRB            R0, [R4,#0x34]
00020568  CMP             R0, #0
0002056c  BEQ             loc_20590
00020570  LDRB            R0, [R4,#0x35]
00020574  ADD             R0, R0, #1
00020578  AND             R0, R0, #0xFF
0002057c  STRB            R0, [R4,#0x35]
00020580  LDRB            R1, [R4,#0x36]
00020584  CMP             R0, R1
00020588  STRBCS          R10, [R4,#0x34]
0002058c  B               loc_20640
00020590  LDRB            R0, [SP,#0x124+var_C]
00020594  CMP             R0, #0
00020598  ADDEQ           R0, R5, R9,LSL#3
0002059c  LDRBEQ          R1, [R0,#0x225]
000205a0  CMPEQ           R1, #0
000205a4  BNE             loc_20640
000205a8  STRB            R10, [R4,#0x29]
000205ac  LDRB            R1, [R5,#0x21]
000205b0  CMP             R1, #0
000205b4  BEQ             loc_205E0
000205b8  STRB            R8, [R4,#0x34]
000205bc  STRB            R10, [R4,#0x35]
000205c0  ADD             R12, SP, #0x124+var_24
000205c4  LDRH            R1, [R12,#0x16]
000205c8  STRB            R1, [R4,#0x36]
000205cc  LDRB            R1, [R0,#0x225]!
000205d0  LDRB            R2, [SP,#0x124+var_B]
000205d4  ADD             R1, R1, R2
000205d8  STRB            R1, [R0]
000205dc  B               loc_20620
000205e0  LDR             R2, [R5,#0x24]
000205e4  CMP             R2, #0
000205e8  BLE             loc_20620
000205ec  LDRB            R1, [SP,#0x124+var_B]
000205f0  ADD             R12, SP, #0x124+var_24
000205f4  CMP             R2, R1
000205f8  MOVLT           R1, R2
000205fc  SUB             R2, R2, R1
00020600  STR             R2, [R5,#0x24]
00020604  LDRB            R2, [R0,#0x225]!
00020608  ADD             R1, R2, R1
0002060c  STRB            R1, [R0]
00020610  STRB            R8, [R4,#0x34]
00020614  STRB            R10, [R4,#0x35]
00020618  LDRH            R0, [R12,#0x16]
0002061c  STRB            R0, [R4,#0x36]
00020620  LDRB            R0, [R4,#0x48]
00020624  CMP             R0, #1
00020628  LDRBEQ          R0, [R4,#0x34]
0002062c  CMPEQ           R0, #1
00020630  STRBEQ          R10, [R4,#0x48]
00020634  LDREQ           R0, [R4,#0x4C]
00020638  MOVEQ           R1, #0
0002063c  BLEQ            sub_21FB4
00020640  LDRB            R0, [R4,#0x29]
00020644  CMP             R0, #0
00020648  BEQ             loc_20AD8
0002064c  LDRB            R0, [R4,#0x2A]
00020650  CMP             R0, #0
00020654  BNE             loc_20AD8
00020658  LDRB            R0, [SP,#0x124+var_C]
0002065c  CMP             R0, #0
00020660  ADDEQ           R0, R5, R9,LSL#3
00020664  LDRBEQ          R0, [R0,#0x225]
00020668  CMPEQ           R0, #0
0002066c  BEQ             loc_20AD8
00020670  LDRB            R0, [R6,#4]
00020674  CMP             R0, #0
00020678  BEQ             loc_206A8
0002067c  LDRB            R0, [R4,#0x48]
00020680  CMP             R0, #0
00020684  BNE             loc_206A0
00020688  STRB            R8, [R4,#0x48]
0002068c  STRB            R10, [R4,#0x29]
00020690  LDR             R0, [R4,#0x4C]
00020694  MOV             R1, #1
00020698  BL              sub_21FB4
0002069c  B               loc_20AD8
000206a0  CMP             R0, #1
000206a4  STRBEQ          R10, [R4,#0x29]
000206a8  STRB            R8, [R4,#0x2A]
000206ac  STRB            R10, [R4,#0x2B]
000206b0  ADD             R12, SP, #0x124+var_24
000206b4  LDRH            R0, [R12,#0xE]
000206b8  STRB            R0, [R4,#0x2C]
000206bc  ADD             R0, R5, R9,LSL#3
000206c0  LDRB            R1, [R0,#0x225]!
000206c4  SUB             R1, R1, #1
000206c8  STRB            R1, [R0]
000206cc  LDR             R0, [R4,#0x30]
000206d0  ADD             R0, R0, #1
000206d4  STR             R0, [R4,#0x30]
000206d8  LDRB            R0, [R6,#4]
000206dc  CMP             R0, #0
000206e0  BEQ             loc_206FC
000206e4  LDRB            R0, [R4,#0x48]
000206e8  CMP             R0, #1
000206ec  LDRBEQ          R0, [R4,#0x40]
000206f0  CMPEQ           R0, #2
000206f4  BNE             loc_20974
000206f8  B               loc_20708
000206fc  LDRB            R0, [R4,#0x40]
00020700  CMP             R0, #0
00020704  BEQ             loc_20974
00020708  ADD             R12, SP, #0x124+var_24
0002070c  LDRSH           R0, [R12,#0xC]
00020710  LDRH            R1, [R4,#0x3C]
00020714  LDRH            R2, [R12,#0x10]
00020718  MOV             R7, #1
0002071c  CMP             R1, R2
00020720  BLS             loc_20768
00020724  LDRH            R2, [R12,#0x12]
00020728  CMP             R1, R2
0002072c  BHI             loc_20768
00020730  ADD             R2, R0, R0,LSR#31
00020734  MOV             R9, R2,ASR#1
00020738  LDRH            R2, [R12,#0x12]
0002073c  SUB             R1, R2, R1
00020740  MUL             R1, R0, R1
00020744  ADD             R0, R1, R1,LSR#31
00020748  MOV             R1, R0,ASR#1
0002074c  LDRH            R0, [R12,#0x12]
00020750  LDRH            R2, [R12,#0x10]
00020754  SUB             R0, R0, R2
00020758  BL              sub_104
0002075c  ADD             R0, R9, R0
00020760  MOV             R0, R0,LSL#16
00020764  MOV             R0, R0,ASR#16
00020768  LDRB            R1, [R4,#0x40]
0002076c  CMP             R1, #2
00020770  LDR             R1, [R4,#0x44]
00020774  MOVEQ           R0, R0,LSL#17
00020778  LDRSH           R2, [R1,#0x38]
0002077c  MOVEQ           R0, R0,ASR#16
00020780  CMP             R2, #0
00020784  BLE             loc_20880
00020788  LDRH            R2, [R1,#0x38]!
0002078c  SUB             R0, R2, R0
00020790  STRH            R0, [R1]
00020794  LDR             R0, [R4,#0x44]
00020798  LDRSH           R0, [R0,#0x38]
0002079c  CMP             R0, #0
000207a0  BGT             loc_20880
000207a4  LDR             R11, =(start - 0x207B0)
000207a8  ADD             R11, PC, R11; start
000207ac  LDR             R0, [R11,#(dword_8 - 0xC)]
000207b0  ADR             LR, loc_207C0
000207b4  LDR             R1, [R0,#0x68]
000207b8  MOV             R0, #0x140
000207bc  BX              R1
000207c0  MOV             R9, R0
000207c4  LDR             R0, [R11,#(dword_8 - 0xC)]
000207c8  LDR             R0, [R0,#0xC0]
000207cc  MOV             LR, PC
000207d0  BX              R0
000207d4  LDR             R0, [R0,#0x28]
000207d8  MOV             R3, #0x100
000207dc  ADD             R2, SP, #0x124+var_120
000207e0  LDR             R1, =0x1F5B
000207e4  BL              sub_19618
000207e8  LDR             R0, [R4,#0x4C]
000207ec  LDR             R1, [R0,#0x88C]
000207f0  LDR             R0, [R4,#0x44]
000207f4  LDRH            R2, [R0,#0x14]
000207f8  MOV             R0, #0x15
000207fc  MUL             R2, R0, R2
00020800  ADD             R1, R1, R2,LSL#2
00020804  LDR             R1, [R1,#0x50]
00020808  LDR             R2, [R5,#0x1C]
0002080c  ADD             R1, R1, R2
00020810  STR             R1, [R5,#0x1C]
00020814  LDR             R2, [R4,#0x44]
00020818  LDR             R1, [R4,#0x4C]
0002081c  LDRH            R2, [R2,#0x14]
00020820  LDR             R1, [R1,#0x88C]
00020824  MUL             R2, R0, R2
00020828  ADD             R0, R1, R2,LSL#2
0002082c  LDR             R3, [R0,#0x50]
00020830  LDR             R2, =(aSD_0 - 0x20848); "%s%d"
00020834  STR             R3, [SP,#0x124+var_124]
00020838  LDR             R0, [R11,#(dword_8 - 0xC)]
0002083c  ADD             R3, SP, #0x124+var_120
00020840  ADD             R2, PC, R2; "%s%d"
00020844  LDR             R12, [R0,#0x3C]
00020848  MOV             R0, R9
0002084c  MOV             R1, #0x140
00020850  MOV             LR, PC
00020854  BX              R12
00020858  LDR             R0, [R11,#(dword_8 - 0xC)]
0002085c  LDR             R0, [R0,#0xC0]
00020860  MOV             LR, PC
00020864  BX              R0
00020868  LDR             R0, [R0,#0x760]
0002086c  MOV             R3, R9
00020870  MOV             R2, #0
00020874  MOV             R1, #1
00020878  ADD             R0, R0, #0x220
0002087c  BL              sub_E00
00020880  LDRB            R0, [SP,#0x124+var_8]
00020884  LDR             R1, [R4,#0x44]
00020888  STRB            R0, [R1,#0x48]
0002088c  LDR             R0, [R4,#0x44]
00020890  MOV             R1, #5
00020894  STRB            R1, [R0,#0x49]
00020898  LDR             R0, [R4,#0x44]
0002089c  LDRSH           R2, [R0,#0x38]
000208a0  CMP             R2, #0
000208a4  BGT             loc_208B4
000208a8  LDRB            R2, [R0,#0x48]
000208ac  CMP             R2, #5
000208b0  STRBHI          R1, [R0,#0x48]
000208b4  LDR             R1, [R4,#0x44]
000208b8  LDRSH           R0, [R1,#0x3C]
000208bc  STR             R0, [SP,#0x124+var_1C]
000208c0  LDRSH           R1, [R1,#0x3E]
000208c4  STR             R1, [SP,#0x124+var_20]
000208c8  LDR             R2, [R4,#4]
000208cc  SUB             R1, R2, R1
000208d0  LDR             R2, [R4]
000208d4  SUB             R0, R2, R0
000208d8  BL              sub_19868
000208dc  MOV             R3, #1
000208e0  ADD             R2, SP, #0x124+var_20
000208e4  STMEA           SP, {R2,R3}
000208e8  MOV             R1, R0
000208ec  ADD             R1, R1, #0xB4
000208f0  MOV             R1, R1,LSL#16
000208f4  LDRB            R2, [SP,#0x124+var_9]
000208f8  LDR             R0, [R4,#0x4C]
000208fc  MOV             R1, R1,ASR#16
00020900  ADD             R3, SP, #0x124+var_1C
00020904  BL              sub_1BAB8
00020908  LDR             R0, [SP,#0x124+var_1C]
0002090c  LDR             R1, [R4,#0x44]
00020910  STRH            R0, [R1,#0x3C]
00020914  LDR             R0, [SP,#0x124+var_20]
00020918  LDR             R1, [R4,#0x44]
0002091c  STRH            R0, [R1,#0x3E]
00020920  LDR             R0, [R4,#0x44]
00020924  STRH            R10, [R0,#0x44]
00020928  LDR             R0, [R4,#0x44]
0002092c  LDRB            R1, [R0,#0x40]
00020930  CMP             R1, #0
00020934  BNE             loc_20960
00020938  STRB            R8, [R0,#0x40]
0002093c  LDR             R0, [R4,#0x44]
00020940  MOV             R1, #0xA
00020944  STRB            R10, [R0,#0x41]
00020948  LDR             R0, [R4,#0x44]
0002094c  STRB            R10, [R0,#0x47]
00020950  LDR             R0, [R4,#0x44]
00020954  STRH            R10, [R0,#0x44]
00020958  LDR             R0, [R4,#0x44]
0002095c  STRB            R1, [R0,#0x46]
00020960  CMP             R5, #0
00020964  LDRBNE          R0, [R5,#0x20]
00020968  CMPNE           R0, #0
0002096c  STRBNE          R10, [R5,#0x20]
00020970  B               loc_20978
00020974  STRB            R10, [R4,#0x29]
00020978  LDRB            R0, [R6,#5]
0002097c  CMP             R0, #0
00020980  BNE             loc_20AD8
00020984  LDR             R0, [R4,#0x4C]
00020988  BL              sub_120D0
0002098c  MOV             R6, R0
00020990  MOV             R0, #6
00020994  STRB            R0, [R6]
00020998  STRB            R8, [R6,#0x14]
0002099c  STR             R10, [R6,#4]
000209a0  LDR             R0, [R4,#0xC]
000209a4  BL              sub_197A8
000209a8  MOV             R9, R0
000209ac  LDR             R0, [R4,#0xC]
000209b0  BL              sub_196D8
000209b4  MOV             R10, R0
000209b8  MOV             R11, R9,LSL#4
000209bc  MOV             R1, R11
000209c0  MOV             R0, #5
000209c4  BL              sub_104
000209c8  LDR             R1, [R4]
000209cc  SUB             R0, R1, R0,ASR#16
000209d0  MOV             R1, R10,LSL#4
000209d4  ADD             R2, R1, R1,LSR#31
000209d8  ADD             R0, R0, R2,ASR#17
000209dc  STRH            R0, [R6,#0x18]
000209e0  MOV             R0, #5
000209e4  BL              sub_104
000209e8  LDR             R1, [R4,#4]
000209ec  CMP             R7, #0
000209f0  ADD             R0, R1, R0,ASR#16
000209f4  ADD             R1, R11, R11,LSR#31
000209f8  ADD             R0, R0, R1,ASR#17
000209fc  STRH            R0, [R6,#0x1A]
00020a00  LDRNE           R0, [R4,#0x44]
00020a04  LDRHNE          R0, [R0,#0x3C]
00020a08  STRHNE          R0, [R6,#0x1C]
00020a0c  LDRNE           R0, [R4,#0x44]
00020a10  LDRHNE          R0, [R0,#0x3E]
00020a14  BNE             loc_20AD4
00020a18  MOV             R0, #0
00020a1c  MOV             R2, #8
00020a20  LDR             R1, [R4]
00020a24  B               loc_20AAC
00020a28  ADD             R12, SP, #0x124+var_24
00020a2c  LDRH            R3, [R12,#0x12]
00020a30  ADD             R0, R0, R2
00020a34  CMP             R0, R3
00020a38  LDRHGE          R0, [R12,#0x12]
00020a3c  LDR             R12, [R4,#4]
00020a40  MUL             R3, R10, R0
00020a44  MUL             LR, R9, R0
00020a48  ADD             R12, R12, LR,ASR#16
00020a4c  ADD             R3, R1, R3,ASR#16
00020a50  MOV             LR, R3,ASR#31
00020a54  ADD             R3, R3, LR,LSR#28
00020a58  MOV             LR, R12,ASR#31
00020a5c  ADD             R12, R12, LR,LSR#28
00020a60  MOV             R3, R3,ASR#4
00020a64  CMP             R3, #0
00020a68  MOV             R12, R12,ASR#4
00020a6c  BLT             loc_20AAC
00020a70  LDR             LR, [R4,#0x4C]
00020a74  LDR             LR, [LR,#0x898]
00020a78  LDRH            R7, [LR]
00020a7c  CMP             R3, R7,LSL#1
00020a80  BGE             loc_20AAC
00020a84  CMP             R12, #0
00020a88  BLT             loc_20AAC
00020a8c  LDRH            R7, [LR,#2]
00020a90  CMP             R12, R7,LSL#1
00020a94  BGE             loc_20AAC
00020a98  LDR             LR, [LR,#0x28]
00020a9c  LDR             R12, [LR,R12,LSL#2]
00020aa0  LDRB            R3, [R12,R3]
00020aa4  TST             R3, #2
00020aa8  BNE             loc_20ABC
00020aac  ADD             R12, SP, #0x124+var_24
00020ab0  LDRH            R3, [R12,#0x12]
00020ab4  CMP             R3, R0
00020ab8  BGT             loc_20A28
00020abc  MUL             R2, R10, R0
00020ac0  ADD             R1, R1, R2,ASR#16
00020ac4  STRH            R1, [R6,#0x1C]
00020ac8  LDR             R1, [R4,#4]
00020acc  MUL             R0, R9, R0
00020ad0  ADD             R0, R1, R0,ASR#16
00020ad4  STRH            R0, [R6,#0x1E]
00020ad8  LDR             R0, [R4]
00020adc  LDR             R6, [R4,#0xC]
00020ae0  LDR             R7, [R4,#0x1C]
00020ae4  STR             R0, [SP,#0x124+var_1C]
00020ae8  LDR             R0, [R4,#4]
00020aec  TST             R7, #1
00020af0  STR             R0, [SP,#0x124+var_20]
00020af4  MOV             R0, #0
00020af8  MOVNE           R1, R6,LSL#16
00020afc  MOVNE           R1, R1,ASR#16
00020b00  MOVNE           R0, #1
00020b04  TST             R7, #2
00020b08  ADDNE           R0, R6, #0xB4
00020b0c  MOVNE           R1, R0,LSL#16
00020b10  MOVNE           R1, R1,ASR#16
00020b14  MOVNE           R0, #1
00020b18  TST             R7, #4
00020b1c  ADDNE           R0, R6, #0x100
00020b20  ADDNE           R0, R0, #0xE
00020b24  MOVNE           R1, R0,LSL#16
00020b28  MOVNE           R0, #1
00020b2c  MOVNE           R1, R1,ASR#16
00020b30  TST             R7, #8
00020b34  ADDNE           R0, R6, #0x5A ; 'Z'
00020b38  MOVNE           R1, R0,LSL#16
00020b3c  MOVNE           R1, R1,ASR#16
00020b40  BNE             loc_20B4C
00020b44  CMP             R0, #1
00020b48  BNE             loc_20B78
00020b4c  MOV             R3, #0
00020b50  ADD             R2, SP, #0x124+var_20
00020b54  STMEA           SP, {R2,R3}
00020b58  LDR             R0, [R4,#0x4C]
00020b5c  ADD             R3, SP, #0x124+var_1C
00020b60  MOV             R2, #0xA
00020b64  BL              sub_1BAB8
00020b68  LDR             R0, [SP,#0x124+var_1C]
00020b6c  STR             R0, [R4]
00020b70  LDR             R0, [SP,#0x124+var_20]
00020b74  STR             R0, [R4,#4]
00020b78  TST             R7, #0x100
00020b7c  SUBNE           R6, R6, #4
00020b80  BNE             loc_20B8C
00020b84  TST             R7, #0x200
00020b88  ADDNE           R6, R6, #4
00020b8c  CMP             R6, #0
00020b90  ADDLT           R6, R6, #0x168
00020b94  CMP             R6, #0x168
00020b98  SUBGE           R6, R6, #0x168
00020b9c  STR             R6, [R4,#0xC]
00020ba0  MOV             R1, #0
00020ba4  B               loc_20C24
00020ba8  LDR             R0, [R0,#0x30]
00020bac  ADD             R2, R1, R1,LSL#2
00020bb0  ADD             R0, R0, R2,LSL#3
00020bb4  LDRB            R2, [R0,#0x15]
00020bb8  CMP             R2, #0
00020bbc  LDRHNE          R2, [R0,#0x16]
00020bc0  ADDNE           R2, R2, R5
00020bc4  LDRBNE          R2, [R2,#0x28]
00020bc8  CMPNE           R2, #1
00020bcc  BEQ             loc_20C20
00020bd0  LDR             R2, [R4]
00020bd4  LDRSH           R3, [R0,#0x18]
00020bd8  SUB             R2, R2, R3
00020bdc  STR             R2, [SP,#0x124+var_1C]
00020be0  LDR             R2, [R4,#4]
00020be4  LDRSH           R3, [R0,#0x1A]
00020be8  SUB             R2, R2, R3
00020bec  LDR             R3, [SP,#0x124+var_1C]
00020bf0  STR             R2, [SP,#0x124+var_20]
00020bf4  ADD             R3, R3, #0x17
00020bf8  CMP             R3, #0x2F ; '/'
00020bfc  ADDCC           R2, R2, #0x17
00020c00  CMPCC           R2, #0x2F ; '/'
00020c04  STRBCC          R8, [R5,#0x33C]
00020c08  LDRBCC          R1, [R0,#0x15]
00020c0c  STRBCC          R1, [R5,#0x33D]
00020c10  LDRHCC          R0, [R0,#0x16]
00020c14  LDRCC           R1, [SP,#0x124+var_4]
00020c18  STRHCC          R0, [R1,#0x3E]
00020c1c  BCC             loc_20C38
00020c20  ADD             R1, R1, #1
00020c24  LDR             R0, [R4,#0x4C]
00020c28  LDR             R0, [R0,#0x898]
00020c2c  LDR             R2, [R0,#0x2C]
00020c30  CMP             R2, R1
00020c34  BHI             loc_20BA8
00020c38  ADD             SP, SP, #0x124
00020c3c  POP             {R4-R11,LR}
00020c40  BX              LR
