0x6e16c PUSH            {R4-R6,LR}
0x6e16e LDRB            R3, [R1]
0x6e170 LSLS            R2, R2, #0x18
0x6e172 MOVS            R5, R0
0x6e174 MOVS            R4, R1
0x6e176 LSRS            R6, R2, #0x18
0x6e178 CMP             R3, #0
0x6e17a BEQ             loc_6E272
0x6e17c LDRB            R3, [R1,#2]
0x6e17e ADDS            R3, #1
0x6e180 LSLS            R3, R3, #0x18
0x6e182 LDRB            R2, [R1,#3]
0x6e184 LSRS            R3, R3, #0x18
0x6e186 STRB            R3, [R1,#2]
0x6e188 CMP             R2, R3
0x6e18a BCS             loc_6E272
0x6e18c LDRB            R2, [R1,#4]
0x6e18e LSLS            R3, R2, #3
0x6e190 LDR             R1, [R0,#0x18]
0x6e192 ADDS            R3, R3, R2
0x6e194 LSLS            R3, R3, #2
0x6e196 LDRB            R2, [R4,#5]
0x6e198 ADDS            R3, R3, R1
0x6e19a LDR             R1, [R3,#0x20]
0x6e19c LSLS            R3, R2, #4
0x6e19e ADDS            R3, R3, R2
0x6e1a0 LSLS            R3, R3, #2
0x6e1a2 ADDS            R3, R3, R1
0x6e1a4 LDRB            R1, [R3,#6]
0x6e1a6 LDRB            R2, [R4,#0xC]
0x6e1a8 MOVS            R0, R6
0x6e1aa LDR             R3, =(sub_2D8AC+1)
0x6e1ac BL              sub_6EACE
0x6e1b0 LDRB            R2, [R4,#4]
0x6e1b2 LSLS            R3, R2, #3
0x6e1b4 LDR             R1, [R5,#0x18]
0x6e1b6 ADDS            R3, R3, R2
0x6e1b8 LSLS            R3, R3, #2
0x6e1ba LDRB            R2, [R4,#5]
0x6e1bc ADDS            R3, R3, R1
0x6e1be LDR             R1, [R3,#0x20]
0x6e1c0 LSLS            R3, R2, #4
0x6e1c2 ADDS            R3, R3, R2
0x6e1c4 LSLS            R3, R3, #2
0x6e1c6 ADDS            R3, R3, R1
0x6e1c8 LDRB            R1, [R3,#8]
0x6e1ca MOVS            R0, R6
0x6e1cc LDR             R3, =(sub_2D830+1)
0x6e1ce BL              sub_6EACE
0x6e1d2 LDRB            R2, [R4,#4]
0x6e1d4 LSLS            R3, R2, #3
0x6e1d6 LDR             R1, [R5,#0x18]
0x6e1d8 ADDS            R3, R3, R2
0x6e1da LSLS            R3, R3, #2
0x6e1dc LDRB            R2, [R4,#5]
0x6e1de ADDS            R3, R3, R1
0x6e1e0 LDR             R1, [R3,#0x20]
0x6e1e2 LSLS            R3, R2, #4
0x6e1e4 ADDS            R3, R3, R2
0x6e1e6 LSLS            R3, R3, #2
0x6e1e8 ADDS            R3, R3, R1
0x6e1ea LDRB            R2, [R3,#7]
0x6e1ec MOVS            R0, #2
0x6e1ee MOVS            R1, R6
0x6e1f0 LDR             R3, =(sub_2D77C+1)
0x6e1f2 BL              sub_6EACE
0x6e1f6 LDRB            R1, [R4,#4]
0x6e1f8 LSLS            R3, R1, #3
0x6e1fa ADDS            R3, R3, R1
0x6e1fc LDR             R2, [R5,#0x18]
0x6e1fe LSLS            R1, R3, #2
0x6e200 ADDS            R2, R1, R2
0x6e202 LDRB            R3, [R2,#2]
0x6e204 LDRB            R0, [R4,#5]
0x6e206 SUBS            R3, #1
0x6e208 CMP             R0, R3
0x6e20a BLT             loc_6E256
0x6e20c LDRB            R3, [R4,#7]
0x6e20e MOVS            R2, #0
0x6e210 STRB            R2, [R4,#5]
0x6e212 STRB            R2, [R4,#2]
0x6e214 CMP             R3, #0xFF
0x6e216 BNE             loc_6E236
0x6e218 LDR             R3, [R5,#0x18]
0x6e21a LDRB            R1, [R1,R3]
0x6e21c CMP             R1, #0xFF
0x6e21e BNE             loc_6E228
0x6e220 MOVS            R3, #1
0x6e222 STRB            R2, [R4]
0x6e224 STRB            R3, [R4,#1]
0x6e226 B               loc_6E272
0x6e228 STRB            R1, [R4,#4]
0x6e22a LSLS            R3, R1, #3
0x6e22c LDR             R2, [R5,#0x18]
0x6e22e ADDS            R3, R3, R1
0x6e230 LSLS            R3, R3, #2
0x6e232 ADDS            R3, R3, R2
0x6e234 B               loc_6E24A
0x6e236 STRB            R3, [R4,#4]
0x6e238 MOVS            R3, #1
0x6e23a NEGS            R3, R3
0x6e23c LDRB            R2, [R4,#4]
0x6e23e STRB            R3, [R4,#7]
0x6e240 LSLS            R3, R2, #3
0x6e242 LDR             R1, [R5,#0x18]
0x6e244 ADDS            R3, R3, R2
0x6e246 LSLS            R3, R3, #2
0x6e248 ADDS            R3, R3, R1
0x6e24a LDR             R3, [R3,#0x20]
0x6e24c LDRB            R3, [R3]
0x6e24e STRB            R3, [R4,#3]
0x6e250 MOVS            R3, #1
0x6e252 STRB            R3, [R4]
0x6e254 B               loc_6E272
0x6e256 ADDS            R2, R0, #1
0x6e258 LSLS            R2, R2, #0x18
0x6e25a LSRS            R2, R2, #0x18
0x6e25c MOVS            R3, #0
0x6e25e STRB            R3, [R4,#2]
0x6e260 STRB            R2, [R4,#5]
0x6e262 LDR             R3, [R5,#0x18]
0x6e264 ADDS            R3, R1, R3
0x6e266 LDR             R1, [R3,#0x20]
0x6e268 LSLS            R3, R2, #4
0x6e26a ADDS            R3, R3, R2
0x6e26c LSLS            R3, R3, #2
0x6e26e LDRB            R3, [R3,R1]
0x6e270 STRB            R3, [R4,#3]
0x6e272 POP             {R4-R6}
0x6e274 POP             {R0}
0x6e276 BX              R0