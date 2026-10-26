0x39544 PUSH            {R4,LR}
0x39546 LDR             R4, =unk_1535E18
0x39548 LDR             R3, [R4,#(dword_1535E1C - 0x1535E18)]
0x3954a CMP             R3, #0
0x3954c BNE             loc_39564
0x3954e MOVS            R1, #0
0x39550 LDR             R3, =unk_140329C
0x39552 MOVS            R0, R4
0x39554 MOVS            R2, #0xC
0x39556 BL              sub_66A76
0x3955a MOVS            R0, #1
0x3955c MOVS            R1, R4
0x3955e LDR             R3, =0x6C2B5
0x39560 BL              sub_66A76
0x39564 POP             {R4}
0x39566 POP             {R0}
0x39568 BX              R0