00000420  PUSH            {R3-R5,LR}
00000422  SUBS            R2, R0, #1
00000424  CMP             R2, #0xD
00000426  ADR             R4, dword_4B8
00000428  BCS             loc_478
0000042a  MOVS            R2, #0x17
0000042c  LDR             R3, =(aAbnormalTermin - 0x434); "Abnormal termination"
0000042e  MULS            R2, R0
00000430  ADD             R3, PC; "Abnormal termination"
00000432  ADDS            R5, R2, R3
00000434  SUBS            R5, #0x17
00000436  CMP             R0, #2
00000438  BNE             loc_464
0000043a  LSLS            R0, R1, #5
0000043c  BPL             loc_442
0000043e  ADR             R4, aInvalidOperati; "Invalid Operation"
00000440  B               loc_47A
00000442  LDR             R0, =0x8000002
00000444  ANDS            R0, R1
00000446  BEQ             loc_44C
00000448  ADR             R4, aDivideByZero; "Divide By Zero"
0000044a  B               loc_47A
0000044c  LSLS            R0, R1, #3
0000044e  BPL             loc_454
00000450  ADR             R4, aOverflow; "Overflow"
00000452  B               loc_47A
00000454  LSLS            R0, R1, #2
00000456  BPL             loc_45C
00000458  ADR             R4, aUnderflow; "Underflow"
0000045a  B               loc_47A
0000045c  LSLS            R0, R1, #1
0000045e  BPL             loc_47A
00000460  ADR             R4, aInexactResult; "Inexact Result"
00000462  B               loc_47A
00000464  CMP             R0, #8
00000466  BNE             loc_46C
00000468  MOVS            R4, R1
0000046a  B               loc_47A
0000046c  CMP             R0, #9
0000046e  BNE             loc_47A
00000470  CMP             R1, #1
00000472  BNE             loc_47A
00000474  ADR             R5, aHeapMemoryCorr; ": Heap memory corrupted"
00000476  B               loc_47A
00000478  ADR             R5, aUnknownSignal; "Unknown signal"
0000047a  MOVS            R0, #0xA
0000047c  BL              sub_540
00000480  LDRB            R0, [R5]
00000482  CMP             R0, #0
00000484  BEQ             loc_494
00000486  LDRB            R0, [R5]
00000488  ADDS            R5, #1
0000048a  BL              sub_540
0000048e  LDRB            R0, [R5]
00000490  CMP             R0, #0
00000492  BNE             loc_486
00000494  LDRB            R0, [R4]
00000496  CMP             R0, #0
00000498  BEQ             loc_4A8
0000049a  LDRB            R0, [R4]
0000049c  ADDS            R4, #1
0000049e  BL              sub_540
000004a2  LDRB            R0, [R4]
000004a4  CMP             R0, #0
000004a6  BNE             loc_49A
000004a8  MOVS            R0, #0xA
000004aa  BL              sub_540
000004ae  POP             {R3-R5}
000004b0  POP             {R3}
000004b2  MOVS            R0, #1
000004b4  BX              R3
