0001209c  LDR             R0, [R0,#0x898]
000120a0  MOV             R1, #0
000120a4  ADD             R2, R1, R1,LSL#1
000120a8  ADD             R2, R0, R2,LSL#4
000120ac  LDRB            R2, [R2,#0x6C]
000120b0  CMP             R2, #0
000120b4  ADDNE           R1, R1, #1
000120b8  CMPNE           R1, #0x27 ; '''
000120bc  BLT             loc_120A4
000120c0  ADD             R1, R1, R1,LSL#1
000120c4  ADD             R0, R0, R1,LSL#4
000120c8  ADD             R0, R0, #0x4C ; 'L'
000120cc  BX              LR
