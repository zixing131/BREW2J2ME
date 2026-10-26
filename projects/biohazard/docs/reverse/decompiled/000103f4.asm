000103f4  PUSH            {R4-R6,LR}
000103f8  MOV             R6, R2
000103fc  MOV             R5, R1
00010400  MOV             R4, R0
00010404  BL              sub_118E0
00010408  CMP             R0, #0
0001040c  BEQ             loc_1042C
00010410  MOV             R0, #0
00010414  STRH            R0, [R4,#0x14]
00010418  STRH            R0, [R4,#8]
0001041c  MOV             R0, #0xFFFFFFFF
00010420  STRH            R0, [R4,#4]
00010424  STRH            R5, [R4,#2]
00010428  STRH            R6, [R4,#0xA]
0001042c  POP             {R4-R6,LR}
00010430  BX              LR
