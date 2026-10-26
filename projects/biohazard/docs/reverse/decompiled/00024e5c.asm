00024e5c  PUSH            {R3-R5,LR}
00024e60  MOV             R4, R1
00024e64  CMP             R0, #0
00024e68  CMPNE           R4, #0
00024e6c  BEQ             locret_24EAC
00024e70  LDR             R0, [R4,#0x30]
00024e74  MOV             R5, #0
00024e78  CMP             R0, #0
00024e7c  BEQ             loc_24E88
00024e80  BL              sub_14308
00024e84  STR             R5, [R4,#0x30]
00024e88  LDR             R0, [R4,#0x24]
00024e8c  CMP             R0, #0
00024e90  BEQ             locret_24EAC
00024e94  LDR             R1, =(start - 0x24EA0)
00024e98  ADD             R1, PC, R1; start
00024e9c  LDR             R1, [R1,#(dword_8 - 0xC)]
00024ea0  LDR             R1, [R1,#0x6C]
00024ea4  BLX             R1
00024ea8  STR             R5, [R4,#0x24]
00024eac  POP             {R3-R5,PC}
