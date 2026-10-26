0x76940 PUSH            {R4,LR}
0x76942 LDR             R3, =dword_1501D90
0x76944 LDR             R2, [R3]
0x76946 LDR             R3, =0x1AE8
0x76948 LDR             R2, [R2,R3]
0x7694a LDR             R3, =0xFFFFFF
0x7694c ANDS            R2, R3
0x7694e LDR             R3, =0x3290B
0x76950 MOVS            R4, R1
0x76952 CMP             R2, R3
0x76954 BEQ             loc_7698E
0x76956 LDR             R3, =0x4290B
0x76958 CMP             R2, R3
0x7695a BEQ             loc_7698E
0x7695c LDR             R3, =byte_150D770
0x7695e LDRB            R3, [R3]
0x76960 CMP             R3, #1
0x76962 BEQ             loc_7698E
0x76964 MOVS            R3, R0
0x76966 ADDS            R3, #0x33 ; '3'
0x76968 LDRB            R1, [R3]
0x7696a CMP             R1, #0
0x7696c BNE             loc_7697E
0x7696e LDR             R2, =0x19B4
0x76970 LDR             R3, [R0,R2]
0x76972 SUBS            R3, R3, R4
0x76974 STR             R3, [R0,R2]
0x76976 CMP             R3, #0
0x76978 BGT             loc_7698E
0x7697a STR             R1, [R0,R2]
0x7697c B               loc_7698E
0x7697e LDR             R2, =0x19BC
0x76980 LDR             R3, [R0,R2]
0x76982 SUBS            R3, R3, R4
0x76984 STR             R3, [R0,R2]
0x76986 CMP             R3, #0
0x76988 BGT             loc_7698E
0x7698a MOVS            R3, #0
0x7698c STR             R3, [R0,R2]
0x7698e POP             {R4}
0x76990 POP             {R0}
0x76992 BX              R0