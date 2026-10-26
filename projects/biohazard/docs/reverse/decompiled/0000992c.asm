0000992c  PUSH            {R4-R6,LR}
00009930  SUB             SP, SP, #0x18
00009934  ADD             R12, SP, #0x18+arg_0
00009938  MOV             R4, R0
0000993c  LDM             R12, {R0,R12}
00009940  MOV             R5, R2
00009944  LDR             R2, [SP,#0x18+arg_8]
00009948  MOV             LR, R1
0000994c  MOV             R6, R3
00009950  MOV             R3, #0
00009954  MOV             R1, #0
00009958  STR             R1, [SP,#0x18+var_C]
0000995c  STR             R3, [SP,#0x18+var_4]
00009960  STR             R0, [SP,#0x18+var_10]
00009964  STR             R2, [SP,#0x18+var_8]
00009968  STMEA           SP, {R5,R6}
0000996c  MOV             R2, R12
00009970  MOV             R0, R4
00009974  MOV             R3, #0xFFFFFFFF
00009978  MOV             R1, LR
0000997c  BL              sub_1A228
00009980  LDRH            R0, [R4,#0x30]
00009984  ADD             SP, SP, #0x18
00009988  POP             {R4-R6,LR}
0000998c  BX              LR
