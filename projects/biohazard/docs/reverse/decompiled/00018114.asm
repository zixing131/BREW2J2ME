00018114  PUSH            {R4,LR}
00018118  MOV             R4, R1
0001811c  MOV             R0, R1
00018120  BL              sub_11A24
00018124  MOV             R0, #4
00018128  STR             R0, [R4,#0x75C]
0001812c  LDR             R0, =(start - 0x18138)
00018130  ADD             R0, PC, R0; start
00018134  LDR             R0, [R0,#(dword_8 - 0xC)]
00018138  ADR             LR, loc_18148
0001813c  LDR             R1, [R0,#0x68]
00018140  MOV             R0, #0x194
00018144  BX              R1
00018148  STR             R0, [R4,#0x760]
0001814c  BL              sub_16B18
00018150  MOV             R2, #0
00018154  LDR             R0, [R4,#0x760]
00018158  MOV             R1, R4
0001815c  BL              sub_17790
00018160  POP             {R4,LR}
00018164  MOV             R0, #1
00018168  BX              LR
