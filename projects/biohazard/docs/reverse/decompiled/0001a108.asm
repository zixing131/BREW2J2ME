0001a108  PUSH            {R4-R6,LR}
0001a10c  MOV             R4, R0
0001a110  BL              sub_602C
0001a114  LDR             R5, =(start - 0x1A120)
0001a118  ADD             R5, PC, R5; start
0001a11c  LDR             R0, [R4,#0x1A0]
0001a120  MOV             R6, #0
0001a124  CMP             R0, #0
0001a128  BEQ             loc_1A148
0001a12c  BL              nullsub_2
0001a130  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a134  LDR             R0, [R4,#0x1A0]
0001a138  LDR             R1, [R1,#0x6C]
0001a13c  MOV             LR, PC
0001a140  BX              R1
0001a144  STR             R6, [R4,#0x1A0]
0001a148  LDR             R0, [R4,#0x198]
0001a14c  CMP             R0, #0
0001a150  BEQ             loc_1A170
0001a154  BL              nullsub_1
0001a158  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a15c  LDR             R0, [R4,#0x198]
0001a160  LDR             R1, [R1,#0x6C]
0001a164  MOV             LR, PC
0001a168  BX              R1
0001a16c  STR             R6, [R4,#0x198]
0001a170  LDR             R0, [R4,#0x190]
0001a174  CMP             R0, #0
0001a178  BEQ             loc_1A198
0001a17c  BL              sub_229BC
0001a180  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a184  LDR             R0, [R4,#0x190]
0001a188  LDR             R1, [R1,#0x6C]
0001a18c  MOV             LR, PC
0001a190  BX              R1
0001a194  STR             R6, [R4,#0x190]
0001a198  LDR             R0, [R4,#0x194]
0001a19c  CMP             R0, #0
0001a1a0  BEQ             loc_1A1C0
0001a1a4  BL              sub_228B8
0001a1a8  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a1ac  LDR             R0, [R4,#0x194]
0001a1b0  LDR             R1, [R1,#0x6C]
0001a1b4  MOV             LR, PC
0001a1b8  BX              R1
0001a1bc  STR             R6, [R4,#0x194]
0001a1c0  LDR             R0, [R4,#0x198]
0001a1c4  CMP             R0, #0
0001a1c8  BEQ             loc_1A1E8
0001a1cc  BL              nullsub_1
0001a1d0  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a1d4  LDR             R0, [R4,#0x198]
0001a1d8  LDR             R1, [R1,#0x6C]
0001a1dc  MOV             LR, PC
0001a1e0  BX              R1
0001a1e4  STR             R6, [R4,#0x198]
0001a1e8  LDR             R0, [R4,#0x18C]
0001a1ec  CMP             R0, #0
0001a1f0  BEQ             loc_1A218
0001a1f4  BL              sub_22DB0
0001a1f8  LDR             R0, [R4,#0x18C]
0001a1fc  CMP             R0, #0
0001a200  BEQ             loc_1A218
0001a204  LDR             R1, [R5,#(dword_8 - 0xC)]
0001a208  ADR             LR, loc_1A214
0001a20c  LDR             R1, [R1,#0x6C]
0001a210  BX              R1
0001a214  STR             R6, [R4,#0x18C]
0001a218  ADD             R0, R4, #0x220
0001a21c  POP             {R4-R6,LR}
0001a220  B               sub_22F1C
