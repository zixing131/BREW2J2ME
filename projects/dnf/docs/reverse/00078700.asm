0x78700 PUSH            {R4,LR}
0x78702 LDR             R3, =dword_1501D90
0x78704 LDR             R2, [R3]
0x78706 LDR             R3, =0x1AED
0x78708 LDRSB           R3, [R2,R3]
0x7870a LSLS            R1, R1, #0x18
0x7870c LSRS            R1, R1, #0x18
0x7870e LDR             R4, [R2,#0x10]
0x78710 CMP             R3, #7
0x78712 BEQ             loc_78734
0x78714 CMP             R1, #9
0x78716 BEQ             loc_7871C
0x78718 CMP             R1, #0xB
0x7871a BNE             loc_78734
0x7871c LDRH            R2, [R0,#2]
0x7871e LDR             R3, [R4,#0xC]
0x78720 MOVS            R1, #0x64 ; 'd'
0x78722 MOVS            R0, R3
0x78724 MULS            R0, R2
0x78726 LDR             R3, =0x8C065
0x78728 BL              sub_80706
0x7872c MOVS            R1, R0
0x7872e MOVS            R0, R4
0x78730 BL              sub_766B0
0x78734 POP             {R4}
0x78736 POP             {R0}
0x78738 BX              R0