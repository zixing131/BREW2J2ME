0x76cac PUSH            {R4,LR}
0x76cae LDR             R3, =byte_1537CD9
0x76cb0 LSLS            R0, R0, #0x18
0x76cb2 LSRS            R0, R0, #0x18
0x76cb4 LDRB            R2, [R3,R0]
0x76cb6 LSLS            R1, R1, #0x18
0x76cb8 LSLS            R3, R2, #2
0x76cba ADDS            R3, R3, R2
0x76cbc LSRS            R4, R1, #0x18
0x76cbe LDR             R1, =dword_1538860
0x76cc0 LSLS            R3, R3, #5
0x76cc2 LDR             R0, [R3,R1]
0x76cc4 LDRB            R2, [R0]
0x76cc6 LSLS            R3, R2, #2
0x76cc8 ADDS            R3, R3, R2
0x76cca MOVS            R2, #0x96
0x76ccc LSLS            R3, R3, #0x14
0x76cce LSLS            R2, R2, #0x10
0x76cd0 ADDS            R3, R3, R2
0x76cd2 LSRS            R1, R3, #0x10
0x76cd4 CMP             R4, #0
0x76cd6 BNE             loc_76CDC
0x76cd8 LDRH            R2, [R0,#0x22]
0x76cda B               loc_76CE2
0x76cdc CMP             R4, #1
0x76cde BNE             loc_76CF6
0x76ce0 LDRH            R2, [R0,#0x24]
0x76ce2 MOVS            R3, #0x64 ; 'd'
0x76ce4 MOVS            R0, R2
0x76ce6 MULS            R0, R3
0x76ce8 LDR             R3, =0x8C065
0x76cea BL              sub_80706
0x76cee LSLS            R0, R0, #0x10
0x76cf0 LSRS            R0, R0, #0x10
0x76cf2 CMP             R0, #0
0x76cf4 BNE             loc_76CF8
0x76cf6 MOVS            R0, #1
0x76cf8 POP             {R4}
0x76cfa POP             {R1}
0x76cfc BX              R1