0x2c144 PUSH            {R4,LR}
0x2c146 LDR             R2, [R0,#0x10]
0x2c148 LDR             R0, =word_15332A0
0x2c14a MOVS            R3, R0
0x2c14c ADDS            R3, #0x35 ; '5'
0x2c14e LDRB            R3, [R3]
0x2c150 LSLS            R4, R3, #4
0x2c152 LDRH            R3, [R2,#0x3A]
0x2c154 LSLS            R3, R3, #0x10
0x2c156 ASRS            R1, R3, #0x10
0x2c158 CMP             R1, #0x14
0x2c15a BGT             loc_2C160
0x2c15c MOVS            R3, #0x14
0x2c15e B               loc_2C168
0x2c160 LDRH            R3, [R0]
0x2c162 SUBS            R3, #0x14
0x2c164 CMP             R1, R3
0x2c166 BLT             loc_2C16A
0x2c168 STRH            R3, [R2,#0x3A]
0x2c16a MOVS            R3, #0x3C ; '<'
0x2c16c LDRSH           R1, [R2,R3]
0x2c16e CMP             R1, R4
0x2c170 BGT             loc_2C176
0x2c172 STRH            R4, [R2,#0x3C]
0x2c174 B               loc_2C180
0x2c176 LDR             R3, =word_15332A0
0x2c178 LDRH            R3, [R3,#(word_15332A2 - 0x15332A0)]
0x2c17a CMP             R1, R3
0x2c17c BLE             loc_2C180
0x2c17e STRH            R3, [R2,#0x3C]
0x2c180 POP             {R4}
0x2c182 POP             {R0}
0x2c184 BX              R0