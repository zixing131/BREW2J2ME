0002034c  PUSH            {R1-R3,LR}
00020350  LDR             R1, [R0,#0x13C]
00020354  CMP             R1, #1
00020358  MOVNE           R0, #0
0002035c  BNE             loc_203AC
00020360  LDR             R1, [R0,#0x140]
00020364  ADD             R3, R0, #0x100
00020368  ADD             R1, R1, #1
0002036c  STR             R1, [R0,#0x140]
00020370  LDRH            R2, [R3,#0x7C]
00020374  CMP             R2, #0
00020378  BEQ             loc_203B4
0002037c  CMP             R2, #1
00020380  CMPEQ           R1, #0x44 ; 'D'
00020384  BNE             loc_203A8
00020388  MOV             R3, #0xFFFFFFFF
0002038c  MOV             R2, #1
00020390  STMEA           SP, {R2,R3}
00020394  LDR             R3, =(sub_1822C - 0x203A0)
00020398  ADD             R3, PC, R3; sub_1822C
0002039c  MOV             R2, #4
000203a0  MOV             R1, #5
000203a4  BL              sub_103B4
000203a8  MOV             R0, #1
000203ac  POP             {R1-R3,LR}
000203b0  BX              LR
000203b4  CMP             R1, #0x32 ; '2'
000203b8  MOVEQ           R1, #1
000203bc  STRHEQ          R1, [R3,#0x7C]
000203c0  MOVEQ           R1, #0
000203c4  STREQ           R1, [R0,#0x140]
000203c8  B               loc_203A8
