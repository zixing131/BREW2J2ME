0001f908  PUSH            {R4-R11,LR}
0001f90c  MOV             R4, R0
0001f910  LDRSH           R0, [R0,#0x3E]
0001f914  SUB             SP, SP, #0x104
0001f918  MOV             R8, #0
0001f91c  CMP             R0, #0
0001f920  BLE             loc_1FB14
0001f924  LDR             R5, [R4,#0x40]
0001f928  LDRSB           R1, [R4,#5]
0001f92c  CMP             R1, #0x11
0001f930  BEQ             loc_1FADC
0001f934  BGT             loc_1F96C
0001f938  CMP             R1, #1
0001f93c  CMPNE           R1, #2
0001f940  BNE             loc_1FCE0
0001f944  LDRH            R1, [R4,#0x2A]
0001f948  ADD             R1, R1, #1
0001f94c  MOV             R1, R1,LSL#16
0001f950  MOV             R1, R1,ASR#16
0001f954  STRH            R1, [R4,#0x2A]
0001f958  LDRSH           R2, [R4,#0x2C]
0001f95c  CMP             R1, R2
0001f960  BLE             loc_1FCE0
0001f964  STRB            R8, [R4,#5]
0001f968  B               loc_1FB00
0001f96c  CMP             R1, #0x12
0001f970  BEQ             loc_1FCE0
0001f974  CMP             R1, #0x13
0001f978  BEQ             loc_1F9D4
0001f97c  CMP             R1, #0x14
0001f980  BNE             loc_1FCE0
0001f984  LDR             R5, [R5,#0x32C]
0001f988  LDRSH           R1, [R4,#0x16]
0001f98c  LDR             R2, [R5]
0001f990  CMP             R1, R2
0001f994  BEQ             loc_1F964
0001f998  SUB             R0, R1, R2
0001f99c  CMP             R0, #0
0001f9a0  RSBLE           R0, R0, #0
0001f9a4  CMP             R0, #0xA
0001f9a8  BGE             loc_1F9B4
0001f9ac  STR             R1, [R5]
0001f9b0  B               loc_1FB08
0001f9b4  LDRB            R0, [R4,#0x24]
0001f9b8  CMP             R0, #0
0001f9bc  ADDEQ           R1, R2, #0x100
0001f9c0  ADDEQ           R1, R1, #0x5E ; '^'
0001f9c4  ADDNE           R1, R2, #0xA
0001f9c8  MOV             R0, #0x168
0001f9cc  BL              sub_104
0001f9d0  B               loc_1F9AC
0001f9d4  LDR             R6, [R5,#0x32C]
0001f9d8  LDRSH           R0, [R4,#0x16]
0001f9dc  LDR             R7, [R6]
0001f9e0  CMP             R0, R7
0001f9e4  BEQ             loc_1FA50
0001f9e8  SUB             R5, R0, R7
0001f9ec  CMP             R5, #0
0001f9f0  RSBLE           R10, R5, #0
0001f9f4  MOVGT           R10, R5
0001f9f8  CMP             R10, #0xA
0001f9fc  STRLT           R0, [R6]
0001fa00  BLT             loc_1FB08
0001fa04  ADD             R11, R7, #0xA
0001fa08  SUB             R0, R0, R11
0001fa0c  CMP             R0, #0
0001fa10  RSBLE           R0, R0, #0
0001fa14  MOV             R1, R0
0001fa18  MOV             R0, #0x168
0001fa1c  BL              sub_104
0001fa20  MOV             R9, R1
0001fa24  MOV             R1, R10
0001fa28  MOV             R0, #0x168
0001fa2c  BL              sub_104
0001fa30  CMP             R9, R1
0001fa34  ADDGE           R1, R7, #0x100
0001fa38  ADDGE           R1, R1, #0x5E ; '^'
0001fa3c  MOVLT           R1, R11
0001fa40  MOV             R0, #0x168
0001fa44  BL              sub_104
0001fa48  STR             R1, [R6]
0001fa4c  B               loc_1FB08
0001fa50  LDRSH           R0, [R4,#0x1C]
0001fa54  LDRSH           R6, [R4,#0x18]
0001fa58  SUB             R1, R0, R6
0001fa5c  LDRSH           R0, [R4,#0x22]
0001fa60  MUL             R1, R0, R1
0001fa64  LDRSH           R0, [R4,#0x20]
0001fa68  BL              sub_104
0001fa6c  LDR             R1, [R5,#0x324]
0001fa70  ADD             R0, R0, R6
0001fa74  STR             R0, [R1]
0001fa78  LDRSH           R0, [R4,#0x1E]
0001fa7c  LDRSH           R6, [R4,#0x1A]
0001fa80  SUB             R1, R0, R6
0001fa84  LDRSH           R0, [R4,#0x22]
0001fa88  MUL             R1, R0, R1
0001fa8c  LDRSH           R0, [R4,#0x20]
0001fa90  BL              sub_104
0001fa94  LDR             R1, [R5,#0x328]
0001fa98  ADD             R0, R0, R6
0001fa9c  STR             R0, [R1]
0001faa0  LDRH            R0, [R4,#0x22]
0001faa4  ADD             R0, R0, #1
0001faa8  STRH            R0, [R4,#0x22]
0001faac  LDR             R0, [R5,#0x330]
0001fab0  LDR             R1, [R0]
0001fab4  ORR             R1, R1, #1
0001fab8  STR             R1, [R0]
0001fabc  LDRSH           R0, [R4,#0x20]
0001fac0  LDRSH           R1, [R4,#0x22]
0001fac4  ADD             R0, R0, #1
0001fac8  CMP             R0, R1
0001facc  LDREQ           R0, [R5,#0x330]
0001fad0  STREQ           R8, [R0]
0001fad4  BEQ             loc_1FAF8
0001fad8  B               loc_1FB08
0001fadc  LDR             R0, [R4,#0xC]
0001fae0  BL              sub_20298
0001fae4  LDR             R0, [R4,#0xC]
0001fae8  LDRB            R1, [R0,#0x3E]
0001faec  CMP             R1, #0
0001faf0  BNE             loc_1FB08
0001faf4  BL              sub_22F60
0001faf8  STRB            R8, [R4,#5]
0001fafc  LDRH            R0, [R4,#0x3E]
0001fb00  SUB             R0, R0, #1
0001fb04  STRH            R0, [R4,#0x3E]
0001fb08  LDRSH           R0, [R4,#0x3E]
0001fb0c  CMP             R0, #0
0001fb10  BGT             loc_1FCE0
0001fb14  LDRH            R0, [R4,#0x3C]
0001fb18  CMP             R0, #1
0001fb1c  BNE             loc_1FCE0
0001fb20  LDR             R5, =(start - 0x1FB2C)
0001fb24  ADD             R5, PC, R5; start
0001fb28  LDR             R6, =(aSD - 0x1FB34); "%s%d"
0001fb2c  ADD             R6, PC, R6; "%s%d"
0001fb30  LDR             R7, =0x1F5B
0001fb34  B               loc_200F4
0001fb38  LDR             R3, [R0,#0x10]
0001fb3c  LDR             R2, [R3,R1,LSL#5]
0001fb40  CMP             R2, #0xC
0001fb44  STRBEQ          R8, [R4,#0x50]
0001fb48  BEQ             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fb4c  BGT             loc_1FB84
0001fb50  CMP             R2, #9; switch 10 cases
0001fb54  ADDLS           PC, PC, R2,LSL#2; switch jump
0001fb58  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fb5c  B               loc_1FEFC; jumptable 0001FB54 case 0
0001fb60  B               loc_1FF20; jumptable 0001FB54 case 1
0001fb64  B               loc_1FF70; jumptable 0001FB54 case 2
0001fb68  B               loc_20000; jumptable 0001FB54 case 3
0001fb6c  B               loc_1FFB4; jumptable 0001FB54 case 4
0001fb70  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fb74  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fb78  B               loc_1FD54; jumptable 0001FB54 case 7
0001fb7c  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fb80  B               loc_1FD10; jumptable 0001FB54 case 9
0001fb84  CMP             R2, #0x17
0001fb88  LDREQ           R0, [R4,#0x44]
0001fb8c  LDREQ           R0, [R0,#0x10]
0001fb90  LDRSHEQ         R1, [R4,#0x4A]
0001fb94  ADDEQ           R2, R0, R1,LSL#5
0001fb98  MOVEQ           R1, #0x12
0001fb9c  BEQ             loc_1FF9C
0001fba0  BGT             loc_1FBD4
0001fba4  CMP             R2, #0x10
0001fba8  BEQ             loc_1FDA8
0001fbac  CMP             R2, #0x11
0001fbb0  BEQ             loc_1FD34
0001fbb4  CMP             R2, #0x13
0001fbb8  LDREQ           R0, [R4,#0x44]
0001fbbc  LDREQ           R0, [R0,#0x10]
0001fbc0  LDRSHEQ         R1, [R4,#0x4A]
0001fbc4  ADDEQ           R2, R0, R1,LSL#5
0001fbc8  MOVEQ           R1, #0x14
0001fbcc  BEQ             loc_1FF9C
0001fbd0  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fbd4  CMP             R2, #0x26 ; '&'
0001fbd8  BEQ             loc_1FD6C
0001fbdc  CMP             R2, #0x32 ; '2'
0001fbe0  BEQ             loc_1FCEC
0001fbe4  CMP             R2, #0x33 ; '3'
0001fbe8  BNE             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fbec  LDRSH           R0, [R4,#0x4A]
0001fbf0  LDR             R6, [R4,#0x40]
0001fbf4  MOV             R2, #0x10
0001fbf8  STRH            R0, [R4,#0x30]
0001fbfc  LDR             R1, [R4,#0x44]
0001fc00  LDR             R1, [R1,#0x10]
0001fc04  ADD             R0, R1, R0,LSL#5
0001fc08  LDR             R0, [R0,#8]
0001fc0c  LDR             R1, [R6,#0x324]
0001fc10  ADD             R0, R2, R0,LSL#5
0001fc14  STR             R0, [R1]
0001fc18  LDR             R0, [R4,#0x44]
0001fc1c  LDRSH           R1, [R4,#0x30]
0001fc20  LDR             R0, [R0,#0x10]
0001fc24  ADD             R0, R0, R1,LSL#5
0001fc28  LDR             R0, [R0,#0xC]
0001fc2c  LDR             R1, [R6,#0x328]
0001fc30  ADD             R0, R2, R0,LSL#5
0001fc34  STR             R0, [R1]
0001fc38  LDR             R0, [R4,#0x44]
0001fc3c  LDRSH           R1, [R4,#0x30]
0001fc40  LDR             R0, [R0,#0x10]
0001fc44  ADD             R0, R0, R1,LSL#5
0001fc48  LDR             R0, [R0,#0x10]
0001fc4c  LDR             R1, [R6,#0x32C]
0001fc50  STR             R0, [R1]
0001fc54  LDR             R0, [R4,#0x44]
0001fc58  LDRSH           R1, [R4,#0x30]
0001fc5c  LDR             R0, [R0,#0x10]
0001fc60  ADD             R0, R0, R1,LSL#5
0001fc64  LDR             R0, [R0,#4]
0001fc68  MOV             R1, R0,LSL#16
0001fc6c  MOV             R1, R1,LSR#16
0001fc70  MOV             R0, R6
0001fc74  BL              sub_5E14
0001fc78  LDR             R0, [R4,#0x44]
0001fc7c  LDRSH           R1, [R4,#0x30]
0001fc80  LDR             R0, [R0,#0x10]
0001fc84  ADD             R0, R0, R1,LSL#5
0001fc88  LDR             R0, [R0,#4]
0001fc8c  MOV             R1, R0,LSL#16
0001fc90  MOV             R1, R1,LSR#16
0001fc94  MOV             R0, R6
0001fc98  BL              sub_5DD4
0001fc9c  STRH            R8, [R4,#0x48]
0001fca0  STR             R8, [R4,#0x44]
0001fca4  STRH            R8, [R4,#0x4A]
0001fca8  STRH            R8, [R4,#0x3C]
0001fcac  STRB            R8, [R4,#0x50]
0001fcb0  STRB            R8, [R4,#0x51]
0001fcb4  STRH            R8, [R4,#0x3E]
0001fcb8  STRB            R8, [R4,#5]
0001fcbc  STRH            R8, [R4,#0x28]
0001fcc0  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fcc4  ADR             LR, loc_1FCD0
0001fcc8  LDR             R0, [R0,#0xC0]
0001fccc  BX              R0
0001fcd0  LDR             R0, [R0,#0x760]
0001fcd4  MOV             R2, #0
0001fcd8  MOV             R1, #8
0001fcdc  BL              sub_59C4
0001fce0  ADD             SP, SP, #0x104
0001fce4  POP             {R4-R11,LR}
0001fce8  BX              LR
0001fcec  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fcf0  ADR             LR, loc_1FCFC
0001fcf4  LDR             R0, [R0,#0xC0]
0001fcf8  BX              R0
0001fcfc  LDR             R0, [R0,#0x760]
0001fd00  MOV             R2, #0
0001fd04  MOV             R1, #5
0001fd08  BL              sub_59C4
0001fd0c  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fd10  LDR             R0, [R4,#0x44]; jumptable 0001FB54 case 9
0001fd14  LDRSH           R1, [R4,#0x4A]
0001fd18  LDR             R0, [R0,#0x10]
0001fd1c  ADD             R2, R0, R1,LSL#5
0001fd20  LDR             R0, [R2,#0xC]
0001fd24  CMP             R0, #0
0001fd28  MOVNE           R1, #2
0001fd2c  MOVEQ           R1, #1
0001fd30  B               loc_1FF9C
0001fd34  ADD             R2, R3, R1,LSL#5
0001fd38  LDR             R2, [R2,#4]
0001fd3c  STRH            R2, [R4,#0x26]
0001fd40  LDR             R0, [R0,#0x10]
0001fd44  ADD             R0, R0, R1,LSL#5
0001fd48  LDR             R0, [R0,#8]
0001fd4c  STRH            R0, [R4,#0x28]
0001fd50  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fd54  LDR             R0, [R4,#0x44]; jumptable 0001FB54 case 7
0001fd58  LDR             R0, [R0,#0x10]
0001fd5c  LDRSH           R1, [R4,#0x4A]
0001fd60  ADD             R2, R0, R1,LSL#5
0001fd64  MOV             R1, #0x13
0001fd68  B               loc_1FF9C
0001fd6c  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fd70  ADR             LR, loc_1FD7C
0001fd74  LDR             R0, [R0,#0xC0]
0001fd78  BX              R0
0001fd7c  LDR             R1, [R4,#0x44]
0001fd80  LDRSH           R2, [R4,#0x4A]
0001fd84  LDR             R1, [R1,#0x10]
0001fd88  LDR             R0, [R0,#0x760]
0001fd8c  ADD             R1, R1, R2,LSL#5
0001fd90  LDR             R1, [R1,#4]
0001fd94  MOV             R2, R1,LSL#16
0001fd98  MOV             R2, R2,LSR#16
0001fd9c  MOV             R1, #3
0001fda0  BL              sub_59C4
0001fda4  B               loc_1FFA4
0001fda8  LDRSH           R0, [R4,#0x3E]
0001fdac  CMP             R0, #0
0001fdb0  BGT             loc_1FCE0
0001fdb4  LDR             R10, [R4,#0x40]
0001fdb8  ADD             R9, R3, R1,LSL#5
0001fdbc  MOV             R0, R10
0001fdc0  BL              sub_12934
0001fdc4  LDR             R1, [R9,#4]
0001fdc8  CMP             R1, #0
0001fdcc  BEQ             loc_1FE98
0001fdd0  CMP             R1, #1
0001fdd4  BEQ             loc_1FECC
0001fdd8  CMP             R1, #2
0001fddc  LDREQ           R1, [R0,#0x10]
0001fde0  LDREQ           R2, [R9,#0xC]
0001fde4  ADDEQ           R1, R1, R2
0001fde8  STREQ           R1, [R0,#0x10]
0001fdec  BEQ             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fdf0  CMP             R1, #3
0001fdf4  BNE             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fdf8  LDR             R1, [R0,#8]
0001fdfc  LDR             R2, [R9,#0xC]
0001fe00  ADR             LR, loc_1FE1C
0001fe04  ADD             R1, R1, R2
0001fe08  STR             R1, [R0,#8]
0001fe0c  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fe10  LDR             R1, [R0,#0x68]
0001fe14  MOV             R0, #0x140
0001fe18  BX              R1
0001fe1c  MOV             R10, R0
0001fe20  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fe24  LDR             R0, [R0,#0xC0]
0001fe28  MOV             LR, PC
0001fe2c  BX              R0
0001fe30  LDR             R0, [R0,#0x28]
0001fe34  MOV             R3, #0x100
0001fe38  ADD             R2, SP, #0x104+var_100
0001fe3c  MOV             R1, R7
0001fe40  BL              sub_19618
0001fe44  LDR             R3, [R9,#0xC]
0001fe48  MOV             R2, R6
0001fe4c  STR             R3, [SP,#0x104+var_104]
0001fe50  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fe54  ADD             R3, SP, #0x104+var_100
0001fe58  LDR             R12, [R0,#0x3C]
0001fe5c  MOV             R0, R10
0001fe60  MOV             R1, #0x140
0001fe64  MOV             LR, PC
0001fe68  BX              R12
0001fe6c  LDR             R0, [R5,#(dword_8 - 0xC)]
0001fe70  LDR             R0, [R0,#0xC0]
0001fe74  MOV             LR, PC
0001fe78  BX              R0
0001fe7c  LDR             R0, [R0,#0x760]
0001fe80  MOV             R3, R10
0001fe84  MOV             R2, #0
0001fe88  MOV             R1, #1
0001fe8c  ADD             R0, R0, #0x220
0001fe90  BL              sub_E00
0001fe94  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fe98  LDR             R0, [R9,#0x10]
0001fe9c  CMP             R0, #0
0001fea0  LDR             R0, [R9,#8]
0001fea4  MOV             R1, R0,LSL#16
0001fea8  MOV             R1, R1,ASR#16
0001feac  BNE             loc_1FEC0
0001feb0  MOV             R2, #1
0001feb4  MOV             R0, R10
0001feb8  BL              sub_D10
0001febc  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fec0  MOV             R0, R10
0001fec4  BL              sub_6254
0001fec8  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fecc  ADD             R0, R0, #0x300
0001fed0  LDRH            R1, [R0,#0xE]
0001fed4  LDR             R2, [R9,#0xC]
0001fed8  ADD             R1, R1, R2
0001fedc  MOV             R1, R1,LSL#16
0001fee0  MOV             R1, R1,ASR#16
0001fee4  SUBS            R12, R1, #0x300
0001fee8  SUBSGE          R12, R12, #0xE7
0001feec  STRH            R1, [R0,#0xE]
0001fef0  LDRGE           R1, =0x3E7
0001fef4  STRH            R1, [R0,#0xE]
0001fef8  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001fefc  LDRSH           R0, [R4,#0x3E]; jumptable 0001FB54 case 0
0001ff00  CMP             R0, #0
0001ff04  BGT             loc_1FCE0
0001ff08  LDR             R0, [R4,#0x44]
0001ff0c  LDR             R0, [R0,#0x10]
0001ff10  LDRSH           R1, [R4,#0x4A]
0001ff14  ADD             R2, R0, R1,LSL#5
0001ff18  MOV             R1, #0x15
0001ff1c  B               loc_1FF9C
0001ff20  LDRSH           R0, [R4,#0x3E]; jumptable 0001FB54 case 1
0001ff24  CMP             R0, #0
0001ff28  BGT             loc_1FCE0
0001ff2c  ADD             R1, R3, R1,LSL#5
0001ff30  LDR             R0, [R1,#0xC]
0001ff34  CMP             R0, #0
0001ff38  LDREQ           R0, [R1,#8]
0001ff3c  LDREQ           R1, [R1,#4]
0001ff40  LDREQ           R2, [R4,#0x34]
0001ff44  STRBEQ          R0, [R2,R1]
0001ff48  BEQ             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001ff4c  CMP             R0, #1
0001ff50  LDR             R0, [R1,#4]
0001ff54  LDR             R2, [R4,#0x34]
0001ff58  LDR             R1, [R1,#8]
0001ff5c  LDRB            R2, [R0,R2]!
0001ff60  SUBNE           R1, R2, R1
0001ff64  ADDEQ           R1, R1, R2
0001ff68  STRB            R1, [R0]
0001ff6c  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001ff70  LDRSH           R0, [R4,#0x3E]; jumptable 0001FB54 case 2
0001ff74  CMP             R0, #0
0001ff78  BGT             loc_1FCE0
0001ff7c  LDR             R0, [R4,#0x44]
0001ff80  LDRSH           R1, [R4,#0x4A]
0001ff84  LDR             R0, [R0,#0x10]
0001ff88  ADD             R2, R0, R1,LSL#5
0001ff8c  LDR             R0, [R2,#0xC]
0001ff90  CMP             R0, #0
0001ff94  MOVNE           R1, #4
0001ff98  MOVEQ           R1, #0x11
0001ff9c  MOV             R0, R4
0001ffa0  BL              sub_15BB8
0001ffa4  LDRH            R0, [R4,#0x4A]
0001ffa8  ADD             R0, R0, #1
0001ffac  STRH            R0, [R4,#0x4A]
0001ffb0  B               loc_20108
0001ffb4  LDRB            R2, [R4,#0x50]; jumptable 0001FB54 case 4
0001ffb8  CMP             R2, #1
0001ffbc  BNE             loc_20000; jumptable 0001FB54 case 3
0001ffc0  B               loc_1FFEC
0001ffc4  LDR             R2, [R0,#0x10]
0001ffc8  LDR             R2, [R2,R1,LSL#5]
0001ffcc  CMP             R2, #0xC
0001ffd0  ADDNE           R1, R1, #1
0001ffd4  STRHNE          R1, [R4,#0x4A]
0001ffd8  BNE             loc_1FFEC
0001ffdc  LDRH            R0, [R4,#0x4A]
0001ffe0  SUB             R0, R0, #1
0001ffe4  STRH            R0, [R4,#0x4A]
0001ffe8  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
0001ffec  LDRSH           R1, [R4,#0x4A]
0001fff0  LDR             R2, [R0,#0xC]
0001fff4  CMP             R1, R2
0001fff8  BCC             loc_1FFC4
0001fffc  B               def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
00020000  LDRSH           R2, [R4,#0x3E]; jumptable 0001FB54 case 3
00020004  CMP             R2, #0
00020008  BGT             loc_1FCE0
0002000c  ADD             R3, R3, R1,LSL#5
00020010  LDR             R12, [R3,#4]
00020014  MOV             R2, #0
00020018  CMP             R12, #0
0002001c  BEQ             loc_20034
00020020  CMP             R12, #1
00020024  BEQ             loc_2008C
00020028  CMP             R12, #2
0002002c  BNE             loc_2008C
00020030  B               loc_20088
00020034  LDR             R12, [R3,#8]
00020038  LDR             LR, [R4,#0x34]
0002003c  LDRB            R12, [LR,R12]
00020040  LDR             LR, [R3,#0x10]
00020044  CMP             LR, #0
00020048  BNE             loc_2005C
0002004c  LDR             R3, [R3,#0xC]
00020050  CMP             R3, R12
00020054  BNE             loc_2008C
00020058  B               loc_20088
0002005c  CMP             LR, #1
00020060  BNE             loc_20074
00020064  LDR             R3, [R3,#0xC]
00020068  CMP             R3, R12
0002006c  BGE             loc_2008C
00020070  B               loc_20088
00020074  CMP             LR, #2
00020078  BNE             loc_2008C
0002007c  LDR             R3, [R3,#0xC]
00020080  CMP             R3, R12
00020084  BLE             loc_2008C
00020088  MOV             R2, #1
0002008c  STRB            R2, [R4,#0x50]
00020090  CMP             R2, #0
00020094  BNE             def_1FB54; jumptable 0001FB54 default case, cases 5,6,8
00020098  B               loc_200BC
0002009c  LDR             R2, [R0,#0x10]
000200a0  LDR             R2, [R2,R1,LSL#5]
000200a4  CMP             R2, #4
000200a8  CMPNE           R2, #0xC
000200ac  LDRHEQ          R1, [R4,#0x4A]
000200b0  SUBEQ           R1, R1, #1
000200b4  STRHEQ          R1, [R4,#0x4A]
000200b8  BEQ             loc_200D4
000200bc  ADD             R1, R1, #1
000200c0  STRH            R1, [R4,#0x4A]
000200c4  LDRSH           R1, [R4,#0x4A]
000200c8  LDR             R2, [R0,#0xC]
000200cc  CMP             R1, R2
000200d0  BCC             loc_2009C
000200d4  LDRSH           R1, [R4,#0x4A]
000200d8  LDR             R0, [R0,#0xC]
000200dc  SUB             R0, R0, #1
000200e0  CMP             R1, R0
000200e4  BCS             loc_2011C
000200e8  LDRH            R0, [R4,#0x4A]; jumptable 0001FB54 default case, cases 5,6,8
000200ec  ADD             R0, R0, #1
000200f0  STRH            R0, [R4,#0x4A]
000200f4  LDR             R0, [R4,#0x44]
000200f8  LDRSH           R1, [R4,#0x4A]
000200fc  LDR             R2, [R0,#0xC]
00020100  CMP             R1, R2
00020104  BCC             loc_1FB38
00020108  LDR             R1, [R4,#0x44]
0002010c  LDRSH           R0, [R4,#0x4A]
00020110  LDR             R1, [R1,#0xC]
00020114  CMP             R0, R1
00020118  BCC             loc_1FCE0
0002011c  STRH            R8, [R4,#0x3C]
00020120  B               loc_1FCE0
