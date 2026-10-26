0002531c  PUSH            {R4-R8,LR}
00025320  MOV             R6, R1
00025324  LDR             R1, [R0,#0xE0]
00025328  MOV             R8, R3
0002532c  MOV             R7, R2
00025330  MOV             R4, R0
00025334  BL              sub_1058
00025338  CMP             R6, #0x100
0002533c  SUBEQ           R12, R7, #0xE000
00025340  MOV             R5, R0
00025344  LDR             R0, [R5]
00025348  SUBSEQ          R12, R12, #0x37 ; '7'
0002534c  LDREQ           R7, =0xE030
00025350  CMP             R0, #0
00025354  BEQ             loc_25370
00025358  MOV             R3, R8
0002535c  MOV             R2, R7
00025360  MOV             R1, R6
00025364  BL              sub_14DEC
00025368  CMP             R0, #0
0002536c  BNE             loc_2540C
00025370  CMP             R6, #2
00025374  BEQ             loc_253B0
00025378  CMP             R6, #3
0002537c  BEQ             loc_253D8
00025380  SUB             R12, R6, #0x7000
00025384  SUBS            R12, R12, #0x64 ; 'd'
00025388  MOVNE           R0, #0
0002538c  POPNE           {R4-R8,PC}
00025390  ADD             R1, R5, #0x4C ; 'L'
00025394  MOV             R0, R4
00025398  BL              sub_24F9C
0002539c  MOV             R0, #3
000253a0  STRB            R0, [R4,#0xD5]
000253a4  MOV             R0, R4
000253a8  BL              sub_25608
000253ac  B               loc_2540C
000253b0  MOV             R1, #0
000253b4  LDR             R0, [R5]
000253b8  BL              sub_152CC
000253bc  ADD             R1, R4, #0xD8
000253c0  MOV             R0, R4
000253c4  BL              sub_1837C
000253c8  ADD             R1, R5, #0x4C ; 'L'
000253cc  MOV             R0, R4
000253d0  BL              sub_24F9C
000253d4  B               loc_2540C
000253d8  LDR             R1, [R4,#0xD8]
000253dc  MOV             R0, R4
000253e0  BL              sub_182E8
000253e4  MOV             R1, #1
000253e8  LDR             R0, [R5]
000253ec  BL              sub_152CC
000253f0  LDR             R0, [R5]
000253f4  BL              sub_14FF8
000253f8  ADD             R1, R5, #0x4C ; 'L'
000253fc  MOV             R0, R4
00025400  BL              sub_24EB4
00025404  LDR             R0, [R5,#0xC]
00025408  BL              sub_145AC
0002540c  MOV             R0, #1
00025410  POP             {R4-R8,PC}
