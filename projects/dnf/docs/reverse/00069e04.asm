0x69e04 PUSH            {R4-R7,LR}
0x69e06 LSLS            R2, R2, #0x18
0x69e08 LSRS            R7, R2, #0x18
0x69e0a MOVS            R6, R0
0x69e0c MOVS            R5, R1
0x69e0e CMP             R7, #4
0x69e10 BNE             loc_69E24
0x69e12 LDRH            R3, [R1,#6]
0x69e14 STRH            R3, [R0,#4]
0x69e16 LDRH            R3, [R1,#4]
0x69e18 STRH            R3, [R0,#6]
0x69e1a LDRH            R3, [R1,#2]
0x69e1c STRH            R3, [R0]
0x69e1e LDRH            R3, [R1,#4]
0x69e20 LDRH            R2, [R1]
0x69e22 B               loc_69E58
0x69e24 CMP             R7, #5
0x69e26 BNE             loc_69E3E
0x69e28 LDRH            R3, [R1,#6]
0x69e2a STRH            R3, [R0,#4]
0x69e2c LDRH            R3, [R1,#4]
0x69e2e STRH            R3, [R0,#6]
0x69e30 LDRH            R3, [R1,#6]
0x69e32 LDRH            R2, [R1,#2]
0x69e34 SUBS            R3, R3, R2
0x69e36 SUBS            R3, #1
0x69e38 STRH            R3, [R0]
0x69e3a LDRH            R3, [R1]
0x69e3c B               loc_69E5C
0x69e3e CMP             R7, #6
0x69e40 BNE             loc_69E5E
0x69e42 LDRH            R3, [R1,#4]
0x69e44 STRH            R3, [R0,#4]
0x69e46 LDRH            R3, [R1,#6]
0x69e48 STRH            R3, [R0,#6]
0x69e4a LDRH            R2, [R1]
0x69e4c LDRH            R3, [R1,#4]
0x69e4e SUBS            R3, R3, R2
0x69e50 SUBS            R3, #1
0x69e52 STRH            R3, [R0]
0x69e54 LDRH            R3, [R1,#6]
0x69e56 LDRH            R2, [R1,#2]
0x69e58 SUBS            R3, R3, R2
0x69e5a SUBS            R3, #1
0x69e5c STRH            R3, [R6,#2]
0x69e5e LDRH            R2, [R6,#4]
0x69e60 LDRH            R3, [R6,#6]
0x69e62 MOVS            R4, R3
0x69e64 MULS            R4, R2
0x69e66 LDR             R3, =unk_14032EC
0x69e68 ADDS            R0, R4, #2
0x69e6a BL              sub_6BB36
0x69e6e MOVS            R2, R4
0x69e70 LDR             R3, =unk_140329C
0x69e72 STR             R0, [R6,#8]
0x69e74 STR             R0, [R6,#0xC]
0x69e76 MOVS            R1, #0
0x69e78 BL              sub_6BB36
0x69e7c LDR             R3, [R6,#0xC]
0x69e7e LDR             R4, [R5,#0xC]
0x69e80 MOV             R12, R3
0x69e82 CMP             R7, #4
0x69e84 BNE             loc_69EB4
0x69e86 MOVS            R7, #0
0x69e88 B               loc_69EAA
0x69e8a LDRH            R3, [R6,#6]
0x69e8c LDRH            R2, [R6,#4]
0x69e8e SUBS            R3, R3, R0
0x69e90 SUBS            R3, #1
0x69e92 MOVS            R1, R2
0x69e94 MULS            R1, R3
0x69e96 MOV             R3, R12
0x69e98 ADDS            R2, R3, R7
0x69e9a LDRB            R3, [R4]
0x69e9c STRB            R3, [R2,R1]
0x69e9e ADDS            R4, #1
0x69ea0 ADDS            R0, #1
0x69ea2 LDRH            R3, [R5,#4]
0x69ea4 CMP             R0, R3
0x69ea6 BCC             loc_69E8A
0x69ea8 ADDS            R7, #1
0x69eaa LDRH            R3, [R5,#6]
0x69eac CMP             R7, R3
0x69eae BCS             loc_69F18
0x69eb0 MOVS            R0, #0
0x69eb2 B               loc_69EA2
0x69eb4 CMP             R7, #5
0x69eb6 BNE             loc_69EE4
0x69eb8 MOVS            R0, #0
0x69eba B               loc_69EDA
0x69ebc LDRH            R3, [R6,#4]
0x69ebe MOVS            R2, R3
0x69ec0 MULS            R2, R1
0x69ec2 SUBS            R3, R3, R0
0x69ec4 ADD             R2, R12
0x69ec6 ADDS            R2, R2, R3
0x69ec8 LDRB            R3, [R4]
0x69eca SUBS            R2, #1
0x69ecc STRB            R3, [R2]
0x69ece ADDS            R4, #1
0x69ed0 ADDS            R1, #1
0x69ed2 LDRH            R3, [R5,#4]
0x69ed4 CMP             R1, R3
0x69ed6 BCC             loc_69EBC
0x69ed8 ADDS            R0, #1
0x69eda LDRH            R3, [R5,#6]
0x69edc CMP             R0, R3
0x69ede BCS             loc_69F18
0x69ee0 MOVS            R1, #0
0x69ee2 B               loc_69ED2
0x69ee4 CMP             R7, #6
0x69ee6 BNE             loc_69F18
0x69ee8 MOVS            R0, #0
0x69eea B               loc_69F0E
0x69eec LDRH            R3, [R6,#6]
0x69eee LDRH            R2, [R6,#4]
0x69ef0 SUBS            R3, R3, R0
0x69ef2 SUBS            R3, #1
0x69ef4 MULS            R3, R2
0x69ef6 SUBS            R2, R2, R1
0x69ef8 ADD             R3, R12
0x69efa ADDS            R3, R3, R2
0x69efc LDRB            R2, [R4]
0x69efe SUBS            R3, #1
0x69f00 STRB            R2, [R3]
0x69f02 ADDS            R4, #1
0x69f04 ADDS            R1, #1
0x69f06 LDRH            R3, [R5,#4]
0x69f08 CMP             R1, R3
0x69f0a BCC             loc_69EEC
0x69f0c ADDS            R0, #1
0x69f0e LDRH            R3, [R5,#6]
0x69f10 CMP             R0, R3
0x69f12 BCS             loc_69F18
0x69f14 MOVS            R1, #0
0x69f16 B               loc_69F06
0x69f18 POP             {R4-R7}
0x69f1a POP             {R0}
0x69f1c BX              R0