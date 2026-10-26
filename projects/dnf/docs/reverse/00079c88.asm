0x79c88 PUSH            {R4-R7,LR}
0x79c8a LDR             R3, =dword_1501D90
0x79c8c LDR             R3, [R3]
0x79c8e LDR             R1, [R3,#0x10]
0x79c90 MOVS            R3, R1
0x79c92 ADDS            R3, #0x32 ; '2'
0x79c94 LDRB            R3, [R3]
0x79c96 LSLS            R0, R0, #0x18
0x79c98 SUB             SP, SP, #4
0x79c9a LSRS            R4, R0, #0x18
0x79c9c CMP             R3, #0
0x79c9e BEQ             loc_79CBE
0x79ca0 LSLS            R3, R3, #0x18
0x79ca2 ASRS            R3, R3, #0x18
0x79ca4 LDR             R2, =0x80000003
0x79ca6 SUBS            R3, #1
0x79ca8 ANDS            R2, R3
0x79caa CMP             R2, #0
0x79cac BGE             loc_79CB8
0x79cae MOVS            R3, #4
0x79cb0 SUBS            R2, #1
0x79cb2 NEGS            R3, R3
0x79cb4 ORRS            R2, R3
0x79cb6 ADDS            R2, #1
0x79cb8 ADDS            R3, R2, #1
0x79cba LSLS            R3, R3, #0x18
0x79cbc LSRS            R3, R3, #0x18
0x79cbe STR             R3, [SP,#4+var_4]
0x79cc0 CMP             R4, #0
0x79cc2 BEQ             loc_79D12
0x79cc4 MOVS            R2, R4
0x79cc6 MOVS            R1, #0xFF
0x79cc8 MOVS            R0, #6
0x79cca BL              sub_79310
0x79cce MOVS            R1, #0xFF
0x79cd0 MOVS            R4, R0
0x79cd2 MOVS            R2, #0
0x79cd4 MOVS            R0, #6
0x79cd6 BL              sub_79310
0x79cda LDR             R5, =dword_1501D94
0x79cdc MOVS            R7, R0
0x79cde MOVS            R1, #0
0x79ce0 MOVS            R2, #6
0x79ce2 MOVS            R3, #0xFF
0x79ce4 LDRB            R0, [R5]
0x79ce6 BL              sub_79ABC
0x79cea MOVS            R1, #1
0x79cec MOVS            R6, R0
0x79cee MOVS            R2, #6
0x79cf0 MOVS            R3, #0xFF
0x79cf2 LDRB            R0, [R5]
0x79cf4 BL              sub_79ABC
0x79cf8 LDR             R3, =dword_1501D90
0x79cfa LDR             R3, [R3]
0x79cfc LDR             R1, [R3,#0x10]
0x79cfe LDR             R3, =0x436
0x79d00 LDRH            R2, [R1,R3]
0x79d02 ADDS            R3, #0x70 ; 'p'
0x79d04 SUBS            R4, R4, R7
0x79d06 LDRH            R3, [R1,R3]
0x79d08 SUBS            R4, R4, R6
0x79d0a ADDS            R2, R2, R0
0x79d0c ADDS            R4, R4, R3
0x79d0e ADDS            R0, R2, R4
0x79d10 B               loc_79D1C
0x79d12 LDR             R3, =0x436
0x79d14 LDRH            R2, [R1,R3]
0x79d16 ADDS            R3, #0x70 ; 'p'
0x79d18 LDRH            R3, [R1,R3]
0x79d1a ADDS            R0, R2, R3
0x79d1c LDR             R3, =dword_1501D90
0x79d1e LDR             R3, [R3]
0x79d20 LDR             R4, [R3,#0x10]
0x79d22 LDR             R3, =0x42A
0x79d24 LDRH            R1, [R4,R3]
0x79d26 ADDS            R3, #8
0x79d28 LDRH            R3, [R4,R3]
0x79d2a LDR             R2, =0x4A2
0x79d2c ADDS            R1, R1, R3
0x79d2e MOVS            R3, #0x520
0x79d32 LDRH            R2, [R4,R2]
0x79d34 LDRH            R3, [R4,R3]
0x79d36 LDR             R5, [SP,#4+var_4]
0x79d38 ADDS            R3, R3, R2
0x79d3a ADDS            R1, R1, R3
0x79d3c LSLS            R2, R1, #1
0x79d3e LSLS            R3, R5, #1
0x79d40 ADDS            R2, R2, R1
0x79d42 ADDS            R3, R3, R5
0x79d44 LDR             R1, =byte_1402FA4
0x79d46 LSLS            R3, R3, #1
0x79d48 ADDS            R3, R3, R1
0x79d4a LDRB            R1, [R3,#5]
0x79d4c LDR             R3, =0x19C5
0x79d4e LDRB            R3, [R4,R3]
0x79d50 MULS            R3, R1
0x79d52 ADDS            R2, R2, R3
0x79d54 LDR             R3, =0x19CC
0x79d56 LDR             R3, [R4,R3]
0x79d58 ADDS            R2, R2, R3
0x79d5a MOVS            R3, R0
0x79d5c ADDS            R3, #0x14
0x79d5e ADDS            R5, R2, R3
0x79d60 STR             R5, [R4,#0xC]
0x79d62 MOVS            R3, R4
0x79d64 ADDS            R3, #0x32 ; '2'
0x79d66 LDRB            R3, [R3]
0x79d68 LSLS            R3, R3, #0x18
0x79d6a ASRS            R3, R3, #0x18
0x79d6c CMP             R3, #4
0x79d6e BEQ             loc_79D74
0x79d70 CMP             R3, #8
0x79d72 BNE             loc_79D82
0x79d74 MOVS            R0, #1
0x79d76 MOVS            R1, #0
0x79d78 MOVS            R2, #0
0x79d7a BL              sub_77144
0x79d7e ADDS            R0, R5, R0
0x79d80 STR             R0, [R4,#0xC]
0x79d82 LDR             R6, =dword_1501D90
0x79d84 LDR             R3, [R6]
0x79d86 LDR             R5, [R3,#0x10]
0x79d88 LDR             R3, =0x19D8
0x79d8a LDR             R4, [R5,#0xC]
0x79d8c LDR             R3, [R5,R3]
0x79d8e MOVS            R1, #0x64 ; 'd'
0x79d90 MOVS            R0, R3
0x79d92 MULS            R0, R4
0x79d94 LDR             R3, =0x8BFE9
0x79d96 BL              sub_80706
0x79d9a LDR             R3, [R5,#8]
0x79d9c ADDS            R4, R4, R0
0x79d9e STR             R4, [R5,#0xC]
0x79da0 CMP             R3, R4
0x79da2 BLE             loc_79DA6
0x79da4 STR             R4, [R5,#8]
0x79da6 LDR             R3, [R6]
0x79da8 LDR             R3, [R3,#0x10]
0x79daa LDR             R0, [R3,#0xC]
0x79dac ADD             SP, SP, #4
0x79dae POP             {R4-R7}
0x79db0 POP             {R1}
0x79db2 BX              R1