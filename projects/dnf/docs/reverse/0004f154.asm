0x4f154 PUSH            {R4,R5,LR}
0x4f156 LDR             R3, =dword_1501D90
0x4f158 LDR             R3, [R3]
0x4f15a LDR             R2, [R3,#0x10]
0x4f15c MOVS            R3, R2
0x4f15e ADDS            R3, #0x38 ; '8'
0x4f160 LDRB            R3, [R3]
0x4f162 MOVS            R5, R0
0x4f164 CMP             R3, #0
0x4f166 BEQ             loc_4F180
0x4f168 LDR             R3, =dword_1535DD8
0x4f16a LDR             R4, [R3]
0x4f16c CMP             R4, #0x31 ; '1'
0x4f16e BEQ             loc_4F1DC
0x4f170 CMP             R4, #0x33 ; '3'
0x4f172 BEQ             loc_4F1DC
0x4f174 CMP             R4, #0x37 ; '7'
0x4f176 BEQ             loc_4F1DC
0x4f178 CMP             R4, #0x39 ; '9'
0x4f17a BEQ             loc_4F1DC
0x4f17c CMP             R4, #0x30 ; '0'
0x4f17e BEQ             loc_4F1DC
0x4f180 MOVS            R3, R2
0x4f182 ADDS            R3, #0x4A ; 'J'
0x4f184 LDRB            R2, [R3]
0x4f186 MOVS            R3, R2
0x4f188 SUBS            R3, #0x14
0x4f18a LSLS            R3, R3, #0x18
0x4f18c LSRS            R3, R3, #0x18
0x4f18e CMP             R3, #2
0x4f190 BLS             loc_4F1C2
0x4f192 MOVS            R3, R2
0x4f194 SUBS            R3, #0x48 ; 'H'
0x4f196 LSLS            R3, R3, #0x18
0x4f198 LSRS            R3, R3, #0x18
0x4f19a CMP             R3, #2
0x4f19c BLS             loc_4F1C2
0x4f19e MOVS            R3, R2
0x4f1a0 SUBS            R3, #0x4B ; 'K'
0x4f1a2 LSLS            R3, R3, #0x18
0x4f1a4 LSRS            R3, R3, #0x18
0x4f1a6 CMP             R3, #2
0x4f1a8 BLS             loc_4F1C2
0x4f1aa MOVS            R3, R2
0x4f1ac SUBS            R3, #0x4E ; 'N'
0x4f1ae LSLS            R3, R3, #0x18
0x4f1b0 LSRS            R3, R3, #0x18
0x4f1b2 CMP             R3, #2
0x4f1b4 BLS             loc_4F1C2
0x4f1b6 MOVS            R3, R2
0x4f1b8 SUBS            R3, #0x53 ; 'S'
0x4f1ba LSLS            R3, R3, #0x18
0x4f1bc LSRS            R3, R3, #0x18
0x4f1be CMP             R3, #3
0x4f1c0 BHI             loc_4F240
0x4f1c2 LDR             R5, =dword_1535DD8
0x4f1c4 MOVS            R4, #0
0x4f1c6 LDR             R3, [R5]
0x4f1c8 CMP             R3, #0x31 ; '1'
0x4f1ca BNE             loc_4F1E4
0x4f1cc LDR             R3, =dword_1501D90
0x4f1ce LDR             R3, [R3]
0x4f1d0 LDR             R2, [R3,#0x10]
0x4f1d2 LDR             R3, =0x1468
0x4f1d4 B               loc_4F22A
0x4f1d6 LDR             R3, =dword_1535DD8
0x4f1d8 LSLS            R2, R4, #2
0x4f1da LDR             R4, [R2,R3]
0x4f1dc LDR             R3, =0x6BBD1
0x4f1de BL              sub_66A76
0x4f1e2 B               loc_4F316
0x4f1e4 CMP             R3, #0x33 ; '3'
0x4f1e6 BNE             loc_4F1F2
0x4f1e8 LDR             R3, =dword_1501D90
0x4f1ea LDR             R3, [R3]
0x4f1ec LDR             R2, [R3,#0x10]
0x4f1ee LDR             R3, =dword_14D0
0x4f1f0 B               loc_4F22A
0x4f1f2 CMP             R3, #0x37 ; '7'
0x4f1f4 BNE             loc_4F200
0x4f1f6 LDR             R3, =dword_1501D90
0x4f1f8 LDR             R3, [R3]
0x4f1fa LDR             R2, [R3,#0x10]
0x4f1fc LDR             R3, =0x1538
0x4f1fe B               loc_4F22A
0x4f200 CMP             R3, #0x39 ; '9'
0x4f202 BNE             loc_4F20E
0x4f204 LDR             R3, =dword_1501D90
0x4f206 LDR             R3, [R3]
0x4f208 LDR             R2, [R3,#0x10]
0x4f20a MOVS            R3, #0xAD
0x4f20c B               loc_4F228
0x4f20e CMP             R3, #0x30 ; '0'
0x4f210 BNE             loc_4F21C
0x4f212 LDR             R3, =dword_1501D90
0x4f214 LDR             R3, [R3]
0x4f216 LDR             R2, [R3,#0x10]
0x4f218 LDR             R3, =0x1608
0x4f21a B               loc_4F22A
0x4f21c CMP             R3, #0x2A ; '*'
0x4f21e BNE             loc_4F236
0x4f220 LDR             R3, =dword_1501D90
0x4f222 LDR             R3, [R3]
0x4f224 LDR             R2, [R3,#0x10]
0x4f226 MOVS            R3, #0xBA
0x4f228 LSLS            R3, R3, #5
0x4f22a LDRB            R0, [R2,R3]
0x4f22c LDR             R3, =0x77CE5
0x4f22e BL              sub_66A76
0x4f232 CMP             R0, #0
0x4f234 BNE             loc_4F1D6
0x4f236 ADDS            R4, #1
0x4f238 ADDS            R5, #4
0x4f23a CMP             R4, #3
0x4f23c BNE             loc_4F1C6
0x4f23e B               loc_4F30A
0x4f240 LDR             R3, =byte_1535DD0
0x4f242 LDRB            R3, [R3]
0x4f244 LDR             R0, [R5,#0x10]
0x4f246 CMP             R3, #0
0x4f248 BEQ             loc_4F2EA
0x4f24a MOVS            R3, R0
0x4f24c ADDS            R3, #0x4A ; 'J'
0x4f24e LDRB            R3, [R3]
0x4f250 CMP             R3, #3
0x4f252 BNE             loc_4F272
0x4f254 LDR             R3, =0x76145
0x4f256 ADDS            R0, #0x44 ; 'D'
0x4f258 MOVS            R1, #0
0x4f25a MOVS            R2, #1
0x4f25c BL              sub_66A76
0x4f260 LDR             R3, [R5,#0x10]
0x4f262 ADDS            R3, #0x41 ; 'A'
0x4f264 LDRB            R3, [R3]
0x4f266 CMP             R3, #1
0x4f268 BHI             loc_4F2B4
0x4f26a LDR             R2, =byte_15347E4
0x4f26c MOVS            R3, #1
0x4f26e STRB            R3, [R2]
0x4f270 B               loc_4F2B4
0x4f272 CMP             R3, #2
0x4f274 BNE             loc_4F27C
0x4f276 ADDS            R0, #0x44 ; 'D'
0x4f278 MOVS            R1, #0
0x4f27a B               loc_4F2AC
0x4f27c CMP             R3, #0x57 ; 'W'
0x4f27e BNE             loc_4F286
0x4f280 ADDS            R0, #0x44 ; 'D'
0x4f282 MOVS            R1, #0x20 ; ' '
0x4f284 B               loc_4F2AC
0x4f286 CMP             R3, #0x6D ; 'm'
0x4f288 BNE             loc_4F290
0x4f28a ADDS            R0, #0x44 ; 'D'
0x4f28c MOVS            R1, #0x21 ; '!'
0x4f28e B               loc_4F2AC
0x4f290 CMP             R3, #0x59 ; 'Y'
0x4f292 BNE             loc_4F29A
0x4f294 ADDS            R0, #0x44 ; 'D'
0x4f296 MOVS            R1, #0x2A ; '*'
0x4f298 B               loc_4F2AC
0x4f29a CMP             R3, #0x6E ; 'n'
0x4f29c BNE             loc_4F2A4
0x4f29e ADDS            R0, #0x44 ; 'D'
0x4f2a0 MOVS            R1, #0x58 ; 'X'
0x4f2a2 B               loc_4F2AC
0x4f2a4 CMP             R3, #0x3F ; '?'
0x4f2a6 BNE             loc_4F2B4
0x4f2a8 ADDS            R0, #0x44 ; 'D'
0x4f2aa MOVS            R1, #0x6C ; 'l'
0x4f2ac MOVS            R2, #1
0x4f2ae LDR             R3, =0x76145
0x4f2b0 BL              sub_66A76
0x4f2b4 LDR             R3, =0x6BB99
0x4f2b6 BL              sub_66A76
0x4f2ba LDR             R3, [R5,#0x10]
0x4f2bc ADDS            R3, #0x4A ; 'J'
0x4f2be MOVS            R4, R0
0x4f2c0 LDRB            R0, [R3]
0x4f2c2 MOVS            R3, R0
0x4f2c4 SUBS            R3, #0x19
0x4f2c6 LSLS            R3, R3, #0x18
0x4f2c8 LSRS            R3, R3, #0x18
0x4f2ca CMP             R3, #1
0x4f2cc BLS             loc_4F2D2
0x4f2ce CMP             R0, #0x37 ; '7'
0x4f2d0 BNE             loc_4F1DC
0x4f2d2 CMP             R4, #0x34 ; '4'
0x4f2d4 BEQ             loc_4F1DC
0x4f2d6 ADDS            R3, R4, #3
0x4f2d8 BEQ             loc_4F1DC
0x4f2da CMP             R4, #0x36 ; '6'
0x4f2dc BNE             loc_4F2E0
0x4f2de B               loc_4F1DC
0x4f2e0 ADDS            R3, R4, #4
0x4f2e2 BNE             loc_4F2E6
0x4f2e4 B               loc_4F1DC
0x4f2e6 MOVS            R4, #0
0x4f2e8 B               loc_4F1DC
0x4f2ea MOVS            R3, R0
0x4f2ec ADDS            R3, #0x4A ; 'J'
0x4f2ee LDRB            R0, [R3]
0x4f2f0 CMP             R0, #0x57 ; 'W'
0x4f2f2 BEQ             loc_4F304
0x4f2f4 CMP             R0, #0x6D ; 'm'
0x4f2f6 BEQ             loc_4F304
0x4f2f8 CMP             R0, #0x59 ; 'Y'
0x4f2fa BEQ             loc_4F304
0x4f2fc CMP             R0, #0x6E ; 'n'
0x4f2fe BEQ             loc_4F304
0x4f300 CMP             R0, #0x3F ; '?'
0x4f302 BNE             loc_4F30E
0x4f304 LDR             R3, =0x6BBD1
0x4f306 BL              sub_66A76
0x4f30a MOVS            R4, #0
0x4f30c B               loc_4F316
0x4f30e LDR             R3, =0x6BB99
0x4f310 BL              sub_66A76
0x4f314 MOVS            R4, R0
0x4f316 MOVS            R0, R4
0x4f318 POP             {R4,R5}
0x4f31a POP             {R1}
0x4f31c BX              R1