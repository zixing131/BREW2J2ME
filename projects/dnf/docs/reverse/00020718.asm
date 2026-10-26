0x20718 PUSH            {R4-R7,LR}
0x2071a SUB             SP, SP, #0x2C
0x2071c BL              sub_2041C
0x20720 LDR             R0, =aMapani; "mapAni"
0x20722 LDR             R3, =0x6CBE1
0x20724 BL              sub_22468
0x20728 STR             R0, [SP,#0x2C+var_24]
0x2072a CMP             R0, #0
0x2072c BNE             loc_20730
0x2072e B               loc_20860
0x20730 MOV             R0, SP
0x20732 LDR             R5, =unk_140327C
0x20734 LDR             R1, [SP,#0x2C+var_24]
0x20736 MOVS            R2, #2
0x20738 ADDS            R0, #0x2A ; '*'
0x2073a BL              sub_2246C
0x2073e LDR             R1, [SP,#0x2C+var_24]
0x20740 MOVS            R2, #4
0x20742 ADDS            R1, #2
0x20744 ADD             R0, SP, #0x2C+var_C
0x20746 BL              sub_2246C
0x2074a LDR             R1, [SP,#0x2C+var_24]
0x2074c MOVS            R2, #4
0x2074e ADDS            R1, #6
0x20750 ADD             R0, SP, #0x2C+var_8
0x20752 BL              sub_2246C
0x20756 LDR             R0, [SP,#0x2C+var_C]
0x20758 LDR             R7, =unk_14032EC
0x2075a ADDS            R0, #2
0x2075c BL              sub_22470
0x20760 STR             R0, [SP,#0x2C+var_20]
0x20762 LDR             R0, [SP,#0x2C+var_24]
0x20764 MOVS            R1, #6
0x20766 LDR             R3, [SP,#0x2C+var_8]
0x20768 LDR             R2, [SP,#0x2C+var_C]
0x2076a STR             R1, [SP,#0x2C+var_2C]
0x2076c LDR             R4, =0x692B5
0x2076e LDR             R1, [SP,#0x2C+var_20]
0x20770 ADDS            R0, #0xA
0x20772 BL              sub_2246A
0x20776 LDR             R4, =word_150C790
0x20778 LDR             R1, [SP,#0x2C+var_20]
0x2077a MOVS            R2, #2
0x2077c MOVS            R0, R4
0x2077e BL              sub_2246C
0x20782 LDR             R2, [SP,#0x2C+var_20]
0x20784 ADDS            R2, #2
0x20786 STR             R2, [SP,#0x2C+var_1C]
0x20788 LDRH            R3, [R4]
0x2078a LSLS            R0, R3, #3
0x2078c SUBS            R0, R0, R3
0x2078e LSLS            R0, R0, #2
0x20790 ADDS            R0, #2
0x20792 BL              sub_22470
0x20796 MOVS            R3, #0
0x20798 STR             R0, [R4,#(dword_150C794 - 0x150C790)]
0x2079a STR             R0, [R4,#(dword_150C798 - 0x150C790)]
0x2079c STR             R3, [SP,#0x2C+var_18]
0x2079e B               loc_2083E
0x207a0 LDR             R2, [SP,#0x2C+var_10]
0x207a2 LDR             R0, [R5,#(dword_150C798 - 0x150C790)]
0x207a4 LDR             R1, [SP,#0x2C+var_1C]
0x207a6 ADDS            R0, R2, R0
0x207a8 LDR             R4, =unk_140327C
0x207aa MOVS            R2, #1
0x207ac BL              sub_2246A
0x207b0 LDR             R0, [R5,#(dword_150C798 - 0x150C790)]
0x207b2 LDR             R3, [SP,#0x2C+var_10]
0x207b4 LDR             R1, [SP,#0x2C+var_1C]
0x207b6 ADDS            R0, R3, R0
0x207b8 MOVS            R2, #1
0x207ba ADDS            R0, #1
0x207bc ADDS            R1, #1
0x207be BL              sub_2246A
0x207c2 LDR             R7, [SP,#0x2C+var_1C]
0x207c4 MOVS            R2, #0
0x207c6 STR             R2, [SP,#0x2C+var_14]
0x207c8 ADDS            R7, #2
0x207ca LDR             R3, =word_150C790
0x207cc LDR             R0, [R3,#(dword_150C798 - 0x150C790)]
0x207ce STR             R3, [SP,#0x2C+var_28]
0x207d0 LDR             R3, [SP,#0x2C+var_14]
0x207d2 LDR             R2, [SP,#0x2C+var_10]
0x207d4 LSLS            R4, R3, #3
0x207d6 ADDS            R6, R4, #4
0x207d8 ADDS            R0, R2, R0
0x207da LDR             R5, =unk_140327C
0x207dc MOVS            R1, R7
0x207de MOVS            R2, #1
0x207e0 ADDS            R0, R0, R6
0x207e2 BL              sub_2246C
0x207e6 LDR             R2, [SP,#0x2C+var_28]
0x207e8 LDR             R3, [SP,#0x2C+var_10]
0x207ea LDR             R0, [R2,#(dword_150C798 - 0x150C790)]
0x207ec ADDS            R0, R3, R0
0x207ee ADDS            R0, R0, R6
0x207f0 ADDS            R1, R7, #1
0x207f2 MOVS            R2, #2
0x207f4 ADDS            R0, #2
0x207f6 BL              sub_2246C
0x207fa LDR             R2, [SP,#0x2C+var_28]
0x207fc LDR             R3, [SP,#0x2C+var_10]
0x207fe LDR             R0, [R2,#(dword_150C798 - 0x150C790)]
0x20800 ADDS            R4, #8
0x20802 ADDS            R0, R3, R0
0x20804 ADDS            R1, R7, #3
0x20806 MOVS            R2, #2
0x20808 ADDS            R0, R0, R4
0x2080a BL              sub_2246C
0x2080e LDR             R2, [SP,#0x2C+var_28]
0x20810 LDR             R3, [SP,#0x2C+var_10]
0x20812 LDR             R0, [R2,#(dword_150C798 - 0x150C790)]
0x20814 ADDS            R0, R3, R0
0x20816 ADDS            R0, R0, R4
0x20818 ADDS            R1, R7, #5
0x2081a MOVS            R2, #1
0x2081c ADDS            R0, #2
0x2081e BL              sub_2246C
0x20822 LDR             R2, [SP,#0x2C+var_14]
0x20824 ADDS            R2, #1
0x20826 ADDS            R7, #6
0x20828 STR             R2, [SP,#0x2C+var_14]
0x2082a CMP             R2, #3
0x2082c BNE             loc_207CA
0x2082e LDR             R3, [SP,#0x2C+var_1C]
0x20830 LDR             R2, [SP,#0x2C+var_18]
0x20832 ADDS            R3, #0x14
0x20834 STR             R3, [SP,#0x2C+var_1C]
0x20836 ADDS            R2, #1
0x20838 LDR             R3, [SP,#0x2C+var_10]
0x2083a STR             R2, [SP,#0x2C+var_18]
0x2083c ADDS            R3, #0x1C
0x2083e STR             R3, [SP,#0x2C+var_10]
0x20840 LDR             R5, =word_150C790
0x20842 LDR             R2, [SP,#0x2C+var_18]
0x20844 LDRH            R3, [R5]
0x20846 CMP             R2, R3
0x20848 BLT             loc_207A0
0x2084a LDR             R3, [SP,#0x2C+var_20]
0x2084c CMP             R3, #0
0x2084e BEQ             loc_20858
0x20850 MOVS            R0, R3
0x20852 LDR             R3, =unk_14032FC
0x20854 BL              sub_22468
0x20858 LDR             R0, [SP,#0x2C+var_24]
0x2085a LDR             R3, =unk_14032FC
0x2085c BL              sub_22468
0x20860 ADD             SP, SP, #0x2C ; ','
0x20862 POP             {R4-R7}
0x20864 POP             {R0}
0x20866 BX              R0