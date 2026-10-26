0x1000 MOV             R12, SP
0x1004 MOV             R0, #0
0x1008 PUSH            {R4,R11,R12,LR,PC}
0x100c MOV             R1, #0x64 ; 'd'
0x1010 SUB             R11, R12, #4
0x1014 LDR             R4, =sub_1400030
0x1018 MOV             R2, #0xF0
0x101c MOV             R3, R0
0x1020 MOV             LR, PC
0x1024 BX              R4; sub_1400030