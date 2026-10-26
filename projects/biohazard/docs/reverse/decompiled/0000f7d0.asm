0000f7d0  PUSH            {R4-R11,LR}
0000f7d4  MOV             R5, R0
0000f7d8  LDRSH           R0, [R1,#0x10]
0000f7dc  SUB             SP, SP, #0x29C
0000f7e0  MOV             R7, R2
0000f7e4  STR             R0, [SP,#0x29C+var_130]
0000f7e8  LDRSH           R2, [R1,#0x12]
0000f7ec  MOV             R10, R1
0000f7f0  ADD             R12, SP, #0x29C+var_9C
0000f7f4  STR             R2, [SP,#0x29C+var_134]
0000f7f8  LDRB            R0, [R5,#0xC]
0000f7fc  LDRH            R1, [R5,#0x9A]
0000f800  LDR             R4, =(start - 0xF878)
0000f804  LDRH            R0, [R5,#0x92]
0000f808  MOV             R11, R3
0000f80c  ADD             R0, R0, R1
0000f810  LDRH            R1, [R5,#0x76]
0000f814  ADD             R0, R0, R1
0000f818  STRH            R0, [R12,#0x80]
0000f81c  LDRH            R0, [R5,#0x94]
0000f820  LDRH            R1, [R5,#0x9C]
0000f824  ADD             R0, R0, R1
0000f828  LDRH            R1, [R5,#0x78]
0000f82c  ADD             R0, R0, R1
0000f830  STRH            R0, [R12,#0x82]
0000f834  LDRH            R0, [R5,#0x9A]
0000f838  LDRH            R1, [R5,#0x76]
0000f83c  ADD             R0, R0, R1
0000f840  LDRH            R1, [R5,#0x96]
0000f844  SUB             R0, R1, R0,LSL#1
0000f848  STRH            R0, [R12,#0x84]
0000f84c  LDRH            R0, [R5,#0x9C]
0000f850  LDRH            R1, [R5,#0x78]
0000f854  ADD             R0, R0, R1
0000f858  LDRH            R1, [R5,#0x98]
0000f85c  SUB             R0, R1, R0,LSL#1
0000f860  STRH            R0, [R12,#0x86]
0000f864  ADD             R1, R5, #0x100
0000f868  STR             R1, [SP,#0x29C+var_4]
0000f86c  LDRH            R0, [R1,#0x2E]
0000f870  ADD             R4, PC, R4; start
0000f874  CMP             R0, #1
0000f878  BNE             loc_FA38
0000f87c  LDRH            R0, [R5,#0x92]
0000f880  STRH            R0, [R12,#0x78]
0000f884  LDRH            R0, [R5,#0x96]
0000f888  STRH            R0, [R12,#0x7C]
0000f88c  LDRH            R0, [R5,#0x94]
0000f890  STRH            R0, [R12,#0x7A]
0000f894  LDRH            R0, [R5,#0x98]
0000f898  STRH            R0, [R12,#0x7E]
0000f89c  LDR             R1, [SP,#0x29C+var_4]
0000f8a0  LDRSH           R0, [R1,#0x32]
0000f8a4  CMP             R0, #0
0000f8a8  BEQ             loc_FA78
0000f8ac  LDR             R9, =(aT00000Hffff00S - 0xF8B8); "$T00000$Hffff00%s"
0000f8b0  ADD             R9, PC, R9; "$T00000$Hffff00%s"
0000f8b4  CMP             R0, #1
0000f8b8  BEQ             loc_FAF8
0000f8bc  CMP             R0, #2
0000f8c0  BNE             loc_FA38
0000f8c4  LDR             R1, [R5,#0x7C]
0000f8c8  CMP             R1, #0
0000f8cc  BLT             loc_F934
0000f8d0  MOV             R0, R7
0000f8d4  BL              sub_11DD8
0000f8d8  MOVS            R12, R0
0000f8dc  BEQ             loc_F934
0000f8e0  LDRH            R0, [R5,#0x94]
0000f8e4  LDRH            R1, [R12,#2]
0000f8e8  MOV             R3, #0
0000f8ec  MOV             R2, #0
0000f8f0  SUB             R0, R0, R1
0000f8f4  SUB             R0, R0, #0x14
0000f8f8  MOV             R6, R0,LSL#16
0000f8fc  MOV             R0, #0
0000f900  MOV             R1, #1
0000f904  ADD             R8, SP, #0x29C+var_290
0000f908  STM             R8, {R0-R3}
0000f90c  LDRSH           R1, [R12,#2]
0000f910  MOV             R6, R6,ASR#16
0000f914  MOV             LR, #0
0000f918  STMEA           SP, {R1,R12}
0000f91c  STR             R3, [SP,#0x29C+var_294]
0000f920  LDRSH           R3, [R12]
0000f924  MOV             R1, LR
0000f928  MOV             R2, R6
0000f92c  MOV             R0, R10
0000f930  BL              sub_3324
0000f934  LDR             R0, [R4,#(dword_8 - 0xC)]
0000f938  LDR             R8, [R11,#0x64]
0000f93c  LDR             R0, [R0,#0xC0]
0000f940  MOV             LR, PC
0000f944  BX              R0
0000f948  LDR             R0, [R0,#0x760]
0000f94c  MOV             R2, #8
0000f950  LDR             R6, [R0,#0x188]
0000f954  MOV             R1, #3
0000f958  MOV             R0, R6
0000f95c  BL              sub_103F4
0000f960  LDRH            R0, [R10]
0000f964  MOV             R0, R0,LSR#1
0000f968  STRH            R0, [R6,#0xE]
0000f96c  LDRH            R0, [R10,#2]
0000f970  STRH            R0, [R6,#0x10]
0000f974  MOV             R0, #3
0000f978  STRH            R0, [R6,#8]
0000f97c  MOV             R0, R6
0000f980  BL              sub_21BA8
0000f984  MOV             R2, R7
0000f988  MOV             R1, R10
0000f98c  MOV             R0, R6
0000f990  BL              sub_1CE08
0000f994  MOV             R0, #0
0000f998  ADD             R12, SP, #0x29C+var_19C
0000f99c  STRH            R0, [R12,#0x60]
0000f9a0  STRH            R0, [R12,#0x62]
0000f9a4  LDRH            R0, [R10]
0000f9a8  STRH            R0, [R12,#0x64]
0000f9ac  LDRH            R0, [R10,#2]
0000f9b0  STRH            R0, [R12,#0x66]
0000f9b4  LDR             R1, [SP,#0x29C+var_4]
0000f9b8  LDRSH           R1, [R1,#0x30]
0000f9bc  CMP             R1, #0
0000f9c0  BLE             loc_FA38
0000f9c4  MOV             R3, #0x80
0000f9c8  ADD             R2, SP, #0x29C+var_1BC
0000f9cc  MOV             R0, R11
0000f9d0  BL              sub_19618
0000f9d4  LDR             R0, [R4,#(dword_8 - 0xC)]
0000f9d8  ADD             R3, SP, #0x29C+var_1BC
0000f9dc  LDR             R12, [R0,#0x3C]
0000f9e0  ADD             R0, SP, #0x29C+var_27C
0000f9e4  MOV             R2, R9
0000f9e8  MOV             R1, #0xC0
0000f9ec  MOV             LR, PC
0000f9f0  BX              R12
0000f9f4  MOV             R3, #0
0000f9f8  MOV             R2, #2
0000f9fc  MOV             R1, #0
0000fa00  MOV             R0, #0xE
0000fa04  ADD             R6, SP, #0x29C+var_28C
0000fa08  STM             R6, {R0-R3}
0000fa0c  ADD             R0, SP, #0x29C+var_27C
0000fa10  MOV             R2, #0
0000fa14  STMEA           SP, {R0-R3}
0000fa18  LDRH            R0, [R5,#0x94]
0000fa1c  ADD             R3, SP, #0x29C+var_13C
0000fa20  MOV             R1, R10
0000fa24  SUB             R0, R0, #0x10
0000fa28  MOV             R2, R0,LSL#16
0000fa2c  MOV             R2, R2,ASR#16
0000fa30  MOV             R0, R8
0000fa34  BL              sub_98BC
0000fa38  ADD             R12, SP, #0x29C+var_9C
0000fa3c  LDRH            R0, [R12,#0x82]
0000fa40  LDR             R1, [SP,#0x29C+var_4]
0000fa44  LDRH            R1, [R1,#0x26]
0000fa48  SUB             R0, R0, R1
0000fa4c  MOV             R8, R0,LSL#16
0000fa50  MOV             R1, #0
0000fa54  STR             R1, [SP,#0x29C+var_14]
0000fa58  LDR             R2, [SP,#0x29C+var_134]
0000fa5c  MOV             R0, #0
0000fa60  STR             R0, [SP,#0x29C+var_12C]
0000fa64  ADD             R0, R2, R2,LSR#31
0000fa68  MOV             R2, R0,ASR#1
0000fa6c  STR             R2, [SP,#0x29C+var_8]
0000fa70  MOV             R8, R8,ASR#16
0000fa74  B               loc_100E8
0000fa78  LDR             R1, =0x138A
0000fa7c  MOV             R0, R7
0000fa80  BL              sub_11DD8
0000fa84  MOVS            R12, R0
0000fa88  BEQ             loc_FA38
0000fa8c  LDRSH           R0, [R12,#2]
0000fa90  MOV             R3, #0
0000fa94  MOV             R2, #0
0000fa98  MOV             R1, #1
0000fa9c  ADD             R6, SP, #0x29C+var_288
0000faa0  STM             R6, {R0-R3}
0000faa4  LDRSH           R3, [R12]
0000faa8  ADD             R0, SP, #0x29C+var_294
0000faac  MOV             R1, #0
0000fab0  STM             R0, {R1-R3}
0000fab4  MOV             R3, #0x23 ; '#'
0000fab8  STMEA           SP, {R3,R12}
0000fabc  LDRH            R0, [R10]
0000fac0  MOV             R1, #0xC
0000fac4  MOV             R2, #0xFFFFFFEF
0000fac8  ADD             R1, R1, R0,LSR#1
0000facc  MOV             R3, R1,LSL#16
0000fad0  LDRH            R1, [R10,#2]
0000fad4  MOV             R3, R3,ASR#16
0000fad8  ADD             R1, R2, R1,LSR#1
0000fadc  MOV             R2, R1,LSL#16
0000fae0  MOV             R1, #0xFFFFFFFA
0000fae4  ADD             R1, R1, R0,LSR#2
0000fae8  MOV             R0, R10
0000faec  MOV             R2, R2,ASR#16
0000faf0  BL              sub_18BC
0000faf4  B               loc_FA38
0000faf8  LDR             R0, [R4,#(dword_8 - 0xC)]
0000fafc  LDR             R8, [R11,#0x64]
0000fb00  LDR             R0, [R0,#0xC0]
0000fb04  MOV             LR, PC
0000fb08  BX              R0
0000fb0c  LDR             R0, [R0,#0x760]
0000fb10  MOV             R2, #8
0000fb14  LDR             R6, [R0,#0x188]
0000fb18  MOV             R1, #3
0000fb1c  MOV             R0, R6
0000fb20  BL              sub_103F4
0000fb24  MOV             R0, #0x78 ; 'x'
0000fb28  STRH            R0, [R6,#0xE]
0000fb2c  LDRH            R0, [R10,#2]
0000fb30  MOV             R0, R0,LSR#1
0000fb34  STRH            R0, [R6,#0x10]
0000fb38  MOV             R0, #5
0000fb3c  STRH            R0, [R6,#8]
0000fb40  MOV             R0, R6
0000fb44  BL              sub_21BA8
0000fb48  MOV             R2, R7
0000fb4c  MOV             R1, R10
0000fb50  MOV             R0, R6
0000fb54  BL              sub_1CE08
0000fb58  MOV             R0, #0
0000fb5c  ADD             R12, SP, #0x29C+var_19C
0000fb60  STRH            R0, [R12,#0x60]
0000fb64  STRH            R0, [R12,#0x62]
0000fb68  LDRH            R0, [R10]
0000fb6c  STRH            R0, [R12,#0x64]
0000fb70  LDRH            R0, [R10,#2]
0000fb74  STRH            R0, [R12,#0x66]
0000fb78  LDR             R1, [SP,#0x29C+var_4]
0000fb7c  LDRSH           R1, [R1,#0x30]
0000fb80  CMP             R1, #0
0000fb84  BLE             loc_FBFC
0000fb88  MOV             R3, #0x80
0000fb8c  ADD             R2, SP, #0x29C+var_1BC
0000fb90  MOV             R0, R11
0000fb94  BL              sub_19618
0000fb98  LDR             R0, [R4,#(dword_8 - 0xC)]
0000fb9c  ADD             R3, SP, #0x29C+var_1BC
0000fba0  LDR             R12, [R0,#0x3C]
0000fba4  ADD             R0, SP, #0x29C+var_27C
0000fba8  MOV             R2, R9
0000fbac  MOV             R1, #0xC0
0000fbb0  MOV             LR, PC
0000fbb4  BX              R12
0000fbb8  MOV             R3, #0
0000fbbc  MOV             R2, #2
0000fbc0  MOV             R1, #0
0000fbc4  MOV             R0, #0x46 ; 'F'
0000fbc8  ADD             R6, SP, #0x29C+var_28C
0000fbcc  STM             R6, {R0-R3}
0000fbd0  ADD             R0, SP, #0x29C+var_27C
0000fbd4  MOV             R2, #0
0000fbd8  STMEA           SP, {R0-R3}
0000fbdc  LDRH            R0, [R5,#0x94]
0000fbe0  ADD             R3, SP, #0x29C+var_13C
0000fbe4  MOV             R1, R10
0000fbe8  SUB             R0, R0, #0x10
0000fbec  MOV             R2, R0,LSL#16
0000fbf0  MOV             R2, R2,ASR#16
0000fbf4  MOV             R0, R8
0000fbf8  BL              sub_98BC
0000fbfc  LDR             R1, [R5,#0x7C]
0000fc00  CMP             R1, #0
0000fc04  BLT             loc_FA38
0000fc08  MOV             R0, R7
0000fc0c  BL              sub_11DD8
0000fc10  MOVS            R12, R0
0000fc14  BEQ             loc_FA38
0000fc18  LDRH            R0, [R5,#0x94]
0000fc1c  LDRH            R1, [R5,#0x98]
0000fc20  MOV             R3, #0
0000fc24  MOV             R2, #0
0000fc28  ADD             R0, R0, R1
0000fc2c  LDRH            R1, [R12,#2]
0000fc30  ADD             R7, SP, #0x29C+var_290
0000fc34  MOV             LR, #5
0000fc38  SUB             R0, R0, R1
0000fc3c  ADD             R0, R0, #0x19
0000fc40  MOV             R6, R0,LSL#16
0000fc44  MOV             R0, #0
0000fc48  MOV             R1, #1
0000fc4c  STM             R7, {R0-R3}
0000fc50  LDRSH           R1, [R12,#2]
0000fc54  MOV             R6, R6,ASR#16
0000fc58  MOV             R2, R6
0000fc5c  STMEA           SP, {R1,R12}
0000fc60  STR             R3, [SP,#0x29C+var_294]
0000fc64  LDRSH           R3, [R12]
0000fc68  MOV             R1, LR
0000fc6c  MOV             R0, R10
0000fc70  BL              sub_3324
0000fc74  B               loc_FA38
0000fc78  LDR             R1, [SP,#0x29C+var_14]
0000fc7c  ADD             R0, R5, R1,LSL#2
0000fc80  LDR             R1, [R0,#0xA0]
0000fc84  CMP             R1, #0
0000fc88  BEQ             loc_100D4
0000fc8c  LDR             R1, [SP,#0x29C+var_14]
0000fc90  ADD             R1, R5, R1
0000fc94  STR             R1, [SP,#0x29C+var_C]
0000fc98  LDRB            R1, [R1,#0x54]
0000fc9c  CMP             R1, #1
0000fca0  MOV             R1, #1
0000fca4  STR             R1, [SP,#0x29C+var_138]
0000fca8  RSBNE           R1, R1, R1,LSL#16
0000fcac  MOVEQ           R1, #0x7E0
0000fcb0  STR             R1, [SP,#0x29C+var_13C]
0000fcb4  MOV             R1, #0
0000fcb8  STR             R1, [SP,#0x29C+var_140]
0000fcbc  LDR             R1, [SP,#0x29C+var_4]
0000fcc0  LDRH            R1, [R1,#0x2E]
0000fcc4  CMP             R1, #1
0000fcc8  MOVEQ           R1, #0
0000fccc  STREQ           R1, [SP,#0x29C+var_138]
0000fcd0  LDREQ           R1, =0xFFFF
0000fcd4  STREQ           R1, [SP,#0x29C+var_13C]
0000fcd8  MOVEQ           R1, #0
0000fcdc  STREQ           R1, [SP,#0x29C+var_140]
0000fce0  LDR             R1, [SP,#0x29C+var_138]
0000fce4  STR             R1, [SP,#0x29C+var_144]
0000fce8  LDR             R1, [SP,#0x29C+var_13C]
0000fcec  STR             R1, [SP,#0x29C+var_148]
0000fcf0  LDR             R1, [SP,#0x29C+var_140]
0000fcf4  STR             R1, [SP,#0x29C+var_14C]
0000fcf8  LDR             R1, [R0,#0xA0]
0000fcfc  MOV             R0, #0
0000fd00  MOV             R9, R1
0000fd04  ADD             R2, R1, R0,LSL#1
0000fd08  LDRH            R2, [R2]
0000fd0c  CMP             R2, #0
0000fd10  ADDNE           R0, R0, #1
0000fd14  MOVNE           R0, R0,LSL#16
0000fd18  MOVNE           R0, R0,ASR#16
0000fd1c  BNE             loc_FD04
0000fd20  ADD             R0, R9, R0,LSL#1
0000fd24  STR             R0, [SP,#0x29C+var_128]
0000fd28  B               loc_100C8
0000fd2c  LDR             R0, [SP,#0x29C+var_128]
0000fd30  MOV             R4, #0
0000fd34  SUB             R0, R0, R9
0000fd38  STR             R0, [SP,#0x29C+var_10]
0000fd3c  MOV             R6, #0
0000fd40  MOV             R7, #0
0000fd44  B               loc_FE54
0000fd48  ADD             R0, R9, R4,LSL#1
0000fd4c  LDRH            R1, [R0]
0000fd50  CMP             R1, #0x24 ; '$'
0000fd54  BNE             loc_FDB4
0000fd58  LDRH            R1, [R0,#2]
0000fd5c  CMP             R1, #0x6E ; 'n'
0000fd60  CMPNE           R1, #0x4E ; 'N'
0000fd64  ADDEQ           R0, R4, #2
0000fd68  BEQ             loc_FE30
0000fd6c  CMP             R1, #0x74 ; 't'
0000fd70  CMPNE           R1, #0x54 ; 'T'
0000fd74  BNE             loc_FD94
0000fd78  MOV             R1, #0
0000fd7c  STR             R1, [SP,#0x29C+var_144]
0000fd80  ADD             R1, SP, #0x29C+var_144
0000fd84  ADD             R0, R0, #4
0000fd88  BL              sub_12D60
0000fd8c  ADD             R0, R4, #6
0000fd90  B               loc_FDA8
0000fd94  ADD             R0, R0, #2
0000fd98  ADD             R2, SP, #0x29C+var_14C
0000fd9c  ADD             R1, SP, #0x29C+var_148
0000fda0  BL              sub_12C54
0000fda4  ADD             R0, R4, #7
0000fda8  MOV             R4, R0,LSL#16
0000fdac  MOV             R4, R4,ASR#16
0000fdb0  B               loc_FE3C
0000fdb4  CMP             R1, #0xFF
0000fdb8  LDRCC           R2, [SP,#0x29C+var_8]
0000fdbc  LDRH            R1, [R5,#0x9E]
0000fdc0  LDRCS           R2, [SP,#0x29C+var_134]
0000fdc4  ADD             R12, SP, #0x29C+var_9C
0000fdc8  ADDCS           R1, R1, R2
0000fdcc  ADDCC           R1, R2, R1
0000fdd0  ADD             R1, R1, R6
0000fdd4  MOV             R6, R1,LSL#16
0000fdd8  LDRSH           R1, [R12,#0x84]
0000fddc  MOV             R6, R6,ASR#16
0000fde0  CMP             R1, R6
0000fde4  MOVLT           R7, R4
0000fde8  BLT             loc_FE70
0000fdec  LDRH            R0, [R0,#2]
0000fdf0  CMP             R0, #0xFF
0000fdf4  BCS             loc_FE14
0000fdf8  LDR             R2, [SP,#0x29C+var_8]
0000fdfc  ADD             R12, SP, #0x29C+var_9C
0000fe00  LDRSH           R1, [R12,#0x84]
0000fe04  ADD             R0, R2, R6
0000fe08  CMP             R0, R1
0000fe0c  BLE             loc_FE3C
0000fe10  B               loc_FE2C
0000fe14  LDR             R2, [SP,#0x29C+var_134]
0000fe18  ADD             R12, SP, #0x29C+var_9C
0000fe1c  LDRSH           R1, [R12,#0x84]
0000fe20  ADD             R0, R6, R2
0000fe24  CMP             R0, R1
0000fe28  BLE             loc_FE3C
0000fe2c  ADD             R0, R4, #1
0000fe30  MOV             R7, R0,LSL#16
0000fe34  MOV             R7, R7,ASR#16
0000fe38  B               loc_FE70
0000fe3c  ADD             R0, R4, #1
0000fe40  MOV             R7, R0,LSL#16
0000fe44  ADD             R0, R4, #1
0000fe48  MOV             R4, R0,LSL#16
0000fe4c  MOV             R4, R4,ASR#16
0000fe50  MOV             R7, R7,ASR#16
0000fe54  LDR             R0, [SP,#0x29C+var_10]
0000fe58  CMP             R4, R0,ASR#1
0000fe5c  BGE             loc_FE70
0000fe60  ADD             R12, SP, #0x29C+var_9C
0000fe64  LDRSH           R0, [R12,#0x84]
0000fe68  CMP             R0, R6
0000fe6c  BGT             loc_FD48
0000fe70  LDR             R4, =(start - 0xFE7C)
0000fe74  ADD             R4, PC, R4; start
0000fe78  LDR             R0, [R4,#(dword_8 - 0xC)]
0000fe7c  MOV             R2, #0x100
0000fe80  LDR             R3, [R0,#4]
0000fe84  ADD             R0, SP, #0x29C+var_124
0000fe88  MOV             R1, #0
0000fe8c  MOV             LR, PC
0000fe90  BX              R3
0000fe94  LDR             R0, [SP,#0x29C+var_10]
0000fe98  MOV             R1, R9
0000fe9c  CMP             R7, R0,ASR#1
0000fea0  LDRGE           R0, [SP,#0x29C+var_10]
0000fea4  ADR             LR, loc_FEC8
0000fea8  MOVGE           R0, R0,ASR#1
0000feac  MOVGE           R7, R0,LSL#16
0000feb0  LDR             R0, [R4,#(dword_8 - 0xC)]
0000feb4  MOVGE           R7, R7,ASR#16
0000feb8  LDR             R3, [R0]
0000febc  ADD             R0, SP, #0x29C+var_124
0000fec0  MOV             R2, R7,LSL#1
0000fec4  BX              R3
0000fec8  ADD             R12, SP, #0x29C+var_9C
0000fecc  LDRSH           R0, [R12,#0x82]
0000fed0  LDRSH           R1, [R12,#0x86]
0000fed4  ADD             R0, R0, R1
0000fed8  CMP             R0, R8
0000fedc  LDRGT           R0, [SP,#0x29C+var_130]
0000fee0  LDRSHGT         R1, [R12,#0x82]
0000fee4  ADDGT           R0, R8, R0
0000fee8  CMPGT           R0, R1
0000feec  LDRGT           R0, [R11,#0x64]
0000fef0  ADDGT           R12, SP, #0x29C+var_9C
0000fef4  LDRHGT          R1, [R0,#0x30]
0000fef8  LDRSHGT         R2, [R12,#0x82]
0000fefc  ADDGT           R1, R1, R8
0000ff00  CMPGT           R1, R2
0000ff04  BLE             loc_10070
0000ff08  LDRB            R1, [R5,#0x124]
0000ff0c  CMP             R1, #1
0000ff10  ADDEQ           R12, SP, #0x29C+var_9C
0000ff14  LDRSHEQ         R4, [R12,#0x80]
0000ff18  BEQ             loc_FF84
0000ff1c  LDRSH           R2, [R5,#0x9E]
0000ff20  ADD             R1, SP, #0x29C+var_124
0000ff24  BL              sub_12BC8
0000ff28  LDRH            R1, [R5,#0x9E]
0000ff2c  ADD             R12, SP, #0x29C+var_9C
0000ff30  SUB             R0, R0, R1
0000ff34  LDRSH           R1, [R12,#0x84]
0000ff38  MOV             R0, R0,LSL#16
0000ff3c  MOV             R0, R0,ASR#16
0000ff40  CMP             R1, R0
0000ff44  BGE             loc_FF68
0000ff48  LDRSH           R2, [R5,#0x9E]
0000ff4c  LDR             R0, [R11,#0x64]
0000ff50  ADD             R1, SP, #0x29C+var_124
0000ff54  BL              sub_12BC8
0000ff58  LDRH            R1, [R5,#0x9E]
0000ff5c  SUB             R0, R0, R1
0000ff60  MOV             R0, R0,LSL#16
0000ff64  MOV             R0, R0,ASR#16
0000ff68  ADD             R12, SP, #0x29C+var_9C
0000ff6c  LDRH            R1, [R12,#0x80]
0000ff70  LDRSH           R2, [R12,#0x84]
0000ff74  SUB             R0, R2, R0
0000ff78  ADD             R0, R1, R0,ASR#1
0000ff7c  MOV             R4, R0,LSL#16
0000ff80  MOV             R4, R4,ASR#16
0000ff84  LDR             R0, [SP,#0x29C+var_C]
0000ff88  LDRB            R0, [R0,#0x54]
0000ff8c  CMP             R0, #1
0000ff90  BNE             loc_FFD8
0000ff94  ADD             R0, R4, #1
0000ff98  MOV             R0, R0,LSL#16
0000ff9c  LDRSH           R1, [R5,#0x9E]
0000ffa0  MOV             R0, R0,ASR#16
0000ffa4  ADD             R4, SP, #0x29C+var_28C
0000ffa8  MOV             R3, #0
0000ffac  MOV             R2, #0
0000ffb0  STM             R4, {R0-R3}
0000ffb4  ADD             R3, SP, #0x29C+var_140
0000ffb8  ADD             R2, SP, #0x29C+var_13C
0000ffbc  ADD             R0, SP, #0x29C+var_124
0000ffc0  ADD             R1, SP, #0x29C+var_138
0000ffc4  STMEA           SP, {R0-R3}
0000ffc8  LDR             R0, [R11,#0x64]
0000ffcc  ADD             R3, SP, #0x29C+var_1C
0000ffd0  MOV             R2, R8
0000ffd4  B               loc_10068
0000ffd8  LDRB            R0, [R5]
0000ffdc  CMP             R0, #0
0000ffe0  BEQ             loc_10020
0000ffe4  LDRSH           R0, [R5,#2]
0000ffe8  LDR             R1, [SP,#0x29C+var_14]
0000ffec  CMP             R0, R1
0000fff0  BNE             loc_10020
0000fff4  MOV             R1, #0x10
0000fff8  STR             R1, [SP,#0x29C+var_29C]
0000fffc  MOV             R3, #0
00010000  LDR             R2, =loc_FB2C
00010004  STMFA           SP, {R1-R3}
00010008  ADD             R12, SP, #0x29C+var_9C
0001000c  LDRSH           R3, [R12,#0x84]
00010010  MOV             R2, R8
00010014  MOV             R1, R4
00010018  MOV             R0, R10
0001001c  BL              sub_10C58
00010020  ADD             R0, R4, #1
00010024  MOV             R0, R0,LSL#16
00010028  LDRSH           R1, [R5,#0x9E]
0001002c  MOV             R0, R0,ASR#16
00010030  ADD             R4, SP, #0x29C+var_28C
00010034  MOV             R3, #0
00010038  MOV             R2, #0
0001003c  STM             R4, {R0-R3}
00010040  ADD             R3, SP, #0x29C+var_140
00010044  ADD             R1, SP, #0x29C+var_138
00010048  ADD             R2, SP, #0x29C+var_13C
0001004c  ADD             R0, SP, #0x29C+var_124
00010050  STMEA           SP, {R0-R3}
00010054  ADD             R1, R8, #2
00010058  MOV             R2, R1,LSL#16
0001005c  LDR             R0, [R11,#0x64]
00010060  MOV             R2, R2,ASR#16
00010064  ADD             R3, SP, #0x29C+var_1C
00010068  MOV             R1, R10
0001006c  BL              sub_9534
00010070  LDR             R0, [SP,#0x29C+var_144]
00010074  ADD             R9, R9, R7,LSL#1
00010078  STR             R0, [SP,#0x29C+var_138]
0001007c  LDR             R0, [SP,#0x29C+var_148]
00010080  STR             R0, [SP,#0x29C+var_13C]
00010084  LDR             R0, [SP,#0x29C+var_14C]
00010088  STR             R0, [SP,#0x29C+var_140]
0001008c  LDR             R0, [SP,#0x29C+var_C]
00010090  LDRB            R0, [R0,#0x54]
00010094  LDR             R0, [R11,#0x64]
00010098  LDRH            R0, [R0,#0x30]
0001009c  LDR             R1, [SP,#0x29C+var_130]
000100a0  ADD             R0, R0, R8
000100a4  ADD             R0, R0, #4
000100a8  MOV             R8, R0,LSL#16
000100ac  LDR             R0, [SP,#0x29C+var_12C]
000100b0  MOV             R8, R8,ASR#16
000100b4  ADD             R0, R0, R1
000100b8  ADD             R0, R0, #4
000100bc  MOV             R0, R0,LSL#16
000100c0  MOV             R0, R0,ASR#16
000100c4  STR             R0, [SP,#0x29C+var_12C]
000100c8  LDR             R0, [SP,#0x29C+var_128]
000100cc  CMP             R9, R0
000100d0  BCC             loc_FD2C
000100d4  LDR             R1, [SP,#0x29C+var_14]
000100d8  ADD             R0, R1, #1
000100dc  MOV             R1, R0,LSL#16
000100e0  MOV             R1, R1,ASR#16
000100e4  STR             R1, [SP,#0x29C+var_14]
000100e8  LDR             R1, [SP,#0x29C+var_4]
000100ec  LDRH            R0, [R1,#0x22]
000100f0  LDR             R1, [SP,#0x29C+var_14]
000100f4  CMP             R0, R1
000100f8  BGT             loc_FC78
000100fc  LDR             R1, [SP,#0x29C+var_4]
00010100  LDRH            R0, [R1,#0x28]
00010104  CMP             R0, #0
00010108  BNE             loc_10134
0001010c  LDR             R0, [SP,#0x29C+var_12C]
00010110  LDR             R1, [SP,#0x29C+var_4]
00010114  STRH            R0, [R1,#0x28]
00010118  LDRH            R0, [R5,#0x9C]
0001011c  LDRH            R1, [R5,#0x78]
00010120  ADD             R0, R0, R1
00010124  LDRH            R1, [R5,#0x98]
00010128  SUB             R0, R1, R0,LSL#1
0001012c  LDR             R1, [SP,#0x29C+var_4]
00010130  STRH            R0, [R1,#0x2A]
00010134  ADD             SP, SP, #0x29C
00010138  POP             {R4-R11,LR}
0001013c  BX              LR
