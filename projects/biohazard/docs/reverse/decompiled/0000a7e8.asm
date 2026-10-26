0000a7e8  PUSH            {R0-R11,LR}
0000a7ec  SUB             SP, SP, #0x354
0000a7f0  MOV             R0, #0x200
0000a7f4  STR             R0, [SP,#0x364+var_98]
0000a7f8  LDR             R0, =0x4408
0000a7fc  MOV             R5, R1
0000a800  STR             R0, [SP,#0x364+var_9C]
0000a804  ADD             R0, R0, #0x240
0000a808  STR             R0, [SP,#0x364+var_A0]
0000a80c  LDR             R0, [SP,#0x364+var_10]
0000a810  MOV             R6, R2
0000a814  LDR             R0, [R0,#0x898]
0000a818  MOV             R7, R3
0000a81c  LDRH            R1, [R0]
0000a820  MOV             R4, #0x14
0000a824  MOV             R2, R1,LSL#1
0000a828  STR             R2, [SP,#0x364+var_8C]
0000a82c  LDRH            R0, [R0,#2]
0000a830  MOV             R2, R0,LSL#1
0000a834  STR             R2, [SP,#0x364+var_90]
0000a838  LDR             R0, [SP,#0x364+var_10]
0000a83c  LDR             R0, [R0,#0x834]
0000a840  BL              sub_196D8
0000a844  MOV             R8, R0
0000a848  LDR             R0, [SP,#0x364+var_10]
0000a84c  LDR             R0, [R0,#0x834]
0000a850  BL              sub_197A8
0000a854  MOV             R9, R0
0000a858  LDR             R0, [SP,#0x364+var_10]
0000a85c  MOV             R2, R7,LSL#16
0000a860  LDR             R0, [R0,#0x828]
0000a864  MOV             R2, R2,ASR#16
0000a868  MOV             R1, R0,ASR#31
0000a86c  ADD             R0, R0, R1,LSR#28
0000a870  MOV             R0, R0,ASR#4
0000a874  STR             R0, [SP,#0x364+var_84]
0000a878  LDR             R0, [SP,#0x364+var_10]
0000a87c  MOV             R3, #0
0000a880  LDR             R0, [R0,#0x82C]
0000a884  STR             R3, [SP,#0x364+var_364]
0000a888  MOV             R1, R0,ASR#31
0000a88c  ADD             R0, R0, R1,LSR#28
0000a890  MOV             R1, R0,ASR#4
0000a894  STR             R1, [SP,#0x364+var_88]
0000a898  MOV             R1, R6,LSL#16
0000a89c  MOV             R1, R1,ASR#16
0000a8a0  STR             R1, [SP,#0x364+var_18]
0000a8a4  MOV             R11, R1
0000a8a8  MOV             R0, R5
0000a8ac  MOV             R3, #0x17
0000a8b0  STR             R2, [SP,#0x364+var_14]
0000a8b4  MOV             R10, R2
0000a8b8  BL              sub_64E0
0000a8bc  LDR             R3, =0xFFFF
0000a8c0  MOV             R2, R10
0000a8c4  STR             R3, [SP,#0x364+var_364]
0000a8c8  MOV             R3, #0x16
0000a8cc  MOV             R1, R11
0000a8d0  MOV             R0, R5
0000a8d4  BL              sub_64E0
0000a8d8  MOV             R3, #0
0000a8dc  STR             R3, [SP,#0x364+var_364]
0000a8e0  MOV             R3, #0x15
0000a8e4  MOV             R2, R10
0000a8e8  MOV             R1, R11
0000a8ec  MOV             R0, R5
0000a8f0  BL              sub_64E0
0000a8f4  MOV             R3, #0
0000a8f8  STR             R3, [SP,#0x364+var_364]
0000a8fc  MOV             R3, #0x14
0000a900  MOV             R2, R10
0000a904  MOV             R1, R11
0000a908  MOV             R0, R5
0000a90c  BL              sub_64E0
0000a910  LDR             R0, [SP,#0x364+var_10]
0000a914  MOV             R1, #0
0000a918  LDR             R0, [R0,#0x898]
0000a91c  MOV             R3, #0xFFFFFFDB
0000a920  LDR             R2, [R0,#0x28]
0000a924  STR             R2, [SP,#0x364+var_94]
0000a928  LDR             R0, [R5,#0x14]
0000a92c  MOV             R2, R4
0000a930  SUB             R12, R6, R2
0000a934  ADD             LR, R4, R1
0000a938  ADD             R10, SP, #0x364+var_1EC
0000a93c  STR             R12, [R10,LR,LSL#2]
0000a940  ADD             R10, SP, #0x364+var_330
0000a944  STR             R2, [R10,LR,LSL#2]
0000a948  SUB             LR, R4, R1
0000a94c  ADD             R10, SP, #0x364+var_1EC
0000a950  STR             R12, [R10,LR,LSL#2]
0000a954  CMP             R3, #0
0000a958  ADDLT           R3, R3, R1,LSL#2
0000a95c  ADD             R12, SP, #0x364+var_330
0000a960  STR             R2, [R12,LR,LSL#2]
0000a964  ADDLT           R3, R3, #6
0000a968  BLT             loc_A9B0
0000a96c  SUB             R12, R1, R2
0000a970  ADD             R3, R3, R12,LSL#2
0000a974  ADD             R3, R3, #0xA
0000a978  CMP             R1, R2
0000a97c  BGE             loc_A9AC
0000a980  SUB             R12, R6, R1
0000a984  ADD             LR, R4, R2
0000a988  ADD             R10, SP, #0x364+var_1EC
0000a98c  STR             R12, [R10,LR,LSL#2]
0000a990  ADD             R10, SP, #0x364+var_330
0000a994  STR             R1, [R10,LR,LSL#2]
0000a998  SUB             LR, R4, R2
0000a99c  ADD             R10, SP, #0x364+var_1EC
0000a9a0  STR             R12, [R10,LR,LSL#2]
0000a9a4  ADD             R12, SP, #0x364+var_330
0000a9a8  STR             R1, [R12,LR,LSL#2]
0000a9ac  SUB             R2, R2, #1
0000a9b0  ADD             R1, R1, #1
0000a9b4  CMP             R1, R2
0000a9b8  BLE             loc_A930
0000a9bc  ADD             R0, R0, R7,LSL#2
0000a9c0  STR             R0, [SP,#0x364+var_1C]
0000a9c4  MOV             R0, R8,LSL#1
0000a9c8  STR             R0, [SP,#0x364+var_20]
0000a9cc  MOV             R0, R9,LSL#1
0000a9d0  MOV             R1, #0
0000a9d4  STR             R1, [SP,#0x364+var_A8]
0000a9d8  STR             R0, [SP,#0x364+var_24]
0000a9dc  LDR             R1, [SP,#0x364+var_A8]
0000a9e0  SUB             R10, R1, R4
0000a9e4  MUL             R0, R8, R10
0000a9e8  MOV             R1, R0,LSL#1
0000a9ec  MOV             R0, #3
0000a9f0  BL              sub_104
0000a9f4  LDR             R1, [SP,#0x364+var_84]
0000a9f8  RSB             R11, R0, R1,LSL#16
0000a9fc  LDR             R1, [SP,#0x364+var_A8]
0000aa00  ADD             R0, SP, #0x364+var_330
0000aa04  LDR             R0, [R0,R1,LSL#2]
0000aa08  STR             R0, [SP,#0x364+var_28]
0000aa0c  MUL             R0, R9, R0
0000aa10  MOV             R1, R0,LSL#1
0000aa14  MOV             R0, #3
0000aa18  BL              sub_104
0000aa1c  ADD             R1, R11, R0
0000aa20  STR             R1, [SP,#0x364+var_7C]
0000aa24  MUL             R0, R9, R10
0000aa28  MOV             R1, R0,LSL#1
0000aa2c  MOV             R0, #3
0000aa30  BL              sub_104
0000aa34  LDR             R1, [SP,#0x364+var_88]
0000aa38  RSB             R10, R0, R1,LSL#16
0000aa3c  LDR             R0, [SP,#0x364+var_28]
0000aa40  MUL             R0, R8, R0
0000aa44  MOV             R1, R0,LSL#1
0000aa48  MOV             R0, #3
0000aa4c  BL              sub_104
0000aa50  SUB             R11, R10, R0
0000aa54  LDR             R0, [SP,#0x364+var_1C]
0000aa58  LDR             R1, [SP,#0x364+var_A8]
0000aa5c  ADD             R0, R0, R1,LSL#2
0000aa60  LDR             R0, [R0,-R4,LSL#2]
0000aa64  ADD             R1, R0, R6,LSL#1
0000aa68  LDR             R0, [SP,#0x364+var_28]
0000aa6c  SUB             R10, R1, R0,LSL#1
0000aa70  ADD             R0, R10, R0,LSL#2
0000aa74  STR             R0, [SP,#0x364+var_A4]
0000aa78  B               loc_AB14
0000aa7c  LDR             R1, [SP,#0x364+var_7C]
0000aa80  MOV             R0, R1,ASR#16
0000aa84  CMP             R0, #0
0000aa88  MOV             R1, R11,ASR#16
0000aa8c  BLT             loc_AAE4
0000aa90  LDR             R2, [SP,#0x364+var_8C]
0000aa94  CMP             R0, R2
0000aa98  BGE             loc_AAE4
0000aa9c  CMP             R1, #0
0000aaa0  BLT             loc_AAE4
0000aaa4  LDR             R2, [SP,#0x364+var_90]
0000aaa8  CMP             R1, R2
0000aaac  BGE             loc_AAE4
0000aab0  LDR             R2, [SP,#0x364+var_94]
0000aab4  LDR             R1, [R2,R1,LSL#2]
0000aab8  LDRB            R0, [R1,R0]
0000aabc  TST             R0, #4
0000aac0  MOVNE           R0, #0xF800
0000aac4  BNE             loc_AAE8
0000aac8  TST             R0, #2
0000aacc  LDRNE           R0, [SP,#0x364+var_98]
0000aad0  BNE             loc_AAE8
0000aad4  TST             R0, #1
0000aad8  LDREQ           R0, [SP,#0x364+var_A0]
0000aadc  LDRNE           R0, [SP,#0x364+var_9C]
0000aae0  B               loc_AAE8
0000aae4  MOV             R0, #0
0000aae8  STRH            R0, [R10],#2
0000aaec  LDR             R1, [SP,#0x364+var_24]
0000aaf0  MOV             R0, #3
0000aaf4  BL              sub_104
0000aaf8  LDR             R1, [SP,#0x364+var_7C]
0000aafc  SUB             R1, R1, R0
0000ab00  STR             R1, [SP,#0x364+var_7C]
0000ab04  LDR             R1, [SP,#0x364+var_20]
0000ab08  MOV             R0, #3
0000ab0c  BL              sub_104
0000ab10  ADD             R11, R0, R11
0000ab14  LDR             R0, [SP,#0x364+var_A4]
0000ab18  CMP             R10, R0
0000ab1c  BCC             loc_AA7C
0000ab20  LDR             R1, [SP,#0x364+var_A8]
0000ab24  ADD             R1, R1, #1
0000ab28  STR             R1, [SP,#0x364+var_A8]
0000ab2c  CMP             R1, #0x29 ; ')'
0000ab30  BLT             loc_A9DC
0000ab34  LDR             R0, [SP,#0x364+var_10]
0000ab38  LDR             R0, [R0,#0x8B0]
0000ab3c  LDRB            R0, [R0,#0x29]
0000ab40  STR             R0, [SP,#0x364+var_334]
0000ab44  LDR             R0, =(start - 0xAB50)
0000ab48  ADD             R0, PC, R0; start
0000ab4c  LDR             R0, [R0,#(dword_8 - 0xC)]
0000ab50  ADR             LR, loc_AB5C
0000ab54  LDR             R0, [R0,#0xC0]
0000ab58  BX              R0
0000ab5c  LDR             R0, [R0,#0x24]
0000ab60  STR             R0, [SP,#0x364+var_340]
0000ab64  LDR             R0, [SP,#0x364+var_10]
0000ab68  LDR             R0, [R0,#0x8B0]
0000ab6c  LDR             R0, [R0,#0x334]
0000ab70  LDRSH           R1, [R0]
0000ab74  LDR             R0, [SP,#0x364+var_340]
0000ab78  STR             R1, [SP,#0x364+var_338]
0000ab7c  LDR             R1, =0x838
0000ab80  BL              sub_11DD8
0000ab84  STR             R0, [SP,#0x364+var_33C]
0000ab88  LDRH            R10, [R0]
0000ab8c  LDRH            R11, [R0,#2]
0000ab90  LDR             R0, =(dword_270F0 - 0xAB9C)
0000ab94  ADD             R0, PC, R0; dword_270F0
0000ab98  LDR             R1, [SP,#0x364+var_338]
0000ab9c  ADD             R1, R0, R1,LSL#3
0000aba0  STR             R1, [SP,#0x364+var_2C]
0000aba4  LDRH            R0, [R1]
0000aba8  LDR             R2, [SP,#0x364+var_84]
0000abac  LDRH            R1, [R1,#2]
0000abb0  RSB             R0, R2, R0,LSL#1
0000abb4  LDR             R2, [SP,#0x364+var_88]
0000abb8  MUL             R3, R9, R0
0000abbc  RSB             R1, R2, R1,LSL#1
0000abc0  MUL             R2, R8, R1
0000abc4  SUB             R2, R2, R3
0000abc8  MOV             R2, R2,ASR#16
0000abcc  ADD             R2, R2, R2,LSR#31
0000abd0  MOV             R2, R2,ASR#1
0000abd4  STR             R2, [SP,#0x364+var_7C]
0000abd8  RSB             R2, R1, #0
0000abdc  MUL             R2, R9, R2
0000abe0  MUL             R3, R8, R0
0000abe4  SUB             R2, R2, R3
0000abe8  MOV             R2, R2,ASR#16
0000abec  ADD             R2, R2, R2,LSR#31
0000abf0  MOV             R2, R2,ASR#1
0000abf4  STR             R2, [SP,#0x364+var_80]
0000abf8  BL              sub_1973C
0000abfc  ADD             R0, R0, R0,LSL#1
0000ac00  ADD             R0, R0, R0,LSR#31
0000ac04  MOV             R0, R0,ASR#1
0000ac08  STR             R0, [SP,#0x364+var_30]
0000ac0c  CMP             R0, R4
0000ac10  BGT             loc_ACCC
0000ac14  ADD             R0, R11, R11,LSR#31
0000ac18  MOV             R0, R0,ASR#1
0000ac1c  MOV             R0, R0,LSL#16
0000ac20  MOV             R0, R0,ASR#16
0000ac24  STR             R0, [SP,#0x364+var_34]
0000ac28  ADD             R0, R10, R10,LSR#31
0000ac2c  MOV             R0, R0,ASR#1
0000ac30  MOV             R0, R0,LSL#16
0000ac34  LDR             R1, [SP,#0x364+var_80]
0000ac38  MOV             R0, R0,ASR#16
0000ac3c  STR             R0, [SP,#0x364+var_38]
0000ac40  ADD             R1, R1, R1,LSL#1
0000ac44  ADD             R1, R1, R7
0000ac48  MOV             R0, R11,ASR#31
0000ac4c  ADD             R0, R11, R0,LSR#30
0000ac50  ADD             R1, R1, #2
0000ac54  SUB             R0, R1, R0,ASR#2
0000ac58  LDR             R1, [SP,#0x364+var_7C]
0000ac5c  MOV             R12, R0,LSL#16
0000ac60  ADD             R1, R1, R1,LSL#1
0000ac64  ADD             R1, R1, R6
0000ac68  MOV             R0, R10,ASR#31
0000ac6c  ADD             R0, R10, R0,LSR#30
0000ac70  ADD             R1, R1, #2
0000ac74  SUB             R0, R1, R0,ASR#2
0000ac78  MOV             LR, R0,LSL#16
0000ac7c  MOV             R0, R11,LSL#16
0000ac80  MOV             R0, R0,ASR#16
0000ac84  MOV             R3, #0
0000ac88  STR             R3, [SP,#0x364+var_344]
0000ac8c  STR             R0, [SP,#0x364+var_350]
0000ac90  MOV             R1, #1
0000ac94  STR             R1, [SP,#0x364+var_34C]
0000ac98  LDR             R0, [SP,#0x364+var_33C]
0000ac9c  MOV             R3, R10,LSL#16
0000aca0  MOV             R2, #0
0000aca4  STR             R2, [SP,#0x364+var_348]
0000aca8  MOV             R3, R3,ASR#16
0000acac  MOV             R1, #0
0000acb0  STMFA           SP, {R0-R3}
0000acb4  LDR             R3, [SP,#0x364+var_34]
0000acb8  MOV             LR, LR,ASR#16
0000acbc  STR             R3, [SP,#0x364+var_364]
0000acc0  LDR             R3, [SP,#0x364+var_38]
0000acc4  MOV             R12, R12,ASR#16
0000acc8  B               loc_ADA4
0000accc  LDR             R1, [SP,#0x364+var_7C]
0000acd0  LDR             R0, [SP,#0x364+var_30]
0000acd4  MUL             R1, R4, R1
0000acd8  BL              sub_104
0000acdc  LDR             R1, [SP,#0x364+var_80]
0000ace0  STR             R0, [SP,#0x364+var_7C]
0000ace4  LDR             R0, [SP,#0x364+var_30]
0000ace8  MUL             R1, R4, R1
0000acec  BL              sub_104
0000acf0  ADD             R1, R11, R11,LSR#31
0000acf4  MOV             R1, R1,ASR#1
0000acf8  MOV             R1, R1,LSL#16
0000acfc  MOV             R1, R1,ASR#16
0000ad00  STR             R1, [SP,#0x364+var_3C]
0000ad04  ADD             R1, R10, R10,LSR#31
0000ad08  MOV             R1, R1,ASR#1
0000ad0c  MOV             R1, R1,LSL#16
0000ad10  MOV             R1, R1,ASR#16
0000ad14  STR             R1, [SP,#0x364+var_40]
0000ad18  ADD             R0, R0, R0,LSL#1
0000ad1c  ADD             R0, R0, R7
0000ad20  MOV             R1, R11,ASR#31
0000ad24  ADD             R1, R11, R1,LSR#30
0000ad28  ADD             R0, R0, #2
0000ad2c  SUB             R0, R0, R1,ASR#2
0000ad30  LDR             R1, [SP,#0x364+var_7C]
0000ad34  MOV             R12, R0,LSL#16
0000ad38  ADD             R1, R1, R1,LSL#1
0000ad3c  ADD             R1, R1, R6
0000ad40  MOV             R0, R10,ASR#31
0000ad44  ADD             R0, R10, R0,LSR#30
0000ad48  ADD             R1, R1, #2
0000ad4c  SUB             R0, R1, R0,ASR#2
0000ad50  MOV             LR, R0,LSL#16
0000ad54  MOV             R0, R11,LSL#16
0000ad58  MOV             R0, R0,ASR#16
0000ad5c  MOV             R3, #0
0000ad60  STR             R3, [SP,#0x364+var_344]
0000ad64  STR             R0, [SP,#0x364+var_350]
0000ad68  MOV             R1, #9
0000ad6c  MOV             R2, #0x10
0000ad70  STR             R2, [SP,#0x364+var_348]
0000ad74  STR             R1, [SP,#0x364+var_34C]
0000ad78  LDR             R0, [SP,#0x364+var_33C]
0000ad7c  MOV             R3, R10,LSL#16
0000ad80  MOV             R3, R3,ASR#16
0000ad84  MOV             R1, #0
0000ad88  MOV             R2, #0
0000ad8c  STMFA           SP, {R0-R3}
0000ad90  LDR             R3, [SP,#0x364+var_3C]
0000ad94  MOV             LR, LR,ASR#16
0000ad98  STR             R3, [SP,#0x364+var_364]
0000ad9c  LDR             R3, [SP,#0x364+var_40]
0000ada0  MOV             R12, R12,ASR#16
0000ada4  MOV             R2, R12
0000ada8  MOV             R1, LR
0000adac  MOV             R0, R5
0000adb0  BL              sub_18BC
0000adb4  LDR             R1, [SP,#0x364+var_2C]
0000adb8  LDRH            R0, [R1,#4]
0000adbc  CMP             R0, #0
0000adc0  LDRNE           R1, [SP,#0x364+var_2C]
0000adc4  LDRHNE          R1, [R1,#6]
0000adc8  CMPNE           R1, #0
0000adcc  BEQ             loc_AFC8
0000add0  LDR             R2, [SP,#0x364+var_84]
0000add4  RSB             R0, R2, R0,LSL#1
0000add8  LDR             R2, [SP,#0x364+var_88]
0000addc  MUL             R3, R9, R0
0000ade0  RSB             R1, R2, R1,LSL#1
0000ade4  MUL             R2, R8, R1
0000ade8  SUB             R2, R2, R3
0000adec  MOV             R2, R2,ASR#16
0000adf0  ADD             R2, R2, R2,LSR#31
0000adf4  MOV             R2, R2,ASR#1
0000adf8  STR             R2, [SP,#0x364+var_7C]
0000adfc  RSB             R2, R1, #0
0000ae00  MUL             R2, R9, R2
0000ae04  MUL             R3, R8, R0
0000ae08  SUB             R2, R2, R3
0000ae0c  MOV             R2, R2,ASR#16
0000ae10  ADD             R2, R2, R2,LSR#31
0000ae14  MOV             R2, R2,ASR#1
0000ae18  STR             R2, [SP,#0x364+var_80]
0000ae1c  BL              sub_1973C
0000ae20  ADD             R0, R0, R0,LSL#1
0000ae24  ADD             R0, R0, R0,LSR#31
0000ae28  MOV             R0, R0,ASR#1
0000ae2c  STR             R0, [SP,#0x364+var_44]
0000ae30  CMP             R0, R4
0000ae34  BGE             loc_AEE8
0000ae38  ADD             R0, R11, R11,LSR#31
0000ae3c  MOV             R0, R0,ASR#1
0000ae40  MOV             R0, R0,LSL#16
0000ae44  MOV             R0, R0,ASR#16
0000ae48  STR             R0, [SP,#0x364+var_48]
0000ae4c  ADD             R0, R10, R10,LSR#31
0000ae50  MOV             R0, R0,ASR#1
0000ae54  MOV             R0, R0,LSL#16
0000ae58  LDR             R1, [SP,#0x364+var_80]
0000ae5c  MOV             R0, R0,ASR#16
0000ae60  STR             R0, [SP,#0x364+var_4C]
0000ae64  ADD             R1, R1, R1,LSL#1
0000ae68  ADD             R1, R1, R7
0000ae6c  MOV             R0, R11,ASR#31
0000ae70  ADD             R0, R11, R0,LSR#30
0000ae74  ADD             R1, R1, #2
0000ae78  SUB             R0, R1, R0,ASR#2
0000ae7c  LDR             R1, [SP,#0x364+var_7C]
0000ae80  MOV             R12, R0,LSL#16
0000ae84  ADD             R1, R1, R1,LSL#1
0000ae88  ADD             R1, R1, R6
0000ae8c  MOV             R0, R10,ASR#31
0000ae90  ADD             R0, R10, R0,LSR#30
0000ae94  ADD             R1, R1, #2
0000ae98  SUB             R0, R1, R0,ASR#2
0000ae9c  MOV             LR, R0,LSL#16
0000aea0  MOV             R0, R11,LSL#16
0000aea4  MOV             R0, R0,ASR#16
0000aea8  ADD             R11, SP, #0x364+var_350
0000aeac  MOV             R1, #1
0000aeb0  MOV             R3, #0
0000aeb4  MOV             R2, #0
0000aeb8  STM             R11, {R0-R3}
0000aebc  MOV             R3, R10,LSL#16
0000aec0  LDR             R0, [SP,#0x364+var_33C]
0000aec4  MOV             R3, R3,ASR#16
0000aec8  MOV             R1, #0
0000aecc  STMFA           SP, {R0-R3}
0000aed0  LDR             R3, [SP,#0x364+var_48]
0000aed4  MOV             LR, LR,ASR#16
0000aed8  STR             R3, [SP,#0x364+var_364]
0000aedc  LDR             R3, [SP,#0x364+var_4C]
0000aee0  MOV             R12, R12,ASR#16
0000aee4  B               loc_AFB8
0000aee8  LDR             R1, [SP,#0x364+var_7C]
0000aeec  LDR             R0, [SP,#0x364+var_44]
0000aef0  MUL             R1, R4, R1
0000aef4  BL              sub_104
0000aef8  LDR             R1, [SP,#0x364+var_80]
0000aefc  STR             R0, [SP,#0x364+var_7C]
0000af00  LDR             R0, [SP,#0x364+var_44]
0000af04  MUL             R1, R4, R1
0000af08  BL              sub_104
0000af0c  ADD             R1, R11, R11,LSR#31
0000af10  MOV             R1, R1,ASR#1
0000af14  MOV             R1, R1,LSL#16
0000af18  MOV             R1, R1,ASR#16
0000af1c  STR             R1, [SP,#0x364+var_50]
0000af20  ADD             R1, R10, R10,LSR#31
0000af24  MOV             R1, R1,ASR#1
0000af28  MOV             R1, R1,LSL#16
0000af2c  MOV             R1, R1,ASR#16
0000af30  STR             R1, [SP,#0x364+var_54]
0000af34  ADD             R0, R0, R0,LSL#1
0000af38  ADD             R0, R0, R7
0000af3c  MOV             R1, R11,ASR#31
0000af40  ADD             R1, R11, R1,LSR#30
0000af44  ADD             R0, R0, #2
0000af48  SUB             R0, R0, R1,ASR#2
0000af4c  LDR             R1, [SP,#0x364+var_7C]
0000af50  MOV             R12, R0,LSL#16
0000af54  ADD             R1, R1, R1,LSL#1
0000af58  ADD             R1, R1, R6
0000af5c  MOV             R0, R10,ASR#31
0000af60  ADD             R0, R10, R0,LSR#30
0000af64  ADD             R1, R1, #2
0000af68  SUB             R0, R1, R0,ASR#2
0000af6c  MOV             LR, R0,LSL#16
0000af70  MOV             R0, R11,LSL#16
0000af74  MOV             R0, R0,ASR#16
0000af78  ADD             R11, SP, #0x364+var_350
0000af7c  MOV             R1, #9
0000af80  MOV             R3, #0
0000af84  MOV             R2, #0x10
0000af88  STM             R11, {R0-R3}
0000af8c  MOV             R3, R10,LSL#16
0000af90  LDR             R0, [SP,#0x364+var_33C]
0000af94  MOV             R3, R3,ASR#16
0000af98  MOV             R2, #0
0000af9c  MOV             R1, #0
0000afa0  STMFA           SP, {R0-R3}
0000afa4  LDR             R3, [SP,#0x364+var_50]
0000afa8  MOV             LR, LR,ASR#16
0000afac  STR             R3, [SP,#0x364+var_364]
0000afb0  LDR             R3, [SP,#0x364+var_54]
0000afb4  MOV             R12, R12,ASR#16
0000afb8  MOV             R2, R12
0000afbc  MOV             R1, LR
0000afc0  MOV             R0, R5
0000afc4  BL              sub_18BC
0000afc8  LDR             R1, =0x837
0000afcc  LDR             R0, [SP,#0x364+var_340]
0000afd0  BL              sub_11DD8
0000afd4  STR             R0, [SP,#0x364+var_33C]
0000afd8  LDRH            R10, [R0]
0000afdc  LDRH            R11, [R0,#2]
0000afe0  LDR             R0, =(dword_27170 - 0xAFEC)
0000afe4  ADD             R0, PC, R0; dword_27170
0000afe8  LDR             R1, [SP,#0x364+var_338]
0000afec  ADD             R1, R0, R1,LSL#2
0000aff0  LDRH            R0, [R1]
0000aff4  CMP             R0, #0
0000aff8  LDRHNE          R1, [R1,#2]
0000affc  CMPNE           R1, #0
0000b000  BEQ             loc_B1FC
0000b004  LDR             R2, [SP,#0x364+var_84]
0000b008  RSB             R0, R2, R0,LSL#1
0000b00c  LDR             R2, [SP,#0x364+var_88]
0000b010  MUL             R3, R9, R0
0000b014  RSB             R1, R2, R1,LSL#1
0000b018  MUL             R2, R8, R1
0000b01c  SUB             R2, R2, R3
0000b020  MOV             R2, R2,ASR#16
0000b024  ADD             R2, R2, R2,LSR#31
0000b028  MOV             R2, R2,ASR#1
0000b02c  STR             R2, [SP,#0x364+var_7C]
0000b030  RSB             R2, R1, #0
0000b034  MUL             R2, R9, R2
0000b038  MUL             R3, R8, R0
0000b03c  SUB             R2, R2, R3
0000b040  MOV             R2, R2,ASR#16
0000b044  ADD             R2, R2, R2,LSR#31
0000b048  MOV             R2, R2,ASR#1
0000b04c  STR             R2, [SP,#0x364+var_80]
0000b050  BL              sub_1973C
0000b054  ADD             R0, R0, R0,LSL#1
0000b058  ADD             R0, R0, R0,LSR#31
0000b05c  MOV             R0, R0,ASR#1
0000b060  STR             R0, [SP,#0x364+var_58]
0000b064  CMP             R0, R4
0000b068  BGE             loc_B11C
0000b06c  ADD             R0, R11, R11,LSR#31
0000b070  MOV             R0, R0,ASR#1
0000b074  MOV             R0, R0,LSL#16
0000b078  MOV             R0, R0,ASR#16
0000b07c  STR             R0, [SP,#0x364+var_5C]
0000b080  ADD             R0, R10, R10,LSR#31
0000b084  MOV             R0, R0,ASR#1
0000b088  MOV             R0, R0,LSL#16
0000b08c  MOV             R0, R0,ASR#16
0000b090  STR             R0, [SP,#0x364+var_60]
0000b094  LDR             R1, [SP,#0x364+var_80]
0000b098  MOV             R0, R11,ASR#31
0000b09c  ADD             R1, R1, R1,LSL#1
0000b0a0  ADD             R1, R1, R7
0000b0a4  ADD             R1, R1, #2
0000b0a8  ADD             R0, R11, R0,LSR#30
0000b0ac  SUB             R0, R1, R0,ASR#2
0000b0b0  LDR             R1, [SP,#0x364+var_7C]
0000b0b4  MOV             R12, R0,LSL#16
0000b0b8  ADD             R1, R1, R1,LSL#1
0000b0bc  ADD             R1, R1, R6
0000b0c0  MOV             R0, R10,ASR#31
0000b0c4  ADD             R0, R10, R0,LSR#30
0000b0c8  ADD             R1, R1, #2
0000b0cc  SUB             R0, R1, R0,ASR#2
0000b0d0  MOV             LR, R0,LSL#16
0000b0d4  MOV             R0, R11,LSL#16
0000b0d8  MOV             R0, R0,ASR#16
0000b0dc  ADD             R11, SP, #0x364+var_350
0000b0e0  MOV             R1, #1
0000b0e4  MOV             R3, #0
0000b0e8  MOV             R2, #0
0000b0ec  STM             R11, {R0-R3}
0000b0f0  MOV             R3, R10,LSL#16
0000b0f4  LDR             R0, [SP,#0x364+var_33C]
0000b0f8  MOV             R3, R3,ASR#16
0000b0fc  MOV             R1, #0
0000b100  STMFA           SP, {R0-R3}
0000b104  LDR             R3, [SP,#0x364+var_5C]
0000b108  MOV             LR, LR,ASR#16
0000b10c  STR             R3, [SP,#0x364+var_364]
0000b110  LDR             R3, [SP,#0x364+var_60]
0000b114  MOV             R12, R12,ASR#16
0000b118  B               loc_B1EC
0000b11c  LDR             R1, [SP,#0x364+var_7C]
0000b120  LDR             R0, [SP,#0x364+var_58]
0000b124  MUL             R1, R4, R1
0000b128  BL              sub_104
0000b12c  LDR             R1, [SP,#0x364+var_80]
0000b130  STR             R0, [SP,#0x364+var_7C]
0000b134  LDR             R0, [SP,#0x364+var_58]
0000b138  MUL             R1, R4, R1
0000b13c  BL              sub_104
0000b140  ADD             R1, R11, R11,LSR#31
0000b144  MOV             R1, R1,ASR#1
0000b148  MOV             R1, R1,LSL#16
0000b14c  MOV             R1, R1,ASR#16
0000b150  STR             R1, [SP,#0x364+var_64]
0000b154  ADD             R1, R10, R10,LSR#31
0000b158  MOV             R1, R1,ASR#1
0000b15c  MOV             R1, R1,LSL#16
0000b160  MOV             R1, R1,ASR#16
0000b164  STR             R1, [SP,#0x364+var_68]
0000b168  ADD             R0, R0, R0,LSL#1
0000b16c  ADD             R0, R0, R7
0000b170  MOV             R1, R11,ASR#31
0000b174  ADD             R1, R11, R1,LSR#30
0000b178  ADD             R0, R0, #2
0000b17c  SUB             R0, R0, R1,ASR#2
0000b180  LDR             R1, [SP,#0x364+var_7C]
0000b184  MOV             R12, R0,LSL#16
0000b188  ADD             R1, R1, R1,LSL#1
0000b18c  ADD             R1, R1, R6
0000b190  MOV             R0, R10,ASR#31
0000b194  ADD             R0, R10, R0,LSR#30
0000b198  ADD             R1, R1, #2
0000b19c  SUB             R0, R1, R0,ASR#2
0000b1a0  MOV             LR, R0,LSL#16
0000b1a4  MOV             R0, R11,LSL#16
0000b1a8  MOV             R0, R0,ASR#16
0000b1ac  ADD             R11, SP, #0x364+var_350
0000b1b0  MOV             R1, #9
0000b1b4  MOV             R3, #0
0000b1b8  MOV             R2, #0x10
0000b1bc  STM             R11, {R0-R3}
0000b1c0  MOV             R3, R10,LSL#16
0000b1c4  LDR             R0, [SP,#0x364+var_33C]
0000b1c8  MOV             R3, R3,ASR#16
0000b1cc  MOV             R2, #0
0000b1d0  MOV             R1, #0
0000b1d4  STMFA           SP, {R0-R3}
0000b1d8  LDR             R3, [SP,#0x364+var_64]
0000b1dc  MOV             LR, LR,ASR#16
0000b1e0  STR             R3, [SP,#0x364+var_364]
0000b1e4  LDR             R3, [SP,#0x364+var_68]
0000b1e8  MOV             R12, R12,ASR#16
0000b1ec  MOV             R2, R12
0000b1f0  MOV             R1, LR
0000b1f4  MOV             R0, R5
0000b1f8  BL              sub_18BC
0000b1fc  LDR             R1, =0x836
0000b200  LDR             R0, [SP,#0x364+var_340]
0000b204  BL              sub_11DD8
0000b208  STR             R0, [SP,#0x364+var_33C]
0000b20c  LDRH            R10, [R0]
0000b210  LDRH            R11, [R0,#2]
0000b214  LDR             R0, [SP,#0x364+var_334]
0000b218  CMP             R0, #0x23 ; '#'
0000b21c  MOVGT           R0, #0x23 ; '#'
0000b220  STRGT           R0, [SP,#0x364+var_334]
0000b224  LDR             R0, [SP,#0x364+var_334]
0000b228  ADD             R1, R0, R0,LSL#1
0000b22c  LDR             R0, =(dword_271B0 - 0xB238)
0000b230  ADD             R0, PC, R0; dword_271B0
0000b234  ADD             R0, R0, R1,LSL#1
0000b238  LDRH            R1, [R0]
0000b23c  LDR             R2, [SP,#0x364+var_338]
0000b240  CMP             R1, R2
0000b244  BNE             loc_B444
0000b248  LDRH            R1, [R0,#2]
0000b24c  LDRH            R2, [R0,#4]
0000b250  CMP             R1, #0
0000b254  CMPNE           R2, #0
0000b258  BEQ             loc_B444
0000b25c  LDR             R0, [SP,#0x364+var_84]
0000b260  RSB             R0, R0, R1,LSL#1
0000b264  LDR             R1, [SP,#0x364+var_88]
0000b268  MUL             R3, R9, R0
0000b26c  RSB             R1, R1, R2,LSL#1
0000b270  MUL             R2, R8, R1
0000b274  SUB             R2, R2, R3
0000b278  MOV             R2, R2,ASR#16
0000b27c  ADD             R2, R2, R2,LSR#31
0000b280  MOV             R2, R2,ASR#1
0000b284  STR             R2, [SP,#0x364+var_7C]
0000b288  RSB             R2, R1, #0
0000b28c  MUL             R2, R9, R2
0000b290  MUL             R3, R8, R0
0000b294  SUB             R2, R2, R3
0000b298  MOV             R2, R2,ASR#16
0000b29c  ADD             R2, R2, R2,LSR#31
0000b2a0  MOV             R2, R2,ASR#1
0000b2a4  STR             R2, [SP,#0x364+var_80]
0000b2a8  BL              sub_1973C
0000b2ac  ADD             R0, R0, R0,LSL#1
0000b2b0  ADD             R0, R0, R0,LSR#31
0000b2b4  MOV             R0, R0,ASR#1
0000b2b8  STR             R0, [SP,#0x364+var_6C]
0000b2bc  CMP             R0, R4
0000b2c0  BGE             loc_B368
0000b2c4  ADD             R0, R11, R11,LSR#31
0000b2c8  MOV             R0, R0,ASR#1
0000b2cc  MOV             R0, R0,LSL#16
0000b2d0  MOV             R0, R0,ASR#16
0000b2d4  STR             R0, [SP,#0x364+var_70]
0000b2d8  LDR             R2, [SP,#0x364+var_80]
0000b2dc  ADD             R0, R10, R10,LSR#31
0000b2e0  MOV             R0, R0,ASR#1
0000b2e4  ADD             R1, R2, R2,LSL#1
0000b2e8  MOV             R12, R0,LSL#16
0000b2ec  MOV             R0, R11,ASR#31
0000b2f0  ADD             R1, R1, R7
0000b2f4  ADD             R1, R1, #2
0000b2f8  ADD             R0, R11, R0,LSR#30
0000b2fc  SUB             R0, R1, R0,ASR#2
0000b300  LDR             R1, [SP,#0x364+var_7C]
0000b304  MOV             LR, R0,LSL#16
0000b308  ADD             R1, R1, R1,LSL#1
0000b30c  ADD             R1, R1, R6
0000b310  MOV             R0, R10,ASR#31
0000b314  ADD             R0, R10, R0,LSR#30
0000b318  ADD             R1, R1, #2
0000b31c  SUB             R0, R1, R0,ASR#2
0000b320  MOV             R4, R0,LSL#16
0000b324  MOV             R0, R11,LSL#16
0000b328  MOV             R0, R0,ASR#16
0000b32c  ADD             R11, SP, #0x364+var_350
0000b330  MOV             R1, #1
0000b334  MOV             R2, #0
0000b338  MOV             R3, #0
0000b33c  STM             R11, {R0-R3}
0000b340  MOV             R3, R10,LSL#16
0000b344  LDR             R0, [SP,#0x364+var_33C]
0000b348  MOV             R3, R3,ASR#16
0000b34c  MOV             R1, #0
0000b350  STMFA           SP, {R0-R3}
0000b354  LDR             R3, [SP,#0x364+var_70]
0000b358  MOV             R4, R4,ASR#16
0000b35c  MOV             LR, LR,ASR#16
0000b360  MOV             R12, R12,ASR#16
0000b364  B               loc_B42C
0000b368  LDR             R1, [SP,#0x364+var_7C]
0000b36c  LDR             R0, [SP,#0x364+var_6C]
0000b370  MUL             R1, R4, R1
0000b374  BL              sub_104
0000b378  LDR             R2, [SP,#0x364+var_80]
0000b37c  STR             R0, [SP,#0x364+var_7C]
0000b380  LDR             R0, [SP,#0x364+var_6C]
0000b384  MUL             R1, R4, R2
0000b388  BL              sub_104
0000b38c  ADD             R1, R11, R11,LSR#31
0000b390  MOV             R1, R1,ASR#1
0000b394  MOV             R1, R1,LSL#16
0000b398  MOV             R1, R1,ASR#16
0000b39c  STR             R1, [SP,#0x364+var_74]
0000b3a0  ADD             R1, R10, R10,LSR#31
0000b3a4  MOV             R1, R1,ASR#1
0000b3a8  MOV             R12, R1,LSL#16
0000b3ac  ADD             R0, R0, R0,LSL#1
0000b3b0  ADD             R0, R0, R7
0000b3b4  MOV             R1, R11,ASR#31
0000b3b8  ADD             R1, R11, R1,LSR#30
0000b3bc  ADD             R0, R0, #2
0000b3c0  SUB             R0, R0, R1,ASR#2
0000b3c4  LDR             R1, [SP,#0x364+var_7C]
0000b3c8  MOV             LR, R0,LSL#16
0000b3cc  ADD             R1, R1, R1,LSL#1
0000b3d0  ADD             R1, R1, R6
0000b3d4  MOV             R0, R10,ASR#31
0000b3d8  ADD             R0, R10, R0,LSR#30
0000b3dc  ADD             R1, R1, #2
0000b3e0  SUB             R0, R1, R0,ASR#2
0000b3e4  MOV             R4, R0,LSL#16
0000b3e8  MOV             R0, R11,LSL#16
0000b3ec  MOV             R0, R0,ASR#16
0000b3f0  ADD             R11, SP, #0x364+var_350
0000b3f4  MOV             R1, #9
0000b3f8  MOV             R3, #0
0000b3fc  MOV             R2, #0x10
0000b400  STM             R11, {R0-R3}
0000b404  MOV             R3, R10,LSL#16
0000b408  LDR             R0, [SP,#0x364+var_33C]
0000b40c  MOV             R3, R3,ASR#16
0000b410  MOV             R2, #0
0000b414  MOV             R1, #0
0000b418  STMFA           SP, {R0-R3}
0000b41c  LDR             R3, [SP,#0x364+var_74]
0000b420  MOV             R4, R4,ASR#16
0000b424  MOV             LR, LR,ASR#16
0000b428  MOV             R12, R12,ASR#16
0000b42c  STR             R3, [SP,#0x364+var_364]
0000b430  MOV             R3, R12
0000b434  MOV             R2, LR
0000b438  MOV             R1, R4
0000b43c  MOV             R0, R5
0000b440  BL              sub_18BC
0000b444  LDR             R3, =0xFFE0
0000b448  MOV             R1, #0
0000b44c  STMEA           SP, {R1,R3}
0000b450  STR             R3, [SP,#0x364+var_35C]
0000b454  ADD             R2, SP, #0x364+var_18
0000b458  LDM             R2, {R1,R2}
0000b45c  MOV             R3, #3
0000b460  MOV             R0, R5
0000b464  BL              sub_10434
0000b468  LDR             R3, =0xFFE0
0000b46c  MOV             R1, #0
0000b470  MOV             R0, #0x14
0000b474  STMEA           SP, {R0,R1,R3}
0000b478  SUB             R0, R7, #0x14
0000b47c  MOV             R2, R0,LSL#16
0000b480  STR             R3, [SP,#0x364+var_358]
0000b484  LDR             R1, [SP,#0x364+var_18]
0000b488  MOV             R3, #1
0000b48c  MOV             R2, R2,ASR#16
0000b490  MOV             R0, R5
0000b494  BL              sub_10C58
0000b498  SUB             R4, R6, #0x19
0000b49c  MOV             R1, R4,LSL#16
0000b4a0  MOV             R3, #0
0000b4a4  STR             R3, [SP,#0x364+var_364]
0000b4a8  MOV             R1, R1,ASR#16
0000b4ac  MOV             R6, R1
0000b4b0  MOV             R3, #0xA
0000b4b4  MOV             R0, R5
0000b4b8  LDR             R2, [SP,#0x364+var_14]
0000b4bc  BL              sub_64E0
0000b4c0  MOV             R3, #0
0000b4c4  LDR             R2, =0xFFFF
0000b4c8  MOV             R1, #1
0000b4cc  STMEA           SP, {R1-R3}
0000b4d0  LDR             R2, [SP,#0x364+var_14]
0000b4d4  MOV             R3, #9
0000b4d8  MOV             R1, R6
0000b4dc  MOV             R0, R5
0000b4e0  BL              sub_10434
0000b4e4  MOV             R0, R8,LSL#3
0000b4e8  MOV             R6, R0,ASR#16
0000b4ec  MOV             R0, R9,LSL#3
0000b4f0  MOV             R10, R0,ASR#16
0000b4f4  ADD             R0, R9, R9,LSL#1
0000b4f8  MOV             R12, R0,ASR#16
0000b4fc  ADD             R0, R8, R8,LSL#1
0000b500  MOV             R0, R0,ASR#16
0000b504  RSB             LR, R0, #0
0000b508  SUB             R0, R7, LR
0000b50c  MOV             R0, R0,LSL#16
0000b510  MOV             R0, R0,ASR#16
0000b514  STR             R0, [SP,#0x364+var_78]
0000b518  ADD             R8, SP, #0x364+var_35C
0000b51c  MOV             R3, #0xF800
0000b520  MOV             R2, #0
0000b524  MOV             R1, #0
0000b528  STM             R8, {R0-R3}
0000b52c  SUB             R0, R4, R12
0000b530  MOV             R3, R0,LSL#16
0000b534  ADD             R0, R7, LR
0000b538  MOV             R2, R0,LSL#16
0000b53c  MOV             R3, R3,ASR#16
0000b540  MOV             R2, R2,ASR#16
0000b544  ADD             R0, R4, R12
0000b548  MOV             R8, R0,LSL#16
0000b54c  STMEA           SP, {R2,R3}
0000b550  ADD             R0, R7, R10
0000b554  MOV             R11, R2
0000b558  MOV             R2, R0,LSL#16
0000b55c  ADD             R0, R4, R6
0000b560  MOV             R1, R0,LSL#16
0000b564  MOV             R8, R8,ASR#16
0000b568  MOV             R9, R3
0000b56c  MOV             R3, R8
0000b570  MOV             R1, R1,ASR#16
0000b574  MOV             R0, R5
0000b578  MOV             R2, R2,ASR#16
0000b57c  BL              sub_1165C
0000b580  LDR             R0, [SP,#0x364+var_78]
0000b584  MOV             R3, #0x7E0
0000b588  MOV             R2, #0
0000b58c  MOV             R1, #0
0000b590  ADD             R12, SP, #0x364+var_35C
0000b594  STM             R12, {R0-R3}
0000b598  SUB             R0, R7, R10
0000b59c  MOV             R2, R0,LSL#16
0000b5a0  SUB             R0, R4, R6
0000b5a4  MOV             R1, R0,LSL#16
0000b5a8  MOV             R1, R1,ASR#16
0000b5ac  MOV             R0, R5
0000b5b0  MOV             R2, R2,ASR#16
0000b5b4  STR             R9, [SP,#0x364+var_360]
0000b5b8  STR             R11, [SP,#0x364+var_364]
0000b5bc  MOV             R3, R8
0000b5c0  BL              sub_1165C
0000b5c4  ADD             SP, SP, #0x364
0000b5c8  POP             {R4-R11,LR}
0000b5cc  BX              LR
