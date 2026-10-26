0x6f004 PUSH            {R4-R6,LR}
0x6f006 LDR             R3, =dword_1536348
0x6f008 LSLS            R0, R0, #2
0x6f00a LDR             R5, [R0,R3]
0x6f00c SUB             SP, SP, #0x1C
0x6f00e LDR             R3, =word_1534730
0x6f010 MOVS            R2, #0
0x6f012 ADD             R4, SP, #0x1C+var_8
0x6f014 STRB            R2, [R4]
0x6f016 STRB            R2, [R4,#1]
0x6f018 STRB            R2, [R4,#2]
0x6f01a STRB            R2, [R4,#3]
0x6f01c STRB            R2, [R4,#4]
0x6f01e MOVS            R1, #(word_1534730 - 0x1534730)
0x6f020 LDRSH           R0, [R3,R1]; word_1534730
0x6f022 MOVS            R3, #0x240
0x6f026 LDRH            R3, [R5,R3]
0x6f028 ADDS            R0, R0, R3
0x6f02a LDR             R3, =word_15346FC
0x6f02c MOVS            R6, #(word_15346FC - 0x15346FC)
0x6f02e LDRSH           R1, [R3,R6]; word_15346FC
0x6f030 LDR             R3, =0x242
0x6f032 LDRH            R3, [R5,R3]
0x6f034 ADDS            R1, R1, R3
0x6f036 LDR             R3, =unk_1535F3C
0x6f038 STR             R2, [SP,#0x1C+var_18]
0x6f03a STR             R3, [SP,#0x1C+var_1C]
0x6f03c STR             R2, [SP,#0x1C+var_14]
0x6f03e STR             R4, [SP,#0x1C+var_10]
0x6f040 STR             R2, [SP,#0x1C+var_C]
0x6f042 MOVS            R3, #0
0x6f044 LDR             R4, =(sub_6ADB8+1)
0x6f046 BL              sub_71336
0x6f04a ADD             SP, SP, #0x1C
0x6f04c POP             {R4-R6}
0x6f04e POP             {R0}
0x6f050 BX              R0