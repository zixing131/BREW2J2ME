0000571c  PUSH            {R3-R7,LR}
00005720  MOV             R7, R3
00005724  ADD             R6, R2, #0x64 ; 'd'
00005728  MOV             R5, #0
0000572c  MOV             R4, #0
00005730  MOV             R0, R1
00005734  B               loc_5754
00005738  MUL             R1, R6, R0
0000573c  MOV             R0, #0x64 ; 'd'
00005740  BL              sub_104
00005744  ADD             R1, R4, #1
00005748  MOV             R4, R1,LSL#16
0000574c  MOV             R4, R4,ASR#16
00005750  ADD             R5, R5, R0
00005754  CMP             R4, R7
00005758  BLT             loc_5738
0000575c  MOV             R0, R5
00005760  POP             {R3-R7,LR}
00005764  BX              LR
