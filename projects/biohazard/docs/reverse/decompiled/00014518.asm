00014518  PUSH            {R3,LR}
0001451c  MOV             R3, #2
00014520  STR             R3, [SP,#4+var_4]
00014524  LDR             R3, [R0]
00014528  LDR             R12, [R3,#0x14]
0001452c  MOV             R3, R2
00014530  MOV             R2, #0xFFFFFFFF
00014534  BLX             R12
00014538  POP             {R3,PC}
