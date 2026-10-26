000151e8  PUSH            {R4-R6,LR}
000151ec  MOV             R5, R0
000151f0  LDR             R0, [R0]
000151f4  MOV             R2, R5
000151f8  LDR             R1, [R0]
000151fc  LDR             R3, [R1,#0x30]
00015200  LDR             R1, =(sub_6200 - 0x1520C)
00015204  ADD             R1, PC, R1; sub_6200
00015208  BLX             R3
0001520c  MOV             R4, #0
00015210  LDR             R6, =(start - 0x1521C)
00015214  ADD             R6, PC, R6; start
00015218  ADD             R0, R5, R4,LSL#2
0001521c  LDR             R0, [R0,#0x88]
00015220  CMP             R0, #0
00015224  BEQ             loc_15250
00015228  LDRB            R1, [R5,#0x94]
0001522c  CMP             R1, #0
00015230  BEQ             loc_15244
00015234  LDR             R1, [R6,#(dword_8 - 0xC)]
00015238  LDR             R1, [R1,#0xBC]
0001523c  BLX             R1
00015240  B               loc_15250
00015244  LDR             R1, [R0]
00015248  LDR             R1, [R1,#4]
0001524c  BLX             R1
00015250  ADD             R4, R4, #1
00015254  CMP             R4, #3
00015258  BLT             loc_15218
0001525c  CMP             R5, #0
00015260  LDRNE           R0, [R6,#(dword_8 - 0xC)]
00015264  LDRNE           R1, [R0,#0x6C]
00015268  MOVNE           R0, R5
0001526c  POPNE           {R4-R6,LR}
00015270  BXNE            R1
00015274  POP             {R4-R6,PC}
