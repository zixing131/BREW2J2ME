000103b4  PUSH            {R4,LR}
000103b8  ADD             LR, SP, #arg_0
000103bc  LDM             LR, {R12,LR}
000103c0  LDRB            R4, [R0,#0x154]
000103c4  CMP             R4, #0
000103c8  BNE             loc_103EC
000103cc  STRB            R1, [R0,#0x154]
000103d0  ADD             R1, R0, #0x100
000103d4  MOV             R4, #0
000103d8  STRH            R4, [R1,#0x56]
000103dc  STRH            R2, [R1,#0x58]
000103e0  STR             R3, [R0,#0x15C]
000103e4  STRB            R12, [R0,#0x160]
000103e8  STR             LR, [R0,#0x164]
000103ec  POP             {R4,LR}
000103f0  BX              LR
