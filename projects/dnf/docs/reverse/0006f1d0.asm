0x6f1d0 PUSH            {R4-R7,LR}
0x6f1d2 SUB             SP, SP, #0x1C
0x6f1d4 MOVS            R4, R0
0x6f1d6 LDR             R3, =(sub_2CD18+1)
0x6f1d8 ADD             R0, SP, #0x1C+var_8
0x6f1da BL              sub_71334
0x6f1de LDR             R3, =dword_1536348
0x6f1e0 LSLS            R4, R4, #2
0x6f1e2 LDR             R7, [R4,R3]
0x6f1e4 MOVS            R3, #0x250
0x6f1e8 LDRB            R3, [R7,R3]
0x6f1ea CMP             R3, #1
0x6f1ec BEQ             loc_6F24C
0x6f1ee MOVS            R3, #0x240
0x6f1f2 STR             R3, [SP,#0x1C+var_C]
0x6f1f4 LDR             R5, =word_1534730
0x6f1f6 LDR             R6, =word_15346FC
0x6f1f8 MOVS            R2, #(word_1534730 - 0x1534730)
0x6f1fa LDRSH           R0, [R5,R2]; word_1534730
0x6f1fc LDRH            R3, [R7,R3]
0x6f1fe MOVS            R2, #(word_15346FC - 0x15346FC)
0x6f200 LDRSH           R1, [R6,R2]; word_15346FC
0x6f202 LDR             R2, =0x242
0x6f204 ADDS            R0, R0, R3
0x6f206 LDRH            R3, [R7,R2]
0x6f208 ADDS            R1, R1, R3
0x6f20a LDR             R3, =0x26D
0x6f20c LDRB            R3, [R7,R3]
0x6f20e LDR             R2, =dword_15364E8
0x6f210 LSLS            R3, R3, #2
0x6f212 LDR             R3, [R3,R2]
0x6f214 STR             R3, [SP,#0x1C+var_1C]
0x6f216 MOVS            R3, #0
0x6f218 STR             R3, [SP,#0x1C+var_18]
0x6f21a MOVS            R3, #1
0x6f21c STR             R3, [SP,#0x1C+var_14]
0x6f21e ADD             R3, SP, #0x1C+var_8
0x6f220 STR             R3, [SP,#0x1C+var_10]
0x6f222 MOVS            R2, #0
0x6f224 MOVS            R3, #0
0x6f226 LDR             R4, =(sub_6B158+1)
0x6f228 BL              sub_71336
0x6f22c LDR             R0, [SP,#0x1C+var_C]
0x6f22e LDRH            R1, [R5]
0x6f230 LDRH            R3, [R7,R0]
0x6f232 LDR             R0, =0x242
0x6f234 ADDS            R1, R1, R3
0x6f236 LDRH            R2, [R6]
0x6f238 LDRH            R3, [R7,R0]
0x6f23a ADDS            R2, R2, R3
0x6f23c LSLS            R1, R1, #0x10
0x6f23e LSLS            R2, R2, #0x10
0x6f240 ASRS            R1, R1, #0x10
0x6f242 ASRS            R2, R2, #0x10
0x6f244 MOVS            R0, #1
0x6f246 LDR             R3, =(sub_31704+1)
0x6f248 BL              sub_71334
0x6f24c ADD             SP, SP, #0x1C
0x6f24e POP             {R4-R7}
0x6f250 POP             {R0}
0x6f252 BX              R0