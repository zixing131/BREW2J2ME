0x7cc4c PUSH            {R4-R6,LR}
0x7cc4e LDR             R3, =dword_1501D90
0x7cc50 LDR             R2, [R3]
0x7cc52 LDR             R3, =0x1AED
0x7cc54 LDRSB           R3, [R2,R3]
0x7cc56 LSLS            R1, R1, #0x18
0x7cc58 MOVS            R4, R0
0x7cc5a LSRS            R1, R1, #0x18
0x7cc5c LDR             R5, [R2,#0x10]
0x7cc5e CMP             R3, #7
0x7cc60 BEQ             loc_7CCB4
0x7cc62 CMP             R1, #9
0x7cc64 BNE             loc_7CCB4
0x7cc66 LDR             R3, =(sub_6C7D4+1)
0x7cc68 MOVS            R0, #0x64 ; 'd'
0x7cc6a BL              sub_80706
0x7cc6e LDRH            R3, [R4,#2]
0x7cc70 CMP             R0, R3
0x7cc72 BCS             loc_7CC90
0x7cc74 LDR             R3, =0x19B8
0x7cc76 LDRH            R2, [R4,#4]
0x7cc78 LDR             R3, [R5,R3]
0x7cc7a MOVS            R1, #0x64 ; 'd'
0x7cc7c MOVS            R0, R3
0x7cc7e MULS            R0, R2
0x7cc80 LDR             R3, =0x8C065
0x7cc82 BL              sub_80706
0x7cc86 MOVS            R1, R0
0x7cc88 MOVS            R0, R5
0x7cc8a BL              sub_76664
0x7cc8e B               loc_7CCB4
0x7cc90 LDR             R3, =0x19B8
0x7cc92 LDR             R6, [R5,R3]
0x7cc94 LDR             R3, =(sub_2E6A4+1)
0x7cc96 LDRH            R4, [R4,#6]
0x7cc98 BL              sub_80706
0x7cc9c CMP             R0, #0
0x7cc9e BEQ             loc_7CCB4
0x7cca0 MOVS            R1, #0x64 ; 'd'
0x7cca2 MOVS            R0, R4
0x7cca4 MULS            R0, R6
0x7cca6 LDR             R3, =0x8C065
0x7cca8 BL              sub_80706
0x7ccac MOVS            R1, R0
0x7ccae MOVS            R0, R5
0x7ccb0 BL              sub_76940
0x7ccb4 POP             {R4-R6}
0x7ccb6 POP             {R0}
0x7ccb8 BX              R0