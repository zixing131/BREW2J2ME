0000000c  PUSH            {R1-R3,LR}
00000010  MOV             R3, #0
00000014  STR             R3, [SP,#0xC+var_C]
00000018  STR             R3, [SP,#0xC+var_8]
0000001c  MOV             R3, R2
00000020  MOV             R2, R1
00000024  MOV             R1, R0
00000028  MOV             R0, #0x14
0000002c  BL              sub_8B8
00000030  POP             {R1-R3,LR}
00000034  BX              LR
