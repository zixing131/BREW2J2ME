0x67a84 PUSH            {R4,R5,LR}
0x67a86 SUB             SP, SP, #0x1C
0x67a88 STR             R1, [SP,#0x1C+var_14]
0x67a8a MOVS            R4, R2
0x67a8c MOVS            R5, R3
0x67a8e CMP             R2, #0
0x67a90 BEQ             loc_67ACC
0x67a92 LDR             R3, [R2]
0x67a94 CMP             R3, #0
0x67a96 BEQ             loc_67ACC
0x67a98 MOVS            R3, #4
0x67a9a STR             R3, [SP,#0x1C+var_1C]
0x67a9c ADD             R1, SP, #0x1C+var_14
0x67a9e ADD             R2, SP, #0x1C+var_10
0x67aa0 MOVS            R3, R4
0x67aa2 BL              sub_67044
0x67aa6 CMP             R0, #0
0x67aa8 BEQ             loc_67ACC
0x67aaa LDR             R2, =dword_1535ADC
0x67aac MOVS            R3, #(dword_1535BE0 - 0x1535ADC)
0x67ab0 MOVS            R4, R2
0x67ab2 MOVS            R0, R2
0x67ab4 ADDS            R2, R2, R3; dword_1535BE0
0x67ab6 LDR             R3, [SP,#0x1C+arg_0]
0x67ab8 STR             R3, [SP,#0x1C+var_1C]
0x67aba LDR             R3, [SP,#0x1C+arg_4]
0x67abc STR             R3, [SP,#0x1C+var_18]
0x67abe ADDS            R4, #0xFC
0x67ac0 ADDS            R0, #0x2C ; ','
0x67ac2 LDR             R1, [SP,#0x1C+var_14]
0x67ac4 LDR             R4, [R4,#(dword_1535C1C - 0x1535BD8)]
0x67ac6 MOVS            R3, R5
0x67ac8 BL              sub_67BC0
0x67acc ADD             SP, SP, #0x1C
0x67ace POP             {R4,R5}
0x67ad0 POP             {R0}
0x67ad2 BX              R0