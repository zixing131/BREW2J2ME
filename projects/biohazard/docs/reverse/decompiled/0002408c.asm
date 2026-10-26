0002408c  PUSH            {R3-R5,LR}
00024090  LDR             R1, [R0,#0xE0]
00024094  MOV             R5, R0
00024098  BL              sub_1058
0002409c  MOV             R4, R0
000240a0  LDR             R0, [R5]
000240a4  MOV             R2, R5
000240a8  LDR             R1, [R0]
000240ac  LDR             R3, [R1,#0x30]
000240b0  LDR             R1, =(sub_19BE8 - 0x240BC)
000240b4  ADD             R1, PC, R1; sub_19BE8
000240b8  BLX             R3
000240bc  LDR             R1, [R4,#0x1A4]
000240c0  CMP             R1, #0
000240c4  ADDNE           R0, R4, #0x19C
000240c8  BLXNE           R1
000240cc  LDR             R0, [R4,#0x194]
000240d0  MOV             R5, #0
000240d4  CMP             R0, #0
000240d8  BEQ             loc_240EC
000240dc  LDR             R1, [R0]
000240e0  LDR             R1, [R1,#4]
000240e4  BLX             R1
000240e8  STR             R5, [R4,#0x194]
000240ec  LDR             R0, [R4,#0x190]
000240f0  CMP             R0, #0
000240f4  BEQ             locret_24108
000240f8  LDR             R1, [R0]
000240fc  LDR             R1, [R1,#4]
00024100  BLX             R1
00024104  STR             R5, [R4,#0x190]
00024108  POP             {R3-R5,PC}
