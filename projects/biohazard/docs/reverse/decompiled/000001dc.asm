000001dc  MOV             R2, #0
000001e0  RSBS            R12, R0, R1,LSR#3
000001e4  BCC             loc_26C
000001e8  RSBS            R12, R0, R1,LSR#8
000001ec  BCC             loc_230
000001f0  MOV             R0, R0,LSL#8
000001f4  ORR             R2, R2, #0xFF000000
000001f8  RSBS            R12, R0, R1,LSR#4
000001fc  BCC             loc_260
00000200  RSBS            R12, R0, R1,LSR#8
00000204  BCC             loc_230
00000208  MOV             R0, R0,LSL#8
0000020c  ORR             R2, R2, #0xFF0000
00000210  RSBS            R12, R0, R1,LSR#8
00000214  MOVCS           R0, R0,LSL#8
00000218  ORRCS           R2, R2, #0xFF00
0000021c  RSBS            R12, R0, R1,LSR#4
00000220  BCC             loc_260
00000224  RSBS            R12, R0, #0
00000228  BCS             sub_314
0000022c  MOVCS           R0, R0,LSR#8
00000230  RSBS            R12, R0, R1,LSR#7
00000234  SUBCS           R1, R1, R0,LSL#7
00000238  ADC             R2, R2, R2
0000023c  RSBS            R12, R0, R1,LSR#6
00000240  SUBCS           R1, R1, R0,LSL#6
00000244  ADC             R2, R2, R2
00000248  RSBS            R12, R0, R1,LSR#5
0000024c  SUBCS           R1, R1, R0,LSL#5
00000250  ADC             R2, R2, R2
00000254  RSBS            R12, R0, R1,LSR#4
00000258  SUBCS           R1, R1, R0,LSL#4
0000025c  ADC             R2, R2, R2
00000260  RSBS            R12, R0, R1,LSR#3
00000264  SUBCS           R1, R1, R0,LSL#3
00000268  ADC             R2, R2, R2
0000026c  RSBS            R12, R0, R1,LSR#2
00000270  SUBCS           R1, R1, R0,LSL#2
00000274  ADC             R2, R2, R2
00000278  RSBS            R12, R0, R1,LSR#1
0000027c  SUBCS           R1, R1, R0,LSL#1
00000280  ADC             R2, R2, R2
00000284  RSBS            R12, R0, R1
00000288  SUBCS           R1, R1, R0
0000028c  ADCS            R2, R2, R2
00000290  BCS             loc_22C
00000294  MOV             R0, R2
00000298  BX              LR
