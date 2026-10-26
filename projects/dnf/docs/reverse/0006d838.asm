0x6d838 PUSH            {R4-R7,LR}
0x6d83a SUB             SP, SP, #0x5C
0x6d83c MOV             R3, SP
0x6d83e MOVS            R2, R1
0x6d840 ADDS            R3, #0x5B ; '['
0x6d842 MOVS            R1, #0
0x6d844 MOV             R4, SP
0x6d846 STRB            R1, [R3]
0x6d848 ADDS            R4, #0x2E ; '.'
0x6d84a SUBS            R3, #5
0x6d84c STRH            R1, [R3]
0x6d84e MOVS            R7, R0
0x6d850 LDR             R1, =aDAct; "%d.act"
0x6d852 LDR             R3, =unk_14032CC
0x6d854 MOVS            R0, R4
0x6d856 BL              sub_6EACE
0x6d85a MOVS            R0, R4
0x6d85c BL              sub_6CBE0
0x6d860 STR             R0, [SP,#0x5C+var_58]
0x6d862 CMP             R0, #0
0x6d864 BNE             loc_6D868
0x6d866 B               loc_6DE56
0x6d868 LDR             R5, =unk_140327C
0x6d86a LDR             R1, [SP,#0x5C+var_58]
0x6d86c MOVS            R2, #2
0x6d86e ADD             R0, SP, #0x5C+var_4
0x6d870 BL              sub_6EAD2
0x6d874 LDR             R1, [SP,#0x5C+var_58]
0x6d876 MOVS            R2, #4
0x6d878 ADDS            R1, #2
0x6d87a ADD             R0, SP, #0x5C+var_10
0x6d87c BL              sub_6EAD2
0x6d880 LDR             R1, [SP,#0x5C+var_58]
0x6d882 MOVS            R2, #4
0x6d884 ADDS            R1, #6
0x6d886 ADD             R0, SP, #0x5C+var_C
0x6d888 BL              sub_6EAD2
0x6d88c LDR             R6, =unk_14032EC
0x6d88e LDR             R0, [SP,#0x5C+var_10]
0x6d890 BL              sub_6EAD4
0x6d894 STR             R0, [SP,#0x5C+var_54]
0x6d896 LDR             R0, [SP,#0x5C+var_58]
0x6d898 MOVS            R1, #6
0x6d89a LDR             R3, [SP,#0x5C+var_C]
0x6d89c LDR             R2, [SP,#0x5C+var_10]
0x6d89e STR             R1, [SP,#0x5C+var_5C]
0x6d8a0 ADDS            R0, #0xA
0x6d8a2 LDR             R1, [SP,#0x5C+var_54]
0x6d8a4 LDR             R4, =(sub_692B4+1)
0x6d8a6 BL              sub_6EAD0
0x6d8aa LDR             R1, [SP,#0x5C+var_54]
0x6d8ac MOVS            R2, #2
0x6d8ae ADDS            R0, R7, #2
0x6d8b0 BL              sub_6EAD2
0x6d8b4 LDR             R1, [SP,#0x5C+var_54]
0x6d8b6 MOVS            R2, #1
0x6d8b8 ADDS            R1, #2
0x6d8ba MOVS            R0, R7
0x6d8bc BL              sub_6EAD2
0x6d8c0 LDR             R1, [SP,#0x5C+var_54]
0x6d8c2 ADDS            R1, #3
0x6d8c4 STR             R1, [SP,#0x5C+var_34]
0x6d8c6 LDRB            R3, [R7]
0x6d8c8 LSLS            R0, R3, #3
0x6d8ca ADDS            R0, R0, R3
0x6d8cc LSLS            R0, R0, #2
0x6d8ce ADDS            R0, #2
0x6d8d0 BL              sub_6EAD4
0x6d8d4 LDRB            R3, [R7]
0x6d8d6 LSLS            R2, R3, #3
0x6d8d8 ADDS            R2, R2, R3
0x6d8da LSLS            R2, R2, #2
0x6d8dc STR             R0, [R7,#0x10]
0x6d8de STR             R0, [R7,#0x18]
0x6d8e0 MOVS            R1, #0
0x6d8e2 LDR             R3, =unk_140329C
0x6d8e4 BL              sub_6EACE
0x6d8e8 MOVS            R2, #0
0x6d8ea STR             R2, [SP,#0x5C+var_50]
0x6d8ec STR             R2, [SP,#0x5C+var_3C]
0x6d8ee B               loc_6DE36
0x6d8f0 LDR             R3, [SP,#0x5C+var_3C]
0x6d8f2 LDR             R0, [R7,#0x18]
0x6d8f4 LDR             R1, [SP,#0x5C+var_34]
0x6d8f6 ADDS            R0, R3, R0
0x6d8f8 MOVS            R2, #1
0x6d8fa LDR             R5, =unk_140327C
0x6d8fc BL              sub_6EAD2
0x6d900 LDR             R1, [SP,#0x5C+var_3C]
0x6d902 LDR             R2, [R7,#0x18]
0x6d904 MOVS            R3, #1
0x6d906 ADDS            R2, R2, R1
0x6d908 NEGS            R3, R3
0x6d90a LDR             R4, [SP,#0x5C+var_34]
0x6d90c STRB            R3, [R2,#1]
0x6d90e LDR             R0, [R7,#0x18]
0x6d910 ADDS            R4, #1
0x6d912 ADDS            R0, R1, R0
0x6d914 MOVS            R2, #1
0x6d916 MOVS            R1, R4
0x6d918 ADDS            R0, #4
0x6d91a BL              sub_6EAD2
0x6d91e LDR             R3, [R7,#0x18]
0x6d920 LDR             R2, [SP,#0x5C+var_3C]
0x6d922 ADDS            R0, R2, R3
0x6d924 LDRB            R3, [R0,#4]
0x6d926 ADDS            R4, #1
0x6d928 CMP             R3, #1
0x6d92a BNE             loc_6D992
0x6d92c MOVS            R1, R4
0x6d92e MOVS            R2, #1
0x6d930 ADDS            R0, #6
0x6d932 BL              sub_6EAD2
0x6d936 LDR             R3, [SP,#0x5C+var_3C]
0x6d938 LDR             R0, [R7,#0x18]
0x6d93a ADDS            R4, #1
0x6d93c ADDS            R0, R3, R0
0x6d93e MOVS            R1, R4
0x6d940 MOVS            R2, #1
0x6d942 ADDS            R0, #7
0x6d944 BL              sub_6EAD2
0x6d948 LDR             R1, [SP,#0x5C+var_3C]
0x6d94a LDR             R0, [R7,#0x18]
0x6d94c ADDS            R4, #1
0x6d94e ADDS            R0, R1, R0
0x6d950 MOVS            R2, #1
0x6d952 MOVS            R1, R4
0x6d954 ADDS            R0, #8
0x6d956 BL              sub_6EAD2
0x6d95a LDR             R2, [SP,#0x5C+var_3C]
0x6d95c LDR             R0, [R7,#0x18]
0x6d95e ADDS            R4, #1
0x6d960 ADDS            R0, R2, R0
0x6d962 MOVS            R1, R4
0x6d964 MOVS            R2, #1
0x6d966 ADDS            R0, #9
0x6d968 BL              sub_6EAD2
0x6d96c LDR             R3, [SP,#0x5C+var_3C]
0x6d96e LDR             R0, [R7,#0x18]
0x6d970 ADDS            R4, #1
0x6d972 ADDS            R0, R3, R0
0x6d974 MOVS            R1, R4
0x6d976 MOVS            R2, #1
0x6d978 ADDS            R0, #0xA
0x6d97a BL              sub_6EAD2
0x6d97e LDR             R1, [SP,#0x5C+var_3C]
0x6d980 LDR             R0, [R7,#0x18]
0x6d982 ADDS            R4, #1
0x6d984 ADDS            R0, R1, R0
0x6d986 ADDS            R0, #0xB
0x6d988 MOVS            R1, R4
0x6d98a MOVS            R2, #1
0x6d98c BL              sub_6EAD2
0x6d990 ADDS            R4, #1
0x6d992 LDR             R2, [SP,#0x5C+var_3C]
0x6d994 LDR             R0, [R7,#0x18]
0x6d996 ADDS            R0, R2, R0
0x6d998 MOVS            R1, R4
0x6d99a ADDS            R0, #0x10
0x6d99c MOVS            R2, #1
0x6d99e BL              sub_6EAD2
0x6d9a2 LDR             R3, [R7,#0x18]
0x6d9a4 LDR             R1, [SP,#0x5C+var_3C]
0x6d9a6 ADDS            R0, R1, R3
0x6d9a8 LDRB            R3, [R0,#0x10]
0x6d9aa ADDS            R4, #1
0x6d9ac CMP             R3, #1
0x6d9ae BNE             loc_6DA16
0x6d9b0 MOVS            R1, R4
0x6d9b2 MOVS            R2, #1
0x6d9b4 ADDS            R0, #0x12
0x6d9b6 BL              sub_6EAD2
0x6d9ba LDR             R2, [SP,#0x5C+var_3C]
0x6d9bc LDR             R0, [R7,#0x18]
0x6d9be ADDS            R4, #1
0x6d9c0 ADDS            R0, R2, R0
0x6d9c2 MOVS            R1, R4
0x6d9c4 MOVS            R2, #1
0x6d9c6 ADDS            R0, #0x13
0x6d9c8 BL              sub_6EAD2
0x6d9cc LDR             R3, [SP,#0x5C+var_3C]
0x6d9ce LDR             R0, [R7,#0x18]
0x6d9d0 ADDS            R4, #1
0x6d9d2 ADDS            R0, R3, R0
0x6d9d4 MOVS            R1, R4
0x6d9d6 MOVS            R2, #1
0x6d9d8 ADDS            R0, #0x14
0x6d9da BL              sub_6EAD2
0x6d9de LDR             R1, [SP,#0x5C+var_3C]
0x6d9e0 LDR             R0, [R7,#0x18]
0x6d9e2 ADDS            R4, #1
0x6d9e4 ADDS            R0, R1, R0
0x6d9e6 MOVS            R2, #1
0x6d9e8 MOVS            R1, R4
0x6d9ea ADDS            R0, #0x15
0x6d9ec BL              sub_6EAD2
0x6d9f0 LDR             R2, [SP,#0x5C+var_3C]
0x6d9f2 LDR             R0, [R7,#0x18]
0x6d9f4 ADDS            R4, #1
0x6d9f6 ADDS            R0, R2, R0
0x6d9f8 MOVS            R1, R4
0x6d9fa MOVS            R2, #1
0x6d9fc ADDS            R0, #0x16
0x6d9fe BL              sub_6EAD2
0x6da02 LDR             R0, [R7,#0x18]
0x6da04 LDR             R3, [SP,#0x5C+var_3C]
0x6da06 ADDS            R4, #1
0x6da08 ADDS            R0, R3, R0
0x6da0a MOVS            R1, R4
0x6da0c ADDS            R0, #0x17
0x6da0e MOVS            R2, #1
0x6da10 BL              sub_6EAD2
0x6da14 ADDS            R4, #1
0x6da16 LDR             R1, [SP,#0x5C+var_3C]
0x6da18 LDR             R0, [R7,#0x18]
0x6da1a ADDS            R0, R1, R0
0x6da1c MOVS            R2, #1
0x6da1e MOVS            R1, R4
0x6da20 ADDS            R0, #2
0x6da22 ADDS            R4, #1
0x6da24 BL              sub_6EAD2
0x6da28 STR             R4, [SP,#0x5C+var_34]
0x6da2a LDR             R2, [SP,#0x5C+var_3C]
0x6da2c LDR             R4, [R7,#0x18]
0x6da2e ADDS            R4, R2, R4
0x6da30 LDRB            R3, [R4,#2]
0x6da32 LSLS            R0, R3, #4
0x6da34 ADDS            R0, R0, R3
0x6da36 LSLS            R0, R0, #2
0x6da38 LDR             R3, =unk_14032EC
0x6da3a ADDS            R0, #2
0x6da3c BL              sub_6EACE
0x6da40 LDR             R1, [SP,#0x5C+var_3C]
0x6da42 LDR             R3, [R7,#0x18]
0x6da44 STR             R0, [R4,#0x1C]
0x6da46 ADDS            R3, R1, R3
0x6da48 LDR             R0, [R3,#0x1C]
0x6da4a STR             R0, [R3,#0x20]
0x6da4c LDRB            R3, [R3,#2]
0x6da4e LSLS            R2, R3, #4
0x6da50 ADDS            R2, R2, R3
0x6da52 LSLS            R2, R2, #2
0x6da54 MOVS            R1, #0
0x6da56 LDR             R3, =unk_140329C
0x6da58 BL              sub_6EACE
0x6da5c MOVS            R2, #0
0x6da5e STR             R2, [SP,#0x5C+var_4C]
0x6da60 STR             R2, [SP,#0x5C+var_40]
0x6da62 B               loc_6DE1A
0x6da7c LDR             R0, [R2,#0x20]
0x6da7e LDR             R3, [SP,#0x5C+var_40]
0x6da80 LDR             R1, [SP,#0x5C+var_34]
0x6da82 ADDS            R0, R3, R0
0x6da84 MOVS            R2, #1
0x6da86 LDR             R6, =unk_140327C
0x6da88 BL              sub_6EAD4
0x6da8c LDR             R1, [SP,#0x5C+var_3C]
0x6da8e LDR             R3, [R7,#0x18]
0x6da90 ADDS            R3, R3, R1
0x6da92 LDR             R0, [R3,#0x20]
0x6da94 LDR             R2, [SP,#0x5C+var_40]
0x6da96 LDR             R4, [SP,#0x5C+var_34]
0x6da98 ADDS            R0, R2, R0
0x6da9a ADDS            R4, #1
0x6da9c MOVS            R1, R4
0x6da9e MOVS            R2, #1
0x6daa0 ADDS            R0, #9
0x6daa2 BL              sub_6EAD4
0x6daa6 LDR             R3, [R7,#0x18]
0x6daa8 LDR             R1, [SP,#0x5C+var_3C]
0x6daaa ADDS            R3, R3, R1
0x6daac ADDS            R4, #1
0x6daae LDR             R3, [R3,#0x20]
0x6dab0 LDR             R2, [SP,#0x5C+var_40]
0x6dab2 STR             R4, [SP,#0x5C+var_38]
0x6dab4 ADDS            R3, R3, R2
0x6dab6 LDRB            R3, [R3,#9]
0x6dab8 CMP             R3, #0
0x6daba BEQ             loc_6DB3C
0x6dabc MOV             R5, SP
0x6dabe ADDS            R5, #0x5B ; '['
0x6dac0 MOVS            R1, R4
0x6dac2 MOVS            R2, #1
0x6dac4 MOVS            R0, R5
0x6dac6 BL              sub_6EAD4
0x6daca LDR             R1, [SP,#0x5C+var_3C]
0x6dacc LDR             R3, [R7,#0x18]
0x6dace ADDS            R3, R3, R1
0x6dad0 LDR             R2, [SP,#0x5C+var_40]
0x6dad2 LDR             R3, [R3,#0x20]
0x6dad4 LDR             R4, [SP,#0x5C+var_38]
0x6dad6 ADDS            R3, R3, R2
0x6dad8 MOVS            R2, #0
0x6dada LDRSB           R2, [R5,R2]
0x6dadc ADDS            R4, #1
0x6dade STR             R2, [R3,#0xC]
0x6dae0 MOVS            R1, R4
0x6dae2 MOVS            R2, #1
0x6dae4 MOVS            R0, R5
0x6dae6 BL              sub_6EAD4
0x6daea LDR             R1, [SP,#0x5C+var_3C]
0x6daec LDR             R3, [R7,#0x18]
0x6daee ADDS            R3, R3, R1
0x6daf0 LDR             R2, [SP,#0x5C+var_40]
0x6daf2 LDR             R3, [R3,#0x20]
0x6daf4 ADDS            R3, R3, R2
0x6daf6 MOVS            R2, #0
0x6daf8 LDRSB           R2, [R5,R2]
0x6dafa ADDS            R4, #1
0x6dafc STR             R2, [R3,#0x10]
0x6dafe MOVS            R1, R4
0x6db00 MOVS            R2, #1
0x6db02 MOVS            R0, R5
0x6db04 BL              sub_6EAD4
0x6db08 LDR             R1, [SP,#0x5C+var_3C]
0x6db0a LDR             R3, [R7,#0x18]
0x6db0c ADDS            R3, R3, R1
0x6db0e LDR             R2, [SP,#0x5C+var_40]
0x6db10 LDR             R3, [R3,#0x20]
0x6db12 ADDS            R3, R3, R2
0x6db14 MOVS            R2, #0
0x6db16 LDRSB           R2, [R5,R2]
0x6db18 ADDS            R4, #1
0x6db1a STR             R2, [R3,#0x14]
0x6db1c MOVS            R1, R4
0x6db1e MOVS            R2, #1
0x6db20 MOVS            R0, R5
0x6db22 BL              sub_6EAD4
0x6db26 LDR             R3, [R7,#0x18]
0x6db28 LDR             R1, [SP,#0x5C+var_3C]
0x6db2a ADDS            R4, #1
0x6db2c ADDS            R3, R3, R1
0x6db2e LDR             R2, [SP,#0x5C+var_40]
0x6db30 STR             R4, [SP,#0x5C+var_38]
0x6db32 LDR             R3, [R3,#0x20]
0x6db34 ADDS            R3, R3, R2
0x6db36 MOVS            R2, #0
0x6db38 LDRSB           R2, [R5,R2]
0x6db3a STR             R2, [R3,#0x18]
0x6db3c LDR             R1, [SP,#0x5C+var_3C]
0x6db3e LDR             R3, [R7,#0x18]
0x6db40 ADDS            R3, R3, R1
0x6db42 LDR             R0, [R3,#0x20]
0x6db44 LDR             R2, [SP,#0x5C+var_40]
0x6db46 ADDS            R0, R2, R0
0x6db48 LDR             R1, [SP,#0x5C+var_38]
0x6db4a MOVS            R2, #1
0x6db4c ADDS            R0, #0x24 ; '$'
0x6db4e BL              sub_6EAD4
0x6db52 LDR             R3, [R7,#0x18]
0x6db54 LDR             R1, [SP,#0x5C+var_3C]
0x6db56 ADDS            R3, R3, R1
0x6db58 LDR             R3, [R3,#0x20]
0x6db5a LDR             R2, [SP,#0x5C+var_40]
0x6db5c ADDS            R0, R2, R3
0x6db5e ADDS            R3, R0, #5
0x6db60 LDR             R4, [SP,#0x5C+var_38]
0x6db62 LDRB            R3, [R3,#0x1F]
0x6db64 ADDS            R4, #1
0x6db66 CMP             R3, #0
0x6db68 BEQ             loc_6DBF0
0x6db6a MOVS            R1, R4
0x6db6c MOVS            R2, #2
0x6db6e ADDS            R0, #0x28 ; '('
0x6db70 BL              sub_6EAD4
0x6db74 LDR             R2, [SP,#0x5C+var_3C]
0x6db76 LDR             R3, [R7,#0x18]
0x6db78 ADDS            R3, R3, R2
0x6db7a LDR             R0, [R3,#0x20]
0x6db7c LDR             R3, [SP,#0x5C+var_40]
0x6db7e LDR             R1, [SP,#0x5C+var_38]
0x6db80 ADDS            R0, R3, R0
0x6db82 ADDS            R1, #3
0x6db84 MOVS            R2, #2
0x6db86 ADDS            R0, #0x2A ; '*'
0x6db88 BL              sub_6EAD4
0x6db8c LDR             R2, [SP,#0x5C+var_3C]
0x6db8e LDR             R3, [R7,#0x18]
0x6db90 ADDS            R3, R3, R2
0x6db92 LDR             R0, [R3,#0x20]
0x6db94 LDR             R3, [SP,#0x5C+var_40]
0x6db96 LDR             R1, [SP,#0x5C+var_38]
0x6db98 ADDS            R0, R3, R0
0x6db9a ADDS            R1, #5
0x6db9c MOVS            R2, #2
0x6db9e ADDS            R0, #0x2C ; ','
0x6dba0 BL              sub_6EAD4
0x6dba4 LDR             R2, [SP,#0x5C+var_3C]
0x6dba6 LDR             R3, [R7,#0x18]
0x6dba8 ADDS            R3, R3, R2
0x6dbaa LDR             R0, [R3,#0x20]
0x6dbac LDR             R3, [SP,#0x5C+var_40]
0x6dbae LDR             R1, [SP,#0x5C+var_38]
0x6dbb0 ADDS            R0, R3, R0
0x6dbb2 ADDS            R1, #7
0x6dbb4 MOVS            R2, #2
0x6dbb6 ADDS            R0, #0x2E ; '.'
0x6dbb8 BL              sub_6EAD4
0x6dbbc LDR             R2, [SP,#0x5C+var_3C]
0x6dbbe LDR             R3, [R7,#0x18]
0x6dbc0 ADDS            R3, R3, R2
0x6dbc2 LDR             R0, [R3,#0x20]
0x6dbc4 LDR             R3, [SP,#0x5C+var_40]
0x6dbc6 LDR             R1, [SP,#0x5C+var_38]
0x6dbc8 ADDS            R0, R3, R0
0x6dbca ADDS            R1, #9
0x6dbcc MOVS            R2, #2
0x6dbce ADDS            R0, #0x38 ; '8'
0x6dbd0 BL              sub_6EAD4
0x6dbd4 LDR             R2, [SP,#0x5C+var_3C]
0x6dbd6 LDR             R3, [R7,#0x18]
0x6dbd8 ADDS            R3, R3, R2
0x6dbda LDR             R0, [R3,#0x20]
0x6dbdc LDR             R3, [SP,#0x5C+var_40]
0x6dbde LDR             R1, [SP,#0x5C+var_38]
0x6dbe0 ADDS            R0, R3, R0
0x6dbe2 ADDS            R1, #0xB
0x6dbe4 ADDS            R0, #0x3A ; ':'
0x6dbe6 MOVS            R2, #2
0x6dbe8 BL              sub_6EAD4
0x6dbec LDR             R4, [SP,#0x5C+var_38]
0x6dbee ADDS            R4, #0xD
0x6dbf0 LDR             R1, [SP,#0x5C+var_3C]
0x6dbf2 LDR             R3, [R7,#0x18]
0x6dbf4 ADDS            R3, R3, R1
0x6dbf6 LDR             R0, [R3,#0x20]
0x6dbf8 LDR             R2, [SP,#0x5C+var_40]
0x6dbfa ADDS            R0, R2, R0
0x6dbfc MOVS            R1, R4
0x6dbfe MOVS            R2, #1
0x6dc00 ADDS            R0, #2
0x6dc02 BL              sub_6EAD4
0x6dc06 LDR             R1, [SP,#0x5C+var_3C]
0x6dc08 LDR             R3, [R7,#0x18]
0x6dc0a ADDS            R3, R3, R1
0x6dc0c LDR             R0, [R3,#0x20]
0x6dc0e LDR             R2, [SP,#0x5C+var_40]
0x6dc10 ADDS            R4, #1
0x6dc12 ADDS            R0, R2, R0
0x6dc14 MOVS            R1, R4
0x6dc16 MOVS            R2, #1
0x6dc18 ADDS            R0, #3
0x6dc1a BL              sub_6EAD4
0x6dc1e LDR             R1, [SP,#0x5C+var_3C]
0x6dc20 LDR             R3, [R7,#0x18]
0x6dc22 ADDS            R3, R3, R1
0x6dc24 LDR             R0, [R3,#0x20]
0x6dc26 LDR             R2, [SP,#0x5C+var_40]
0x6dc28 ADDS            R4, #1
0x6dc2a ADDS            R0, R2, R0
0x6dc2c MOVS            R1, R4
0x6dc2e MOVS            R2, #1
0x6dc30 ADDS            R0, #4
0x6dc32 BL              sub_6EAD4
0x6dc36 LDR             R1, [SP,#0x5C+var_3C]
0x6dc38 LDR             R3, [R7,#0x18]
0x6dc3a ADDS            R3, R3, R1
0x6dc3c LDR             R0, [R3,#0x20]
0x6dc3e LDR             R2, [SP,#0x5C+var_40]
0x6dc40 ADDS            R4, #1
0x6dc42 ADDS            R0, R2, R0
0x6dc44 MOVS            R1, R4
0x6dc46 MOVS            R2, #1
0x6dc48 ADDS            R0, #5
0x6dc4a BL              sub_6EAD4
0x6dc4e LDR             R1, [SP,#0x5C+var_3C]
0x6dc50 LDR             R3, [R7,#0x18]
0x6dc52 ADDS            R3, R3, R1
0x6dc54 LDR             R0, [R3,#0x20]
0x6dc56 LDR             R2, [SP,#0x5C+var_40]
0x6dc58 ADDS            R4, #1
0x6dc5a ADDS            R0, R2, R0
0x6dc5c MOVS            R1, R4
0x6dc5e MOVS            R2, #1
0x6dc60 ADDS            R0, #6
0x6dc62 BL              sub_6EAD4
0x6dc66 LDR             R1, [SP,#0x5C+var_3C]
0x6dc68 LDR             R3, [R7,#0x18]
0x6dc6a ADDS            R3, R3, R1
0x6dc6c LDR             R0, [R3,#0x20]
0x6dc6e LDR             R2, [SP,#0x5C+var_40]
0x6dc70 ADDS            R4, #1
0x6dc72 ADDS            R0, R2, R0
0x6dc74 MOVS            R1, R4
0x6dc76 MOVS            R2, #1
0x6dc78 ADDS            R0, #7
0x6dc7a BL              sub_6EAD4
0x6dc7e LDR             R1, [SP,#0x5C+var_3C]
0x6dc80 LDR             R3, [R7,#0x18]
0x6dc82 ADDS            R3, R3, R1
0x6dc84 LDR             R0, [R3,#0x20]
0x6dc86 LDR             R2, [SP,#0x5C+var_40]
0x6dc88 ADDS            R4, #1
0x6dc8a ADDS            R0, R2, R0
0x6dc8c MOVS            R1, R4
0x6dc8e MOVS            R2, #1
0x6dc90 ADDS            R0, #8
0x6dc92 BL              sub_6EAD4
0x6dc96 LDR             R1, [SP,#0x5C+var_3C]
0x6dc98 LDR             R3, [R7,#0x18]
0x6dc9a ADDS            R3, R3, R1
0x6dc9c LDR             R0, [R3,#0x20]
0x6dc9e LDR             R2, [SP,#0x5C+var_40]
0x6dca0 ADDS            R4, #1
0x6dca2 ADDS            R0, R2, R0
0x6dca4 MOVS            R1, R4
0x6dca6 MOVS            R2, #1
0x6dca8 ADDS            R0, #1
0x6dcaa BL              sub_6EAD4
0x6dcae LDR             R1, [SP,#0x5C+var_3C]
0x6dcb0 LDR             R3, [R7,#0x18]
0x6dcb2 ADDS            R4, #1
0x6dcb4 ADDS            R3, R3, R1
0x6dcb6 STR             R4, [SP,#0x5C+var_34]
0x6dcb8 LDR             R2, [SP,#0x5C+var_40]
0x6dcba LDR             R4, [R3,#0x20]
0x6dcbc ADDS            R4, R2, R4
0x6dcbe LDRB            R3, [R4,#1]
0x6dcc0 LSLS            R0, R3, #1
0x6dcc2 ADDS            R0, R0, R3
0x6dcc4 LSLS            R0, R0, #2
0x6dcc6 LDR             R3, =unk_14032EC
0x6dcc8 ADDS            R0, #2
0x6dcca BL              sub_6EACE
0x6dcce LDR             R1, [SP,#0x5C+var_3C]
0x6dcd0 LDR             R3, [R7,#0x18]
0x6dcd2 ADDS            R3, R3, R1
0x6dcd4 LDR             R2, [SP,#0x5C+var_40]
0x6dcd6 LDR             R3, [R3,#0x20]
0x6dcd8 STR             R0, [R4,#0x3C]
0x6dcda ADDS            R3, R2, R3
0x6dcdc LDR             R0, [R3,#0x3C]
0x6dcde STR             R0, [R3,#0x40]
0x6dce0 LDRB            R3, [R3,#1]
0x6dce2 LSLS            R2, R3, #1
0x6dce4 ADDS            R2, R2, R3
0x6dce6 LSLS            R2, R2, #2
0x6dce8 LDR             R3, =unk_140329C
0x6dcea MOVS            R1, #0
0x6dcec BL              sub_6EACE
0x6dcf0 MOVS            R3, #0
0x6dcf2 STR             R3, [SP,#0x5C+var_48]
0x6dcf4 B               loc_6DDF6
0x6dd04 LDR             R0, [R2,#0x40]
0x6dd06 LDR             R1, [SP,#0x5C+var_44]
0x6dd08 LDR             R5, =unk_140327C
0x6dd0a ADDS            R0, R1, R0
0x6dd0c MOVS            R2, #1
0x6dd0e LDR             R1, [SP,#0x5C+var_34]
0x6dd10 BL              sub_6EAD2
0x6dd14 MOV             R4, SP
0x6dd16 LDR             R1, [SP,#0x5C+var_34]
0x6dd18 ADDS            R4, #0x56 ; 'V'
0x6dd1a MOVS            R6, #0
0x6dd1c ADDS            R1, #1
0x6dd1e MOVS            R2, #2
0x6dd20 STRH            R6, [R4]
0x6dd22 MOVS            R0, R4
0x6dd24 BL              sub_6EAD2
0x6dd28 LDR             R2, [SP,#0x5C+var_3C]
0x6dd2a LDR             R3, [R7,#0x18]
0x6dd2c ADDS            R3, R3, R2
0x6dd2e LDR             R1, [SP,#0x5C+var_40]
0x6dd30 LDR             R3, [R3,#0x20]
0x6dd32 ADDS            R3, R3, R1
0x6dd34 LDR             R2, [SP,#0x5C+var_44]
0x6dd36 LDR             R3, [R3,#0x40]
0x6dd38 LDR             R1, [SP,#0x5C+var_34]
0x6dd3a ADDS            R3, R3, R2
0x6dd3c LDRH            R2, [R4]
0x6dd3e ADDS            R1, #3
0x6dd40 STRH            R2, [R3,#2]
0x6dd42 MOVS            R0, R4
0x6dd44 MOVS            R2, #2
0x6dd46 STRH            R6, [R4]
0x6dd48 BL              sub_6EAD2
0x6dd4c LDR             R1, [SP,#0x5C+var_3C]
0x6dd4e LDR             R3, [R7,#0x18]
0x6dd50 ADDS            R3, R3, R1
0x6dd52 LDR             R2, [SP,#0x5C+var_40]
0x6dd54 LDR             R3, [R3,#0x20]
0x6dd56 ADDS            R3, R3, R2
0x6dd58 LDR             R0, [R3,#0x40]
0x6dd5a LDR             R3, [SP,#0x5C+var_44]
0x6dd5c LDR             R1, [SP,#0x5C+var_34]
0x6dd5e ADDS            R0, R0, R3
0x6dd60 LDRH            R3, [R4]
0x6dd62 ADDS            R1, #5
0x6dd64 STRH            R3, [R0,#4]
0x6dd66 MOVS            R2, #1
0x6dd68 ADDS            R0, #6
0x6dd6a BL              sub_6EAD2
0x6dd6e LDR             R1, [SP,#0x5C+var_3C]
0x6dd70 LDR             R3, [R7,#0x18]
0x6dd72 ADDS            R3, R3, R1
0x6dd74 LDR             R2, [SP,#0x5C+var_40]
0x6dd76 LDR             R3, [R3,#0x20]
0x6dd78 ADDS            R3, R3, R2
0x6dd7a LDR             R0, [R3,#0x40]
0x6dd7c LDR             R3, [SP,#0x5C+var_44]
0x6dd7e LDR             R1, [SP,#0x5C+var_34]
0x6dd80 ADDS            R0, R3, R0
0x6dd82 ADDS            R1, #6
0x6dd84 MOVS            R2, #1
0x6dd86 ADDS            R0, #7
0x6dd88 BL              sub_6EAD2
0x6dd8c LDR             R1, [SP,#0x5C+var_3C]
0x6dd8e LDR             R3, [R7,#0x18]
0x6dd90 ADDS            R3, R3, R1
0x6dd92 LDR             R2, [SP,#0x5C+var_40]
0x6dd94 LDR             R3, [R3,#0x20]
0x6dd96 ADDS            R3, R3, R2
0x6dd98 LDR             R0, [R3,#0x40]
0x6dd9a LDR             R3, [SP,#0x5C+var_44]
0x6dd9c LDR             R1, [SP,#0x5C+var_34]
0x6dd9e ADDS            R0, R3, R0
0x6dda0 ADDS            R1, #7
0x6dda2 MOVS            R2, #1
0x6dda4 ADDS            R0, #8
0x6dda6 BL              sub_6EAD2
0x6ddaa LDR             R1, [SP,#0x5C+var_3C]
0x6ddac LDR             R3, [R7,#0x18]
0x6ddae ADDS            R3, R3, R1
0x6ddb0 LDR             R2, [SP,#0x5C+var_40]
0x6ddb2 LDR             R3, [R3,#0x20]
0x6ddb4 ADDS            R3, R3, R2
0x6ddb6 LDR             R0, [R3,#0x40]
0x6ddb8 LDR             R3, [SP,#0x5C+var_44]
0x6ddba LDR             R1, [SP,#0x5C+var_34]
0x6ddbc ADDS            R0, R3, R0
0x6ddbe ADDS            R1, #8
0x6ddc0 MOVS            R2, #1
0x6ddc2 ADDS            R0, #9
0x6ddc4 BL              sub_6EAD2
0x6ddc8 LDR             R1, [SP,#0x5C+var_3C]
0x6ddca LDR             R3, [R7,#0x18]
0x6ddcc ADDS            R3, R3, R1
0x6ddce LDR             R2, [SP,#0x5C+var_40]
0x6ddd0 LDR             R3, [R3,#0x20]
0x6ddd2 ADDS            R3, R3, R2
0x6ddd4 LDR             R0, [R3,#0x40]
0x6ddd6 LDR             R3, [SP,#0x5C+var_44]
0x6ddd8 LDR             R1, [SP,#0x5C+var_34]
0x6ddda ADDS            R0, R3, R0
0x6dddc ADDS            R1, #9
0x6ddde MOVS            R2, #1
0x6dde0 ADDS            R0, #0xA
0x6dde2 BL              sub_6EAD2
0x6dde6 LDR             R1, [SP,#0x5C+var_34]
0x6dde8 LDR             R2, [SP,#0x5C+var_48]
0x6ddea ADDS            R1, #0xA
0x6ddec ADDS            R2, #1
0x6ddee LDR             R3, [SP,#0x5C+var_44]
0x6ddf0 STR             R1, [SP,#0x5C+var_34]
0x6ddf2 STR             R2, [SP,#0x5C+var_48]
0x6ddf4 ADDS            R3, #0xC
0x6ddf6 STR             R3, [SP,#0x5C+var_44]
0x6ddf8 LDR             R1, [SP,#0x5C+var_3C]
0x6ddfa LDR             R3, [R7,#0x18]
0x6ddfc ADDS            R3, R3, R1
0x6ddfe LDR             R3, [R3,#0x20]
0x6de00 LDR             R1, [SP,#0x5C+var_40]
0x6de02 ADDS            R2, R1, R3
0x6de04 LDRB            R3, [R2,#1]
0x6de06 LDR             R1, [SP,#0x5C+var_48]
0x6de08 CMP             R1, R3
0x6de0a BGE             loc_6DE0E
0x6de0c B               loc_6DD04
0x6de0e LDR             R2, [SP,#0x5C+var_4C]
0x6de10 LDR             R3, [SP,#0x5C+var_40]
0x6de12 ADDS            R2, #1
0x6de14 ADDS            R3, #0x44 ; 'D'
0x6de16 STR             R2, [SP,#0x5C+var_4C]
0x6de18 STR             R3, [SP,#0x5C+var_40]
0x6de1a LDR             R3, [R7,#0x18]
0x6de1c LDR             R1, [SP,#0x5C+var_3C]
0x6de1e ADDS            R2, R1, R3
0x6de20 LDRB            R3, [R2,#2]
0x6de22 LDR             R1, [SP,#0x5C+var_4C]
0x6de24 CMP             R1, R3
0x6de26 BGE             loc_6DE2A
0x6de28 B               loc_6DA7C
0x6de2a LDR             R2, [SP,#0x5C+var_50]
0x6de2c LDR             R3, [SP,#0x5C+var_3C]
0x6de2e ADDS            R2, #1
0x6de30 ADDS            R3, #0x24 ; '$'
0x6de32 STR             R2, [SP,#0x5C+var_50]
0x6de34 STR             R3, [SP,#0x5C+var_3C]
0x6de36 LDRB            R3, [R7]
0x6de38 LDR             R1, [SP,#0x5C+var_50]
0x6de3a CMP             R1, R3
0x6de3c BGE             loc_6DE40
0x6de3e B               loc_6D8F0
0x6de40 LDR             R2, [SP,#0x5C+var_54]
0x6de42 CMP             R2, #0
0x6de44 BEQ             loc_6DE4E
0x6de46 MOVS            R0, R2
0x6de48 LDR             R3, =unk_14032FC
0x6de4a BL              sub_6EACE
0x6de4e LDR             R0, [SP,#0x5C+var_58]
0x6de50 LDR             R3, =unk_14032FC
0x6de52 BL              sub_6EACE
0x6de56 ADD             SP, SP, #0x5C ; '\'
0x6de58 POP             {R4-R7}
0x6de5a POP             {R0}
0x6de5c BX              R0