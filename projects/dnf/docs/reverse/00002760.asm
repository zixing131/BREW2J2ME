0x2760 PUSH            {R4-R7,LR}
0x2762 SUB             SP, SP, #0x28
0x2764 ADD             R0, SP, #0x28+var_8
0x2766 LDR             R3, =0x2CD19
0x2768 BL              sub_6D00
0x276c LDR             R5, =dword_1501BFC
0x276e LDR             R2, =dword_1501C14
0x2770 LDR             R3, =unk_1537760
0x2772 MOVS            R4, #0
0x2774 LDR             R0, [R2]
0x2776 LDR             R1, [R5]
0x2778 STR             R2, [SP,#0x28+var_C]
0x277a STR             R3, [SP,#0x28+var_10]
0x277c MOVS            R2, R3
0x277e STR             R4, [SP,#0x28+var_28]
0x2780 STR             R4, [SP,#0x28+var_24]
0x2782 STR             R4, [SP,#0x28+var_20]
0x2784 STR             R4, [SP,#0x28+var_1C]
0x2786 STR             R4, [SP,#0x28+var_18]
0x2788 STR             R4, [SP,#0x28+var_14]
0x278a MOVS            R3, #5
0x278c LDR             R4, =0x6B235
0x278e BL              sub_6D02
0x2792 LDR             R2, [SP,#0x28+var_C]
0x2794 LDR             R0, [R2]
0x2796 MOVS            R2, #0xF
0x2798 LDR             R1, [R5]
0x279a STR             R2, [SP,#0x28+var_28]
0x279c MOVS            R2, #1
0x279e STR             R2, [SP,#0x28+var_24]
0x27a0 LDR             R2, =0xFFFFFF00
0x27a2 LDR             R3, =dword_8CDA4
0x27a4 SUBS            R1, #0x18
0x27a6 STR             R2, [SP,#0x28+var_20]
0x27a8 LDR             R4, =0x695C5
0x27aa MOVS            R2, #0x64 ; 'd'
0x27ac BL              sub_6D02
0x27b0 LDR             R3, [SP,#0x28+var_C]
0x27b2 LDR             R4, [SP,#0x28+var_10]
0x27b4 LDR             R0, [R3]
0x27b6 LDR             R3, [R4,#(dword_153777C - 0x1537760)]
0x27b8 LDR             R1, [R5]
0x27ba MOVS            R4, #0xA
0x27bc MOVS            R2, #0
0x27be STR             R3, [SP,#0x28+var_28]
0x27c0 ADD             R3, SP, #0x28+var_8
0x27c2 SUBS            R0, #0x1E
0x27c4 ADDS            R1, #0x1E
0x27c6 STR             R4, [SP,#0x28+var_24]
0x27c8 STR             R2, [SP,#0x28+var_20]
0x27ca STR             R3, [SP,#0x28+var_1C]
0x27cc LDR             R7, =0x6B159
0x27ce MOVS            R3, #0
0x27d0 BL              sub_6D08
0x27d4 LDR             R2, [SP,#0x28+var_C]
0x27d6 LDR             R0, [R2]
0x27d8 LDR             R2, [SP,#0x28+var_10]
0x27da LDR             R3, [R2,#(dword_153777C - 0x1537760)]
0x27dc LDR             R1, [R5]
0x27de STR             R3, [SP,#0x28+var_28]
0x27e0 STR             R4, [SP,#0x28+var_24]
0x27e2 MOVS            R3, #0
0x27e4 ADD             R4, SP, #0x28+var_8
0x27e6 ADDS            R0, #0x1E
0x27e8 ADDS            R1, #0x1E
0x27ea STR             R3, [SP,#0x28+var_20]
0x27ec STR             R4, [SP,#0x28+var_1C]
0x27ee MOVS            R2, #0
0x27f0 BL              sub_6D08
0x27f4 LDR             R3, =dword_1501C58
0x27f6 LDR             R2, [SP,#0x28+var_C]
0x27f8 LDR             R4, [SP,#0x28+var_10]
0x27fa LDR             R3, [R3]
0x27fc LDR             R0, [R2]
0x27fe LDR             R1, [R5]
0x2800 LDR             R2, [R4,#(dword_153777C - 0x1537760)]
0x2802 CMP             R3, #0
0x2804 BNE             loc_281A
0x2806 MOVS            R3, #0xB
0x2808 STR             R2, [SP,#0x28+var_28]
0x280a STR             R3, [SP,#0x28+var_24]
0x280c MOVS            R2, #0
0x280e ADD             R3, SP, #0x28+var_8
0x2810 SUBS            R0, #0x1E
0x2812 ADDS            R1, #0x1E
0x2814 STR             R2, [SP,#0x28+var_20]
0x2816 STR             R3, [SP,#0x28+var_1C]
0x2818 B               loc_282E
0x281a MOVS            R3, #0xB
0x281c MOVS            R4, #0
0x281e STR             R2, [SP,#0x28+var_28]
0x2820 STR             R3, [SP,#0x28+var_24]
0x2822 ADD             R2, SP, #0x28+var_8
0x2824 STR             R4, [SP,#0x28+var_20]
0x2826 STR             R2, [SP,#0x28+var_1C]
0x2828 ADDS            R0, #0x1E
0x282a ADDS            R1, #0x1E
0x282c MOVS            R2, #0
0x282e MOVS            R3, #0
0x2830 BL              sub_6D08
0x2834 LDR             R6, =dword_1501C14
0x2836 LDR             R7, =dword_1501BFC
0x2838 LDR             R0, [R6]
0x283a LDR             R1, [R7]
0x283c LDR             R5, =0xFFFFFF00
0x283e MOVS            R3, #0
0x2840 STR             R5, [SP,#0x28+var_24]
0x2842 STR             R3, [SP,#0x28+var_28]
0x2844 LDR             R4, =0x676E9
0x2846 ADDS            R1, #0x20 ; ' '
0x2848 LDR             R2, =dword_8CDE0
0x284a MOVS            R3, #1
0x284c SUBS            R0, #0x1E
0x284e BL              sub_6D02
0x2852 LDR             R0, [R6]
0x2854 LDR             R1, [R7]
0x2856 MOVS            R3, #0
0x2858 STR             R5, [SP,#0x28+var_24]
0x285a STR             R3, [SP,#0x28+var_28]
0x285c ADDS            R1, #0x20 ; ' '
0x285e LDR             R2, =dword_8CDE4
0x2860 MOVS            R3, #1
0x2862 ADDS            R0, #0x1E
0x2864 BL              sub_6D02
0x2868 ADD             SP, SP, #0x28 ; '('
0x286a POP             {R4-R7}
0x286c POP             {R0}
0x286e BX              R0