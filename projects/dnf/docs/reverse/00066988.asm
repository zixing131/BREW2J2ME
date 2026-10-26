0x66988 PUSH            {R4,R5,LR}
0x6698a MOVS            R4, R0
0x6698c BL              sub_667C4
0x66990 MOVS            R0, R4
0x66992 BL              sub_65E20
0x66996 MOVS            R0, R4
0x66998 BL              sub_62794
0x6699c BL              sub_312D4
0x669a0 LDR             R3, =word_1500018
0x669a2 LDRH            R3, [R3]
0x669a4 CMP             R3, #2
0x669a6 BNE             loc_669E2
0x669a8 LDR             R5, =dword_1500050
0x669aa LDR             R0, [R5]
0x669ac MOVS            R1, #0x96
0x669ae ADDS            R0, #1
0x669b0 STR             R0, [R5]
0x669b2 LDR             R3, =0x8C1C1
0x669b4 LSLS            R1, R1, #1
0x669b6 BL              sub_66A76
0x669ba CMP             R0, #0
0x669bc BNE             loc_669CE
0x669be LDR             R3, =dword_1500054
0x669c0 LDR             R2, [R3]
0x669c2 ADDS            R2, #1
0x669c4 STR             R2, [R3]
0x669c6 STR             R0, [R5]
0x669c8 LDR             R3, =(sub_E790+1)
0x669ca BL              sub_66A76
0x669ce LDR             R4, =dword_1500054
0x669d0 LDR             R3, [R4]
0x669d2 CMP             R3, #0xA
0x669d4 BLE             loc_669E2
0x669d6 LDR             R3, =(sub_71D8+1)
0x669d8 BL              sub_66A76
0x669dc MOVS            R3, #0
0x669de STR             R3, [R4]
0x669e0 STR             R3, [R5]
0x669e2 POP             {R4,R5}
0x669e4 POP             {R0}
0x669e6 BX              R0