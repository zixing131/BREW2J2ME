0000075c  PUSH            {R0-R6,LR}
00000760  MOV             R6, #0
00000764  STR             R6, [R3]
00000768  MOV             R4, R3
0000076c  LDR             R3, =(sub_11928 - 0x780)
00000770  MOV             LR, R2
00000774  MOV             R12, R1
00000778  ADD             R3, PC, R3; sub_11928
0000077c  LDR             R2, =(sub_1403C - 0x788)
00000780  ADD             R2, PC, R2; sub_1403C
00000784  STMFA           SP, {R2,R3}
00000788  MOV             R1, R0
0000078c  LDR             R0, =loc_768
00000790  STR             R4, [SP,#0x10+var_10]
00000794  MOV             R3, LR
00000798  MOV             R2, R12
0000079c  BL              sub_570
000007a0  CMP             R0, #1
000007a4  BNE             loc_7D8
000007a8  LDR             R5, [R4]
000007ac  MOV             R0, R5
000007b0  BL              sub_15570
000007b4  CMP             R0, #0
000007b8  MOVNE           R0, #0
000007bc  BNE             loc_7DC
000007c0  LDR             R0, [R5]
000007c4  ADR             LR, loc_7D4
000007c8  LDR             R1, [R0,#4]
000007cc  MOV             R0, R5
000007d0  BX              R1
000007d4  STR             R6, [R4]
000007d8  MOV             R0, #1
000007dc  ADD             SP, SP, #0x10
000007e0  POP             {R4-R6,LR}
000007e4  BX              LR
