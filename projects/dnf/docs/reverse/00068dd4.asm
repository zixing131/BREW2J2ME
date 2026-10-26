0x68dd4 PUSH            {R4,R5,LR}
0x68dd6 MOVS            R4, R0
0x68dd8 MOVS            R5, R2
0x68dda MOVS            R0, R1
0x68ddc B               loc_68DFE
0x68dde LDRB            R2, [R0]
0x68de0 MOVS            R3, #0xF8
0x68de2 ANDS            R2, R3
0x68de4 LDRB            R3, [R0,#1]
0x68de6 MOVS            R1, #0xFC
0x68de8 ANDS            R3, R1
0x68dea LSLS            R3, R3, #3
0x68dec LSLS            R2, R2, #8
0x68dee ORRS            R2, R3
0x68df0 LDRB            R3, [R0,#2]
0x68df2 LSRS            R3, R3, #3
0x68df4 ORRS            R2, R3
0x68df6 STRH            R2, [R4]
0x68df8 ADDS            R0, #3
0x68dfa ADDS            R4, #2
0x68dfc SUBS            R5, #1
0x68dfe CMP             R5, #0
0x68e00 BGT             loc_68DDE
0x68e02 POP             {R4,R5}
0x68e04 POP             {R0}
0x68e06 BX              R0