00018818  PUSH            {R2-R10,LR}
0001881c  MOV             R6, R0
00018820  LDR             R0, [R0,#0x18]
00018824  MOV             R10, R2
00018828  CMP             R0, #0
0001882c  BLE             loc_188A8
00018830  LDR             R3, [R6,#0x10]
00018834  CMP             R3, #0
00018838  LDRNE           R2, [R6,#0x14]
0001883c  CMPNE           R2, #0
00018840  BEQ             loc_188A8
00018844  MOV             R2, #1
00018848  MOV             R8, #0
0001884c  B               loc_18870
00018850  ADD             R12, R2, R0
00018854  ADD             R12, R12, R12,LSR#31
00018858  MOV             R4, R12,ASR#1
0001885c  LDR             R12, [R3,R4,LSL#2]
00018860  CMP             R12, R1
00018864  BEQ             loc_18878
00018868  ADDLS           R2, R4, #1
0001886c  SUBHI           R0, R4, #1
00018870  CMP             R2, R0
00018874  BLE             loc_18850
00018878  CMP             R2, R0
0001887c  BGT             loc_188A8
00018880  LDR             R0, [R6,#0x60]
00018884  ADD             R2, SP, #8+var_4
00018888  LDR             R0, [R0,#0xC]
0001888c  ADR             LR, loc_188A0
00018890  LDR             R1, [R0]
00018894  LDR             R3, [R1,#8]
00018898  LDR             R1, =0x1001003
0001889c  BX              R3
000188a0  CMP             R0, #0
000188a4  BEQ             loc_188B4
000188a8  MOV             R0, #0
000188ac  POP             {R2-R10,LR}
000188b0  BX              LR
000188b4  LDR             R0, [SP,#8+var_4]
000188b8  MOV             R2, #1
000188bc  LDR             R1, [R0]
000188c0  ADR             LR, loc_188D0
000188c4  LDR             R3, [R1,#8]
000188c8  ADD             R1, R6, #0x20 ; ' '
000188cc  BX              R3
000188d0  MOVS            R5, R0
000188d4  BEQ             loc_189C4
000188d8  LDR             R0, [R6,#0x14]
000188dc  LDR             R9, =(start - 0x188F8)
000188e0  LDR             R1, [R0,R4,LSL#2]
000188e4  ADD             R0, R0, R4,LSL#2
000188e8  LDR             R0, [R0,#-4]
000188ec  SUB             R8, R1, R0
000188f0  ADD             R9, PC, R9; start
000188f4  LDR             R0, [R9,#(dword_8 - 0xC)]
000188f8  ADR             LR, loc_18908
000188fc  LDR             R1, [R0,#0x68]
00018900  MOV             R0, R8
00018904  BX              R1
00018908  MOVS            R7, R0
0001890c  BNE             loc_1893C
00018910  LDR             R0, [R5]
00018914  ADR             LR, loc_18924
00018918  LDR             R1, [R0,#4]
0001891c  MOV             R0, R5
00018920  BX              R1
00018924  LDR             R0, [SP,#8+var_4]
00018928  LDR             R1, [R0]
0001892c  ADR             LR, loc_18938
00018930  LDR             R1, [R1,#4]
00018934  BX              R1
00018938  B               loc_188A8
0001893c  LDR             R0, [R6,#0x14]
00018940  MOV             R1, #2
00018944  ADD             R0, R0, R4,LSL#2
00018948  LDR             R2, [R0,#-4]
0001894c  LDR             R0, [R5]
00018950  ADR             LR, loc_18960
00018954  LDR             R3, [R0,#0x1C]
00018958  MOV             R0, R5
0001895c  BX              R3
00018960  LDR             R0, [R5]
00018964  MOV             R2, R8
00018968  LDR             R3, [R0,#0xC]
0001896c  MOV             R0, R5
00018970  MOV             R1, R7
00018974  MOV             LR, PC
00018978  BX              R3
0001897c  LDR             R0, [R5]
00018980  LDR             R1, [R0,#4]
00018984  MOV             R0, R5
00018988  MOV             LR, PC
0001898c  BX              R1
00018990  LDR             R0, [R6,#0x60]
00018994  MOV             R2, R10
00018998  LDR             R3, [R0,#0x38]
0001899c  MOV             R0, R7
000189a0  MOV             R1, R8
000189a4  MOV             LR, PC
000189a8  BX              R3
000189ac  MOV             R8, R0
000189b0  LDR             R0, [R9,#(dword_8 - 0xC)]
000189b4  LDR             R1, [R0,#0x6C]
000189b8  MOV             R0, R7
000189bc  MOV             LR, PC
000189c0  BX              R1
000189c4  LDR             R0, [SP,#8+var_4]
000189c8  ADR             LR, loc_189D8
000189cc  LDR             R1, [R0]
000189d0  LDR             R1, [R1,#4]
000189d4  BX              R1
000189d8  MOV             R0, R8
000189dc  B               loc_188AC
