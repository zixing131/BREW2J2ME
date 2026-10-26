00000324  PUSH            {R4,LR}
00000328  SUBS            R2, R2, #0x20 ; ' '
0000032c  BCC             loc_348
00000330  LDMCS           R1!, {R3,R4,R12,LR}
00000334  STMCS           R0!, {R3,R4,R12,LR}
00000338  LDMCS           R1!, {R3,R4,R12,LR}
0000033c  STMCS           R0!, {R3,R4,R12,LR}
00000340  SUBSCS          R2, R2, #0x20 ; ' '
00000344  BCS             loc_330
00000348  MOVS            R12, R2,LSL#28
0000034c  LDMCS           R1!, {R3,R4,R12,LR}
00000350  STMCS           R0!, {R3,R4,R12,LR}
00000354  LDMMI           R1!, {R3,R4}
00000358  STMMI           R0!, {R3,R4}
0000035c  POP             {R4,LR}
00000360  MOVS            R12, R2,LSL#30
00000364  LDRCS           R3, [R1],#4
00000368  STRCS           R3, [R0],#4
0000036c  BXEQ            LR
