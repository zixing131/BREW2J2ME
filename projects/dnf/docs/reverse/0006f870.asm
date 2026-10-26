0x6f870 PUSH            {R4-R7,LR}
0x6f872 LDR             R3, =dword_1536348
0x6f874 LSLS            R0, R0, #2
0x6f876 LDR             R7, [R0,R3]
0x6f878 LDR             R3, =0x266
0x6f87a LDRB            R3, [R7,R3]
0x6f87c SUB             SP, SP, #8
0x6f87e CMP             R3, #1
0x6f880 BNE             loc_6F8E6
0x6f882 LDR             R3, =0x262
0x6f884 LDR             R2, =dword_153653C
0x6f886 LDRSB           R1, [R7,R3]
0x6f888 MOVS            R3, #0x264
0x6f88c LDRH            R3, [R7,R3]
0x6f88e LDR             R2, [R2]
0x6f890 SUBS            R2, R2, R3
0x6f892 MULS            R1, R2
0x6f894 MOVS            R0, #0x240
0x6f898 LDRH            R3, [R7,R0]
0x6f89a ADDS            R3, R3, R1
0x6f89c STRH            R3, [R7,R0]
0x6f89e LDR             R3, =0x263
0x6f8a0 LDRSB           R3, [R7,R3]
0x6f8a2 MULS            R2, R3
0x6f8a4 LDR             R5, =0x242
0x6f8a6 LDRH            R3, [R7,R5]
0x6f8a8 ADDS            R3, R3, R2
0x6f8aa STRH            R3, [R7,R5]
0x6f8ac LDR             R3, =dword_1501C04
0x6f8ae LDR             R1, [R3]
0x6f8b0 CMP             R1, #0xF0
0x6f8b2 BNE             loc_6F8C8
0x6f8b4 LDRH            R3, [R7,R0]
0x6f8b6 LDR             R2, =word_1534730
0x6f8b8 NEGS            R3, R3
0x6f8ba STRH            R3, [R2]
0x6f8bc LDRH            R2, [R7,R5]
0x6f8be LDR             R1, =word_15346FC
0x6f8c0 MOVS            R3, #0x28 ; '('
0x6f8c2 SUBS            R3, R3, R2
0x6f8c4 STRH            R3, [R1]
0x6f8c6 B               loc_6F8E6
0x6f8c8 MOVS            R3, #0x140
0x6f8cc LDRH            R2, [R7,R0]
0x6f8ce LDR             R4, =word_15346FC
0x6f8d0 LDR             R0, =word_1534730
0x6f8d2 CMP             R1, R3
0x6f8d4 BNE             loc_6F8DC
0x6f8d6 MOVS            R3, #0x28 ; '('
0x6f8d8 SUBS            R3, R3, R2
0x6f8da B               loc_6F8DE
0x6f8dc NEGS            R3, R2
0x6f8de STRH            R3, [R0]
0x6f8e0 LDRH            R3, [R7,R5]
0x6f8e2 NEGS            R3, R3
0x6f8e4 STRH            R3, [R4]
0x6f8e6 LDR             R3, =0x253
0x6f8e8 LDRB            R3, [R7,R3]
0x6f8ea CMP             R3, #1
0x6f8ec BNE             loc_6F95C
0x6f8ee MOVS            R3, #0x254
0x6f8f2 LDRB            R2, [R7,R3]
0x6f8f4 MOVS            R3, #0x34 ; '4'
0x6f8f6 MULS            R3, R2
0x6f8f8 ADDS            R3, R3, R7
0x6f8fa MOVS            R6, R3
0x6f8fc MOVS            R5, R3
0x6f8fe ADDS            R6, #0x40 ; '@'
0x6f900 ADDS            R5, #0x44 ; 'D'
0x6f902 LDRB            R1, [R6,#3]
0x6f904 LDRB            R3, [R5,#3]
0x6f906 MOV             R12, R1
0x6f908 LDR             R2, =dword_1501C04
0x6f90a LDR             R4, =dword_1501BF0
0x6f90c CMP             R3, #0xFF
0x6f90e BNE             loc_6F932
0x6f910 LDRB            R0, [R5]
0x6f912 LDRB            R1, [R5,#1]
0x6f914 LSLS            R0, R0, #8
0x6f916 LSLS            R1, R1, #0x10
0x6f918 ADDS            R0, R0, R1
0x6f91a LDRB            R1, [R5,#2]
0x6f91c LSLS            R1, R1, #0x18
0x6f91e ADDS            R0, R0, R1
0x6f920 LDR             R3, [R4]
0x6f922 LDR             R2, [R2]
0x6f924 MOVS            R1, #0
0x6f926 STR             R0, [SP,#8+var_8]
0x6f928 LDR             R4, =(sub_6A854+1)
0x6f92a MOVS            R0, #0
0x6f92c BL              sub_71336
0x6f930 B               loc_6F95C
0x6f932 LDRB            R0, [R6]
0x6f934 LDRB            R1, [R6,#1]
0x6f936 LSLS            R0, R0, #8
0x6f938 LSLS            R1, R1, #0x10
0x6f93a ADDS            R0, R0, R1
0x6f93c LDRB            R1, [R6,#2]
0x6f93e LSLS            R1, R1, #0x18
0x6f940 LDR             R3, [R4]
0x6f942 ADDS            R0, R0, R1
0x6f944 MOV             R4, R12
0x6f946 LDR             R2, [R2]
0x6f948 MOVS            R1, #3
0x6f94a STR             R0, [SP,#8+var_8]
0x6f94c LSRS            R0, R4, #6
0x6f94e SUBS            R1, R1, R0
0x6f950 STR             R1, [SP,#8+var_4]
0x6f952 MOVS            R0, #0
0x6f954 MOVS            R1, #0
0x6f956 LDR             R4, =(sub_6A89C+1)
0x6f958 BL              sub_71336
0x6f95c LDR             R3, =0x255
0x6f95e LDRB            R3, [R7,R3]
0x6f960 CMP             R3, #1
0x6f962 BNE             loc_6F9BE
0x6f964 LDR             R3, =0x256
0x6f966 LDRB            R2, [R7,R3]
0x6f968 MOVS            R3, #0x34 ; '4'
0x6f96a MULS            R3, R2
0x6f96c ADDS            R3, R3, R7
0x6f96e ADDS            R3, #0x44 ; 'D'
0x6f970 LDRB            R6, [R3,#3]
0x6f972 LDR             R2, =dword_1501C04
0x6f974 LDR             R4, =dword_1501BF0
0x6f976 LDRB            R1, [R3]
0x6f978 LDRB            R0, [R3,#1]
0x6f97a LDRB            R5, [R3,#2]
0x6f97c CMP             R6, #0xFF
0x6f97e BNE             loc_6F99C
0x6f980 LSLS            R0, R0, #0x10
0x6f982 LSLS            R1, R1, #8
0x6f984 ADDS            R1, R1, R0
0x6f986 LSLS            R0, R5, #0x18
0x6f988 ADDS            R1, R1, R0
0x6f98a LDR             R3, [R4]
0x6f98c LDR             R2, [R2]
0x6f98e MOVS            R0, #0
0x6f990 STR             R1, [SP,#8+var_8]
0x6f992 LDR             R4, =(sub_6A854+1)
0x6f994 MOVS            R1, #0
0x6f996 BL              sub_71336
0x6f99a B               loc_6F9BE
0x6f99c LSLS            R0, R0, #0x10
0x6f99e LSLS            R1, R1, #8
0x6f9a0 ADDS            R1, R1, R0
0x6f9a2 LSLS            R0, R5, #0x18
0x6f9a4 ADDS            R1, R1, R0
0x6f9a6 LDR             R3, [R4]
0x6f9a8 LDR             R2, [R2]
0x6f9aa LSRS            R0, R6, #6
0x6f9ac STR             R1, [SP,#8+var_8]
0x6f9ae MOVS            R1, #3
0x6f9b0 SUBS            R1, R1, R0
0x6f9b2 STR             R1, [SP,#8+var_4]
0x6f9b4 MOVS            R0, #0
0x6f9b6 MOVS            R1, #0
0x6f9b8 LDR             R4, =(sub_6A89C+1)
0x6f9ba BL              sub_71336
0x6f9be LDR             R3, =0x257
0x6f9c0 LDRB            R3, [R7,R3]
0x6f9c2 CMP             R3, #1
0x6f9c4 BNE             loc_6FA36
0x6f9c6 MOVS            R5, #0x258
0x6f9ca LDRB            R3, [R7,R5]
0x6f9cc MOVS            R6, #0x34 ; '4'
0x6f9ce MULS            R3, R6
0x6f9d0 ADDS            R3, R3, R7
0x6f9d2 MOVS            R0, R3
0x6f9d4 ADDS            R0, #0x4C ; 'L'
0x6f9d6 LDRB            R4, [R0,#3]
0x6f9d8 CMP             R4, #0
0x6f9da BEQ             loc_6F9FE
0x6f9dc LDR             R3, =dword_1501C04
0x6f9de LDRB            R1, [R0]
0x6f9e0 LDR             R2, [R3]
0x6f9e2 LDRB            R3, [R0,#1]
0x6f9e4 LSLS            R1, R1, #8
0x6f9e6 LSLS            R3, R3, #0x10
0x6f9e8 ADDS            R1, R1, R3
0x6f9ea LDRB            R3, [R0,#2]
0x6f9ec LSLS            R3, R3, #0x18
0x6f9ee ADDS            R1, R1, R3
0x6f9f0 STR             R1, [SP,#8+var_8]
0x6f9f2 MOVS            R3, R4
0x6f9f4 MOVS            R0, #0
0x6f9f6 MOVS            R1, #0
0x6f9f8 LDR             R4, =(sub_6A854+1)
0x6f9fa BL              sub_71336
0x6f9fe LDRB            R3, [R7,R5]
0x6fa00 MULS            R3, R6
0x6fa02 ADDS            R4, R3, R7
0x6fa04 MOVS            R3, R4
0x6fa06 ADDS            R3, #0x50 ; 'P'
0x6fa08 LDRB            R5, [R3]
0x6fa0a CMP             R5, #0
0x6fa0c BEQ             loc_6FA36
0x6fa0e LDR             R3, =dword_1501BF0
0x6fa10 LDR             R1, [R3]
0x6fa12 LDR             R3, =dword_1501C04
0x6fa14 ADDS            R4, #0x4C ; 'L'
0x6fa16 LDRB            R0, [R4]
0x6fa18 LDR             R2, [R3]
0x6fa1a LDRB            R3, [R4,#1]
0x6fa1c LSLS            R0, R0, #8
0x6fa1e LSLS            R3, R3, #0x10
0x6fa20 ADDS            R0, R0, R3
0x6fa22 LDRB            R3, [R4,#2]
0x6fa24 LSLS            R3, R3, #0x18
0x6fa26 ADDS            R0, R0, R3
0x6fa28 STR             R0, [SP,#8+var_8]
0x6fa2a SUBS            R1, R1, R5
0x6fa2c MOVS            R0, #0
0x6fa2e MOVS            R3, R5
0x6fa30 LDR             R4, =(sub_6A854+1)
0x6fa32 BL              sub_71336
0x6fa36 LDR             R3, =0x259
0x6fa38 LDRB            R3, [R7,R3]
0x6fa3a CMP             R3, #1
0x6fa3c BNE             loc_6FA72
0x6fa3e LDR             R3, =0x25A
0x6fa40 LDRB            R0, [R7,R3]
0x6fa42 MOVS            R1, #0x34 ; '4'
0x6fa44 MULS            R0, R1
0x6fa46 ADDS            R0, R0, R7
0x6fa48 MOVS            R1, R0
0x6fa4a ADDS            R1, #0x50 ; 'P'
0x6fa4c ADDS            R0, #0x54 ; 'T'
0x6fa4e LDRB            R4, [R1,#3]
0x6fa50 LDRB            R1, [R0]
0x6fa52 LSLS            R4, R4, #8
0x6fa54 LSLS            R1, R1, #0x10
0x6fa56 LDR             R3, =dword_1501C04
0x6fa58 ADDS            R4, R4, R1
0x6fa5a LDRB            R1, [R0,#1]
0x6fa5c LDR             R2, [R3]
0x6fa5e LSLS            R1, R1, #0x18
0x6fa60 LDR             R3, =dword_1501BF0
0x6fa62 ADDS            R4, R4, R1
0x6fa64 LDR             R3, [R3]
0x6fa66 MOVS            R0, #0
0x6fa68 STR             R4, [SP,#8+var_8]
0x6fa6a MOVS            R1, #0
0x6fa6c LDR             R4, =(sub_6A854+1)
0x6fa6e BL              sub_71336
0x6fa72 MOVS            R5, #0x250
0x6fa76 LDRB            R3, [R7,R5]
0x6fa78 CMP             R3, #1
0x6fa7a BNE             loc_6FAA2
0x6fa7c LDR             R3, =word_1534730
0x6fa7e MOVS            R1, #(word_1534730 - 0x1534730)
0x6fa80 LDRSH           R0, [R3,R1]; word_1534730
0x6fa82 MOVS            R3, #0x240
0x6fa86 LDRH            R3, [R7,R3]
0x6fa88 ADDS            R0, R0, R3
0x6fa8a LDR             R3, =dword_1501C04
0x6fa8c LDR             R3, [R3]
0x6fa8e LSRS            R2, R3, #0x1F
0x6fa90 ADDS            R2, R2, R3
0x6fa92 LDR             R3, =dword_1501BF0
0x6fa94 MOVS            R1, #0
0x6fa96 LDR             R3, [R3]
0x6fa98 ASRS            R2, R2, #1
0x6fa9a STR             R1, [SP,#8+var_8]
0x6fa9c LDR             R4, =(sub_6A854+1)
0x6fa9e BL              sub_71336
0x6faa2 LDRB            R3, [R7,R5]
0x6faa4 CMP             R3, #2
0x6faa6 BNE             loc_6FADA
0x6faa8 LDR             R3, =word_1534730
0x6faaa MOVS            R2, #(word_1534730 - 0x1534730)
0x6faac LDRSH           R0, [R3,R2]; word_1534730
0x6faae MOVS            R3, #0x240
0x6fab2 LDRH            R3, [R7,R3]
0x6fab4 ADDS            R0, R0, R3
0x6fab6 LDR             R3, =word_15346FC
0x6fab8 MOVS            R4, #(word_15346FC - 0x15346FC)
0x6faba LDRSH           R1, [R3,R4]; word_15346FC
0x6fabc LDR             R3, =0x242
0x6fabe LDRH            R3, [R7,R3]
0x6fac0 ADDS            R1, R1, R3
0x6fac2 LDR             R3, =dword_1501C04
0x6fac4 LDR             R3, [R3]
0x6fac6 LSRS            R2, R3, #0x1F
0x6fac8 ADDS            R2, R2, R3
0x6faca LDR             R3, =dword_1501BF0
0x6facc MOVS            R4, #0
0x6face LDR             R3, [R3]
0x6fad0 ASRS            R2, R2, #1
0x6fad2 STR             R4, [SP,#8+var_8]
0x6fad4 LDR             R4, =(sub_6A854+1)
0x6fad6 BL              sub_71336
0x6fada LDRB            R3, [R7,R5]
0x6fadc CMP             R3, #3
0x6fade BNE             loc_6FB14
0x6fae0 LDR             R3, =dword_1501C04
0x6fae2 LDR             R3, [R3]
0x6fae4 LSRS            R2, R3, #0x1F
0x6fae6 ADDS            R2, R2, R3
0x6fae8 LDR             R3, =word_1534730
0x6faea MOVS            R1, #(word_1534730 - 0x1534730)
0x6faec LDRSH           R0, [R3,R1]; word_1534730
0x6faee MOVS            R3, #0x240
0x6faf2 LDRH            R3, [R7,R3]
0x6faf4 ADDS            R0, R0, R3
0x6faf6 LDR             R3, =word_15346FC
0x6faf8 MOVS            R4, #(word_15346FC - 0x15346FC)
0x6fafa LDRSH           R1, [R3,R4]; word_15346FC
0x6fafc LDR             R3, =0x242
0x6fafe LDRH            R3, [R7,R3]
0x6fb00 ADDS            R1, R1, R3
0x6fb02 LDR             R3, =dword_1501BF0
0x6fb04 MOVS            R4, #0
0x6fb06 ASRS            R2, R2, #1
0x6fb08 LDR             R3, [R3]
0x6fb0a ADDS            R0, R0, R2
0x6fb0c STR             R4, [SP,#8+var_8]
0x6fb0e LDR             R4, =(sub_6A854+1)
0x6fb10 BL              sub_71336
0x6fb14 ADD             SP, SP, #8
0x6fb16 POP             {R4-R7}
0x6fb18 POP             {R0}
0x6fb1a BX              R0