00000570  PUSH            {R0-R11,LR}
00000574  SUB             SP, SP, #4
00000578  ADD             R10, SP, #0x14+arg_0
0000057c  LDM             R10, {R8-R10}
00000580  MOV             R7, R3
00000584  MOV             R5, R2
00000588  CMP             R0, #0
0000058c  BLT             loc_5D8
00000590  MOV             R6, R0
00000594  CMP             R8, #0
00000598  MOVNE           R0, #0
0000059c  STRNE           R0, [R8]
000005a0  CMPNE           R5, #0
000005a4  CMPNE           R7, #0
000005a8  BEQ             loc_5D8
000005ac  CMP             R6, #0x20 ; ' '
000005b0  LDR             R11, =(start - 0x5C0)
000005b4  ADDCC           R6, R6, #0x20 ; ' '
000005b8  ADD             R11, PC, R11; start
000005bc  LDR             R0, [R11,#(dword_8 - 0xC)]
000005c0  ADR             LR, loc_5D0
000005c4  LDR             R1, [R0,#0x68]
000005c8  ADD             R0, R6, #0xC
000005cc  BX              R1
000005d0  MOVS            R4, R0
000005d4  BNE             loc_5E8
000005d8  MOV             R0, #0
000005dc  ADD             SP, SP, #0x14
000005e0  POP             {R4-R11,LR}
000005e4  BX              LR
000005e8  LDR             R1, =(sub_554 - 0x5F8)
000005ec  ADD             R0, R4, R6
000005f0  ADD             R1, PC, R1; sub_554
000005f4  STR             R1, [R0]
000005f8  LDR             R1, =(sub_6C0 - 0x604)
000005fc  ADD             R1, PC, R1; sub_6C0
00000600  STR             R1, [R0,#4]
00000604  LDR             R1, =(sub_568 - 0x610)
00000608  ADD             R1, PC, R1; sub_568
0000060c  STR             R1, [R0,#8]
00000610  STR             R0, [R4]
00000614  MOV             R0, #1
00000618  ADD             R1, R4, #8
0000061c  STM             R1, {R0,R5,R7}
00000620  MOV             R0, #0
00000624  STR             R0, [R4,#0x14]
00000628  LDR             R0, [SP,#0x14+var_C]
0000062c  LDR             R1, =0x1001001
00000630  STR             R0, [R4,#4]
00000634  ADD             R0, R4, #0x18
00000638  STM             R0, {R9,R10}
0000063c  LDR             R0, [R5]
00000640  ADD             R2, R4, #0x14
00000644  LDR             R3, [R0,#8]
00000648  MOV             R0, R5
0000064c  MOV             LR, PC
00000650  BX              R3
00000654  LDR             R0, [R4,#0x14]
00000658  CMP             R0, #0
0000065c  BNE             loc_678
00000660  LDR             R0, [R11,#(dword_8 - 0xC)]
00000664  ADR             LR, loc_674
00000668  LDR             R1, [R0,#0x6C]
0000066c  MOV             R0, R4
00000670  BX              R1
00000674  B               loc_5D8
00000678  LDR             R0, [R5]
0000067c  ADR             LR, loc_68C
00000680  LDR             R1, [R0]
00000684  MOV             R0, R5
00000688  BX              R1
0000068c  LDR             R0, [R7]
00000690  LDR             R1, [R0]
00000694  MOV             R0, R7
00000698  MOV             LR, PC
0000069c  BX              R1
000006a0  MOV             R0, #1
000006a4  STR             R4, [R8]
000006a8  B               loc_5DC
