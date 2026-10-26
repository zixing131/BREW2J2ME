0000004c  CMP             R2, #3
00000050  BLS             loc_370
00000054  ANDS            R12, R0, #3
00000058  BEQ             loc_80
0000005c  LDRB            R3, [R1],#1
00000060  CMP             R12, #2
00000064  ADD             R2, R2, R12
00000068  LDRBLS          R12, [R1],#1
0000006c  STRB            R3, [R0],#1
00000070  LDRBCC          R3, [R1],#1
00000074  SUB             R2, R2, #4
00000078  STRBLS          R12, [R0],#1
0000007c  STRBCC          R3, [R0],#1
00000080  ANDS            R3, R1, #3
00000084  BEQ             sub_324
00000088  SUBS            R2, R2, #4
0000008c  BCC             loc_370
00000090  LDR             R12, [R1,-R3]!
00000094  CMP             R3, #2
00000098  BEQ             loc_C0
0000009c  BHI             loc_E0
000000a0  MOV             R3, R12,LSR#8
000000a4  LDR             R12, [R1,#4]!
000000a8  SUBS            R2, R2, #4
000000ac  ORR             R3, R3, R12,LSL#24
000000b0  STR             R3, [R0],#4
000000b4  BCS             loc_A0
000000b8  ADD             R1, R1, #1
000000bc  B               loc_370
000000c0  MOV             R3, R12,LSR#16
000000c4  LDR             R12, [R1,#4]!
000000c8  SUBS            R2, R2, #4
000000cc  ORR             R3, R3, R12,LSL#16
000000d0  STR             R3, [R0],#4
000000d4  BCS             loc_C0
000000d8  ADD             R1, R1, #2
000000dc  B               loc_370
000000e0  MOV             R3, R12,LSR#24
000000e4  LDR             R12, [R1,#4]!
000000e8  SUBS            R2, R2, #4
000000ec  ORR             R3, R3, R12,LSL#8
000000f0  STR             R3, [R0],#4
000000f4  BCS             loc_E0
000000f8  ADD             R1, R1, #3
000000fc  B               loc_370
00000370  MOVS            R2, R2,LSL#31
00000374  LDRBMI          R2, [R1],#1
00000378  LDRBCS          R3, [R1],#1
0000037c  LDRBCS          R12, [R1],#1
00000380  STRBMI          R2, [R0],#1
00000384  STRBCS          R3, [R0],#1
00000388  STRBCS          R12, [R0],#1
0000038c  BX              LR
