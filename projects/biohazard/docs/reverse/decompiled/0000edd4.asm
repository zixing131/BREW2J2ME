0000edd4  PUSH            {R4-R11,LR}
0000edd8  LDR             R6, =(start - 0xEDF4)
0000eddc  SUB             SP, SP, #0x3F4
0000ede0  MOV             R9, R0
0000ede4  MOV             R7, R2
0000ede8  MOV             R5, R1
0000edec  ADD             R6, PC, R6; start
0000edf0  LDR             R0, [R6,#(dword_8 - 0xC)]
0000edf4  ADR             LR, loc_EE00
0000edf8  LDR             R0, [R0,#0xC0]
0000edfc  BX              R0
0000ee00  LDR             R4, [R0,#0x2C]
0000ee04  LDR             R0, [R6,#(dword_8 - 0xC)]
0000ee08  LDR             R0, [R0,#0xC0]
0000ee0c  MOV             LR, PC
0000ee10  BX              R0
0000ee14  LDR             R6, [R0,#0x28]
0000ee18  MOV             R11, #0
0000ee1c  LDR             R10, [R6,#0x64]
0000ee20  LDR             R0, =0x22C4
0000ee24  ADD             R12, SP, #0x3F4+var_1F4
0000ee28  STR             R0, [SP,#0x3F4+var_4]
0000ee2c  STRH            R11, [R12,#0x68]
0000ee30  STRH            R11, [R12,#0x6A]
0000ee34  LDRH            R0, [R5]
0000ee38  CMP             R4, #0
0000ee3c  STRH            R0, [R12,#0x6C]
0000ee40  LDRH            R0, [R5,#2]
0000ee44  STRH            R0, [R12,#0x6E]
0000ee48  BEQ             loc_F110
0000ee4c  ADD             R8, R9, #0x100
0000ee50  LDRH            R1, [R8,#0x82]
0000ee54  MOV             R0, #0xEB
0000ee58  CMP             R1, #0
0000ee5c  BEQ             loc_EF58
0000ee60  CMP             R1, #1
0000ee64  BEQ             loc_F11C
0000ee68  CMP             R1, #2
0000ee6c  BNE             loc_F110
0000ee70  LDRH            R1, [R5]
0000ee74  MOV             R2, #8
0000ee78  MOV             R1, R1,LSR#1
0000ee7c  STRH            R1, [R4,#0xE]
0000ee80  STRH            R0, [R4,#0x10]
0000ee84  MOV             R0, R4
0000ee88  MOV             R1, #7
0000ee8c  BL              sub_103F4
0000ee90  STRH            R11, [R4,#8]
0000ee94  MOV             R0, R4
0000ee98  BL              sub_21BA8
0000ee9c  MOV             R2, R7
0000eea0  MOV             R1, R5
0000eea4  MOV             R0, R4
0000eea8  BL              sub_1CE08
0000eeac  MOV             R3, #0x50 ; 'P'
0000eeb0  ADD             R2, SP, #0x3F4+var_C4
0000eeb4  LDR             R1, =0x1388
0000eeb8  MOV             R0, R6
0000eebc  BL              sub_19618
0000eec0  LDR             R4, =(start - 0xEECC)
0000eec4  ADD             R4, PC, R4; start
0000eec8  LDR             R0, [R4,#(dword_8 - 0xC)]
0000eecc  LDR             R2, =(aT00001H00ff00S - 0xEEDC); "$T00001$H00ff00$S000000%s"
0000eed0  ADD             R3, SP, #0x3F4+var_C4
0000eed4  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000eed8  LDR             R12, [R0,#0x3C]
0000eedc  ADD             R0, SP, #0x3F4+var_184
0000eee0  MOV             R1, #0xC0
0000eee4  MOV             LR, PC
0000eee8  BX              R12
0000eeec  MOV             R2, #1
0000eef0  ADD             R1, SP, #0x3F4+var_C4
0000eef4  MOV             R0, R10
0000eef8  BL              sub_12BC8
0000eefc  LDRH            R1, [R5]
0000ef00  MOV             R3, #0
0000ef04  MOV             R2, #1
0000ef08  SUB             R0, R1, R0
0000ef0c  LDRH            R1, [R5,#2]
0000ef10  ADD             R0, R0, R0,LSR#31
0000ef14  MOV             R0, R0,ASR#1
0000ef18  SUB             R1, R1, #0x1E
0000ef1c  MOV             R12, R1,LSL#16
0000ef20  MOV             R0, R0,LSL#16
0000ef24  MOV             R0, R0,ASR#16
0000ef28  MOV             R1, #0
0000ef2c  ADD             R4, SP, #0x3F4+var_3E4
0000ef30  STM             R4, {R0-R3}
0000ef34  MOV             R2, #0
0000ef38  ADD             R0, SP, #0x3F4+var_184
0000ef3c  STMEA           SP, {R0-R3}
0000ef40  MOV             R12, R12,ASR#16
0000ef44  MOV             R2, R12
0000ef48  LDR             R0, [R6,#0x64]
0000ef4c  ADD             R3, SP, #0x3F4+var_18C
0000ef50  MOV             R1, R5
0000ef54  B               loc_F588
0000ef58  LDRH            R1, [R5]
0000ef5c  MOV             R2, #8
0000ef60  MOV             R1, R1,LSR#1
0000ef64  STRH            R1, [R4,#0xE]
0000ef68  STRH            R0, [R4,#0x10]
0000ef6c  MOV             R0, R4
0000ef70  MOV             R1, #7
0000ef74  BL              sub_103F4
0000ef78  STRH            R11, [R4,#8]
0000ef7c  MOV             R0, R4
0000ef80  BL              sub_21BA8
0000ef84  MOV             R2, R7
0000ef88  MOV             R1, R5
0000ef8c  MOV             R0, R4
0000ef90  BL              sub_1CE08
0000ef94  LDRH            R0, [R5]
0000ef98  MOV             R2, #8
0000ef9c  MOV             R1, #6
0000efa0  MOV             R0, R0,LSR#1
0000efa4  STRH            R0, [R4,#0xE]
0000efa8  LDRH            R0, [R5,#2]
0000efac  SUB             R0, R0, #0xAF
0000efb0  ADD             R0, R0, R0,LSR#31
0000efb4  MOV             R0, R0,ASR#1
0000efb8  STRH            R0, [R4,#0x10]
0000efbc  MOV             R0, R4
0000efc0  BL              sub_103F4
0000efc4  MOV             R9, #0
0000efc8  LDR             R0, [SP,#0x3F4+var_4]
0000efcc  MOV             R3, #0x50 ; 'P'
0000efd0  ADD             R1, R0, R9
0000efd4  MOV             R0, R6
0000efd8  ADD             R2, SP, #0x3F4+var_C4
0000efdc  BL              sub_19618
0000efe0  LDRSH           R0, [R8,#0x7E]
0000efe4  CMP             R0, R9
0000efe8  LDR             R0, =(start - 0xEFF4)
0000efec  ADD             R0, PC, R0; start
0000eff0  LDR             R0, [R0,#(dword_8 - 0xC)]
0000eff4  ADD             R3, SP, #0x3F4+var_C4
0000eff8  LDR             R12, [R0,#0x3C]
0000effc  BNE             loc_F048
0000f000  LDR             R2, =(aT00001Hffff00S - 0xF00C); "$T00001$Hffff00$S000000%s"
0000f004  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s"
0000f008  MOV             R1, #0xC0
0000f00c  ADD             R0, SP, #0x3F4+var_184
0000f010  MOV             LR, PC
0000f014  BX              R12
0000f018  MOV             R0, #1
0000f01c  STRH            R0, [R4,#8]
0000f020  MOV             R0, R10
0000f024  MOV             R2, #1
0000f028  ADD             R1, SP, #0x3F4+var_C4
0000f02c  BL              sub_12BC8
0000f030  LDRH            R1, [R5]
0000f034  SUB             R0, R1, R0
0000f038  ADD             R0, R0, R0,LSR#31
0000f03c  MOV             R0, R0,ASR#1
0000f040  SUB             R0, R0, #0xC
0000f044  B               loc_F088
0000f048  LDR             R2, =(aT00001HffffffS - 0xF054); "$T00001$Hffffff$S000000%s"
0000f04c  ADD             R2, PC, R2; "$T00001$Hffffff$S000000%s"
0000f050  MOV             R1, #0xC0
0000f054  ADD             R0, SP, #0x3F4+var_184
0000f058  MOV             LR, PC
0000f05c  BX              R12
0000f060  MOV             R0, #0
0000f064  STRH            R0, [R4,#8]
0000f068  MOV             R0, R10
0000f06c  MOV             R2, #1
0000f070  ADD             R1, SP, #0x3F4+var_C4
0000f074  BL              sub_12BC8
0000f078  LDRH            R1, [R5]
0000f07c  SUB             R0, R1, R0
0000f080  ADD             R0, R0, R0,LSR#31
0000f084  MOV             R0, R0,ASR#1
0000f088  MOV             R11, R0,LSL#16
0000f08c  MOV             R11, R11,ASR#16
0000f090  MOV             R0, R4
0000f094  BL              sub_21BA8
0000f098  MOV             R2, R7
0000f09c  MOV             R1, R5
0000f0a0  MOV             R0, R4
0000f0a4  BL              sub_1CE08
0000f0a8  LDRH            R0, [R4,#0x10]
0000f0ac  MOV             R3, #0
0000f0b0  MOV             R2, #1
0000f0b4  ADD             R0, R0, #0xB
0000f0b8  MOV             R12, R0,LSL#16
0000f0bc  ADD             R0, SP, #0x3F4+var_3E0
0000f0c0  MOV             R1, #0
0000f0c4  STM             R0, {R1-R3}
0000f0c8  STR             R11, [SP,#0x3F4+var_3E4]
0000f0cc  MOV             R2, #0
0000f0d0  ADD             R0, SP, #0x3F4+var_184
0000f0d4  STMEA           SP, {R0-R3}
0000f0d8  MOV             R12, R12,ASR#16
0000f0dc  MOV             R2, R12
0000f0e0  LDR             R0, [R6,#0x64]
0000f0e4  ADD             R3, SP, #0x3F4+var_18C
0000f0e8  MOV             R1, R5
0000f0ec  BL              sub_98BC
0000f0f0  LDRH            R0, [R4,#0x10]
0000f0f4  ADD             R0, R0, #0x1E
0000f0f8  STRH            R0, [R4,#0x10]
0000f0fc  ADD             R0, R9, #1
0000f100  MOV             R9, R0,LSL#16
0000f104  MOV             R9, R9,ASR#16
0000f108  CMP             R9, #6
0000f10c  BLT             loc_EFC8
0000f110  ADD             SP, SP, #0x3F4
0000f114  POP             {R4-R11,LR}
0000f118  BX              LR
0000f11c  LDRSH           R1, [R8,#0x7E]
0000f120  CMP             R1, #0
0000f124  BEQ             loc_F278
0000f128  CMP             R1, #2
0000f12c  BEQ             loc_F590
0000f130  CMP             R1, #3
0000f134  CMPNE           R1, #4
0000f138  BNE             loc_F110
0000f13c  LDRSH           R0, [R5,#2]
0000f140  LDR             R3, =0x2124
0000f144  MOV             R1, #0
0000f148  STMEA           SP, {R0,R1,R3}
0000f14c  STR             R3, [SP,#0x3F4+var_3E8]
0000f150  LDRSH           R3, [R5]
0000f154  MOV             R0, R5
0000f158  MOV             R2, #0
0000f15c  BL              sub_10C58
0000f160  LDRH            R0, [R5]
0000f164  MOV             R2, #8
0000f168  MOV             R1, #6
0000f16c  MOV             R0, R0,LSR#1
0000f170  STRH            R0, [R4,#0xE]
0000f174  STRH            R11, [R4,#0x10]
0000f178  MOV             R0, R4
0000f17c  BL              sub_103F4
0000f180  LDRH            R0, [R8,#0x7E]
0000f184  CMP             R0, #4
0000f188  MOVNE           R0, #6
0000f18c  MOVEQ           R0, #5
0000f190  STRH            R0, [R4,#8]
0000f194  MOV             R0, R4
0000f198  BL              sub_21BA8
0000f19c  MOV             R2, R7
0000f1a0  MOV             R1, R5
0000f1a4  MOV             R0, R4
0000f1a8  BL              sub_1CE08
0000f1ac  MOV             R3, R6
0000f1b0  MOV             R2, R7
0000f1b4  MOV             R1, R5
0000f1b8  MOV             R0, R9
0000f1bc  BL              sub_F7D0
0000f1c0  MOV             R0, #2
0000f1c4  STRH            R0, [R4,#8]
0000f1c8  LDRH            R0, [R5,#2]
0000f1cc  STRH            R0, [R4,#0x10]
0000f1d0  MOV             R0, R4
0000f1d4  BL              sub_21BA8
0000f1d8  MOV             R2, R7
0000f1dc  MOV             R1, R5
0000f1e0  MOV             R0, R4
0000f1e4  BL              sub_1CE08
0000f1e8  LDRH            R0, [R8,#0x26]
0000f1ec  LDRH            R1, [R8,#0x2A]
0000f1f0  ADD             R0, R0, R1
0000f1f4  LDRH            R1, [R8,#0x28]
0000f1f8  CMP             R0, R1
0000f1fc  LDRCC           R1, [R9,#0x140]
0000f200  LDRH            R0, [R5,#2]
0000f204  MOVCC           R1, R1,LSL#30
0000f208  ADDCC           R0, R0, R1,LSR#31
0000f20c  SUB             R0, R0, #8
0000f210  STRH            R0, [R4,#0x10]
0000f214  MOV             R0, #8
0000f218  STRH            R0, [R4,#8]
0000f21c  MOV             R0, R4
0000f220  BL              sub_21BA8
0000f224  MOV             R2, R7
0000f228  MOV             R1, R5
0000f22c  MOV             R0, R4
0000f230  BL              sub_1CE08
0000f234  LDRH            R0, [R8,#0x26]
0000f238  MOV             R1, #0x3A ; ':'
0000f23c  CMP             R0, #0
0000f240  LDRNE           R0, [R9,#0x140]
0000f244  STRHEQ          R1, [R4,#0x10]
0000f248  MOVNE           R0, R0,LSL#30
0000f24c  ADDNE           R0, R1, R0,LSR#31
0000f250  STRHNE          R0, [R4,#0x10]
0000f254  MOV             R0, #7
0000f258  STRH            R0, [R4,#8]
0000f25c  MOV             R0, R4
0000f260  BL              sub_21BA8
0000f264  MOV             R2, R7
0000f268  MOV             R1, R5
0000f26c  MOV             R0, R4
0000f270  BL              sub_1CE08
0000f274  B               loc_F110
0000f278  MOV             R1, #0x58 ; 'X'
0000f27c  STRH            R1, [R4,#0xE]
0000f280  STRH            R0, [R4,#0x10]
0000f284  MOV             R0, R4
0000f288  MOV             R1, #7
0000f28c  MOV             R2, #8
0000f290  BL              sub_103F4
0000f294  STRH            R11, [R4,#8]
0000f298  MOV             R0, R4
0000f29c  BL              sub_21BA8
0000f2a0  MOV             R2, R7
0000f2a4  MOV             R1, R5
0000f2a8  MOV             R0, R4
0000f2ac  BL              sub_1CE08
0000f2b0  LDRSH           R0, [R5,#2]
0000f2b4  MOV             R3, #0
0000f2b8  MOV             R2, #0
0000f2bc  LDR             R1, =0x1002
0000f2c0  STMEA           SP, {R0-R3}
0000f2c4  LDRSH           R3, [R5]
0000f2c8  MOV             R1, #0
0000f2cc  MOV             R0, R5
0000f2d0  BL              sub_10C58
0000f2d4  MOV             R0, #0x58 ; 'X'
0000f2d8  STRH            R0, [R4,#0xE]
0000f2dc  LDRH            R0, [R5,#2]
0000f2e0  MOV             R2, #8
0000f2e4  MOV             R1, #0
0000f2e8  MOV             R0, R0,LSR#1
0000f2ec  STRH            R0, [R4,#0x10]
0000f2f0  MOV             R0, R4
0000f2f4  BL              sub_103F4
0000f2f8  MOV             R0, #4
0000f2fc  STRH            R0, [R4,#8]
0000f300  MOV             R0, R4
0000f304  BL              sub_21BA8
0000f308  MOV             R2, R7
0000f30c  MOV             R1, R5
0000f310  MOV             R0, R4
0000f314  BL              sub_1CE08
0000f318  LDRH            R0, [R5,#2]
0000f31c  STRH            R0, [R4,#0x10]
0000f320  MOV             R0, #2
0000f324  STRH            R0, [R4,#8]
0000f328  MOV             R0, R4
0000f32c  BL              sub_21BA8
0000f330  MOV             R2, R7
0000f334  MOV             R1, R5
0000f338  MOV             R0, R4
0000f33c  BL              sub_1CE08
0000f340  MOV             R0, #0
0000f344  STRH            R0, [SP,#0x3F4+var_3D4]
0000f348  STRH            R0, [SP,#0x3F4+var_3D2]
0000f34c  LDRH            R0, [R5]
0000f350  MOV             R3, #0xC0
0000f354  ADD             R2, SP, #0x3F4+var_24C
0000f358  STRH            R0, [SP,#0x3F4+var_3D0]
0000f35c  LDRH            R0, [R5,#2]
0000f360  LDR             R1, =0x1F72
0000f364  STRH            R0, [SP,#0x3F4+var_3CE]
0000f368  MOV             R0, R6
0000f36c  BL              sub_19618
0000f370  MOV             R2, #2
0000f374  ADD             R1, SP, #0x3F4+var_24C
0000f378  MOV             R0, R10
0000f37c  BL              sub_12BC8
0000f380  LDRH            R1, [R5]
0000f384  LDR             R4, =(start - 0xF3B8)
0000f388  SUB             R0, R1, R0
0000f38c  ADD             R0, R0, R0,LSR#31
0000f390  MOV             R0, R0,ASR#1
0000f394  MOV             R9, R0,LSL#16
0000f398  LDRH            R0, [R5,#2]
0000f39c  MOV             R1, #0xFFFFFFF4
0000f3a0  MOV             R9, R9,ASR#16
0000f3a4  ADD             R0, R1, R0,LSR#1
0000f3a8  MOV             R11, R0,LSL#16
0000f3ac  MOV             R11, R11,ASR#16
0000f3b0  ADD             R4, PC, R4; start
0000f3b4  LDR             R0, [R4,#(dword_8 - 0xC)]
0000f3b8  LDR             R7, =(aT00001Hff8040S - 0xF3C8); "$T00001$Hff8040$S000000%s"
0000f3bc  LDR             R12, [R0,#0x3C]
0000f3c0  ADD             R7, PC, R7; "$T00001$Hff8040$S000000%s"
0000f3c4  MOV             R2, R7
0000f3c8  ADD             R0, SP, #0x3F4+var_3CC
0000f3cc  ADD             R3, SP, #0x3F4+var_24C
0000f3d0  MOV             R1, #0x180
0000f3d4  MOV             LR, PC
0000f3d8  BX              R12
0000f3dc  MOV             R3, #0
0000f3e0  MOV             R2, #2
0000f3e4  MOV             R1, #0
0000f3e8  ADD             R0, SP, #0x3F4+var_3E0
0000f3ec  STM             R0, {R1-R3}
0000f3f0  STR             R9, [SP,#0x3F4+var_3E4]
0000f3f4  MOV             R2, #0
0000f3f8  ADD             R0, SP, #0x3F4+var_3CC
0000f3fc  STMEA           SP, {R0-R3}
0000f400  ADD             R3, SP, #0x3F4+var_3D4
0000f404  MOV             R2, R11
0000f408  MOV             R1, R5
0000f40c  MOV             R0, R10
0000f410  BL              sub_98BC
0000f414  MOV             R3, #0x50 ; 'P'
0000f418  ADD             R2, SP, #0x3F4+var_24C
0000f41c  LDR             R1, =0x262A
0000f420  MOV             R0, R6
0000f424  BL              sub_19618
0000f428  LDRH            R0, [R5]
0000f42c  MOV             R1, #0xFFFFFFDD
0000f430  ADD             R3, SP, #0x3F4+var_24C
0000f434  ADD             R0, R1, R0,LSR#1
0000f438  MOV             R9, R0,LSL#16
0000f43c  LDRH            R0, [R5,#2]
0000f440  MOV             R1, #0xA
0000f444  MOV             R9, R9,ASR#16
0000f448  ADD             R0, R1, R0,LSR#1
0000f44c  MOV             R11, R0,LSL#16
0000f450  LDRH            R0, [R8,#0x7C]
0000f454  MOV             R11, R11,ASR#16
0000f458  CMP             R0, #0
0000f45c  LDR             R0, [R4,#(dword_8 - 0xC)]
0000f460  LDR             R12, [R0,#0x3C]
0000f464  BNE             loc_F480
0000f468  MOV             R2, R7
0000f46c  MOV             R1, #0x180
0000f470  ADD             R0, SP, #0x3F4+var_3CC
0000f474  MOV             LR, PC
0000f478  BX              R12
0000f47c  B               loc_F498
0000f480  LDR             R2, =(aT00001Hfffff7S - 0xF48C); "$T00001$Hfffff7$S000000%s"
0000f484  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000f488  MOV             R1, #0x180
0000f48c  ADD             R0, SP, #0x3F4+var_3CC
0000f490  MOV             LR, PC
0000f494  BX              R12
0000f498  MOV             R3, #0
0000f49c  MOV             R2, #2
0000f4a0  MOV             R1, #0
0000f4a4  ADD             R0, SP, #0x3F4+var_3E0
0000f4a8  STM             R0, {R1-R3}
0000f4ac  STR             R9, [SP,#0x3F4+var_3E4]
0000f4b0  MOV             R2, #0
0000f4b4  ADD             R0, SP, #0x3F4+var_3CC
0000f4b8  STMEA           SP, {R0-R3}
0000f4bc  ADD             R3, SP, #0x3F4+var_3D4
0000f4c0  MOV             R2, R11
0000f4c4  MOV             R1, R5
0000f4c8  MOV             R0, R10
0000f4cc  BL              sub_98BC
0000f4d0  MOV             R3, #0x50 ; 'P'
0000f4d4  ADD             R2, SP, #0x3F4+var_24C
0000f4d8  LDR             R1, =0x262B
0000f4dc  MOV             R0, R6
0000f4e0  BL              sub_19618
0000f4e4  LDRH            R0, [R5]
0000f4e8  MOV             R1, #0x17
0000f4ec  ADD             R3, SP, #0x3F4+var_24C
0000f4f0  ADD             R0, R1, R0,LSR#1
0000f4f4  MOV             R6, R0,LSL#16
0000f4f8  LDRH            R0, [R5,#2]
0000f4fc  MOV             R1, #0xA
0000f500  MOV             R6, R6,ASR#16
0000f504  ADD             R0, R1, R0,LSR#1
0000f508  MOV             R9, R0,LSL#16
0000f50c  LDRH            R0, [R8,#0x7C]
0000f510  MOV             R9, R9,ASR#16
0000f514  CMP             R0, #1
0000f518  LDR             R0, [R4,#(dword_8 - 0xC)]
0000f51c  LDR             R12, [R0,#0x3C]
0000f520  BNE             loc_F53C
0000f524  MOV             R2, R7
0000f528  MOV             R1, #0x180
0000f52c  ADD             R0, SP, #0x3F4+var_3CC
0000f530  MOV             LR, PC
0000f534  BX              R12
0000f538  B               loc_F554
0000f53c  LDR             R2, =(aT00001Hfffff7S - 0xF548); "$T00001$Hfffff7$S000000%s"
0000f540  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000f544  MOV             R1, #0x180
0000f548  ADD             R0, SP, #0x3F4+var_3CC
0000f54c  MOV             LR, PC
0000f550  BX              R12
0000f554  MOV             R3, #0
0000f558  MOV             R2, #2
0000f55c  MOV             R1, #0
0000f560  ADD             R0, SP, #0x3F4+var_3E0
0000f564  STM             R0, {R1-R3}
0000f568  STR             R6, [SP,#0x3F4+var_3E4]
0000f56c  MOV             R2, #0
0000f570  ADD             R0, SP, #0x3F4+var_3CC
0000f574  STMEA           SP, {R0-R3}
0000f578  ADD             R3, SP, #0x3F4+var_3D4
0000f57c  MOV             R2, R9
0000f580  MOV             R1, R5
0000f584  MOV             R0, R10
0000f588  BL              sub_98BC
0000f58c  B               loc_F110
0000f590  LDRH            R1, [R5]
0000f594  MOV             R2, #8
0000f598  MOV             R1, R1,LSR#1
0000f59c  STRH            R1, [R4,#0xE]
0000f5a0  STRH            R0, [R4,#0x10]
0000f5a4  MOV             R0, R4
0000f5a8  MOV             R1, #7
0000f5ac  BL              sub_103F4
0000f5b0  STRH            R11, [R4,#8]
0000f5b4  MOV             R0, R4
0000f5b8  BL              sub_21BA8
0000f5bc  MOV             R2, R7
0000f5c0  MOV             R1, R5
0000f5c4  MOV             R0, R4
0000f5c8  BL              sub_1CE08
0000f5cc  LDRSH           R0, [R5,#2]
0000f5d0  MOV             R3, #0
0000f5d4  MOV             R2, #0
0000f5d8  LDR             R1, =0x1002
0000f5dc  STMEA           SP, {R0-R3}
0000f5e0  LDRSH           R3, [R5]
0000f5e4  MOV             R1, #0
0000f5e8  MOV             R0, R5
0000f5ec  BL              sub_10C58
0000f5f0  MOV             R3, #0x20 ; ' '
0000f5f4  ADD             R2, SP, #0x3F4+var_C4
0000f5f8  LDR             R1, =0x1B8A
0000f5fc  MOV             R0, R6
0000f600  BL              sub_19618
0000f604  LDR             R12, [R6,#0x64]
0000f608  LDRH            R1, [R5]
0000f60c  LDRH            R0, [R12,#0x32]
0000f610  LDR             R10, =0xFC00FFE0
0000f614  ADD             R2, SP, #0x3F4+var_3EC
0000f618  RSB             R0, R0, R1,LSR#1
0000f61c  MOV             LR, R0,LSL#16
0000f620  LDRH            R0, [R12,#0x30]
0000f624  LDRH            R1, [R5,#2]
0000f628  LDR             R7, =0x6060
0000f62c  MOV             LR, LR,ASR#16
0000f630  RSB             R0, R0, R1,LSR#1
0000f634  MOV             R4, R0,LSL#16
0000f638  MOV             R0, #0
0000f63c  MOV             R1, #0x11
0000f640  STM             R2, {R0,R1,R10}
0000f644  MOV             R4, R4,ASR#16
0000f648  STR             R4, [SP,#0x3F4+var_3F0]
0000f64c  STR             R7, [SP,#0x3F4+var_3E0]
0000f650  STR             LR, [SP,#0x3F4+var_3F4]
0000f654  ADD             R2, SP, #0x3F4+var_C4
0000f658  MOV             R1, R5
0000f65c  MOV             R0, R12
0000f660  MOV             R3, #0xFFFFFFFF
0000f664  BL              sub_1A228
0000f668  LDRH            R0, [R5]
0000f66c  MOV             R1, R0,LSR#1
0000f670  LDR             R0, [R6,#0x64]
0000f674  LDRH            R2, [R0,#0x32]
0000f678  LDRH            R0, [R0,#0x30]
0000f67c  SUB             R1, R1, R2,LSL#1
0000f680  MOV             R11, R1,LSL#16
0000f684  LDRH            R1, [R5,#2]
0000f688  MOV             R11, R11,ASR#16
0000f68c  ADD             R0, R0, R1,LSR#1
0000f690  MOV             R4, R0,LSL#16
0000f694  LDRH            R0, [R8,#0x84]
0000f698  MOV             R4, R4,ASR#16
0000f69c  CMP             R0, #0
0000f6a0  BNE             loc_F6B8
0000f6a4  MOV             R0, #3
0000f6a8  LDR             R1, [R9,#0x140]
0000f6ac  BL              sub_1DC
0000f6b0  CMP             R1, #0
0000f6b4  BEQ             loc_F71C
0000f6b8  MOV             R3, #0x20 ; ' '
0000f6bc  ADD             R2, SP, #0x3F4+var_C4
0000f6c0  LDR             R1, =0x1B8B
0000f6c4  MOV             R0, R6
0000f6c8  BL              sub_19618
0000f6cc  MOV             R1, #0x11
0000f6d0  MOV             R0, #0
0000f6d4  ADD             R2, SP, #0x3F4+var_3EC
0000f6d8  STM             R2, {R0,R1,R10}
0000f6dc  STR             R4, [SP,#0x3F4+var_3F0]
0000f6e0  STR             R7, [SP,#0x3F4+var_3E0]
0000f6e4  STR             R11, [SP,#0x3F4+var_3F4]
0000f6e8  LDR             R0, [R6,#0x64]
0000f6ec  ADD             R2, SP, #0x3F4+var_C4
0000f6f0  MOV             R1, R5
0000f6f4  MOV             R3, #0xFFFFFFFF
0000f6f8  BL              sub_1A228
0000f6fc  LDRH            R0, [R8,#0x84]
0000f700  CMP             R0, #1
0000f704  BNE             loc_F71C
0000f708  MOV             R0, #3
0000f70c  LDR             R1, [R9,#0x140]
0000f710  BL              sub_1DC
0000f714  CMP             R1, #0
0000f718  BEQ             loc_F110
0000f71c  MOV             R3, #0x20 ; ' '
0000f720  ADD             R2, SP, #0x3F4+var_C4
0000f724  LDR             R1, =0x1B8C
0000f728  MOV             R0, R6
0000f72c  BL              sub_19618
0000f730  LDR             R12, [R6,#0x64]
0000f734  LDRH            R1, [R5]
0000f738  LDRH            R0, [R12,#0x32]
0000f73c  ADD             R6, SP, #0x3F4+var_3EC
0000f740  MOV             R3, #0xFFFFFFFF
0000f744  ADD             R0, R0, R1,LSR#1
0000f748  MOV             LR, R0,LSL#16
0000f74c  MOV             R0, #0
0000f750  MOV             R1, #0x11
0000f754  STM             R6, {R0,R1,R10}
0000f758  MOV             R2, LR,ASR#16
0000f75c  STMEA           SP, {R2,R4}
0000f760  STR             R7, [SP,#0x3F4+var_3E0]
0000f764  ADD             R2, SP, #0x3F4+var_C4
0000f768  MOV             R1, R5
0000f76c  MOV             R0, R12
0000f770  BL              sub_1A228
0000f774  B               loc_F110
