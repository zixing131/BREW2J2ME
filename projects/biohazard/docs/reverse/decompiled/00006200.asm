00006200  PUSH            {R4,LR}
00006204  MOV             R4, R0
00006208  LDRB            R0, [R0,#0xC]
0000620c  CMP             R0, #0
00006210  POPEQ           {R4,PC}
00006214  LDRB            R0, [R4,#0x9E]
00006218  RSBS            R0, R0, #1
0000621c  MOVCC           R0, #0
00006220  STRB            R0, [R4,#0x9E]
00006224  MOV             R0, R4
00006228  BL              sub_D204
0000622c  LDR             R0, [R4]
00006230  LDR             R2, =(sub_6200 - 0x6244)
00006234  LDR             R1, [R0]
00006238  MOV             R3, R4
0000623c  ADD             R2, PC, R2; sub_6200
00006240  LDR             R12, [R1,#0x2C]
00006244  POP             {R4,LR}
00006248  MOV             R1, #0x3E8
0000624c  BX              R12
