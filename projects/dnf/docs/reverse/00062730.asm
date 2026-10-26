0x62730 PUSH            {LR}
0x62732 LDR             R3, =0x6BBF5
0x62734 BL              sub_66A76
0x62738 CMP             R0, #0
0x6273a BEQ             loc_62776
0x6273c CMP             R0, #0x23 ; '#'
0x6273e BEQ             loc_6274C
0x62740 CMP             R0, #0x35 ; '5'
0x62742 BEQ             loc_62748
0x62744 ADDS            R0, #5
0x62746 BNE             loc_62776
0x62748 LDR             R3, =0x71199
0x6274a B               loc_6276C
0x6274c LDR             R3, =word_15364E2
0x6274e LDRH            R3, [R3]
0x62750 CMP             R3, #4
0x62752 BNE             loc_6275E
0x62754 LDR             R3, =dword_153653C
0x62756 LDR             R3, [R3]
0x62758 CMP             R3, #0x54 ; 'T'
0x6275a BNE             loc_6276A
0x6275c B               loc_62776
0x6275e CMP             R3, #5
0x62760 BNE             loc_6276A
0x62762 LDR             R3, =dword_153653C
0x62764 LDR             R3, [R3]
0x62766 CMP             R3, #0xAC
0x62768 BEQ             loc_62776
0x6276a LDR             R3, =0x71185
0x6276c BL              sub_66A76
0x62770 LDR             R3, =0x6BBD1
0x62772 BL              sub_66A76
0x62776 POP             {R0}
0x62778 BX              R0