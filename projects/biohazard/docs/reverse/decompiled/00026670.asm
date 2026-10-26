00026670  PUSH            {R3-R7,LR}
00026674  MOV             R6, R1
00026678  LDR             R1, [R0,#0xE0]
0002667c  MOV             R7, R2
00026680  MOV             R5, R0
00026684  BL              sub_1058
00026688  MOV             R4, R0
0002668c  LDR             R0, [R0,#0x20]
00026690  CMP             R0, #0
00026694  BNE             loc_266C0
00026698  LDR             R0, =(start - 0x266A4)
0002669c  ADD             R0, PC, R0; start
000266a0  LDR             R0, [R0,#(dword_8 - 0xC)]
000266a4  LDR             R1, [R0,#0x68]
000266a8  MOV             R0, #0x870
000266ac  BLX             R1
000266b0  STR             R0, [R4,#0x20]
000266b4  CMP             R0, #0
000266b8  MOVEQ           R0, #1
000266bc  BEQ             locret_26728
000266c0  LDR             R1, [R4,#0x20]
000266c4  MOV             R0, #0xFFFFFFFF
000266c8  STR             R0, [R1]
000266cc  LDR             R1, [R4,#0x20]
000266d0  STR             R0, [R1,#4]
000266d4  LDR             R1, [R4,#0x20]
000266d8  MOV             R0, #0
000266dc  STR             R0, [R1,#0x1F4]
000266e0  LDR             R1, [R4,#0x20]
000266e4  STR             R0, [R1,#0x86C]
000266e8  ADD             R0, R4, #0x14
000266ec  BL              sub_17B88
000266f0  CMP             R0, #0
000266f4  BNE             locret_26728
000266f8  LDR             R3, =(sub_12634 - 0x26708)
000266fc  STR             R5, [SP,#4+var_4]
00026700  ADD             R3, PC, R3; sub_12634
00026704  MOV             R2, R7
00026708  MOV             R1, R6
0002670c  LDR             R0, [R4,#0x14]
00026710  BL              sub_17BE0
00026714  CMP             R0, #0
00026718  BNE             locret_26728
0002671c  LDR             R0, [R4,#0x14]
00026720  BL              sub_17BC0
00026724  MOV             R0, #0
00026728  POP             {R3-R7,PC}
