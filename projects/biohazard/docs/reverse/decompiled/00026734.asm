00026734  PUSH            {R2-R10,LR}
00026738  MOV             R8, R1
0002673c  LDR             R1, [R0,#0xE0]
00026740  MOV             R9, R2
00026744  MOV             R5, R0
00026748  BL              sub_1058
0002674c  MOV             R4, R0
00026750  LDR             R0, [R0,#0x84]
00026754  LDR             R7, =(start - 0x26760)
00026758  ADD             R7, PC, R7; start
0002675c  CMP             R0, #0
00026760  BNE             loc_26780
00026764  LDR             R0, [R7,#(dword_8 - 0xC)]
00026768  LDR             R1, [R0,#0x68]
0002676c  MOV             R0, #0x54 ; 'T'
00026770  BLX             R1
00026774  STR             R0, [R4,#0x84]
00026778  CMP             R0, #0
0002677c  BEQ             loc_2691C
00026780  LDR             R1, [R4,#0x84]
00026784  MOV             R0, #0xFFFFFFFF
00026788  STR             R0, [R1]
0002678c  LDR             R1, [R4,#0x84]
00026790  STR             R0, [R1,#4]
00026794  MOV             R1, #6
00026798  ADD             R0, R4, #0x18
0002679c  BL              sub_17E2C
000267a0  CMP             R0, #0
000267a4  BNE             locret_26920
000267a8  LDR             R1, [R4,#0x84]
000267ac  MOV             R0, #0x3C ; '<'
000267b0  STR             R0, [R1,#0x44]
000267b4  LDR             R2, [R4,#0x84]
000267b8  MOV             R3, #0
000267bc  STMEA           SP, {R2,R3}
000267c0  LDR             R2, =(aAuth_1 - 0x267D8); "Auth"
000267c4  MOV             R3, #1
000267c8  MOV             R1, #0
000267cc  MOV             R6, #1
000267d0  ADD             R2, PC, R2; "Auth"
000267d4  LDR             R0, [R4,#0x18]
000267d8  BL              sub_17DB4
000267dc  LDR             R0, [R4,#0x84]
000267e0  MOV             R3, #0
000267e4  ADD             R2, R0, #4
000267e8  STMEA           SP, {R2,R3}
000267ec  LDR             R2, =(aErrorcode_1 - 0x26804); "ErrorCode"
000267f0  MOV             R3, #1
000267f4  MOV             R1, R6
000267f8  MOV             R10, #2
000267fc  ADD             R2, PC, R2; "ErrorCode"
00026800  LDR             R0, [R4,#0x18]
00026804  BL              sub_17DB4
00026808  LDR             R0, [R4,#0x84]
0002680c  MOV             R1, R10
00026810  ADD             R3, R0, #0x44 ; 'D'
00026814  ADD             R2, R0, #8
00026818  STMEA           SP, {R2,R3}
0002681c  LDR             R2, =(aOrdernum_1 - 0x26830); "OrderNum"
00026820  MOV             R3, #0
00026824  MOV             R6, #3
00026828  ADD             R2, PC, R2; "OrderNum"
0002682c  LDR             R0, [R4,#0x18]
00026830  BL              sub_17DB4
00026834  LDR             R0, [R4,#0x84]
00026838  MOV             R3, #0
0002683c  ADD             R2, R0, #0x48 ; 'H'
00026840  STMEA           SP, {R2,R3}
00026844  LDR             R2, =(aCurrency - 0x2685C); "Currency"
00026848  MOV             R3, #1
0002684c  MOV             R1, R6
00026850  MOV             R10, #4
00026854  ADD             R2, PC, R2; "Currency"
00026858  LDR             R0, [R4,#0x18]
0002685c  BL              sub_17DB4
00026860  LDR             R0, [R4,#0x84]
00026864  MOV             R3, #0
00026868  ADD             R2, R0, #0x4C ; 'L'
0002686c  STMEA           SP, {R2,R3}
00026870  LDR             R2, =(aPrice_0 - 0x26888); "Price"
00026874  MOV             R3, #1
00026878  MOV             R1, R10
0002687c  MOV             R6, #5
00026880  ADD             R2, PC, R2; "Price"
00026884  LDR             R0, [R4,#0x18]
00026888  BL              sub_17DB4
0002688c  LDR             R0, [R4,#0x84]
00026890  MOV             R3, #0
00026894  ADD             R2, R0, #0x50 ; 'P'
00026898  STMEA           SP, {R2,R3}
0002689c  LDR             R2, =(aOrderstatus - 0x268B0); "OrderStatus"
000268a0  MOV             R3, #1
000268a4  MOV             R1, R6
000268a8  ADD             R2, PC, R2; "OrderStatus"
000268ac  LDR             R0, [R4,#0x18]
000268b0  BL              sub_17DB4
000268b4  MOV             R3, R9
000268b8  MOV             R2, R8
000268bc  MOV             R1, #6
000268c0  LDR             R0, [R4,#0x18]
000268c4  BL              sub_17E88
000268c8  MOV             R6, R0
000268cc  LDR             R0, [R4,#0x18]
000268d0  BL              sub_17E68
000268d4  CMP             R6, #0
000268d8  MOVNE           R0, R6
000268dc  BNE             locret_26920
000268e0  LDR             R0, [R4,#0x84]
000268e4  LDR             R6, =(sub_26D18 - 0x268F0)
000268e8  ADD             R6, PC, R6; sub_26D18
000268ec  LDR             R1, [R0]
000268f0  CMP             R1, #1
000268f4  BNE             loc_269A4
000268f8  ADD             R1, R0, #8
000268fc  LDR             R0, [R4,#0x20]
00026900  LDR             R2, [R7,#(dword_8 - 0xC)]
00026904  ADD             R0, R0, #0x48 ; 'H'
00026908  LDR             R3, [R2,#0xCC]
0002690c  MOV             R2, #0x3C ; '<'
00026910  BLX             R3
00026914  CMP             R0, #0
00026918  BEQ             loc_26924
0002691c  MOV             R0, #1
00026920  POP             {R2-R10,PC}
00026924  LDR             R0, [R4,#0x84]
00026928  LDR             R1, [R0,#0x50]
0002692c  CMP             R1, #8
00026930  CMPNE           R1, #4
00026934  BNE             loc_26954
00026938  MOV             R3, #0
0002693c  ADD             R2, R0, #8
00026940  STMEA           SP, {R2,R3}
00026944  LDR             R3, [R0,#0x4C]
00026948  MOV             R2, #0
0002694c  LDR             R1, =0x834
00026950  B               loc_269F4
00026954  CMP             R1, #2
00026958  BNE             loc_269DC
0002695c  LDR             R0, [R4,#0x188]
00026960  CMP             R0, #6
00026964  BLT             loc_2697C
00026968  MOV             R0, R5
0002696c  BL              sub_25F94
00026970  MOV             R3, #0
00026974  LDR             R0, [R4,#0x84]
00026978  B               loc_269E0
0002697c  MOV             R0, #1
00026980  STRB            R0, [R4,#0x18C]
00026984  LDR             R0, [R5]
00026988  MOV             R3, R5
0002698c  LDR             R1, [R0]
00026990  MOV             R2, R6
00026994  LDR             R12, [R1,#0x2C]
00026998  MOV             R1, #0x7D0
0002699c  BLX             R12
000269a0  B               loc_269FC
000269a4  LDR             R1, [R0,#4]
000269a8  CMP             R1, #0x14
000269ac  BNE             loc_269DC
000269b0  LDR             R0, [R4,#0x188]
000269b4  CMP             R0, #4
000269b8  BGE             loc_26968
000269bc  LDR             R0, [R5]
000269c0  MOV             R3, R5
000269c4  LDR             R1, [R0]
000269c8  MOV             R2, R6
000269cc  LDR             R12, [R1,#0x2C]
000269d0  MOV             R1, #0x7D0
000269d4  BLX             R12
000269d8  B               loc_269FC
000269dc  MOV             R3, #0
000269e0  ADD             R2, R0, #8
000269e4  STMEA           SP, {R2,R3}
000269e8  LDR             R3, [R0,#0x4C]
000269ec  MOV             R2, #0
000269f0  MOV             R1, #0x3F4
000269f4  MOV             R0, R5
000269f8  BL              sub_21CCC
000269fc  MOV             R0, #0
00026a00  B               locret_26920
