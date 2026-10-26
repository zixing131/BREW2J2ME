000064e0  PUSH            {R4-R8,LR}
000064e4  LDR             R5, [SP,#arg_0]
000064e8  LDR             R12, [R0,#0x14]
000064ec  CMP             R12, #0
000064f0  MOVEQ           R0, #7
000064f4  BEQ             loc_6638
000064f8  LDRH            R12, [R0,#0xC]
000064fc  ADD             R1, R12, R1
00006500  MOV             R6, R1,LSL#16
00006504  LDRH            R1, [R0,#0xE]
00006508  MOV             R12, R3,LSL#16
0000650c  MOV             R12, R12,ASR#16
00006510  ADD             R1, R1, R2
00006514  MOV             R7, R1,LSL#16
00006518  MOV             R1, #3
0000651c  SUB             R1, R1, R3,LSL#1
00006520  MOV             R4, R1,LSL#16
00006524  MOV             R4, R4,ASR#16
00006528  MOV             R7, R7,ASR#16
0000652c  MOV             R2, #0
00006530  MOV             R6, R6,ASR#16
00006534  B               loc_662C
00006538  MOV             R1, #0
0000653c  TST             R1, #1
00006540  BEQ             loc_6558
00006544  CMP             R1, #4
00006548  MOVGE           R3, R12
0000654c  MOVLT           R3, R2
00006550  SUB             R3, R6, R3
00006554  B               loc_6568
00006558  CMP             R1, #4
0000655c  MOVGE           R3, R12
00006560  MOVLT           R3, R2
00006564  ADD             R3, R3, R6
00006568  MOV             R3, R3,LSL#16
0000656c  MOV             R3, R3,ASR#16
00006570  TST             R1, #2
00006574  BEQ             loc_658C
00006578  CMP             R1, #4
0000657c  MOVGE           LR, R2
00006580  MOVLT           LR, R12
00006584  SUB             LR, R7, LR
00006588  B               loc_659C
0000658c  CMP             R1, #4
00006590  MOVGE           LR, R2
00006594  MOVLT           LR, R12
00006598  ADD             LR, LR, R7
0000659c  LDRH            R8, [R0,#4]
000065a0  MOV             LR, LR,LSL#16
000065a4  MOV             LR, LR,ASR#16
000065a8  CMP             R8, R3
000065ac  BGT             loc_65E0
000065b0  LDRH            R8, [R0,#8]
000065b4  CMP             R8, R3
000065b8  BLE             loc_65E0
000065bc  LDRH            R8, [R0,#6]
000065c0  CMP             R8, LR
000065c4  BGT             loc_65E0
000065c8  LDRH            R8, [R0,#0xA]
000065cc  CMP             R8, LR
000065d0  LDRGT           R8, [R0,#0x14]
000065d4  LDRGT           LR, [R8,LR,LSL#2]
000065d8  ADDGT           R3, LR, R3,LSL#1
000065dc  STRHGT          R5, [R3]
000065e0  ADD             R1, R1, #1
000065e4  MOV             R1, R1,LSL#16
000065e8  MOV             R1, R1,ASR#16
000065ec  CMP             R1, #8
000065f0  BLT             loc_653C
000065f4  CMP             R4, #0
000065f8  SUBGE           R1, R2, R12
000065fc  ADDGE           R1, R4, R1,LSL#2
00006600  ADDLT           R1, R4, R2,LSL#2
00006604  ADDLT           R1, R1, #6
00006608  ADDGE           R1, R1, #0xA
0000660c  MOV             R4, R1,LSL#16
00006610  SUBGE           R1, R12, #1
00006614  MOVGE           R12, R1,LSL#16
00006618  ADD             R1, R2, #1
0000661c  MOV             R2, R1,LSL#16
00006620  MOV             R2, R2,ASR#16
00006624  MOVGE           R12, R12,ASR#16
00006628  MOV             R4, R4,ASR#16
0000662c  CMP             R2, R12
00006630  BLE             loc_6538
00006634  MOV             R0, #0
00006638  POP             {R4-R8,LR}
0000663c  BX              LR
