0x78654 PUSH            {R4,LR}
0x78656 LDR             R3, =dword_1501D90
0x78658 LDR             R2, [R3]
0x7865a LDR             R3, =0x1AED
0x7865c LDRSB           R3, [R2,R3]
0x7865e LSLS            R1, R1, #0x18
0x78660 MOVS            R4, R0
0x78662 LSRS            R1, R1, #0x18
0x78664 LDR             R0, [R2,#0x10]
0x78666 CMP             R3, #7
0x78668 BEQ             loc_78674
0x7866a CMP             R1, #9
0x7866c BNE             loc_78674
0x7866e LDRH            R1, [R4,#2]
0x78670 BL              sub_76664
0x78674 POP             {R4}
0x78676 POP             {R0}
0x78678 BX              R0