0001eeb0  PUSH            {R4-R11,LR}
0001eeb4  SUB             R12, R1, #0x100
0001eeb8  SUBS            R12, R12, #2
0001eebc  SUB             SP, SP, #0x14
0001eec0  MOV             R4, R0
0001eec4  BNE             loc_1F344
0001eec8  ADD             R5, R4, #0x100
0001eecc  LDRH            R1, [R5,#0x24]
0001eed0  MOV             R0, #1
0001eed4  CMP             R1, #2
0001eed8  BNE             loc_1EF00
0001eedc  LDR             R3, [R4,#0x110]
0001eee0  LDR             R3, [R3,#0x1C]
0001eee4  LDR             R12, [R4,#0x128]
0001eee8  CMP             R3, R12
0001eeec  STRHLT          R0, [R5,#0x24]
0001eef0  MOVLT           R0, #4
0001eef4  STRBLT          R0, [R5,#0xC]
0001eef8  MOVLT           R0, #0
0001eefc  BLT             loc_1F348
0001ef00  SUBS            R12, R2, #0xE000
0001ef04  SUBSGE          R12, R12, #0x33 ; '3'
0001ef08  MOV             R8, #0
0001ef0c  BEQ             loc_1EFB4
0001ef10  BGT             loc_1EF60
0001ef14  SUB             R12, R2, #0xE000
0001ef18  SUBS            R12, R12, #0x21 ; '!'
0001ef1c  BEQ             loc_1EF84
0001ef20  SUB             R12, R2, #0xE000
0001ef24  SUBS            R12, R12, #0x31 ; '1'
0001ef28  BEQ             loc_1F0B0
0001ef2c  SUB             R12, R2, #0xE000
0001ef30  SUBS            R12, R12, #0x32 ; '2'
0001ef34  BNE             loc_1F344
0001ef38  CMP             R1, #0
0001ef3c  LDRSHEQ         R0, [R4,#2]
0001ef40  ADDEQ           R1, R0, #1
0001ef44  LDRSHEQ         R0, [R4]
0001ef48  BEQ             loc_1F0C8
0001ef4c  CMP             R1, #1
0001ef50  LDRHEQ          R0, [R5,#0x4E]
0001ef54  ADDEQ           R0, R0, #1
0001ef58  BEQ             loc_1F0F0
0001ef5c  B               loc_1F344
0001ef60  SUB             R12, R2, #0xE000
0001ef64  SUBS            R12, R12, #0x34 ; '4'
0001ef68  BEQ             loc_1F024
0001ef6c  SUB             R12, R2, #0xE000
0001ef70  SUBS            R12, R12, #0x36 ; '6'
0001ef74  BEQ             loc_1F118
0001ef78  SUB             R12, R2, #0xE000
0001ef7c  SUBS            R12, R12, #0x37 ; '7'
0001ef80  BNE             loc_1F344
0001ef84  CMP             R1, #0
0001ef88  STRHEQ          R8, [R5,#0x48]
0001ef8c  BEQ             loc_1F344
0001ef90  CMP             R1, #1
0001ef94  BNE             loc_1F10C
0001ef98  LDRH            R6, [R4,#2]
0001ef9c  STRH            R8, [R5,#0x24]
0001efa0  LDRSH           R1, [R5,#0x3C]
0001efa4  MOV             R0, R4
0001efa8  BL              sub_16444
0001efac  STRH            R6, [R4,#2]
0001efb0  B               loc_1F0D0
0001efb4  CMP             R1, #1
0001efb8  BNE             loc_1F000
0001efbc  LDRSH           R0, [R5,#0x4E]
0001efc0  CMP             R0, #5
0001efc4  BCS             loc_1F344
0001efc8  ADD             R0, R0, R4
0001efcc  LDRB            R1, [R0,#0x131]
0001efd0  CMP             R1, #0
0001efd4  LDRBNE          R1, [R0,#0x131]!
0001efd8  SUBNE           R1, R1, #1
0001efdc  STRBNE          R1, [R0]
0001efe0  LDRSH           R0, [R5,#0x4E]
0001efe4  ADD             R2, R0, R4
0001efe8  LDRB            R0, [R2,#0x12C]
0001efec  LDRB            R1, [R2,#0x131]
0001eff0  CMP             R0, R1
0001eff4  BHI             loc_1F060
0001eff8  MOV             R0, R1
0001effc  B               loc_1F060
0001f000  CMP             R1, #2
0001f004  BNE             loc_1F344
0001f008  LDRB            R0, [R4,#0x13B]
0001f00c  CMP             R0, #0
0001f010  BNE             loc_1F01C
0001f014  MOV             R0, #1
0001f018  B               loc_1F0A8
0001f01c  MOV             R0, #0
0001f020  B               loc_1F0A8
0001f024  CMP             R1, #1
0001f028  BNE             loc_1F090
0001f02c  LDRSH           R0, [R5,#0x4E]
0001f030  CMP             R0, #5
0001f034  BCS             loc_1F344
0001f038  ADD             R0, R0, R4
0001f03c  LDRB            R1, [R0,#0x131]!
0001f040  ADD             R1, R1, #1
0001f044  STRB            R1, [R0]
0001f048  LDRSH           R0, [R5,#0x4E]
0001f04c  ADD             R2, R0, R4
0001f050  LDRB            R0, [R2,#0x136]
0001f054  LDRB            R1, [R2,#0x131]
0001f058  CMP             R0, R1
0001f05c  BCS             loc_1EFF8
0001f060  STRB            R0, [R2,#0x131]
0001f064  LDRB            R1, [R4,#0x133]
0001f068  LDRB            R2, [R4,#0x134]
0001f06c  LDRB            R3, [R4,#0x135]
0001f070  STMEA           SP, {R1-R3}
0001f074  LDRB            R3, [R4,#0x132]
0001f078  LDRB            R2, [R4,#0x131]
0001f07c  LDRSH           R1, [R5,#0x26]
0001f080  LDR             R0, [R4,#0x110]
0001f084  BL              sub_124A0
0001f088  STR             R0, [R4,#0x128]
0001f08c  B               loc_1F344
0001f090  CMP             R1, #2
0001f094  BNE             loc_1F344
0001f098  LDRB            R0, [R4,#0x13B]
0001f09c  CMP             R0, #0
0001f0a0  BNE             loc_1F01C
0001f0a4  B               loc_1F014
0001f0a8  STRB            R0, [R4,#0x13B]
0001f0ac  B               loc_1F344
0001f0b0  CMP             R1, #0
0001f0b4  BNE             loc_1F0E0
0001f0b8  LDRSH           R1, [R4,#2]
0001f0bc  LDRSH           R0, [R4]
0001f0c0  ADD             R1, R1, R0
0001f0c4  SUB             R1, R1, #1
0001f0c8  BL              sub_104
0001f0cc  STRH            R1, [R4,#2]
0001f0d0  MOV             R0, R4
0001f0d4  BL              sub_252A0
0001f0d8  STR             R8, [R4,#0x140]
0001f0dc  B               loc_1F344
0001f0e0  CMP             R1, #1
0001f0e4  BNE             loc_1F344
0001f0e8  LDRH            R0, [R5,#0x4E]
0001f0ec  SUB             R0, R0, #1
0001f0f0  MOV             R0, R0,LSL#16
0001f0f4  MOV             R0, R0,ASR#16
0001f0f8  ADD             R1, R0, #5
0001f0fc  MOV             R0, #5
0001f100  BL              sub_104
0001f104  STRH            R1, [R5,#0x4E]
0001f108  B               loc_1F344
0001f10c  CMP             R1, #2
0001f110  BNE             loc_1F344
0001f114  B               loc_1F22C
0001f118  ADD             R2, R4, #0x100
0001f11c  ADD             R10, R4, #0x100
0001f120  ADD             R11, R4, #0x100
0001f124  LDR             R12, =(start - 0x1F140)
0001f128  ADD             R11, R11, #0x3A ; ':'
0001f12c  ADD             R10, R10, #0x39 ; '9'
0001f130  ADD             R2, R2, #0x37 ; '7'
0001f134  ADD             R9, R4, #0x138
0001f138  ADD             R12, PC, R12; start
0001f13c  ADD             R6, R4, #0x100
0001f140  ADD             R6, R6, #0x36 ; '6'
0001f144  ADD             R7, R4, #0x12C
0001f148  CMP             R1, #0
0001f14c  STR             R2, [SP,#0x14+var_4]
0001f150  BNE             loc_1F1F8
0001f154  STRH            R0, [R5,#0x24]
0001f158  STR             R8, [R4,#0x140]
0001f15c  STRH            R8, [R5,#0x4E]
0001f160  LDRSH           R0, [R4,#2]
0001f164  MOV             R2, #5
0001f168  ADR             LR, loc_1F1C0
0001f16c  STRH            R0, [R5,#0x26]
0001f170  STR             R8, [R4,#0x128]
0001f174  LDR             R1, [R4,#0x110]
0001f178  MOV             R8, R12
0001f17c  ADD             R0, R1, R0,LSL#3
0001f180  LDRB            R1, [R0,#0x220]
0001f184  STRB            R1, [R4,#0x12C]
0001f188  LDRB            R1, [R0,#0x221]
0001f18c  STRB            R1, [R4,#0x12D]
0001f190  LDRB            R1, [R0,#0x222]
0001f194  STRB            R1, [R4,#0x12E]
0001f198  LDRB            R1, [R0,#0x223]
0001f19c  STRB            R1, [R4,#0x12F]
0001f1a0  LDRB            R0, [R0,#0x224]
0001f1a4  MOV             R1, R7
0001f1a8  STRB            R0, [R4,#0x130]
0001f1ac  LDR             R0, [R12,#(dword_8 - 0xC)]
0001f1b0  LDR             R3, [R0]
0001f1b4  ADD             R0, R4, #0x100
0001f1b8  ADD             R0, R0, #0x31 ; '1'
0001f1bc  BX              R3
0001f1c0  LDR             R0, [R8,#(dword_8 - 0xC)]
0001f1c4  MOV             R2, #5
0001f1c8  LDR             R3, [R0]
0001f1cc  MOV             R0, R6
0001f1d0  MOV             R1, R7
0001f1d4  MOV             LR, PC
0001f1d8  BX              R3
0001f1dc  STMEA           SP, {R9-R11}
0001f1e0  LDRSH           R1, [R5,#0x26]
0001f1e4  LDR             R0, [R4,#0x110]
0001f1e8  LDR             R3, [SP,#0x14+var_4]
0001f1ec  MOV             R2, R6
0001f1f0  BL              sub_12418
0001f1f4  B               loc_1F344
0001f1f8  CMP             R1, #1
0001f1fc  BNE             loc_1F218
0001f200  LDR             R1, [R4,#0x128]
0001f204  CMP             R1, #0
0001f208  MOVGT           R1, #2
0001f20c  STRHGT          R1, [R5,#0x24]
0001f210  BGT             loc_1F0A8
0001f214  B               loc_1F344
0001f218  CMP             R1, #2
0001f21c  BNE             loc_1F344
0001f220  LDRB            R1, [R4,#0x13B]
0001f224  CMP             R1, #0
0001f228  BNE             loc_1F234
0001f22c  STRH            R0, [R5,#0x24]
0001f230  B               loc_1F344
0001f234  LDR             R2, [R4,#0x110]
0001f238  LDR             R3, [R2,#0x1C]
0001f23c  LDR             R1, [R4,#0x128]
0001f240  CMP             R3, R1
0001f244  BLT             loc_1F344
0001f248  STRH            R0, [R5,#0x24]
0001f24c  ADD             R0, R2, #0x1C
0001f250  LDR             R2, [R2,#0x1C]
0001f254  ADR             LR, loc_1F2FC
0001f258  SUB             R1, R2, R1
0001f25c  STR             R1, [R0]
0001f260  STR             R8, [R4,#0x140]
0001f264  LDRSH           R1, [R4,#2]
0001f268  STRH            R1, [R5,#0x26]
0001f26c  STR             R8, [R4,#0x128]
0001f270  LDRB            R0, [R4,#0x131]
0001f274  LDR             R2, [R4,#0x110]
0001f278  ADD             R1, R2, R1,LSL#3
0001f27c  STRB            R0, [R1,#0x220]
0001f280  STRB            R0, [R4,#0x12C]
0001f284  LDRSH           R2, [R5,#0x26]
0001f288  LDRB            R0, [R4,#0x132]
0001f28c  LDR             R1, [R4,#0x110]
0001f290  ADD             R1, R1, R2,LSL#3
0001f294  STRB            R0, [R1,#0x221]
0001f298  STRB            R0, [R4,#0x12D]
0001f29c  LDRSH           R2, [R5,#0x26]
0001f2a0  LDRB            R0, [R4,#0x133]
0001f2a4  LDR             R1, [R4,#0x110]
0001f2a8  ADD             R1, R1, R2,LSL#3
0001f2ac  STRB            R0, [R1,#0x222]
0001f2b0  STRB            R0, [R4,#0x12E]
0001f2b4  LDRSH           R2, [R5,#0x26]
0001f2b8  LDRB            R0, [R4,#0x134]
0001f2bc  LDR             R1, [R4,#0x110]
0001f2c0  ADD             R1, R1, R2,LSL#3
0001f2c4  STRB            R0, [R1,#0x223]
0001f2c8  STRB            R0, [R4,#0x12F]
0001f2cc  LDRSH           R2, [R5,#0x26]
0001f2d0  LDR             R1, [R4,#0x110]
0001f2d4  LDRB            R0, [R4,#0x135]
0001f2d8  ADD             R1, R1, R2,LSL#3
0001f2dc  MOV             R2, #5
0001f2e0  STRB            R0, [R1,#0x224]
0001f2e4  STRB            R0, [R4,#0x130]
0001f2e8  LDR             R0, [R12,#(dword_8 - 0xC)]
0001f2ec  MOV             R1, R7
0001f2f0  LDR             R3, [R0]
0001f2f4  MOV             R0, R6
0001f2f8  BX              R3
0001f2fc  STMEA           SP, {R9-R11}
0001f300  LDRSH           R1, [R5,#0x26]
0001f304  LDR             R0, [R4,#0x110]
0001f308  LDR             R3, [SP,#0x14+var_4]
0001f30c  MOV             R2, R6
0001f310  BL              sub_12418
0001f314  LDRSH           R1, [R5,#0x3C]
0001f318  MOV             R0, R4
0001f31c  BL              sub_16444
0001f320  LDRH            R0, [R5,#0x26]
0001f324  STRH            R0, [R4,#2]
0001f328  MOV             R0, R4
0001f32c  BL              sub_252A0
0001f330  MOV             R3, #0
0001f334  LDR             R0, [R4,#0x118]
0001f338  LDR             R2, =0x1F51
0001f33c  MOV             R1, #0
0001f340  BL              sub_E00
0001f344  MOV             R0, #1
0001f348  ADD             SP, SP, #0x14
0001f34c  POP             {R4-R11,LR}
0001f350  BX              LR
