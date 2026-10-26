0x6b234 PUSH            {R4-R7,LR}
0x6b236 SUB             SP, SP, #0x44
0x6b238 MOVS            R7, R2
0x6b23a LDR             R2, [SP,#0x44+arg_0]
0x6b23c STR             R1, [SP,#0x44+var_1C]
0x6b23e LDR             R4, [SP,#0x44+arg_C]
0x6b240 LDR             R1, [SP,#0x44+arg_4]
0x6b242 LDR             R6, [SP,#0x44+arg_14]
0x6b244 LSLS            R2, R2, #0x18
0x6b246 LSRS            R2, R2, #0x18
0x6b248 STR             R0, [SP,#0x44+var_18]
0x6b24a LDR             R5, [SP,#0x44+arg_10]
0x6b24c LDR             R0, [SP,#0x44+arg_8]
0x6b24e STR             R2, [SP,#0x44+var_20]
0x6b250 LSLS            R1, R1, #0x18
0x6b252 LSLS            R4, R4, #0x18
0x6b254 LSLS            R6, R6, #0x18
0x6b256 LSLS            R2, R3, #3
0x6b258 LSRS            R1, R1, #0x18
0x6b25a LSRS            R4, R4, #0x18
0x6b25c LSRS            R6, R6, #0x18
0x6b25e LSLS            R0, R0, #0x18
0x6b260 LSLS            R5, R5, #0x18
0x6b262 ADDS            R2, R2, R3
0x6b264 STR             R1, [SP,#0x44+var_24]
0x6b266 LSRS            R0, R0, #0x18
0x6b268 STR             R4, [SP,#0x44+var_2C]
0x6b26a LSRS            R5, R5, #0x18
0x6b26c STR             R6, [SP,#0x44+var_34]
0x6b26e MOVS            R1, #0
0x6b270 LSLS            R6, R2, #2
0x6b272 MOVS            R4, #0
0x6b274 STR             R0, [SP,#0x44+var_28]
0x6b276 STR             R5, [SP,#0x44+var_30]
0x6b278 STR             R1, [SP,#0x44+var_14]
0x6b27a B               loc_6B330
0x6b27c LDR             R3, [R2,#0x40]
0x6b27e ADDS            R3, R4, R3
0x6b280 LDRB            R2, [R3]
0x6b282 STR             R2, [SP,#0x44+var_C]
0x6b284 LDRH            R2, [R3,#4]
0x6b286 LDRH            R5, [R3,#2]
0x6b288 STR             R2, [SP,#0x44+var_10]
0x6b28a LDR             R2, [SP,#0x44+var_28]
0x6b28c MOV             R12, R5
0x6b28e ADD             R5, SP, #0x44+var_8
0x6b290 CMP             R2, #0
0x6b292 BEQ             loc_6B2A4
0x6b294 STRB            R2, [R5]
0x6b296 MOV             R1, SP
0x6b298 LDRB            R1, [R1,#0x44+var_2C]
0x6b29a STRB            R1, [R5,#1]
0x6b29c MOV             R2, SP
0x6b29e LDRB            R2, [R2,#0x44+var_30]
0x6b2a0 STRB            R2, [R5,#2]
0x6b2a2 B               loc_6B2C0
0x6b2a4 LDRB            R3, [R3,#6]
0x6b2a6 STRB            R3, [R5]
0x6b2a8 LDR             R3, [R0,#0x20]
0x6b2aa ADDS            R3, R1, R3
0x6b2ac LDR             R3, [R3,#0x40]
0x6b2ae ADDS            R3, R3, R4
0x6b2b0 LDRB            R3, [R3,#7]
0x6b2b2 STRB            R3, [R5,#1]
0x6b2b4 LDR             R3, [R0,#0x20]
0x6b2b6 ADDS            R3, R1, R3
0x6b2b8 LDR             R3, [R3,#0x40]
0x6b2ba ADDS            R3, R3, R4
0x6b2bc LDRB            R3, [R3,#8]
0x6b2be STRB            R3, [R5,#2]
0x6b2c0 LDR             R3, [SP,#0x44+var_34]
0x6b2c2 ADD             R5, SP, #0x44+var_8
0x6b2c4 CMP             R3, #0
0x6b2c6 BNE             loc_6B2DE
0x6b2c8 LDR             R3, [R7,#0x18]
0x6b2ca LDRB            R2, [R7,#7]
0x6b2cc ADDS            R3, R3, R6
0x6b2ce LDR             R1, [R3,#0x20]
0x6b2d0 LSLS            R3, R2, #4
0x6b2d2 ADDS            R3, R3, R2
0x6b2d4 LSLS            R3, R3, #2
0x6b2d6 ADDS            R3, R3, R1
0x6b2d8 LDR             R3, [R3,#0x40]
0x6b2da ADDS            R3, R3, R4
0x6b2dc LDRB            R3, [R3,#9]
0x6b2de STRB            R3, [R5,#3]
0x6b2e0 LDR             R2, [SP,#0x44+var_24]
0x6b2e2 ADD             R5, SP, #0x44+var_8
0x6b2e4 CMP             R2, #0
0x6b2e6 BEQ             loc_6B2EC
0x6b2e8 STRB            R2, [R5,#4]
0x6b2ea B               loc_6B304
0x6b2ec LDR             R3, [R7,#0x18]
0x6b2ee LDRB            R2, [R7,#7]
0x6b2f0 ADDS            R3, R3, R6
0x6b2f2 LDR             R1, [R3,#0x20]
0x6b2f4 LSLS            R3, R2, #4
0x6b2f6 ADDS            R3, R3, R2
0x6b2f8 LSLS            R3, R3, #2
0x6b2fa ADDS            R3, R3, R1
0x6b2fc LDR             R3, [R3,#0x40]
0x6b2fe ADDS            R3, R3, R4
0x6b300 LDRB            R3, [R3,#0xA]
0x6b302 STRB            R3, [R5,#4]
0x6b304 LDR             R1, [SP,#0x44+var_10]
0x6b306 LSLS            R3, R1, #0x10
0x6b308 LDR             R1, [R7,#0x1C]
0x6b30a STR             R1, [SP,#0x44+var_44]
0x6b30c LDR             R1, [SP,#0x44+var_20]
0x6b30e MOV             R5, R12
0x6b310 LSLS            R2, R5, #0x10
0x6b312 STR             R1, [SP,#0x44+var_3C]
0x6b314 LDR             R5, [SP,#0x44+var_C]
0x6b316 ADD             R1, SP, #0x44+var_8
0x6b318 ASRS            R2, R2, #0x10
0x6b31a STR             R1, [SP,#0x44+var_38]
0x6b31c ASRS            R3, R3, #0x10
0x6b31e LDR             R0, [SP,#0x44+var_18]
0x6b320 LDR             R1, [SP,#0x44+var_1C]
0x6b322 STR             R5, [SP,#0x44+var_40]
0x6b324 BL              sub_6B158
0x6b328 LDR             R2, [SP,#0x44+var_14]
0x6b32a ADDS            R2, #1
0x6b32c STR             R2, [SP,#0x44+var_14]
0x6b32e ADDS            R4, #0xC
0x6b330 LDRB            R2, [R7,#7]
0x6b332 LDR             R3, [R7,#0x18]
0x6b334 ADDS            R0, R3, R6
0x6b336 LSLS            R3, R2, #4
0x6b338 ADDS            R3, R3, R2
0x6b33a LSLS            R1, R3, #2
0x6b33c LDR             R3, [R0,#0x20]
0x6b33e ADDS            R2, R1, R3
0x6b340 LDRB            R3, [R2,#1]
0x6b342 LDR             R5, [SP,#0x44+var_14]
0x6b344 CMP             R5, R3
0x6b346 BLT             loc_6B27C
0x6b348 ADD             SP, SP, #0x44 ; 'D'
0x6b34a POP             {R4-R7}
0x6b34c POP             {R0}
0x6b34e BX              R0