0x6c830 PUSH            {R4,LR}
0x6c832 LDRB            R3, [R0,#0xC]
0x6c834 CMP             R3, #0
0x6c836 BEQ             loc_6C8C8
0x6c838 LDRB            R3, [R0,#4]
0x6c83a ADDS            R3, #1
0x6c83c LSLS            R3, R3, #0x18
0x6c83e LDRB            R2, [R0,#5]
0x6c840 LSRS            R3, R3, #0x18
0x6c842 STRB            R3, [R0,#4]
0x6c844 CMP             R2, R3
0x6c846 BCS             loc_6C8C8
0x6c848 LDRB            R3, [R0,#6]
0x6c84a LSLS            R2, R3, #3
0x6c84c ADDS            R2, R2, R3
0x6c84e LDR             R4, [R0,#0x18]
0x6c850 LSLS            R2, R2, #2
0x6c852 ADDS            R2, R2, R4
0x6c854 LDRB            R3, [R2,#2]
0x6c856 LDRB            R1, [R0,#7]
0x6c858 SUBS            R3, #1
0x6c85a CMP             R1, R3
0x6c85c BLT             loc_6C8B0
0x6c85e MOVS            R1, #0
0x6c860 STRB            R1, [R0,#7]
0x6c862 STRB            R1, [R0,#4]
0x6c864 LDRB            R3, [R2,#1]
0x6c866 CMP             R3, #0xFF
0x6c868 BNE             loc_6C888
0x6c86a LDRB            R2, [R2]
0x6c86c CMP             R2, #0xFF
0x6c86e BNE             loc_6C878
0x6c870 MOVS            R3, #1
0x6c872 STRB            R1, [R0,#0xC]
0x6c874 STRB            R3, [R0,#0xD]
0x6c876 B               loc_6C8C8
0x6c878 LSLS            R3, R2, #3
0x6c87a ADDS            R3, R3, R2
0x6c87c STRB            R2, [R0,#6]
0x6c87e LSLS            R3, R3, #2
0x6c880 ADDS            R3, R3, R4
0x6c882 LDR             R3, [R3,#0x20]
0x6c884 LDRB            R3, [R3]
0x6c886 B               loc_6C8A8
0x6c888 STRB            R3, [R0,#6]
0x6c88a MOVS            R3, #1
0x6c88c NEGS            R3, R3
0x6c88e STRB            R3, [R2,#1]
0x6c890 LDRB            R2, [R0,#6]
0x6c892 LSLS            R3, R2, #3
0x6c894 LDR             R1, [R0,#0x18]
0x6c896 ADDS            R3, R3, R2
0x6c898 LSLS            R3, R3, #2
0x6c89a LDRB            R2, [R0,#7]
0x6c89c ADDS            R3, R3, R1
0x6c89e LDR             R1, [R3,#0x20]
0x6c8a0 LSLS            R3, R2, #4
0x6c8a2 ADDS            R3, R3, R2
0x6c8a4 LSLS            R3, R3, #2
0x6c8a6 LDRB            R3, [R3,R1]
0x6c8a8 STRB            R3, [R0,#5]
0x6c8aa MOVS            R3, #1
0x6c8ac STRB            R3, [R0,#0xC]
0x6c8ae B               loc_6C8C8
0x6c8b0 MOVS            R3, #0
0x6c8b2 STRB            R3, [R0,#4]
0x6c8b4 ADDS            R3, R1, #1
0x6c8b6 LSLS            R3, R3, #0x18
0x6c8b8 LSRS            R3, R3, #0x18
0x6c8ba STRB            R3, [R0,#7]
0x6c8bc LDR             R1, [R2,#0x20]
0x6c8be LSLS            R2, R3, #4
0x6c8c0 ADDS            R2, R2, R3
0x6c8c2 LSLS            R2, R2, #2
0x6c8c4 LDRB            R3, [R2,R1]
0x6c8c6 STRB            R3, [R0,#5]
0x6c8c8 POP             {R4}
0x6c8ca POP             {R0}
0x6c8cc BX              R0