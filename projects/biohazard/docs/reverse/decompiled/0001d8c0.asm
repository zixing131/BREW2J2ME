0001d8c0  PUSH            {R3,LR}
0001d8c4  MOV             R2, R1
0001d8c8  LDR             R1, [R1,#0x20]
0001d8cc  LDR             R2, [R2,#0x24]
0001d8d0  BL              sub_EDD4
0001d8d4  POP             {R3,LR}
0001d8d8  MOV             R0, #1
0001d8dc  BX              LR
