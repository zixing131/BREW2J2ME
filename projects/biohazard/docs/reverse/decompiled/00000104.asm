00000104  ANDS            R2, R0, #0x80000000
00000108  RSBMI           R0, R0, #0
0000010c  EORS            R3, R2, R1,ASR#32
00000110  RSBCS           R1, R1, #0
00000114  RSBS            R12, R0, R1,LSR#3
00000118  BCC             loc_1A0
0000011c  RSBS            R12, R0, R1,LSR#8
00000120  BCC             loc_164
00000124  MOV             R0, R0,LSL#8
00000128  ORR             R2, R2, #0xFF000000
0000012c  RSBS            R12, R0, R1,LSR#4
00000130  BCC             loc_194
00000134  RSBS            R12, R0, R1,LSR#8
00000138  BCC             loc_164
0000013c  MOV             R0, R0,LSL#8
00000140  ORR             R2, R2, #0xFF0000
00000144  RSBS            R12, R0, R1,LSR#8
00000148  MOVCS           R0, R0,LSL#8
0000014c  ORRCS           R2, R2, #0xFF00
00000150  RSBS            R12, R0, R1,LSR#4
00000154  BCC             loc_194
00000158  RSBS            R12, R0, #0
0000015c  BCS             sub_314
00000160  MOVCS           R0, R0,LSR#8
00000164  RSBS            R12, R0, R1,LSR#7
00000168  SUBCS           R1, R1, R0,LSL#7
0000016c  ADC             R2, R2, R2
00000170  RSBS            R12, R0, R1,LSR#6
00000174  SUBCS           R1, R1, R0,LSL#6
00000178  ADC             R2, R2, R2
0000017c  RSBS            R12, R0, R1,LSR#5
00000180  SUBCS           R1, R1, R0,LSL#5
00000184  ADC             R2, R2, R2
00000188  RSBS            R12, R0, R1,LSR#4
0000018c  SUBCS           R1, R1, R0,LSL#4
00000190  ADC             R2, R2, R2
00000194  RSBS            R12, R0, R1,LSR#3
00000198  SUBCS           R1, R1, R0,LSL#3
0000019c  ADC             R2, R2, R2
000001a0  RSBS            R12, R0, R1,LSR#2
000001a4  SUBCS           R1, R1, R0,LSL#2
000001a8  ADC             R2, R2, R2
000001ac  RSBS            R12, R0, R1,LSR#1
000001b0  SUBCS           R1, R1, R0,LSL#1
000001b4  ADC             R2, R2, R2
000001b8  RSBS            R12, R0, R1
000001bc  SUBCS           R1, R1, R0
000001c0  ADCS            R2, R2, R2
000001c4  BCS             loc_160
000001c8  EORS            R0, R2, R3,ASR#31
000001cc  ADD             R0, R0, R3,LSR#31
000001d0  RSBCS           R1, R1, #0
000001d4  BX              LR
