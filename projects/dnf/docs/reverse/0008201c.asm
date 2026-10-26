0x8201c PUSH            {R4-R7,LR}
0x8201e LDR             R0, =dword_1501D90
0x82020 LDR             R3, [R0]
0x82022 LDR             R2, [R3,#0x10]
0x82024 LDR             R3, =0x19C5
0x82026 LDRB            R1, [R2,R3]
0x82028 MOVS            R2, R1
0x8202a MULS            R2, R1
0x8202c LSLS            R3, R1, #2
0x8202e ADDS            R3, R3, R1
0x82030 ASRS            R2, R2, #1
0x82032 LSLS            R3, R3, #1
0x82034 ADDS            R3, R3, R2
0x82036 SUB             SP, SP, #0x18
0x82038 SUBS            R3, #0xA
0x8203a STR             R3, [SP,#0x18+var_C]
0x8203c MOVS            R3, #0x1A
0x8203e MULS            R3, R1
0x82040 MOVS            R2, #0
0x82042 ADDS            R3, #0x28 ; '('
0x82044 STR             R3, [SP,#0x18+var_8]
0x82046 STR             R2, [SP,#0x18+var_10]
0x82048 LDR             R3, =unk_1538860
0x8204a LDR             R2, =word_15332A0
0x8204c LDR             R7, =0x8C065
0x8204e STR             R3, [SP,#0x18+var_4]
0x82050 STR             R2, [SP,#0x18+var_18]
0x82052 B               loc_82108
0x82054 LDR             R3, [SP,#0x18+var_4]
0x82056 LDR             R3, [R3]
0x82058 STR             R3, [SP,#0x18+var_14]
0x8205a LDRB            R3, [R3,#6]
0x8205c CMP             R3, #1
0x8205e BEQ             loc_8209A
0x82060 CMP             R3, #2
0x82062 BNE             loc_8209A
0x82064 LDR             R2, =dword_1501D90
0x82066 LDR             R3, [R2]
0x82068 LDR             R2, [R3,#0x10]
0x8206a LDR             R3, =0x19C5
0x8206c LDRB            R4, [R2,R3]
0x8206e MOVS            R5, R4
0x82070 MULS            R5, R4
0x82072 MOVS            R1, #0xA
0x82074 MOVS            R0, R4
0x82076 MULS            R0, R5
0x82078 BL              sub_8A958
0x8207c LSLS            R3, R4, #2
0x8207e LSLS            R2, R0, #2
0x82080 ADDS            R2, R2, R0
0x82082 ADDS            R3, R3, R4
0x82084 SUBS            R2, R2, R5
0x82086 ADDS            R3, #0x14
0x82088 MOVS            R0, R5
0x8208a MOVS            R1, #0xA
0x8208c ADDS            R6, R2, R3
0x8208e BL              sub_8A958
0x82092 ADDS            R0, R0, R4
0x82094 LSLS            R0, R0, #1
0x82096 ADDS            R0, #1
0x82098 B               loc_820CA
0x8209a LDR             R2, =dword_1501D90
0x8209c LDR             R3, [R2]
0x8209e LDR             R2, [R3,#0x10]
0x820a0 LDR             R3, =0x19C5
0x820a2 LDRB            R4, [R2,R3]
0x820a4 MOVS            R5, R4
0x820a6 MULS            R5, R4
0x820a8 MOVS            R1, #0xA
0x820aa MOVS            R0, R4
0x820ac MULS            R0, R5
0x820ae BL              sub_8A958
0x820b2 MOVS            R3, #5
0x820b4 SUBS            R3, R3, R4
0x820b6 MULS            R3, R4
0x820b8 ADDS            R3, #0x14
0x820ba ADDS            R6, R0, R3
0x820bc MOVS            R1, #0xA
0x820be MOVS            R0, R5
0x820c0 BL              sub_8A958
0x820c4 LSLS            R4, R4, #1
0x820c6 ADDS            R4, #1
0x820c8 ADDS            R0, R0, R4
0x820ca LDR             R2, =dword_1501D90
0x820cc LDR             R3, [R2]
0x820ce LDR             R2, [R3,#0x10]
0x820d0 LDR             R3, =0x19C5
0x820d2 LDRB            R3, [R2,R3]
0x820d4 LDR             R2, [SP,#0x18+var_14]
0x820d6 STRB            R3, [R2]
0x820d8 LDR             R2, [SP,#0x18+var_4]
0x820da LDR             R3, [R2]
0x820dc MOV             R2, SP
0x820de LDRH            R2, [R2,#0x18+var_C]
0x820e0 STRH            R2, [R3,#0x22]
0x820e2 MOV             R2, SP
0x820e4 LDRH            R2, [R2,#0x18+var_8]
0x820e6 LSLS            R1, R0, #0x10
0x820e8 STRH            R2, [R3,#0x24]
0x820ea MOVS            R2, R3
0x820ec LSRS            R1, R1, #0x10
0x820ee ADDS            R2, #0x5A ; 'Z'
0x820f0 STRH            R1, [R2]
0x820f2 STR             R6, [R3,#0x1C]
0x820f4 ADDS            R2, #0x10
0x820f6 ADDS            R3, #0x7A ; 'z'
0x820f8 STRH            R1, [R2]
0x820fa LDR             R2, [SP,#0x18+var_4]
0x820fc STRH            R1, [R3]
0x820fe LDR             R3, [SP,#0x18+var_10]
0x82100 ADDS            R2, #0xA0
0x82102 ADDS            R3, #1
0x82104 STR             R3, [SP,#0x18+var_10]
0x82106 STR             R2, [SP,#0x18+var_4]
0x82108 LDR             R2, [SP,#0x18+var_18]
0x8210a MOVS            R3, #0x17C
0x8210e LDRB            R3, [R2,R3]
0x82110 LDR             R2, [SP,#0x18+var_10]
0x82112 CMP             R2, R3
0x82114 BLT             loc_82054
0x82116 ADD             SP, SP, #0x18
0x82118 POP             {R4-R7}
0x8211a POP             {R0}
0x8211c BX              R0