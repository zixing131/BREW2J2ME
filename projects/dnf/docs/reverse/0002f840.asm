0x2f840 PUSH            {R4,LR}
0x2f842 LDR             R4, =dword_1534724
0x2f844 LDR             R0, [R4]
0x2f846 CMP             R0, #0
0x2f848 BEQ             loc_2F856
0x2f84a LDR             R3, =unk_14032FC
0x2f84c BL              sub_66A76
0x2f850 MOVS            R3, #0
0x2f852 STR             R3, [R4]
0x2f854 STR             R3, [R4,#(dword_153472C - 0x1534724)]
0x2f856 LDR             R4, =dword_1533BE4
0x2f858 LDR             R0, [R4]
0x2f85a CMP             R0, #0
0x2f85c BEQ             loc_2F86A
0x2f85e LDR             R3, =unk_14032FC
0x2f860 BL              sub_66A76
0x2f864 MOVS            R3, #0
0x2f866 STR             R3, [R4]
0x2f868 STR             R3, [R4,#(dword_1533BEC - 0x1533BE4)]
0x2f86a LDR             R4, =dword_1534D90
0x2f86c LDR             R0, [R4]
0x2f86e CMP             R0, #0
0x2f870 BEQ             loc_2F87E
0x2f872 LDR             R3, =unk_14032FC
0x2f874 BL              sub_66A76
0x2f878 MOVS            R3, #0
0x2f87a STR             R3, [R4]
0x2f87c STR             R3, [R4,#(dword_1534D98 - 0x1534D90)]
0x2f87e LDR             R4, =dword_15340C4
0x2f880 LDR             R0, [R4]
0x2f882 CMP             R0, #0
0x2f884 BEQ             loc_2F892
0x2f886 LDR             R3, =unk_14032FC
0x2f888 BL              sub_66A76
0x2f88c MOVS            R3, #0
0x2f88e STR             R3, [R4]
0x2f890 STR             R3, [R4,#(dword_15340CC - 0x15340C4)]
0x2f892 POP             {R4}
0x2f894 POP             {R0}
0x2f896 BX              R0