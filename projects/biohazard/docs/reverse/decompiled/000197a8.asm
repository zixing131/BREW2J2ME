000197a8  PUSH            {R4,LR}
000197ac  MOV             R4, #1
000197b0  CMP             R0, #0x168
000197b4  BGE             loc_197C0
000197b8  CMN             R0, #0x168
000197bc  BGT             loc_197D0
000197c0  MOV             R1, R0
000197c4  MOV             R0, #0x168
000197c8  BL              sub_104
000197cc  MOV             R0, R1
000197d0  CMP             R0, #0
000197d4  ADDLT           R0, R0, #0x168
000197d8  CMP             R0, #0xB4
000197dc  SUBGT           R0, R0, #0xB4
000197e0  MOVGT           R4, #0xFFFFFFFF
000197e4  LDR             R1, =(dword_27294 - 0x197F8)
000197e8  CMP             R0, #0x5A ; 'Z'
000197ec  RSBGT           R0, R0, #0xB4
000197f0  ADD             R1, PC, R1; dword_27294
000197f4  LDR             R0, [R1,R0,LSL#2]
000197f8  MUL             R0, R4, R0
000197fc  POP             {R4,LR}
00019800  BX              LR
