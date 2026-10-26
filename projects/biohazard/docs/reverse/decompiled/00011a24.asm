00011a24  PUSH            {R4,LR}
00011a28  MOV             R4, R0
00011a2c  LDR             R0, [R0,#0x760]
00011a30  CMP             R0, #0
00011a34  BEQ             loc_11A6C
00011a38  MOV             R3, #0
00011a3c  MOV             R2, R4
00011a40  MOV             R1, R0
00011a44  BL              sub_11A78
00011a48  LDR             R1, =(start - 0x11A54)
00011a4c  ADD             R1, PC, R1; start
00011a50  LDR             R1, [R1,#(dword_8 - 0xC)]
00011a54  LDR             R0, [R4,#0x760]
00011a58  LDR             R1, [R1,#0x6C]
00011a5c  MOV             LR, PC
00011a60  BX              R1
00011a64  MOV             R0, #0
00011a68  STR             R0, [R4,#0x760]
00011a6c  POP             {R4,LR}
00011a70  BX              LR
