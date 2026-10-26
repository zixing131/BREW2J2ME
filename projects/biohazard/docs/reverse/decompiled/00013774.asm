00013774  PUSH            {R1-R11,LR}
00013778  LDR             LR, [SP,#0xC+arg_0]
0001377c  LDR             R8, [R1,#0x20]
00013780  MOV             R6, R0
00013784  LDR             R0, [R0,#0x13C]
00013788  MOV             R5, R1
0001378c  CMP             R0, #7
00013790  MOVNE           R0, #0
00013794  BNE             loc_13950
00013798  ADD             R4, R6, #0x100
0001379c  LDRH            R0, [R4,#0x7C]
000137a0  MOV             R10, #1
000137a4  CMP             R0, #0
000137a8  BEQ             loc_1381C
000137ac  CMP             R0, #1
000137b0  BNE             loc_1394C
000137b4  LDR             R11, =(sub_18114 - 0x137C4)
000137b8  MOV             R0, #0
000137bc  ADD             R11, PC, R11; sub_18114
000137c0  SUB             R12, R2, #0x100
000137c4  SUBS            R12, R12, #2
000137c8  LDR             R9, =0x7530
000137cc  BNE             loc_13870
000137d0  SUB             R12, R3, #0xE000
000137d4  SUBS            R12, R12, #0x33 ; '3'
000137d8  STRHEQ          R0, [R4,#0x7E]
000137dc  BEQ             loc_1394C
000137e0  SUB             R12, R3, #0xE000
000137e4  SUBS            R12, R12, #0x34 ; '4'
000137e8  BEQ             loc_13948
000137ec  SUB             R12, R3, #0xE000
000137f0  SUBS            R12, R12, #0x36 ; '6'
000137f4  BEQ             loc_13834
000137f8  SUB             R12, R3, #0xE000
000137fc  SUBS            R12, R12, #0x37 ; '7'
00013800  LDREQ           R0, [R5,#0xC]
00013804  ADREQ           LR, loc_13818
00013808  LDREQ           R1, [R0]
0001380c  LDREQ           R2, [R1,#0x18]
00013810  MOVEQ           R1, #0
00013814  BXEQ            R2
00013818  B               loc_1394C
0001381c  SUB             R12, R2, #0x100
00013820  SUBS            R12, R12, #2
00013824  SUBNE           R12, R2, #0x400
00013828  SUBSNE          R12, R12, #0x104
0001382c  STRHEQ          R10, [R4,#0x7C]
00013830  B               loc_1394C
00013834  LDRH            R0, [R4,#0x7E]
00013838  CMP             R0, #0
0001383c  MOVEQ           R2, R9
00013840  MOVEQ           R1, #1
00013844  BEQ             loc_13960
00013848  B               loc_13958
0001384c  MOV             R3, #0xFFFFFFFF
00013850  MOV             R2, #0
00013854  STMEA           SP, {R2,R3}
00013858  MOV             R3, R11
0001385c  MOV             R2, #4
00013860  MOV             R1, #5
00013864  MOV             R0, R6
00013868  BL              sub_103B4
0001386c  B               loc_1394C
00013870  SUB             R12, R2, #0x400
00013874  SUBS            R12, R12, #0x104
00013878  BNE             loc_1394C
0001387c  MOV             R1, LR,LSR#16
00013880  MOV             R7, R1,LSL#16
00013884  LDRH            R2, [R8,#2]
00013888  MOV             R1, LR,LSL#16
0001388c  MOV             R3, #5
00013890  ADD             R3, R3, R2,LSR#1
00013894  MOV             R1, R1,ASR#16
00013898  CMP             R3, R1
0001389c  MOV             R7, R7,ASR#16
000138a0  BGT             loc_1394C
000138a4  MOV             R3, #0x1E
000138a8  ADD             R2, R3, R2,LSR#1
000138ac  CMP             R2, R1
000138b0  BLT             loc_1394C
000138b4  LDRH            R1, [R8]
000138b8  MOV             R2, #0xFFFFFFE2
000138bc  ADD             R2, R2, R1,LSR#1
000138c0  CMP             R2, R7
000138c4  BGT             loc_13918
000138c8  MOV             R2, #0xFFFFFFFB
000138cc  ADD             R1, R2, R1,LSR#1
000138d0  CMP             R1, R7
000138d4  BLT             loc_13918
000138d8  LDRH            R1, [R4,#0x7E]
000138dc  CMP             R1, #1
000138e0  STRHEQ          R0, [R4,#0x7E]
000138e4  BEQ             loc_13918
000138e8  MOV             R2, R9
000138ec  MOV             R1, #1
000138f0  MOV             R0, R5
000138f4  BL              sub_24C64
000138f8  MOV             R3, #0xFFFFFFFF
000138fc  MOV             R2, #0
00013900  STMEA           SP, {R2,R3}
00013904  MOV             R3, R11
00013908  MOV             R2, #4
0001390c  MOV             R1, #5
00013910  MOV             R0, R6
00013914  BL              sub_103B4
00013918  LDRH            R0, [R8]
0001391c  MOV             R3, #5
00013920  ADD             R1, R3, R0,LSR#1
00013924  CMP             R1, R7
00013928  BGT             loc_1394C
0001392c  MOV             R3, #0x1E
00013930  ADD             R0, R3, R0,LSR#1
00013934  CMP             R0, R7
00013938  BLT             loc_1394C
0001393c  LDRH            R0, [R4,#0x7E]
00013940  CMP             R0, #0
00013944  BNE             loc_13958
00013948  STRH            R10, [R4,#0x7E]
0001394c  MOV             R0, #1
00013950  POP             {R1-R11,LR}
00013954  BX              LR
00013958  MOV             R2, R9
0001395c  MOV             R1, #0
00013960  MOV             R0, R5
00013964  BL              sub_24C64
00013968  B               loc_1384C
