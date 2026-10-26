00017790  PUSH            {R1-R5,LR}
00017794  MOV             R4, R0
00017798  LDR             R0, =(sub_1D8C0 - 0x177A8)
0001779c  MOV             R5, R1
000177a0  ADD             R0, PC, R0; sub_1D8C0
000177a4  STR             R0, [R4,#0x16C]
000177a8  LDR             R0, =(sub_203D0 - 0x177B4)
000177ac  ADD             R0, PC, R0; sub_203D0
000177b0  STR             R0, [R4,#0x170]
000177b4  LDR             R0, =(sub_13A8C - 0x177C0)
000177b8  ADD             R0, PC, R0; sub_13A8C
000177bc  STR             R0, [R4,#0x174]
000177c0  LDR             R0, =(sub_11B18 - 0x177CC)
000177c4  ADD             R0, PC, R0; sub_11B18
000177c8  STR             R0, [R4,#0x178]
000177cc  MOV             R0, #4
000177d0  STR             R0, [R4,#0x13C]
000177d4  MOV             R3, #0xFFFFFFFF
000177d8  MOV             R2, #1
000177dc  STMEA           SP, {R2,R3}
000177e0  MOV             R3, #0
000177e4  MOV             R2, #2
000177e8  MOV             R0, R4
000177ec  MOV             R1, #4
000177f0  BL              sub_103B4
000177f4  MOV             R1, #0
000177f8  STR             R1, [R4,#0x140]
000177fc  MOV             R2, #2
00017800  ADD             R0, R4, #0x100
00017804  STRH            R2, [R0,#0x82]
00017808  STRH            R1, [R0,#0x7E]
0001780c  MOV             R2, #0xFFFFFFFF
00017810  STRH            R2, [R0,#0x80]
00017814  STRB            R1, [R4,#0x12C]
00017818  STRH            R1, [R0,#0x86]
0001781c  STRH            R1, [R0,#0x88]
00017820  LDRB            R1, [R5,#0x59]
00017824  LDR             R2, =0x7530
00017828  STRH            R1, [R0,#0x84]
0001782c  LDRB            R1, [R5,#0x59]
00017830  MOV             R0, R5
00017834  BL              sub_24C64
00017838  POP             {R1-R5,LR}
0001783c  MOV             R0, #1
00017840  BX              LR
