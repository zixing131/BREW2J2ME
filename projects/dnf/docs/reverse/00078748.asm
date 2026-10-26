0x78748 PUSH            {R4-R7,LR}
0x7874a LDR             R3, =dword_1501D90
0x7874c LDR             R2, [R3]
0x7874e LDR             R3, =0x1AED
0x78750 LDRSB           R3, [R2,R3]
0x78752 LSLS            R1, R1, #0x18
0x78754 LSRS            R1, R1, #0x18
0x78756 LDR             R7, [R2,#0x10]
0x78758 CMP             R3, #7
0x7875a BEQ             loc_78794
0x7875c CMP             R1, #9
0x7875e BEQ             loc_78764
0x78760 CMP             R1, #0xB
0x78762 BNE             loc_78794
0x78764 LDR             R3, [R7,#0xC]
0x78766 LDRH            R4, [R0,#2]
0x78768 LDR             R5, =0x8C065
0x7876a MOVS            R0, R3
0x7876c MULS            R0, R4
0x7876e MOVS            R1, #0x64 ; 'd'
0x78770 BL              sub_8070A
0x78774 LDR             R3, =0x19B8
0x78776 LDR             R3, [R7,R3]
0x78778 MOVS            R6, R0
0x7877a MOVS            R1, #0x64 ; 'd'
0x7877c MOVS            R0, R3
0x7877e MULS            R0, R4
0x78780 BL              sub_8070A
0x78784 MOVS            R1, R0
0x78786 MOVS            R0, R7
0x78788 BL              sub_76664
0x7878c MOVS            R0, R7
0x7878e MOVS            R1, R6
0x78790 BL              sub_766B0
0x78794 POP             {R4-R7}
0x78796 POP             {R0}
0x78798 BX              R0