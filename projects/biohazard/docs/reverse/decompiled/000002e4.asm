000002e4  SUB             R1, R0, #0xA
000002e8  SUB             R0, R0, R0,LSR#2
000002ec  ADD             R0, R0, R0,LSR#4
000002f0  ADD             R0, R0, R0,LSR#8
000002f4  ADD             R0, R0, R0,LSR#16
000002f8  MOV             R0, R0,LSR#3
000002fc  ADD             R2, R0, R0,LSL#2
00000300  SUBS            R1, R1, R2,LSL#1
00000304  ADDPL           R0, R0, #1
00000308  ADDMI           R1, R1, #0xA
0000030c  BX              LR
