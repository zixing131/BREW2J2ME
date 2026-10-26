0001b614  PUSH            {R3-R7,LR}
0001b618  MOV             R4, R0
0001b61c  LDR             R0, [R0,#0x140]
0001b620  ADD             R0, R0, #1
0001b624  STR             R0, [R4,#0x140]
0001b628  ADD             R0, R4, #0x220
0001b62c  MOV             R5, R0
0001b630  BL              sub_20228
0001b634  LDRB            R0, [R4,#0x1A4]
0001b638  CMP             R0, #6; switch 7 cases
0001b63c  ADDLS           PC, PC, R0,LSL#2; switch jump
0001b640  B               def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b644  B               loc_1B6F8; jumptable 0001B63C case 0
0001b648  B               def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b64c  B               loc_1B950; jumptable 0001B63C case 2
0001b650  B               loc_1B660; jumptable 0001B63C case 3
0001b654  B               loc_1B95C; jumptable 0001B63C case 4
0001b658  B               def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b65c  B               loc_1B670; jumptable 0001B63C case 6
0001b660  LDR             R0, [R4,#0x1A0]; jumptable 0001B63C case 3
0001b664  BL              sub_20408
0001b668  POP             {R3-R7,LR}; jumptable 0001B63C default case, cases 1,5
0001b66c  BX              LR
0001b670  LDR             R0, [R4,#0x194]; jumptable 0001B63C case 6
0001b674  BL              sub_1F908
0001b678  LDR             R0, [R4,#0x18C]
0001b67c  LDR             R1, [R0,#0x8A4]!
0001b680  ADD             R1, R1, #1
0001b684  STR             R1, [R0]
0001b688  LDR             R0, [R4,#0x194]
0001b68c  LDRB            R1, [R0,#5]
0001b690  CMP             R1, #0
0001b694  LDRHEQ          R0, [R0,#0x3C]
0001b698  CMPEQ           R0, #0
0001b69c  LDRBEQ          R0, [R4,#0x1A4]
0001b6a0  CMPEQ           R0, #6
0001b6a4  BNE             def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b6a8  MOV             R2, #0
0001b6ac  MOV             R1, #0
0001b6b0  MOV             R0, R4
0001b6b4  BL              sub_59C4
0001b6b8  MOV             R3, #0xFFFFFFFF
0001b6bc  STR             R3, [SP,#4+var_4]
0001b6c0  LDR             R0, [R4,#0x194]
0001b6c4  MOV             R3, #0
0001b6c8  MOV             R2, #0
0001b6cc  MOV             R1, #2
0001b6d0  BL              sub_24FDC
0001b6d4  LDR             R0, [R4,#0x194]
0001b6d8  LDRH            R0, [R0,#0x3C]
0001b6dc  CMP             R0, #0
0001b6e0  BEQ             def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b6e4  MOV             R2, #0
0001b6e8  MOV             R1, #6
0001b6ec  MOV             R0, R4
0001b6f0  BL              sub_59C4
0001b6f4  B               loc_1B670; jumptable 0001B63C case 6
0001b6f8  LDR             R0, [R4,#0x190]; jumptable 0001B63C case 0
0001b6fc  MOV             R6, #0
0001b700  LDR             R0, [R0,#0x18]
0001b704  LDR             R1, [R0]
0001b708  CMP             R1, #0
0001b70c  MOVLE           R2, #0
0001b710  MOVLE           R1, #4
0001b714  STRLE           R6, [R0]
0001b718  BLE             loc_1B988
0001b71c  LDR             R0, [R4,#0x18C]
0001b720  BL              sub_20C54
0001b724  LDRB            R0, [R4,#0x234]
0001b728  CMP             R0, #0
0001b72c  BEQ             loc_1B76C
0001b730  ADD             R1, R4, #0x200
0001b734  LDRH            R0, [R1,#0x36]
0001b738  ADD             R0, R0, #1
0001b73c  BIC             R0, R0, #0x10000
0001b740  STRH            R0, [R1,#0x36]
0001b744  CMP             R0, #0x32 ; '2'
0001b748  STRBHI          R6, [R4,#0x234]
0001b74c  LDRHI           R0, [R4,#0x190]
0001b750  STRBHI          R6, [R0,#0x20]
0001b754  BHI             loc_1B768
0001b758  LDR             R0, [R4,#0x190]
0001b75c  LDRB            R0, [R0,#0x20]
0001b760  CMP             R0, #0
0001b764  BNE             loc_1B76C
0001b768  STRB            R6, [R4,#0x234]
0001b76c  LDR             R0, [R4,#0x190]
0001b770  LDRB            R1, [R0,#0x33C]
0001b774  CMP             R1, #0
0001b778  BEQ             loc_1B878
0001b77c  STRB            R6, [R0,#0x33C]
0001b780  LDR             R1, [R4,#0x190]
0001b784  LDR             R0, =0x33E
0001b788  LDRH            R0, [R0,R1]
0001b78c  CMP             R0, #0x64 ; 'd'
0001b790  BCC             loc_1B878
0001b794  CMP             R0, #0x1F4
0001b798  BCS             loc_1B878
0001b79c  MOV             R7, #1
0001b7a0  ADD             R0, R1, R0
0001b7a4  STRB            R7, [R0,#0x28]
0001b7a8  LDR             R0, [R4,#0x190]
0001b7ac  LDRB            R1, [R0,#0x33D]
0001b7b0  CMP             R1, #1
0001b7b4  BNE             loc_1B814
0001b7b8  LDRB            R0, [R0,#0x341]
0001b7bc  MOV             R3, #0
0001b7c0  CMP             R0, #0
0001b7c4  BNE             loc_1B7E4
0001b7c8  LDR             R2, =(dword_18A0+1)
0001b7cc  MOV             R1, #0
0001b7d0  MOV             R0, R5
0001b7d4  BL              sub_E00
0001b7d8  LDR             R0, [R4,#0x190]
0001b7dc  STRB            R7, [R0,#0x341]
0001b7e0  B               loc_1B7F4
0001b7e4  MOV             R2, #0x2300
0001b7e8  MOV             R1, #0
0001b7ec  MOV             R0, R5
0001b7f0  BL              sub_E00
0001b7f4  LDR             R1, [R4,#0x190]
0001b7f8  LDR             R2, =0x1869F
0001b7fc  LDR             R0, [R1,#0x24]
0001b800  ADD             R0, R0, #0xA
0001b804  CMP             R0, R2
0001b808  MOVGE           R0, R2
0001b80c  STR             R0, [R1,#0x24]
0001b810  B               loc_1B878
0001b814  CMP             R1, #2
0001b818  BNE             loc_1B878
0001b81c  LDRB            R0, [R0,#0x340]
0001b820  MOV             R3, #0
0001b824  CMP             R0, #0
0001b828  BNE             loc_1B848
0001b82c  LDR             R2, =0x189E
0001b830  MOV             R1, #0
0001b834  MOV             R0, R5
0001b838  BL              sub_E00
0001b83c  LDR             R0, [R4,#0x190]
0001b840  STRB            R7, [R0,#0x340]
0001b844  B               loc_1B858
0001b848  LDR             R2, =0x2301
0001b84c  MOV             R1, #0
0001b850  MOV             R0, R5
0001b854  BL              sub_E00
0001b858  LDR             R0, [R4,#0x190]
0001b85c  ADD             R1, R0, #0x300
0001b860  LDRSH           R0, [R1,#0x22]
0001b864  ADD             R0, R0, #2
0001b868  SUBS            R12, R0, #0x300
0001b86c  SUBSGE          R12, R12, #0xE7
0001b870  LDRGE           R0, =0x3E7
0001b874  STRH            R0, [R1,#0x22]
0001b878  LDR             R0, [R4,#0x190]
0001b87c  LDRB            R1, [R0,#0x338]
0001b880  CMP             R1, #0
0001b884  BEQ             loc_1B8B0
0001b888  STRB            R6, [R0,#0x338]
0001b88c  LDR             R0, [R4,#0x190]
0001b890  MOV             R2, #0
0001b894  ADD             R0, R0, #0x300
0001b898  LDRH            R3, [R0,#0x3A]
0001b89c  MOV             R1, #3
0001b8a0  STR             R3, [SP,#4+var_4]
0001b8a4  LDR             R0, [R4,#0x194]
0001b8a8  MOV             R3, #0
0001b8ac  BL              sub_24FDC
0001b8b0  MOV             R3, #0xFFFFFFFF
0001b8b4  STR             R3, [SP,#4+var_4]
0001b8b8  LDR             R0, [R4,#0x194]
0001b8bc  MOV             R3, #0
0001b8c0  MOV             R2, #0
0001b8c4  MOV             R1, #2
0001b8c8  BL              sub_24FDC
0001b8cc  MOV             R3, #0xFFFFFFFF
0001b8d0  STR             R3, [SP,#4+var_4]
0001b8d4  LDR             R0, [R4,#0x190]
0001b8d8  LDR             R1, [R0,#0x328]
0001b8dc  LDR             R0, [R0,#0x324]
0001b8e0  LDR             R1, [R1]
0001b8e4  LDR             R0, [R0]
0001b8e8  AND             R3, R1, R3,LSR#16
0001b8ec  MOV             R2, R0,LSL#16
0001b8f0  MOV             R2, R2,LSR#16
0001b8f4  LDR             R0, [R4,#0x194]
0001b8f8  MOV             R1, #0
0001b8fc  BL              sub_24FDC
0001b900  MOV             R3, #0xFFFFFFFF
0001b904  STR             R3, [SP,#4+var_4]
0001b908  LDR             R0, [R4,#0x190]
0001b90c  LDR             R1, [R0,#0x328]
0001b910  LDR             R0, [R0,#0x324]
0001b914  LDR             R1, [R1]
0001b918  LDR             R0, [R0]
0001b91c  AND             R3, R1, R3,LSR#16
0001b920  MOV             R2, R0,LSL#16
0001b924  MOV             R2, R2,LSR#16
0001b928  LDR             R0, [R4,#0x194]
0001b92c  MOV             R1, #1
0001b930  BL              sub_24FDC
0001b934  LDR             R0, [R4,#0x194]
0001b938  LDRH            R0, [R0,#0x3C]
0001b93c  CMP             R0, #0
0001b940  BEQ             def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b944  MOV             R2, #0
0001b948  MOV             R1, #6
0001b94c  B               loc_1B988
0001b950  LDR             R0, [R4,#0x198]; jumptable 0001B63C case 2
0001b954  BL              sub_214EC
0001b958  B               def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b95c  ADD             R0, R4, #0x100; jumptable 0001B63C case 4
0001b960  LDRH            R1, [R0,#0xB4]
0001b964  ADD             R1, R1, #1
0001b968  STRH            R1, [R0,#0xB4]
0001b96c  LDR             R0, [R4,#0x190]
0001b970  LDR             R0, [R0,#0x18]
0001b974  LDR             R0, [R0]
0001b978  CMP             R0, #0
0001b97c  BLE             def_1B63C; jumptable 0001B63C default case, cases 1,5
0001b980  MOV             R2, #0
0001b984  MOV             R1, #0
0001b988  MOV             R0, R4
0001b98c  BL              sub_59C4
0001b990  B               def_1B63C; jumptable 0001B63C default case, cases 1,5
