0x859cc PUSH            {R4,R5,LR}
0x859ce LDR             R3, =dword_1501D90
0x859d0 LSLS            R1, R1, #0x18
0x859d2 LSRS            R4, R1, #0x18
0x859d4 LDR             R1, [R3]
0x859d6 LDR             R3, =0x1AE8
0x859d8 LDR             R2, [R1,R3]
0x859da LDR             R3, =0xFFFFFF
0x859dc ANDS            R2, R3
0x859de LDR             R3, =0x3290B
0x859e0 LSLS            R0, R0, #0x18
0x859e2 LSRS            R5, R0, #0x18
0x859e4 CMP             R2, R3
0x859e6 BEQ             loc_85A2E
0x859e8 LDR             R3, =0x4290B
0x859ea CMP             R2, R3
0x859ec BEQ             loc_85A2E
0x859ee LDR             R3, =byte_150D770
0x859f0 LDRB            R3, [R3]
0x859f2 CMP             R3, #1
0x859f4 BEQ             loc_85A2E
0x859f6 LDR             R3, =0x1AED
0x859f8 LDRSB           R3, [R1,R3]
0x859fa CMP             R3, #7
0x859fc BEQ             loc_85A06
0x859fe MOVS            R0, R5
0x85a00 MOVS            R1, R4
0x85a02 BL              sub_85708
0x85a06 MOVS            R0, R5
0x85a08 MOVS            R1, R4
0x85a0a BL              sub_8555C
0x85a0e MOVS            R0, R5
0x85a10 MOVS            R1, R4
0x85a12 BL              sub_8547C
0x85a16 MOVS            R0, R5
0x85a18 MOVS            R1, R4
0x85a1a BL              sub_8539C
0x85a1e LDR             R3, =byte_1500088
0x85a20 LDRB            R3, [R3]
0x85a22 CMP             R3, #0
0x85a24 BNE             loc_85A2E
0x85a26 MOVS            R0, R5
0x85a28 MOVS            R1, R4
0x85a2a BL              sub_851B8
0x85a2e POP             {R4,R5}
0x85a30 POP             {R0}
0x85a32 BX              R0