000002a0  MOVS            R3, R0
000002a4  RSBMI           R0, R0, #0
000002a8  SUB             R1, R0, #0xA
000002ac  SUB             R0, R0, R0,LSR#2
000002b0  ADD             R0, R0, R0,LSR#4
000002b4  ADD             R0, R0, R0,LSR#8
000002b8  ADD             R0, R0, R0,LSR#16
000002bc  MOV             R0, R0,LSR#3
000002c0  ADD             R2, R0, R0,LSL#2
000002c4  SUBS            R1, R1, R2,LSL#1
000002c8  ADDPL           R0, R0, #1
000002cc  ADDMI           R1, R1, #0xA
000002d0  MOVS            R3, R3
000002d4  RSBMI           R0, R0, #0
000002d8  RSBMI           R1, R1, #0
000002dc  BX              LR
