00000540  PUSH            {R3,LR}
00000542  ADD             R3, SP, #4+var_4
00000544  STRB            R0, [R3,#4+var_4]
00000546  MOVS            R0, #3
00000548  MOV             R1, SP
0000054a  SVC             0xAB
0000054c  ADD             SP, SP, #4
0000054e  POP             {R3}
00000550  BX              R3
