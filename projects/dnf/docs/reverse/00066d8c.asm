0x66d8c PUSH            {R4,LR}
0x66d8e LDR             R3, =dword_1535ADC
0x66d90 LDR             R4, [R3,#(dword_1535AF4 - 0x1535ADC)]
0x66d92 CMP             R4, #0xF
0x66d94 BGT             loc_66D9C
0x66d96 LSLS            R3, R0, #1
0x66d98 ADDS            R0, R3, R0
0x66d9a B               loc_66DAA
0x66d9c CMP             R4, #0x1E
0x66d9e BGT             loc_66DA8
0x66da0 LSLS            R3, R0, #1
0x66da2 ADDS            R3, R3, R0
0x66da4 LSLS            R0, R3, #1
0x66da6 B               loc_66DAA
0x66da8 LSLS            R0, R0, #3
0x66daa LSRS            R3, R0, #0x1F
0x66dac ADDS            R3, R3, R0
0x66dae ASRS            R0, R3, #1
0x66db0 LDR             R3, =dword_1535ADC
0x66db2 CMP             R0, #0
0x66db4 BLE             loc_66DC8
0x66db6 ADDS            R3, #0xFC
0x66db8 LDR             R1, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66dba SUBS            R3, R4, #1
0x66dbc ADDS            R2, R1, R0
0x66dbe CMP             R2, R3
0x66dc0 BLE             loc_66DDC
0x66dc2 SUBS            R3, R4, R1
0x66dc4 SUBS            R0, R3, #1
0x66dc6 B               loc_66DDC
0x66dc8 ADDS            R3, #0xFC
0x66dca LDR             R1, [R3,#(dword_1535C38 - 0x1535BD8)]
0x66dcc MOVS            R3, #1
0x66dce ADDS            R2, R1, R0
0x66dd0 SUBS            R3, R3, R4
0x66dd2 CMP             R2, R3
0x66dd4 BGE             loc_66DDC
0x66dd6 NEGS            R3, R4
0x66dd8 SUBS            R3, R3, R1
0x66dda ADDS            R0, R3, #1
0x66ddc POP             {R4}
0x66dde POP             {R1}
0x66de0 BX              R1