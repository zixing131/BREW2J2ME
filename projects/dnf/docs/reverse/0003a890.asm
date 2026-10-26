0x3a890 PUSH            {R4,R5,LR}
0x3a892 LSLS            R5, R0, #0x10
0x3a894 LDR             R3, =0x1CF
0x3a896 ASRS            R2, R5, #0x10
0x3a898 CMP             R2, R3
0x3a89a BNE             loc_3A8B8
0x3a89c LDR             R3, =byte_15340F4
0x3a89e MOVS            R4, #0
0x3a8a0 STRB            R4, [R3]
0x3a8a2 BL              sub_34410
0x3a8a6 LDR             R2, =byte_153407C
0x3a8a8 MOVS            R3, #1
0x3a8aa NEGS            R3, R3
0x3a8ac STRB            R3, [R2,#(byte_153407D - 0x153407C)]
0x3a8ae LDR             R3, =byte_15340F5
0x3a8b0 STRB            R4, [R2,#(byte_153407E - 0x153407C)]
0x3a8b2 STRB            R4, [R3]
0x3a8b4 BL              sub_30ADC
0x3a8b8 LSRS            R4, R5, #0x10
0x3a8ba MOVS            R0, R4
0x3a8bc BL              sub_3587C
0x3a8c0 MOVS            R0, R4
0x3a8c2 BL              sub_3A264
0x3a8c6 MOVS            R0, R4
0x3a8c8 LDR             R3, =(sub_221BC+1)
0x3a8ca BL              sub_66A76
0x3a8ce LDR             R3, =(sub_22420+1)
0x3a8d0 BL              sub_66A76
0x3a8d4 POP             {R4,R5}
0x3a8d6 POP             {R0}
0x3a8d8 BX              R0