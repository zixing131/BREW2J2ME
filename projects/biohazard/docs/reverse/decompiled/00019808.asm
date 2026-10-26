00019808  PUSH            {R4,LR}
0001980c  MOV             R4, #1
00019810  CMP             R0, #0x168
00019814  BGE             loc_19820
00019818  CMN             R0, #0x168
0001981c  BGT             loc_19830
00019820  MOV             R1, R0
00019824  MOV             R0, #0x168
00019828  BL              sub_104
0001982c  MOV             R0, R1
00019830  CMP             R0, #0
00019834  ADDLT           R0, R0, #0x168
00019838  CMP             R0, #0xB4
0001983c  SUBGT           R0, R0, #0xB4
00019840  MOVGT           R4, #0xFFFFFFFF
00019844  LDR             R1, =(dword_27400 - 0x19858)
00019848  CMP             R0, #0x5A ; 'Z'
0001984c  RSBGT           R0, R0, #0xB4
00019850  ADD             R1, PC, R1; dword_27400
00019854  LDR             R0, [R1,R0,LSL#2]
00019858  MUL             R0, R4, R0
0001985c  POP             {R4,LR}
00019860  BX              LR
