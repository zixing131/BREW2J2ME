000202f0  PUSH            {R3,LR}
000202f4  LDR             R1, [R0,#0x13C]
000202f8  CMP             R1, #7
000202fc  MOVNE           R0, #0
00020300  BNE             loc_20320
00020304  LDR             R1, [R0,#0x140]
00020308  ADD             R1, R1, #1
0002030c  STR             R1, [R0,#0x140]
00020310  LDRB            R1, [R0,#0x12C]
00020314  CMP             R1, #1
00020318  BLEQ            sub_24FCC
0002031c  MOV             R0, #1
00020320  POP             {R3,LR}
00020324  BX              LR
