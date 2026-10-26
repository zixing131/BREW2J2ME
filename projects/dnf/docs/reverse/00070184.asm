0x70184 PUSH            {R4-R7,LR}
0x70186 LDR             R3, =dword_1536348
0x70188 LSLS            R0, R0, #2
0x7018a LDR             R7, [R0,R3]
0x7018c MOVS            R2, R7
0x7018e SUB             SP, SP, #0xC
0x70190 ADDS            R2, #0x30 ; '0'
0x70192 MOVS            R3, #0
0x70194 STR             R2, [SP,#0xC+var_4]
0x70196 STR             R3, [SP,#0xC+var_8]
0x70198 B               loc_70272
0x7019a LDR             R2, [SP,#0xC+var_4]
0x7019c LDRB            R3, [R2]
0x7019e CMP             R3, #0x11
0x701a0 BNE             loc_70266
0x701a2 LDR             R3, =dword_1535E24
0x701a4 LDR             R0, [R3]
0x701a6 CMP             R0, #0
0x701a8 BEQ             loc_7020E
0x701aa LDR             R3, =byte_1536760
0x701ac LDRB            R6, [R3]
0x701ae CMP             R6, #1
0x701b0 BNE             loc_7020E
0x701b2 LDR             R3, =byte_1501CC0
0x701b4 LDRB            R5, [R3]
0x701b6 LSLS            R3, R5, #0x18
0x701b8 ASRS            R4, R3, #0x18
0x701ba CMP             R4, #0
0x701bc BLE             loc_7020E
0x701be LDR             R2, =byte_15000BD
0x701c0 LDRB            R3, [R2]
0x701c2 ADDS            R3, #1
0x701c4 LSLS            R3, R3, #0x18
0x701c6 LSRS            R3, R3, #0x18
0x701c8 STRB            R3, [R2]
0x701ca CMP             R3, #3
0x701cc BLS             loc_7020E
0x701ce MOVS            R3, #0
0x701d0 STRB            R3, [R2]
0x701d2 LDR             R3, =unk_15364FC
0x701d4 LDRH            R2, [R3,#(word_15364FE - 0x15364FC)]
0x701d6 LDR             R3, =dword_153653C
0x701d8 LDR             R3, [R3]
0x701da SUBS            R2, #0xF
0x701dc LDR             R1, =byte_15000BC
0x701de CMP             R2, R3
0x701e0 BGE             loc_701F0
0x701e2 LDRB            R3, [R1]
0x701e4 CMP             R3, #1
0x701e6 BLS             loc_701EC
0x701e8 SUBS            R3, #1
0x701ea B               loc_701F8
0x701ec STRB            R6, [R1]
0x701ee B               loc_7020E
0x701f0 LDRB            R3, [R1]
0x701f2 CMP             R3, R4
0x701f4 BGE             loc_7020C
0x701f6 ADDS            R3, #1
0x701f8 LSLS            R3, R3, #0x18
0x701fa LSRS            R3, R3, #0x18
0x701fc STRB            R3, [R1]
0x701fe LSLS            R1, R3, #2
0x70200 ADDS            R1, R1, R3
0x70202 LSLS            R1, R1, #2
0x70204 LDR             R3, =unk_140333C
0x70206 BL              sub_71334
0x7020a B               loc_7020E
0x7020c STRB            R5, [R1]
0x7020e LDR             R3, =byte_15000BA
0x70210 LDRB            R2, [R3]
0x70212 CMP             R2, #0
0x70214 BNE             loc_70266
0x70216 MOVS            R4, #1
0x70218 STRB            R4, [R3]
0x7021a LDR             R3, =byte_15000BC
0x7021c LDR             R5, =byte_1501CC0
0x7021e STRB            R2, [R3]
0x70220 LDRB            R0, [R5]
0x70222 CMP             R0, #0
0x70224 BEQ             loc_7022C
0x70226 STRB            R4, [R3]
0x70228 LDR             R3, =byte_15000BD
0x7022a STRB            R2, [R3]
0x7022c LDR             R1, =byte_15000BB
0x7022e LDRH            R2, [R7,#0xA]
0x70230 LDRB            R3, [R1]
0x70232 ADDS            R2, #0xB
0x70234 CMP             R3, R2
0x70236 BEQ             loc_7024E
0x70238 CMP             R0, #0
0x7023a BEQ             loc_70266
0x7023c STRB            R2, [R1]
0x7023e LDRB            R0, [R7,#0xA]
0x70240 ADDS            R0, #0xB
0x70242 LSLS            R0, R0, #0x18
0x70244 LSRS            R0, R0, #0x18
0x70246 LDR             R1, =unk_1535E28
0x70248 LDR             R3, =(sub_6C2B4+1)
0x7024a BL              sub_71334
0x7024e MOVS            R3, #(byte_1501CC0 - 0x1501CC0)
0x70250 LDRSB           R3, [R5,R3]; byte_1501CC0
0x70252 CMP             R3, #0
0x70254 BEQ             loc_70266
0x70256 STR             R4, [SP,#0xC+var_C]
0x70258 LDR             R0, =unk_1535E28
0x7025a MOVS            R1, #0
0x7025c MOVS            R2, #1
0x7025e MOVS            R3, #1
0x70260 LDR             R4, =(sub_6C6DC+1)
0x70262 BL              sub_71336
0x70266 LDR             R3, [SP,#0xC+var_8]
0x70268 LDR             R2, [SP,#0xC+var_4]
0x7026a ADDS            R3, #1
0x7026c ADDS            R2, #0x34 ; '4'
0x7026e STR             R3, [SP,#0xC+var_8]
0x70270 STR             R2, [SP,#0xC+var_4]
0x70272 LDRH            R3, [R7,#0x2A]
0x70274 LDR             R2, [SP,#0xC+var_8]
0x70276 CMP             R2, R3
0x70278 BLT             loc_7019A
0x7027a ADD             SP, SP, #0xC
0x7027c POP             {R4-R7}
0x7027e POP             {R0}
0x70280 BX              R0