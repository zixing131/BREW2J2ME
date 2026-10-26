000203d0  PUSH            {R3,LR}
000203d4  LDR             R1, [R0,#0x13C]
000203d8  CMP             R1, #4
000203dc  MOVNE           R0, #0
000203e0  BNE             loc_20400
000203e4  LDR             R1, [R0,#0x140]
000203e8  ADD             R1, R1, #1
000203ec  STR             R1, [R0,#0x140]
000203f0  LDRB            R1, [R0,#0x12C]
000203f4  CMP             R1, #1
000203f8  BLEQ            sub_24FCC
000203fc  MOV             R0, #1
00020400  POP             {R3,LR}
00020404  BX              LR
