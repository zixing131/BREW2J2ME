0x786b4 PUSH            {R4,LR}
0x786b6 LDR             R3, =dword_1501D90
0x786b8 LDR             R2, [R3]
0x786ba LDR             R3, =0x1AED
0x786bc LDRSB           R3, [R2,R3]
0x786be LSLS            R1, R1, #0x18
0x786c0 LSRS            R1, R1, #0x18
0x786c2 LDR             R4, [R2,#0x10]
0x786c4 CMP             R3, #7
0x786c6 BEQ             loc_786EA
0x786c8 CMP             R1, #9
0x786ca BEQ             loc_786D0
0x786cc CMP             R1, #0xB
0x786ce BNE             loc_786EA
0x786d0 LDR             R3, =0x19B8
0x786d2 LDRH            R2, [R0,#2]
0x786d4 LDR             R3, [R4,R3]
0x786d6 MOVS            R1, #0x64 ; 'd'
0x786d8 MOVS            R0, R3
0x786da MULS            R0, R2
0x786dc LDR             R3, =0x8C065
0x786de BL              sub_80706
0x786e2 MOVS            R1, R0
0x786e4 MOVS            R0, R4
0x786e6 BL              sub_76664
0x786ea POP             {R4}
0x786ec POP             {R0}
0x786ee BX              R0