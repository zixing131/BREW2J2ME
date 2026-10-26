00024cd8  PUSH            {R4-R6,LR}
00024cdc  STR             R1, [R0,#8]
00024ce0  LDR             R5, =(start - 0x24CF8)
00024ce4  MOV             R4, R0
00024ce8  MOV             R0, R1,LSL#4
00024cec  MOV             R6, R2
00024cf0  ADD             R5, PC, R5; start
00024cf4  LDR             R1, [R5,#(dword_8 - 0xC)]
00024cf8  ADR             LR, loc_24D04
00024cfc  LDR             R1, [R1,#0x68]
00024d00  BX              R1
00024d04  STR             R0, [R4,#0xC]
00024d08  LDR             R1, [R4,#8]
00024d0c  MOV             R2, R1,LSL#4
00024d10  LDR             R1, [R5,#(dword_8 - 0xC)]
00024d14  LDR             R3, [R1]
00024d18  MOV             R1, R6
00024d1c  POP             {R4-R6,LR}
00024d20  BX              R3
