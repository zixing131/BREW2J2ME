0x2b8e0 PUSH            {R4-R7,LR}
0x2b8e2 SUB             SP, SP, #0xB0
0x2b8e4 MOV             R4, SP
0x2b8e6 ADDS            R4, #0x32 ; '2'
0x2b8e8 LSLS            R2, R0, #0x18
0x2b8ea LDR             R1, =aDZon; "%d.zon"
0x2b8ec ASRS            R2, R2, #0x18
0x2b8ee LDR             R3, =unk_14032CC
0x2b8f0 MOVS            R0, R4
0x2b8f2 BL              sub_2BCB6
0x2b8f6 MOVS            R0, R4
0x2b8f8 LDR             R3, =0x6CBE1
0x2b8fa BL              sub_2BCB6
0x2b8fe STR             R0, [SP,#0xB0+var_A8]
0x2b900 CMP             R0, #0
0x2b902 BNE             loc_2B906
0x2b904 B               loc_2BC74
0x2b906 MOV             R0, SP
0x2b908 LDR             R6, =unk_140327C
0x2b90a LDR             R1, [SP,#0xB0+var_A8]
0x2b90c MOVS            R2, #2
0x2b90e ADDS            R0, #0xAE
0x2b910 BL              sub_2BCBC
0x2b914 LDR             R1, [SP,#0xB0+var_A8]
0x2b916 MOVS            R2, #4
0x2b918 ADDS            R1, #2
0x2b91a ADD             R0, SP, #0xB0+var_8
0x2b91c BL              sub_2BCBC
0x2b920 LDR             R1, [SP,#0xB0+var_A8]
0x2b922 MOVS            R2, #4
0x2b924 ADDS            R1, #6
0x2b926 ADD             R0, SP, #0xB0+var_C
0x2b928 BL              sub_2BCBC
0x2b92c LDR             R0, [SP,#0xB0+var_8]
0x2b92e LDR             R3, =unk_14032EC
0x2b930 ADDS            R0, #2
0x2b932 BL              sub_2BCB6
0x2b936 STR             R0, [SP,#0xB0+var_A4]
0x2b938 LDR             R0, [SP,#0xB0+var_A8]
0x2b93a MOVS            R1, #6
0x2b93c LDR             R3, [SP,#0xB0+var_C]
0x2b93e LDR             R2, [SP,#0xB0+var_8]
0x2b940 STR             R1, [SP,#0xB0+var_B0]
0x2b942 LDR             R4, =0x692B5
0x2b944 LDR             R1, [SP,#0xB0+var_A4]
0x2b946 ADDS            R0, #0xA
0x2b948 BL              sub_2BCB8
0x2b94c LDR             R5, =dword_150D88C
0x2b94e LDR             R1, [SP,#0xB0+var_A4]
0x2b950 MOVS            R2, #1
0x2b952 LDR             R0, [R5,#(dword_150D89C - 0x150D88C)]
0x2b954 BL              sub_2BCBC
0x2b958 LDR             R4, [SP,#0xB0+var_A4]
0x2b95a LDR             R0, [R5,#(dword_150D89C - 0x150D88C)]
0x2b95c ADDS            R4, #1
0x2b95e MOVS            R1, R4
0x2b960 MOVS            R2, #1
0x2b962 ADDS            R0, #1
0x2b964 BL              sub_2BCBC
0x2b968 LDR             R0, [R5,#(dword_150D89C - 0x150D88C)]
0x2b96a ADDS            R4, #1
0x2b96c MOVS            R1, R4
0x2b96e ADDS            R0, #2
0x2b970 MOVS            R2, #1
0x2b972 BL              sub_2BCBC
0x2b976 ADDS            R4, #1
0x2b978 MOVS            R1, #0
0x2b97a STR             R4, [SP,#0xB0+var_88]
0x2b97c STR             R1, [SP,#0xB0+var_84]
0x2b97e STR             R1, [SP,#0xB0+var_98]
0x2b980 STR             R1, [SP,#0xB0+var_94]
0x2b982 STR             R1, [SP,#0xB0+var_90]
0x2b984 STR             R1, [SP,#0xB0+var_8C]
0x2b986 STR             R1, [SP,#0xB0+var_AC]
0x2b988 LDR             R2, [SP,#0xB0+var_AC]
0x2b98a ADD             R7, SP, #0xB0+var_3C
0x2b98c ADDS            R4, R7, R2
0x2b98e MOVS            R0, R4
0x2b990 LDR             R1, [SP,#0xB0+var_88]
0x2b992 MOVS            R2, #1
0x2b994 LDR             R6, =unk_140327C
0x2b996 BL              sub_2BCBC
0x2b99a LDR             R5, [SP,#0xB0+var_88]
0x2b99c ADDS            R4, #1
0x2b99e ADDS            R5, #1
0x2b9a0 MOVS            R1, R5
0x2b9a2 MOVS            R0, R4
0x2b9a4 MOVS            R2, #1
0x2b9a6 ADDS            R5, #1
0x2b9a8 BL              sub_2BCBC
0x2b9ac STR             R5, [SP,#0xB0+var_A0]
0x2b9ae LDR             R1, [SP,#0xB0+var_8C]
0x2b9b0 LDRSB           R3, [R1,R7]
0x2b9b2 ADDS            R3, #1
0x2b9b4 BEQ             loc_2B9EC
0x2b9b6 ADDS            R3, R7, R1
0x2b9b8 LDRB            R3, [R3,#1]
0x2b9ba LSLS            R3, R3, #0x18
0x2b9bc ASRS            R3, R3, #0x18
0x2b9be ADDS            R3, #1
0x2b9c0 BEQ             loc_2B9EC
0x2b9c2 LDR             R2, [SP,#0xB0+var_98]
0x2b9c4 LDR             R3, [SP,#0xB0+var_AC]
0x2b9c6 ADD             R4, SP, #0xB0+var_18
0x2b9c8 ADDS            R4, R4, R3
0x2b9ca ADDS            R2, #1
0x2b9cc STR             R2, [SP,#0xB0+var_98]
0x2b9ce MOVS            R0, R4
0x2b9d0 MOVS            R1, R5
0x2b9d2 MOVS            R2, #2
0x2b9d4 BL              sub_2BCBC
0x2b9d8 LDR             R1, [SP,#0xB0+var_88]
0x2b9da ADDS            R4, #2
0x2b9dc ADDS            R1, #4
0x2b9de MOVS            R0, R4
0x2b9e0 MOVS            R2, #1
0x2b9e2 BL              sub_2BCBC
0x2b9e6 LDR             R1, [SP,#0xB0+var_88]
0x2b9e8 ADDS            R1, #5
0x2b9ea STR             R1, [SP,#0xB0+var_A0]
0x2b9ec LDR             R3, [SP,#0xB0+var_AC]
0x2b9ee ADD             R2, SP, #0xB0+var_24
0x2b9f0 ADDS            R4, R2, R3
0x2b9f2 MOVS            R0, R4
0x2b9f4 LDR             R1, [SP,#0xB0+var_A0]
0x2b9f6 MOVS            R2, #1
0x2b9f8 LDR             R6, =unk_140327C
0x2b9fa BL              sub_2BCBC
0x2b9fe LDR             R5, [SP,#0xB0+var_A0]
0x2ba00 ADDS            R4, #1
0x2ba02 ADDS            R5, #1
0x2ba04 MOVS            R1, R5
0x2ba06 MOVS            R2, #1
0x2ba08 MOVS            R0, R4
0x2ba0a BL              sub_2BCBC
0x2ba0e LDR             R2, [SP,#0xB0+var_8C]
0x2ba10 ADD             R1, SP, #0xB0+var_24
0x2ba12 LDRSB           R3, [R2,R1]
0x2ba14 ADDS            R7, R5, #1
0x2ba16 ADDS            R3, #1
0x2ba18 BEQ             loc_2BA4E
0x2ba1a ADDS            R3, R1, R2
0x2ba1c LDRB            R3, [R3,#1]
0x2ba1e LSLS            R3, R3, #0x18
0x2ba20 ASRS            R3, R3, #0x18
0x2ba22 ADDS            R3, #1
0x2ba24 BEQ             loc_2BA4E
0x2ba26 LDR             R3, [SP,#0xB0+var_94]
0x2ba28 LDR             R1, [SP,#0xB0+var_AC]
0x2ba2a ADD             R4, SP, #0xB0+var_54
0x2ba2c ADDS            R3, #1
0x2ba2e ADDS            R4, R4, R1
0x2ba30 STR             R3, [SP,#0xB0+var_94]
0x2ba32 MOVS            R1, R7
0x2ba34 MOVS            R0, R4
0x2ba36 MOVS            R2, #2
0x2ba38 BL              sub_2BCBC
0x2ba3c LDR             R1, [SP,#0xB0+var_A0]
0x2ba3e ADDS            R4, #2
0x2ba40 ADDS            R1, #4
0x2ba42 MOVS            R0, R4
0x2ba44 MOVS            R2, #1
0x2ba46 BL              sub_2BCBC
0x2ba4a LDR             R7, [SP,#0xB0+var_A0]
0x2ba4c ADDS            R7, #5
0x2ba4e LDR             R3, [SP,#0xB0+var_AC]
0x2ba50 ADD             R2, SP, #0xB0+var_30
0x2ba52 ADDS            R4, R2, R3
0x2ba54 MOVS            R0, R4
0x2ba56 MOVS            R1, R7
0x2ba58 MOVS            R2, #1
0x2ba5a LDR             R6, =unk_140327C
0x2ba5c ADDS            R5, R7, #1
0x2ba5e ADDS            R4, #1
0x2ba60 BL              sub_2BCBC
0x2ba64 MOVS            R1, R5
0x2ba66 MOVS            R2, #1
0x2ba68 MOVS            R0, R4
0x2ba6a BL              sub_2BCBC
0x2ba6e LDR             R2, [SP,#0xB0+var_8C]
0x2ba70 ADD             R1, SP, #0xB0+var_30
0x2ba72 LDRSB           R3, [R2,R1]
0x2ba74 ADDS            R5, #1
0x2ba76 ADDS            R3, #1
0x2ba78 BEQ             loc_2BAAA
0x2ba7a ADDS            R3, R1, R2
0x2ba7c LDRB            R3, [R3,#1]
0x2ba7e LSLS            R3, R3, #0x18
0x2ba80 ASRS            R3, R3, #0x18
0x2ba82 ADDS            R3, #1
0x2ba84 BEQ             loc_2BAAA
0x2ba86 LDR             R3, [SP,#0xB0+var_90]
0x2ba88 LDR             R1, [SP,#0xB0+var_AC]
0x2ba8a ADD             R4, SP, #0xB0+var_60
0x2ba8c ADDS            R3, #1
0x2ba8e ADDS            R4, R4, R1
0x2ba90 STR             R3, [SP,#0xB0+var_90]
0x2ba92 MOVS            R1, R5
0x2ba94 MOVS            R0, R4
0x2ba96 MOVS            R2, #2
0x2ba98 ADDS            R4, #2
0x2ba9a BL              sub_2BCBC
0x2ba9e ADDS            R1, R7, #4
0x2baa0 MOVS            R0, R4
0x2baa2 MOVS            R2, #1
0x2baa4 BL              sub_2BCBC
0x2baa8 ADDS            R5, R7, #5
0x2baaa LDR             R2, [SP,#0xB0+var_AC]
0x2baac ADD             R4, SP, #0xB0+var_48
0x2baae ADDS            R4, R4, R2
0x2bab0 MOVS            R1, R5
0x2bab2 MOVS            R0, R4
0x2bab4 MOVS            R2, #2
0x2bab6 LDR             R6, =unk_140327C
0x2bab8 ADDS            R5, #2
0x2baba ADDS            R4, #2
0x2babc BL              sub_2BCBC
0x2bac0 MOVS            R1, R5
0x2bac2 MOVS            R2, #2
0x2bac4 MOVS            R0, R4
0x2bac6 BL              sub_2BCBC
0x2baca LDR             R3, [SP,#0xB0+var_84]
0x2bacc LDR             R1, [SP,#0xB0+var_AC]
0x2bace LDR             R2, [SP,#0xB0+var_8C]
0x2bad0 ADDS            R5, #2
0x2bad2 ADDS            R3, #1
0x2bad4 ADDS            R1, #4
0x2bad6 ADDS            R2, #4
0x2bad8 STR             R5, [SP,#0xB0+var_88]
0x2bada STR             R3, [SP,#0xB0+var_84]
0x2badc STR             R1, [SP,#0xB0+var_AC]
0x2bade STR             R2, [SP,#0xB0+var_8C]
0x2bae0 CMP             R3, #3
0x2bae2 BEQ             loc_2BAE6
0x2bae4 B               loc_2B988
0x2bae6 LDR             R3, [SP,#0xB0+var_98]
0x2bae8 LDR             R1, [SP,#0xB0+var_94]
0x2baea CMP             R3, R1
0x2baec BNE             loc_2BB22
0x2baee LDR             R2, [SP,#0xB0+var_90]
0x2baf0 LDR             R4, =0x6C7D5
0x2baf2 CMP             R3, R2
0x2baf4 BNE             loc_2BB04
0x2baf6 MOVS            R0, R3
0x2baf8 BL              sub_2BCB8
0x2bafc MOVS            R6, R0
0x2bafe MOVS            R7, R0
0x2bb00 STR             R0, [SP,#0xB0+var_9C]
0x2bb02 B               loc_2BB60
0x2bb04 LDR             R0, [SP,#0xB0+var_98]
0x2bb06 BL              sub_2BCB8
0x2bb0a LDR             R3, [SP,#0xB0+var_90]
0x2bb0c STR             R0, [SP,#0xB0+var_9C]
0x2bb0e CMP             R3, #1
0x2bb10 BHI             loc_2BB16
0x2bb12 MOVS            R6, R0
0x2bb14 B               loc_2BB52
0x2bb16 LDR             R0, [SP,#0xB0+var_90]
0x2bb18 BL              sub_2BCB8
0x2bb1c LDR             R6, [SP,#0xB0+var_9C]
0x2bb1e MOVS            R7, R0
0x2bb20 B               loc_2BB60
0x2bb22 LDR             R1, [SP,#0xB0+var_98]
0x2bb24 CMP             R1, #1
0x2bb26 BHI             loc_2BB2E
0x2bb28 MOVS            R2, #0
0x2bb2a STR             R2, [SP,#0xB0+var_9C]
0x2bb2c B               loc_2BB38
0x2bb2e LDR             R0, [SP,#0xB0+var_98]
0x2bb30 LDR             R3, =0x6C7D5
0x2bb32 BL              sub_2BCB6
0x2bb36 STR             R0, [SP,#0xB0+var_9C]
0x2bb38 LDR             R3, [SP,#0xB0+var_94]
0x2bb3a CMP             R3, #1
0x2bb3c BHI             loc_2BB42
0x2bb3e MOVS            R6, #0
0x2bb40 B               loc_2BB4C
0x2bb42 LDR             R0, [SP,#0xB0+var_94]
0x2bb44 LDR             R3, =0x6C7D5
0x2bb46 BL              sub_2BCB6
0x2bb4a MOVS            R6, R0
0x2bb4c LDR             R1, [SP,#0xB0+var_90]
0x2bb4e CMP             R1, #1
0x2bb50 BHI             loc_2BB56
0x2bb52 MOVS            R7, #0
0x2bb54 B               loc_2BB60
0x2bb56 LDR             R0, [SP,#0xB0+var_90]
0x2bb58 LDR             R3, =0x6C7D5
0x2bb5a BL              sub_2BCB6
0x2bb5e MOVS            R7, R0
0x2bb60 LDR             R3, [SP,#0xB0+var_9C]
0x2bb62 LDR             R1, =dword_150D88C
0x2bb64 LSLS            R5, R3, #2
0x2bb66 ADD             R2, SP, #0xB0+var_3C
0x2bb68 LDRB            R3, [R5,R2]
0x2bb6a LDR             R0, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb6c STRB            R3, [R0,#0xC]
0x2bb6e ADDS            R2, R5, R2
0x2bb70 LDR             R0, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb72 LDRB            R3, [R2,#1]
0x2bb74 STRB            R3, [R0,#0xD]
0x2bb76 ADD             R0, SP, #0xB0+var_24
0x2bb78 LSLS            R3, R6, #2
0x2bb7a LDRB            R2, [R3,R0]
0x2bb7c LDR             R4, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb7e STRB            R2, [R4,#4]
0x2bb80 ADDS            R3, R3, R0
0x2bb82 LDRB            R3, [R3,#1]
0x2bb84 LDR             R2, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb86 STRB            R3, [R2,#5]
0x2bb88 ADD             R0, SP, #0xB0+var_30
0x2bb8a LSLS            R3, R7, #2
0x2bb8c LDRB            R2, [R3,R0]
0x2bb8e LDR             R4, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb90 STRB            R2, [R4,#8]
0x2bb92 ADDS            R3, R3, R0
0x2bb94 LDRB            R3, [R3,#1]
0x2bb96 LDR             R2, [R1,#(dword_150D89C - 0x150D88C)]
0x2bb98 STRB            R3, [R2,#9]
0x2bb9a ADD             R2, SP, #0xB0+var_48
0x2bb9c LDRH            R3, [R5,R2]
0x2bb9e LDR             R1, [R1,#(dword_150D89C - 0x150D88C)]
0x2bba0 STRH            R3, [R1,#0x10]
0x2bba2 ADDS            R5, R5, R2
0x2bba4 LDRH            R3, [R5,#2]
0x2bba6 MOVS            R6, #0
0x2bba8 STRH            R3, [R1,#0x12]
0x2bbaa B               loc_2BBE4
0x2bbac LSLS            R4, R6, #2
0x2bbae ADDS            R4, R4, R6
0x2bbb0 LSLS            R4, R4, #1
0x2bbb2 MOVS            R0, R4
0x2bbb4 ADDS            R0, #0x14
0x2bbb6 ADDS            R0, R2, R0
0x2bbb8 ADDS            R0, R0, R5
0x2bbba LDR             R1, [SP,#0xB0+var_88]
0x2bbbc LDR             R3, =unk_140327C
0x2bbbe MOVS            R2, #1
0x2bbc0 BL              sub_2BCB6
0x2bbc4 LDR             R3, [R7,#(dword_150D89C - 0x150D88C)]
0x2bbc6 LDR             R1, [SP,#0xB0+var_88]
0x2bbc8 ADDS            R4, R4, R3
0x2bbca ADDS            R4, R4, R5
0x2bbcc ADDS            R1, #1
0x2bbce ADDS            R4, #0x78 ; 'x'
0x2bbd0 MOVS            R3, #0
0x2bbd2 STR             R1, [SP,#0xB0+var_88]
0x2bbd4 STRB            R3, [R4]
0x2bbd6 ADDS            R5, #1
0x2bbd8 LDR             R7, =dword_150D88C
0x2bbda LDR             R2, [R7,#(dword_150D89C - 0x150D88C)]
0x2bbdc LDRB            R3, [R2,#1]
0x2bbde CMP             R5, R3
0x2bbe0 BLT             loc_2BBAC
0x2bbe2 ADDS            R6, #1
0x2bbe4 LDR             R3, =dword_150D88C
0x2bbe6 LDR             R3, [R3,#(dword_150D89C - 0x150D88C)]
0x2bbe8 LDRB            R3, [R3]
0x2bbea CMP             R6, R3
0x2bbec BGE             loc_2BC14
0x2bbee MOVS            R5, #0
0x2bbf0 B               loc_2BBD8
0x2bc14 LDR             R2, [SP,#0xB0+var_98]
0x2bc16 CMP             R2, #0
0x2bc18 BEQ             loc_2BC3C
0x2bc1a LDR             R6, =dword_1501D90
0x2bc1c LDR             R3, =0x1AE8
0x2bc1e LDR             R4, [R6]
0x2bc20 LDRSB           R3, [R4,R3]
0x2bc22 CMP             R3, #0
0x2bc24 BEQ             loc_2BC3C
0x2bc26 LDR             R3, [SP,#0xB0+var_9C]
0x2bc28 ADD             R0, SP, #0xB0+var_18
0x2bc2a LSLS            R2, R3, #2
0x2bc2c LDRH            R1, [R2,R0]
0x2bc2e LDR             R3, =0x1AE9
0x2bc30 STRB            R1, [R4,R3]
0x2bc32 ADDS            R2, R2, R0
0x2bc34 LDR             R1, [R6]
0x2bc36 LDRB            R2, [R2,#2]
0x2bc38 ADDS            R3, #1
0x2bc3a STRB            R2, [R1,R3]
0x2bc3c LDR             R3, =dword_1501D90
0x2bc3e LDR             R1, [R3]
0x2bc40 LDR             R3, =0x1AE8
0x2bc42 LDR             R2, =dword_150D88C
0x2bc44 LDRSB           R3, [R1,R3]
0x2bc46 STR             R3, [R2]
0x2bc48 LDR             R3, =0x1AE9
0x2bc4a LDRB            R3, [R1,R3]
0x2bc4c STR             R3, [R2,#(dword_150D890 - 0x150D88C)]
0x2bc4e LDR             R3, =0x1AEA
0x2bc50 LDRSB           R3, [R1,R3]
0x2bc52 LDR             R1, [R2,#(dword_150D89C - 0x150D88C)]
0x2bc54 STR             R3, [R2,#(dword_150D894 - 0x150D88C)]
0x2bc56 LDRB            R3, [R1,#0xC]
0x2bc58 STRB            R3, [R2,#(byte_150D898 - 0x150D88C)]
0x2bc5a LDRB            R3, [R1,#0xD]
0x2bc5c LDR             R1, [SP,#0xB0+var_A4]
0x2bc5e STRB            R3, [R2,#(byte_150D899 - 0x150D88C)]
0x2bc60 CMP             R1, #0
0x2bc62 BEQ             loc_2BC6C
0x2bc64 MOVS            R0, R1
0x2bc66 LDR             R3, =unk_14032FC
0x2bc68 BL              sub_2BCB6
0x2bc6c LDR             R0, [SP,#0xB0+var_A8]
0x2bc6e LDR             R3, =unk_14032FC
0x2bc70 BL              sub_2BCB6
0x2bc74 ADD             SP, SP, #0xB0
0x2bc76 POP             {R4-R7}
0x2bc78 POP             {R0}
0x2bc7a BX              R0