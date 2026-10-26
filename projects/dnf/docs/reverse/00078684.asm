0x78684 PUSH            {R4,LR}
0x78686 LDR             R3, =dword_1501D90
0x78688 LDR             R2, [R3]
0x7868a LDR             R3, =0x1AED
0x7868c LDRSB           R3, [R2,R3]
0x7868e LSLS            R1, R1, #0x18
0x78690 MOVS            R4, R0
0x78692 LSRS            R1, R1, #0x18
0x78694 LDR             R0, [R2,#0x10]
0x78696 CMP             R3, #7
0x78698 BEQ             loc_786A4
0x7869a CMP             R1, #9
0x7869c BNE             loc_786A4
0x7869e LDRH            R1, [R4,#2]
0x786a0 BL              sub_766B0
0x786a4 POP             {R4}
0x786a6 POP             {R0}
0x786a8 BX              R0