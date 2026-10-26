00024110  PUSH            {R3-R5,LR}
00024114  LDR             R1, [R0,#0xE0]
00024118  MOV             R5, R0
0002411c  BL              sub_1058
00024120  MOV             R4, R0
00024124  LDR             R0, [R0,#0x190]
00024128  CMP             R0, #0
0002412c  BNE             loc_24158
00024130  LDR             R0, [R5]
00024134  ADD             R2, R4, #0x190
00024138  LDR             R1, [R0]
0002413c  LDR             R3, [R1,#8]
00024140  LDR             R1, =0x1005009
00024144  BLX             R3
00024148  CMP             R0, #0
0002414c  BEQ             loc_24158
00024150  MOV             R0, #0
00024154  POP             {R3-R5,PC}
00024158  MOV             R0, #0
0002415c  STR             R0, [R4,#0x40]
00024160  LDR             R0, =(sub_19AFC - 0x2416C)
00024164  ADD             R0, PC, R0; sub_19AFC
00024168  STR             R0, [R4,#0x1AC]
0002416c  STR             R5, [R4,#0x1B0]
00024170  LDR             R0, [R4,#0x20]
00024174  ADD             R2, R0, #0x1F8
00024178  ADD             R1, R0, #0x8C
0002417c  MOV             R0, R5
00024180  BL              sub_24B44
00024184  B               loc_24150
