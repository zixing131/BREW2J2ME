000003b0  PUSH            {R4-R6,LR}
000003b2  LDR             R6, =0xFFFF7C4D
000003b4  MOVS            R5, R1
000003b6  MOVS            R1, R0
000003b8  MOVS            R4, R0
000003ba  ADD             R6, PC
000003bc  MOVS            R0, R6
000003be  BL              loc_3C2
000003c2  MOVS            R2, R0
000003c4  CMP             R0, R6
000003c6  BNE             loc_3D6
000003c8  MOVS            R1, R5
000003ca  MOVS            R0, R4
000003cc  BL              sub_420
000003d0  POP             {R4-R6}
000003d2  POP             {R3}
000003d4  BX              R3
000003d6  LDR             R0, =0xFFFF7C2D
000003d8  ADD             R0, PC
000003da  CMP             R2, R0
000003dc  BEQ             loc_3E6
000003de  MOVS            R1, R5
000003e0  MOVS            R0, R4
000003e2  BL              sub_414
000003e6  MOVS            R0, #0
000003e8  B               loc_3D0
