00024f9c  MOVS            R2, R0
00024fa0  CMPNE           R1, #0
00024fa4  MOVEQ           R0, #1
00024fa8  PUSH            {R3,LR}
00024fac  BEQ             locret_24FC8
00024fb0  LDR             R0, [R2]
00024fb4  LDR             R1, [R1,#0x34]
00024fb8  LDR             R3, [R0]
00024fbc  LDR             R3, [R3,#0x30]
00024fc0  BLX             R3
00024fc4  MOV             R0, #0
00024fc8  POP             {R3,PC}
