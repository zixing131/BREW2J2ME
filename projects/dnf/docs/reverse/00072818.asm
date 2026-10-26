0x72818 PUSH            {R4-R7,LR}
0x7281a MOVS            R4, R0
0x7281c MOVS            R7, R1
0x7281e MOVS            R6, R2
0x72820 CMP             R3, #0
0x72822 BEQ             loc_72846
0x72824 CMP             R3, #1
0x72826 BNE             loc_72838
0x72828 MOVS            R0, R2
0x7282a BL              sub_72754
0x7282e LSRS            R3, R0, #0x1F
0x72830 ADDS            R3, R3, R0
0x72832 ASRS            R3, R3, #1
0x72834 SUBS            R5, R4, R3
0x72836 B               loc_72848
0x72838 CMP             R3, #2
0x7283a BNE             loc_72846
0x7283c MOVS            R0, R2
0x7283e BL              sub_72754
0x72842 SUBS            R5, R4, R0
0x72844 B               loc_72848
0x72846 MOVS            R5, R4
0x72848 MOVS            R4, R6
0x7284a B               loc_7286E
0x7284c LSLS            R3, R0, #0x18
0x7284e CMP             R3, #0
0x72850 BLT             loc_72856
0x72852 MOVS            R2, R0
0x72854 B               loc_72860
0x72856 MOVS            R0, R4
0x72858 BL              sub_7271C
0x7285c ADDS            R4, #1
0x7285e MOVS            R2, R0
0x72860 MOVS            R0, R5
0x72862 MOVS            R1, R7
0x72864 LDR             R3, [SP,#arg_0]
0x72866 BL              sub_72484
0x7286a ADDS            R4, #1
0x7286c ADDS            R5, R5, R0
0x7286e LDRB            R0, [R4]
0x72870 CMP             R0, #0
0x72872 BNE             loc_7284C
0x72874 POP             {R4-R7}
0x72876 POP             {R0}
0x72878 BX              R0