0x79e14 PUSH            {R4-R7,LR}
0x79e16 LDR             R3, =dword_1501D90
0x79e18 LDR             R3, [R3]
0x79e1a LDR             R1, [R3,#0x10]
0x79e1c MOVS            R3, R1
0x79e1e ADDS            R3, #0x32 ; '2'
0x79e20 LDRB            R3, [R3]
0x79e22 LSLS            R0, R0, #0x18
0x79e24 SUB             SP, SP, #4
0x79e26 LSRS            R4, R0, #0x18
0x79e28 CMP             R3, #0
0x79e2a BEQ             loc_79E4A
0x79e2c LSLS            R3, R3, #0x18
0x79e2e ASRS            R3, R3, #0x18
0x79e30 LDR             R2, =0x80000003
0x79e32 SUBS            R3, #1
0x79e34 ANDS            R2, R3
0x79e36 CMP             R2, #0
0x79e38 BGE             loc_79E44
0x79e3a MOVS            R3, #4
0x79e3c SUBS            R2, #1
0x79e3e NEGS            R3, R3
0x79e40 ORRS            R2, R3
0x79e42 ADDS            R2, #1
0x79e44 ADDS            R3, R2, #1
0x79e46 LSLS            R3, R3, #0x18
0x79e48 LSRS            R3, R3, #0x18
0x79e4a STR             R3, [SP,#4+var_4]
0x79e4c CMP             R4, #0
0x79e4e BEQ             loc_79E9E
0x79e50 MOVS            R2, R4
0x79e52 MOVS            R1, #0xFF
0x79e54 MOVS            R0, #5
0x79e56 BL              sub_79310
0x79e5a MOVS            R1, #0xFF
0x79e5c MOVS            R4, R0
0x79e5e MOVS            R2, #0
0x79e60 MOVS            R0, #5
0x79e62 BL              sub_79310
0x79e66 LDR             R5, =dword_1501D94
0x79e68 MOVS            R7, R0
0x79e6a MOVS            R1, #0
0x79e6c MOVS            R2, #5
0x79e6e MOVS            R3, #0xFF
0x79e70 LDRB            R0, [R5]
0x79e72 BL              sub_79ABC
0x79e76 MOVS            R1, #1
0x79e78 MOVS            R6, R0
0x79e7a MOVS            R2, #5
0x79e7c MOVS            R3, #0xFF
0x79e7e LDRB            R0, [R5]
0x79e80 BL              sub_79ABC
0x79e84 LDR             R3, =dword_1501D90
0x79e86 LDR             R3, [R3]
0x79e88 LDR             R1, [R3,#0x10]
0x79e8a LDR             R3, =0x434
0x79e8c LDRH            R2, [R1,R3]
0x79e8e ADDS            R3, #0x70 ; 'p'
0x79e90 SUBS            R4, R4, R7
0x79e92 LDRH            R3, [R1,R3]
0x79e94 SUBS            R4, R4, R6
0x79e96 ADDS            R2, R2, R0
0x79e98 ADDS            R4, R4, R3
0x79e9a ADDS            R0, R2, R4
0x79e9c B               loc_79EA8
0x79e9e LDR             R3, =0x434
0x79ea0 LDRH            R2, [R1,R3]
0x79ea2 ADDS            R3, #0x70 ; 'p'
0x79ea4 LDRH            R3, [R1,R3]
0x79ea6 ADDS            R0, R2, R3
0x79ea8 LDR             R3, =dword_1501D90
0x79eaa LDR             R3, [R3]
0x79eac LDR             R6, [R3,#0x10]
0x79eae MOVS            R3, #0x428
0x79eb2 LDRH            R1, [R6,R3]
0x79eb4 MOVS            R3, #0x430
0x79eb8 LDRH            R3, [R6,R3]
0x79eba ADDS            R1, R1, R3
0x79ebc MOVS            R3, #0x520
0x79ec0 LDRH            R2, [R6,R3]
0x79ec2 MOVS            R3, #0x4A0
0x79ec6 LDRH            R3, [R6,R3]
0x79ec8 LDR             R4, [SP,#4+var_4]
0x79eca ADDS            R2, R2, R3
0x79ecc LSLS            R3, R4, #1
0x79ece ADDS            R1, R1, R2
0x79ed0 ADDS            R3, R3, R4
0x79ed2 LDR             R2, =byte_1402FA4
0x79ed4 LSLS            R3, R3, #1
0x79ed6 ADDS            R3, R3, R2
0x79ed8 LDRB            R2, [R3,#4]
0x79eda LDR             R3, =0x19C5
0x79edc LDRB            R3, [R6,R3]
0x79ede MULS            R3, R2
0x79ee0 LSLS            R1, R1, #3
0x79ee2 ADDS            R1, R1, R3
0x79ee4 LDR             R3, =0x19C8
0x79ee6 LDR             R3, [R6,R3]
0x79ee8 ADDS            R1, R1, R3
0x79eea LDR             R3, =0x19B8
0x79eec ADDS            R1, R0, R1
0x79eee STR             R1, [R6,R3]
0x79ef0 MOVS            R3, R6
0x79ef2 ADDS            R3, #0x32 ; '2'
0x79ef4 LDRB            R3, [R3]
0x79ef6 CMP             R3, #0
0x79ef8 BEQ             loc_79F06
0x79efa LSLS            R3, R3, #0x18
0x79efc ASRS            R3, R3, #0x18
0x79efe CMP             R3, #3
0x79f00 BEQ             loc_79F06
0x79f02 CMP             R3, #7
0x79f04 BNE             loc_79F18
0x79f06 LDR             R5, =0x19B8
0x79f08 MOVS            R0, #1
0x79f0a MOVS            R1, #0
0x79f0c MOVS            R2, #0
0x79f0e LDR             R4, [R6,R5]
0x79f10 BL              sub_77094
0x79f14 ADDS            R4, R4, R0
0x79f16 STR             R4, [R6,R5]
0x79f18 LDR             R7, =dword_1501D90
0x79f1a LDR             R3, [R7]
0x79f1c LDR             R6, =0x19B8
0x79f1e LDR             R5, [R3,#0x10]
0x79f20 LDR             R3, =0x19D4
0x79f22 LDR             R4, [R5,R6]
0x79f24 LDR             R3, [R5,R3]
0x79f26 MOVS            R1, #0x64 ; 'd'
0x79f28 MOVS            R0, R3
0x79f2a MULS            R0, R4
0x79f2c LDR             R3, =0x8BFE9
0x79f2e BL              sub_80706
0x79f32 LDR             R2, =0x19B4
0x79f34 LDR             R3, [R5,R2]
0x79f36 ADDS            R4, R4, R0
0x79f38 STR             R4, [R5,R6]
0x79f3a CMP             R3, R4
0x79f3c BLE             loc_79F40
0x79f3e STR             R4, [R5,R2]
0x79f40 LDR             R3, [R7]
0x79f42 LDR             R3, [R3,#0x10]
0x79f44 LDR             R0, [R3,R6]
0x79f46 ADD             SP, SP, #4
0x79f48 POP             {R4-R7}
0x79f4a POP             {R1}
0x79f4c BX              R1