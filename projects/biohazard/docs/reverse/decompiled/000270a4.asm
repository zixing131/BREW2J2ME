000270a4  CMP             R2, #0
000270a8  MOVEQ           R0, #0
000270ac  BXEQ            LR
000270b0  PUSH            {LR}
000270b4  SUB             LR, R1, #1
000270b8  MOV             R12, #0
000270bc  B               loc_270DC
000270c0  LDRB            R1, [R2,R12]
000270c4  CMP             R1, #0
000270c8  CMPNE           R12, LR
000270cc  BGE             loc_270E4
000270d0  CMP             R0, #0
000270d4  STRBNE          R1, [R0,R12]
000270d8  ADD             R12, R12, #1
000270dc  CMP             R12, R3
000270e0  BLT             loc_270C0
000270e4  MOV             R1, #0
000270e8  STRB            R1, [R0,R12]
000270ec  POP             {PC}
