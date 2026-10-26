00018288  PUSH            {R3-R5,LR}
0001828c  MOV             R5, R2
00018290  MOV             R4, R1
00018294  MOV             R0, R1
00018298  BL              sub_11A24
0001829c  MOV             R0, #5
000182a0  STR             R0, [R4,#0x75C]
000182a4  LDR             R0, =(start - 0x182B0)
000182a8  ADD             R0, PC, R0; start
000182ac  LDR             R0, [R0,#(dword_8 - 0xC)]
000182b0  ADR             LR, loc_182C0
000182b4  LDR             R1, [R0,#0x68]
000182b8  MOV             R0, #0x238
000182bc  BX              R1
000182c0  STR             R0, [R4,#0x760]
000182c4  BL              sub_16B18
000182c8  MOV             R2, R5
000182cc  LDR             R0, [R4,#0x760]
000182d0  MOV             R1, R4
000182d4  BL              sub_17200
000182d8  POP             {R3-R5,LR}
000182dc  MOV             R0, #1
000182e0  BX              LR
