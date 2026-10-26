0x679dc PUSH            {R4,R5,LR}
0x679de SUB             SP, SP, #0x1C
0x679e0 STR             R1, [SP,#0x1C+var_14]
0x679e2 MOVS            R4, R2
0x679e4 MOVS            R5, R3
0x679e6 CMP             R2, #0
0x679e8 BEQ             loc_67A24
0x679ea LDR             R3, [R2]
0x679ec CMP             R3, #0
0x679ee BEQ             loc_67A24
0x679f0 MOVS            R3, #0xC
0x679f2 STR             R3, [SP,#0x1C+var_1C]
0x679f4 ADD             R1, SP, #0x1C+var_14
0x679f6 ADD             R2, SP, #0x1C+var_10
0x679f8 MOVS            R3, R4
0x679fa BL              sub_67044
0x679fe CMP             R0, #0
0x67a00 BEQ             loc_67A24
0x67a02 LDR             R2, =dword_1535ADC
0x67a04 MOVS            R3, #(dword_1535BE0 - 0x1535ADC)
0x67a08 MOVS            R4, R2
0x67a0a MOVS            R0, R2
0x67a0c ADDS            R2, R2, R3; dword_1535BE0
0x67a0e LDR             R3, [SP,#0x1C+arg_0]
0x67a10 STR             R3, [SP,#0x1C+var_1C]
0x67a12 LDR             R3, [SP,#0x1C+arg_4]
0x67a14 STR             R3, [SP,#0x1C+var_18]
0x67a16 ADDS            R4, #0xFC
0x67a18 ADDS            R0, #0x2C ; ','
0x67a1a LDR             R1, [SP,#0x1C+var_14]
0x67a1c LDR             R4, [R4,#(dword_1535C24 - 0x1535BD8)]
0x67a1e MOVS            R3, R5
0x67a20 BL              sub_67BC0
0x67a24 ADD             SP, SP, #0x1C
0x67a26 POP             {R4,R5}
0x67a28 POP             {R0}
0x67a2a BX              R0