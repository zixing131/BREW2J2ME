00026170  PUSH            {R4-R6,LR}
00026174  SUB             SP, SP, #0x28
00026178  LDR             R1, [R0,#0xE0]
0002617c  MOV             R5, R0
00026180  BL              sub_1058
00026184  MOV             R4, R0
00026188  LDR             R0, [R0,#0x8C]
0002618c  MOV             R6, #0
00026190  CMP             R0, #0
00026194  BNE             loc_261E0
00026198  LDR             R0, [R5]
0002619c  ADD             R2, R4, #0x8C
000261a0  LDR             R1, [R0]
000261a4  LDR             R3, [R1,#8]
000261a8  LDR             R1, =0x1005000
000261ac  BLX             R3
000261b0  CMP             R0, #0
000261b4  MOVNE           R0, #3
000261b8  BNE             loc_26224
000261bc  LDR             R0, =0x20005
000261c0  STR             R0, [SP,#0x28+var_28]
000261c4  LDR             R0, =0x2710
000261c8  STMFA           SP, {R0,R6}
000261cc  LDR             R0, [R4,#0x8C]
000261d0  LDR             R1, [R0]
000261d4  LDR             R2, [R1,#0xC]
000261d8  MOV             R1, SP
000261dc  BLX             R2
000261e0  STR             R6, [R4,#0x180]
000261e4  LDR             R0, [R4,#0x178]
000261e8  CMP             R0, #0
000261ec  BNE             loc_26220
000261f0  MOV             R0, #0x7D0
000261f4  STR             R0, [R4,#0x184]
000261f8  LDR             R0, =(start - 0x26204)
000261fc  ADD             R0, PC, R0; start
00026200  LDR             R0, [R0,#(dword_8 - 0xC)]
00026204  LDR             R1, [R0,#0x68]
00026208  MOV             R0, #0x7D0
0002620c  BLX             R1
00026210  STR             R0, [R4,#0x178]
00026214  CMP             R0, #0
00026218  MOVEQ           R0, #2
0002621c  BEQ             loc_26224
00026220  MOV             R0, #0
00026224  ADD             SP, SP, #0x28 ; '('
00026228  POP             {R4-R6,PC}
