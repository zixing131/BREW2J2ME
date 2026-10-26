000178d0  PUSH            {R4-R8,LR}
000178d4  MOV             R4, R0
000178d8  LDR             R0, [R0,#0x14]
000178dc  SUB             SP, SP, #0x40
000178e0  CMP             R0, #0
000178e4  LDREQ           R0, [R4,#0x24]
000178e8  MOV             R5, R1
000178ec  CMPEQ           R0, #0
000178f0  LDREQ           R0, [R4,#0x28]
000178f4  CMPEQ           R0, #0
000178f8  MOVNE           R0, #6
000178fc  BNE             loc_17930
00017900  CMP             R5, #0
00017904  MOVEQ           R0, #2
00017908  BEQ             loc_17930
0001790c  LDR             R0, [R5]
00017910  ADR             LR, loc_17920
00017914  LDR             R1, [R0,#0x3C]
00017918  MOV             R0, R5
0001791c  BX              R1
00017920  STR             R0, [R4,#0x24]
00017924  CMP             R0, #0
00017928  BNE             loc_1793C
0001792c  MOV             R0, #4
00017930  ADD             SP, SP, #0x40 ; '@'
00017934  POP             {R4-R8,LR}
00017938  BX              LR
0001793c  LDR             R1, [R0]
00017940  ADD             R2, R4, #0x28 ; '('
00017944  LDR             R3, [R1,#8]
00017948  LDR             R1, =0x1001045
0001794c  MOV             LR, PC
00017950  BX              R3
00017954  MOV             R6, #0
00017958  CMP             R0, #0
0001795c  BNE             loc_1796C
00017960  LDR             R0, [R4,#0x28]
00017964  CMP             R0, #0
00017968  BNE             loc_17980
0001796c  LDR             R0, [R4,#0x24]
00017970  BL              sub_1432C
00017974  STR             R6, [R4,#0x24]
00017978  STR             R6, [R4,#0x28]
0001797c  B               loc_1792C
00017980  LDRB            R1, [R0,#0x1D]
00017984  CMP             R1, #0x10
00017988  BEQ             loc_179B4
0001798c  LDR             R1, [R0]
00017990  ADR             LR, loc_1799C
00017994  LDR             R1, [R1,#4]
00017998  BX              R1
0001799c  LDR             R0, [R4,#0x24]
000179a0  BL              sub_1432C
000179a4  STR             R6, [R4,#0x24]
000179a8  STR             R6, [R4,#0x28]
000179ac  MOV             R0, #0x64 ; 'd'
000179b0  B               loc_17930
000179b4  LDR             R7, =(start - 0x179C8)
000179b8  MOV             R0, #0x40 ; '@'
000179bc  STRH            R0, [SP,#0x40+var_14]
000179c0  ADD             R7, PC, R7; start
000179c4  LDR             R0, [R7,#(dword_8 - 0xC)]
000179c8  ADR             LR, loc_179D4
000179cc  LDR             R0, [R0,#0xC0]
000179d0  BX              R0
000179d4  LDR             R8, [R0,#0xC]
000179d8  LDR             R0, [R7,#(dword_8 - 0xC)]
000179dc  LDR             R0, [R0,#0xC0]
000179e0  MOV             LR, PC
000179e4  BX              R0
000179e8  LDR             R0, [R0,#0xC]
000179ec  MOV             R1, SP
000179f0  LDR             R0, [R0]
000179f4  ADR             LR, loc_17A04
000179f8  LDR             R2, [R0,#0x10]
000179fc  MOV             R0, R8
00017a00  BX              R2
00017a04  LDRH            R1, [SP,#0x40+var_40]
00017a08  STRH            R1, [R4]
00017a0c  LDRH            R0, [SP,#0x40+var_3E]
00017a10  ADR             LR, loc_17A40
00017a14  STRH            R0, [R4,#2]
00017a18  STRH            R6, [R4,#4]
00017a1c  STRH            R1, [R4,#8]
00017a20  STRH            R6, [R4,#6]
00017a24  STRH            R0, [R4,#0xA]
00017a28  STRH            R6, [R4,#0xC]
00017a2c  STRH            R6, [R4,#0xE]
00017a30  LDR             R1, [R7,#(dword_8 - 0xC)]
00017a34  MOV             R0, R0,LSL#2
00017a38  LDR             R1, [R1,#0x68]
00017a3c  BX              R1
00017a40  STR             R0, [R4,#0x14]
00017a44  CMP             R0, #0
00017a48  MOVNE           R0, #0
00017a4c  BNE             loc_17A98
00017a50  LDR             R0, [R4,#0x28]
00017a54  ADR             LR, loc_17A64
00017a58  LDR             R1, [R0]
00017a5c  LDR             R1, [R1,#4]
00017a60  BX              R1
00017a64  LDR             R0, [R4,#0x24]
00017a68  BL              sub_1432C
00017a6c  STR             R6, [R4,#0x24]
00017a70  STR             R6, [R4,#0x28]
00017a74  MOV             R0, #3
00017a78  B               loc_17930
00017a7c  LDR             R1, [R4,#0x28]
00017a80  LDR             R2, [R1,#8]
00017a84  LDRSH           R1, [R1,#0x18]
00017a88  MLA             R2, R1, R0, R2
00017a8c  LDR             R1, [R4,#0x14]
00017a90  STR             R2, [R1,R0,LSL#2]
00017a94  ADD             R0, R0, #1
00017a98  LDRH            R1, [R4,#2]
00017a9c  CMP             R1, R0
00017aa0  BGT             loc_17A7C
00017aa4  MOV             R0, #0xC
00017aa8  STR             R5, [R4,#0x20]
00017aac  STRH            R0, [R4,#0x10]
00017ab0  STRH            R0, [R4,#0x12]
00017ab4  MOV             R0, #1
00017ab8  STRB            R0, [R4,#0x1C]
00017abc  MOV             R0, #0
00017ac0  B               loc_17930
