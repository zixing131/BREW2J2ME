0x4572c PUSH            {R4-R6,LR}
0x4572e LDR             R3, =(sub_1FD3C+1)
0x45730 LSLS            R4, R0, #0x10
0x45732 BL              sub_66A76
0x45736 LDR             R3, =byte_1533C0B
0x45738 MOVS            R2, #0
0x4573a LDR             R5, =byte_150C6BC
0x4573c STRB            R2, [R3]
0x4573e LDR             R3, =byte_15337C0
0x45740 STRB            R2, [R5,#(byte_150C6C4 - 0x150C6BC)]
0x45742 STRB            R2, [R3]
0x45744 STRB            R2, [R5]
0x45746 LDR             R2, =dword_1501C18
0x45748 MOVS            R3, #2
0x4574a LSRS            R4, R4, #0x10
0x4574c STRH            R4, [R5,#(word_150C6BE - 0x150C6BC)]
0x4574e STR             R3, [R2]
0x45750 LDRH            R0, [R5,#(word_150C6BE - 0x150C6BC)]
0x45752 BL              sub_342D0
0x45756 MOVS            R0, #1
0x45758 MOVS            R1, #0x17
0x4575a MOVS            R2, #0
0x4575c MOVS            R3, #0
0x4575e LDR             R4, =(sub_1404+1)
0x45760 BL              sub_66A78
0x45764 MOVS            R6, #0
0x45766 ADDS            R5, #0x10
0x45768 LDR             R3, =byte_150C6BC
0x4576a MOVS            R0, #(word_150C6BE - 0x150C6BC)
0x4576c LDRSH           R2, [R3,R0]; word_150C6BE
0x4576e LDR             R1, =word_150C9D0
0x45770 LSLS            R3, R2, #6
0x45772 SUBS            R3, R3, R2
0x45774 LDR             R2, [R1,#(dword_150C9D8 - 0x150C9D0)]
0x45776 LSLS            R3, R3, #2
0x45778 ADDS            R3, R3, R2
0x4577a LSLS            R2, R6, #3
0x4577c ADDS            R2, R2, R3
0x4577e ADDS            R2, #0xC0
0x45780 LDRB            R3, [R2]
0x45782 CMP             R3, #3
0x45784 BNE             loc_457B4
0x45786 LDRH            R0, [R2,#2]
0x45788 LDR             R3, =0x83A01
0x4578a BL              sub_66A76
0x4578e MOVS            R1, #0
0x45790 MOVS            R4, R0
0x45792 MOVS            R2, #0x18
0x45794 LDR             R3, =unk_140329C
0x45796 MOVS            R0, R5
0x45798 BL              sub_66A76
0x4579c MOVS            R0, R5
0x4579e MOVS            R1, R4
0x457a0 MOVS            R2, #0x18
0x457a2 LDR             R3, =unk_140327C
0x457a4 BL              sub_66A76
0x457a8 CMP             R4, #0
0x457aa BEQ             loc_457B4
0x457ac MOVS            R0, R4
0x457ae LDR             R3, =unk_14032FC
0x457b0 BL              sub_66A76
0x457b4 ADDS            R6, #1
0x457b6 ADDS            R5, #0x18
0x457b8 CMP             R6, #3
0x457ba BNE             loc_45768
0x457bc POP             {R4-R6}
0x457be POP             {R0}
0x457c0 BX              R0