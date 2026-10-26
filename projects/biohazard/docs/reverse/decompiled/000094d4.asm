000094d4  PUSH            {R4-R6,LR}
000094d8  SUB             SP, SP, #0x18
000094dc  ADD             R12, SP, #0x18+arg_0
000094e0  MOV             R4, R0
000094e4  MOV             R6, R3
000094e8  ADD             R3, SP, #0x18+arg_8
000094ec  LDM             R12, {R0,R12}
000094f0  MOV             LR, R1
000094f4  MOV             R5, R2
000094f8  LDM             R3, {R1-R3}
000094fc  STR             R0, [SP,#0x18+var_10]
00009500  STR             R1, [SP,#0x18+var_C]
00009504  STR             R2, [SP,#0x18+var_8]
00009508  STR             R3, [SP,#0x18+var_4]
0000950c  STMEA           SP, {R5,R6}
00009510  MOV             R3, #0xFFFFFFFF
00009514  MOV             R2, R12
00009518  MOV             R1, LR
0000951c  MOV             R0, R4
00009520  BL              sub_1A228
00009524  LDRH            R0, [R4,#0x30]
00009528  ADD             SP, SP, #0x18
0000952c  POP             {R4-R6,LR}
00009530  BX              LR
