0001822c  PUSH            {R4,LR}
00018230  MOV             R4, R1
00018234  MOV             R0, R1
00018238  BL              sub_11A24
0001823c  MOV             R0, #7
00018240  STR             R0, [R4,#0x75C]
00018244  LDR             R0, =(start - 0x18250)
00018248  ADD             R0, PC, R0; start
0001824c  LDR             R0, [R0,#(dword_8 - 0xC)]
00018250  ADR             LR, loc_18260
00018254  LDR             R1, [R0,#0x68]
00018258  MOV             R0, #0x180
0001825c  BX              R1
00018260  STR             R0, [R4,#0x760]
00018264  BL              sub_16B18
00018268  MOV             R2, #0
0001826c  LDR             R0, [R4,#0x760]
00018270  MOV             R1, R4
00018274  BL              sub_17184
00018278  POP             {R4,LR}
0001827c  MOV             R0, #1
00018280  BX              LR
