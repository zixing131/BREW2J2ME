00024c38  MOV             R3, R1
00024c3c  MOV             R1, R2
00024c40  MOV             R2, R3,LSL#2
00024c44  STR             R3, [R0,#8]
00024c48  LDR             R3, =(start - 0x24C54)
00024c4c  ADD             R3, PC, R3; start
00024c50  LDR             R3, [R3,#(dword_8 - 0xC)]
00024c54  ADD             R0, R0, #0xC
00024c58  LDR             R3, [R3]
00024c5c  BX              R3
