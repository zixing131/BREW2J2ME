0x65658 PUSH            {R4,LR}
0x6565a LDR             R1, =dword_1534738
0x6565c LDR             R3, [R1]
0x6565e CMP             R3, #0
0x65660 BNE             loc_65670
0x65662 LDR             R3, [R1,#(dword_153473C - 0x1534738)]
0x65664 CMP             R3, #0
0x65666 BNE             loc_65670
0x65668 LDR             R0, =0xA482
0x6566a LDR             R3, =0x6E441
0x6566c BL              sub_66A76
0x65670 LDR             R0, =unk_15340F8
0x65672 LDR             R1, =0xA02C
0x65674 MOVS            R2, #0
0x65676 LDR             R4, =0x6EA61
0x65678 BL              sub_66A78
0x6567c LDR             R0, =unk_15358F4
0x6567e LDR             R1, =0xA02D
0x65680 MOVS            R2, #0
0x65682 BL              sub_66A78
0x65686 LDR             R3, =byte_150B1B8
0x65688 LDRB            R3, [R3]
0x6568a LDR             R0, =unk_1533D18
0x6568c CMP             R3, #1
0x6568e BNE             loc_65694
0x65690 LDR             R1, =0xB3B0
0x65692 B               loc_65696
0x65694 LDR             R1, =0xA443
0x65696 MOVS            R2, #0
0x65698 BL              sub_66A78
0x6569c BL              sub_62B00
0x656a0 LDR             R4, =0x6EA61
0x656a2 LDR             R0, =unk_1535A30
0x656a4 LDR             R1, =0xA02E
0x656a6 MOVS            R2, #0
0x656a8 BL              sub_66A78
0x656ac MOVS            R2, #0
0x656ae LDR             R0, =unk_15340D0
0x656b0 LDR             R1, =0xA442
0x656b2 BL              sub_66A78
0x656b6 LDR             R1, =unk_150D858
0x656b8 MOVS            R0, #0xB
0x656ba LDR             R3, =(sub_27758+1)
0x656bc BL              sub_66A76
0x656c0 POP             {R4}
0x656c2 POP             {R0}
0x656c4 BX              R0