0x1f300 PUSH            {R4,R5,LR}
0x1f302 LDR             R2, =byte_150D160
0x1f304 LDR             R3, =dword_1501D90
0x1f306 LDRB            R5, [R2]
0x1f308 LDR             R4, [R3]
0x1f30a LDR             R1, [R2,#(dword_150D168 - 0x150D160)]
0x1f30c MOVS            R0, #0
0x1f30e B               loc_1F328
0x1f310 LDR             R2, =0x1AE9
0x1f312 LDRB            R3, [R1,#3]
0x1f314 LDRB            R2, [R4,R2]
0x1f316 CMP             R3, R2
0x1f318 BNE             loc_1F324
0x1f31a LDR             R2, =0x1AEA
0x1f31c LDRB            R3, [R1,#4]
0x1f31e LDRSB           R2, [R4,R2]
0x1f320 CMP             R3, R2
0x1f322 BEQ             loc_1F330
0x1f324 ADDS            R0, #1
0x1f326 ADDS            R1, #0x10
0x1f328 CMP             R0, R5
0x1f32a BLT             loc_1F310
0x1f32c MOVS            R0, #1
0x1f32e NEGS            R0, R0
0x1f330 POP             {R4,R5}
0x1f332 POP             {R1}
0x1f334 BX              R1