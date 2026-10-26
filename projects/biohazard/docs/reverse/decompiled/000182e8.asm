000182e8  PUSH            {R4-R6,LR}
000182ec  MOV             R4, R1
000182f0  LDR             R1, [R0,#0xE0]
000182f4  SUB             SP, SP, #0x18
000182f8  MOV             R2, R0
000182fc  BL              sub_1058
00018300  MOV             R5, R0
00018304  CMP             R4, #0
00018308  BEQ             loc_18374
0001830c  LDRH            LR, [R2,#4]
00018310  LDRH            R6, [R2,#6]
00018314  MOV             R2, #0
00018318  LDR             R12, [R5,#0xC]
0001831c  MOV             R3, #2
00018320  MOV             R1, #0
00018324  ADD             R0, SP, #0x18+var_10
00018328  STM             R0, {R1-R3}
0001832c  STR             R4, [SP,#0x18+var_14]
00018330  STR             R6, [SP,#0x18+var_18]
00018334  LDR             R0, [R12]
00018338  MOV             R3, LR
0001833c  LDR             R6, [R0,#0x18]
00018340  MOV             R0, R12
00018344  BLX             R6
00018348  LDR             R0, [R5,#0xC]
0001834c  LDR             R1, [R0]
00018350  LDR             R2, [R1,#0x1C]
00018354  MOV             R1, #1
00018358  BLX             R2
0001835c  LDR             R0, [R4]
00018360  LDR             R1, [R0,#4]
00018364  ADD             SP, SP, #0x18
00018368  MOV             R0, R4
0001836c  POP             {R4-R6,LR}
00018370  BX              R1
00018374  ADD             SP, SP, #0x18
00018378  POP             {R4-R6,PC}
