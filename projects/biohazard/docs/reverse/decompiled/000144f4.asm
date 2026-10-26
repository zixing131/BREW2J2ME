000144f4  PUSH            {R3,LR}
000144f8  MOV             R3, #2
000144fc  STR             R3, [SP,#4+var_4]
00014500  LDR             R3, [R0]
00014504  LDR             R12, [R3,#0x14]
00014508  MOV             R3, R2
0001450c  MOV             R2, #0xFFFFFFFF
00014510  BLX             R12
00014514  POP             {R3,PC}
