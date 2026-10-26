0x28cbc PUSH            {R4,R5,LR}
0x28cbe MOVS            R5, #0
0x28cc0 B               loc_28CE8
0x28cc2 MOVS            R2, #0x2C ; ','
0x28cc4 MULS            R2, R1
0x28cc6 MOVS            R3, #(dword_153343C - 0x15332A0)
0x28cca LDR             R3, [R0,R3]; dword_153343C
0x28ccc ADDS            R0, R2, R3
0x28cce LDRB            R3, [R0,#0x10]
0x28cd0 CMP             R3, #0xFF
0x28cd2 BEQ             loc_28CE6
0x28cd4 ADDS            R3, R0, #6
0x28cd6 LDRB            R2, [R3,#0x1F]
0x28cd8 ADDS            R3, R0, #2
0x28cda LDRH            R1, [R0,#0x22]
0x28cdc LDRB            R3, [R3,#0x1F]
0x28cde MOVS            R0, #0x14
0x28ce0 LDR             R4, =0x73EE9
0x28ce2 BL              sub_2BCB8
0x28ce6 ADDS            R5, #1
0x28ce8 LSLS            R3, R5, #0x18
0x28cea LSRS            R1, R3, #0x18
0x28cec LDR             R0, =word_15332A0
0x28cee MOVS            R3, #(byte_1533434 - 0x15332A0)
0x28cf2 LDRB            R3, [R0,R3]; byte_1533434
0x28cf4 CMP             R3, R1
0x28cf6 BHI             loc_28CC2
0x28cf8 MOVS            R0, #0x19
0x28cfa LDR             R1, =0x8D0C
0x28cfc MOVS            R2, #0
0x28cfe MOVS            R3, #0
0x28d00 LDR             R4, =0x73EE9
0x28d02 BL              sub_2BCB8
0x28d06 POP             {R4,R5}
0x28d08 POP             {R0}
0x28d0a BX              R0