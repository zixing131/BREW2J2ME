0x6d0ec PUSH            {R4-R7,LR}
0x6d0ee SUB             SP, SP, #0x74
0x6d0f0 MOV             R3, SP
0x6d0f2 MOV             R4, SP
0x6d0f4 LSLS            R2, R0, #0x18
0x6d0f6 MOVS            R1, #0
0x6d0f8 ADDS            R3, #0x73 ; 's'
0x6d0fa ADDS            R4, #0x4A ; 'J'
0x6d0fc STRB            R1, [R3]
0x6d0fe LSRS            R2, R2, #0x18
0x6d100 LDR             R1, =aDEtc; "%d.etc"
0x6d102 LDR             R3, =unk_14032CC
0x6d104 MOVS            R0, R4
0x6d106 BL              sub_6EACE
0x6d10a MOVS            R0, R4
0x6d10c BL              sub_6CBE0
0x6d110 STR             R0, [SP,#0x74+var_60]
0x6d112 CMP             R0, #0
0x6d114 BNE             loc_6D118
0x6d116 B               loc_6D824
0x6d118 LDR             R4, =unk_140327C
0x6d11a LDR             R1, [SP,#0x74+var_60]
0x6d11c MOVS            R2, #2
0x6d11e ADD             R0, SP, #0x74+var_4
0x6d120 BL              sub_6EAD0
0x6d124 LDR             R1, [SP,#0x74+var_60]
0x6d126 MOVS            R2, #4
0x6d128 ADDS            R1, #2
0x6d12a ADD             R0, SP, #0x74+var_C
0x6d12c BL              sub_6EAD0
0x6d130 LDR             R1, [SP,#0x74+var_60]
0x6d132 MOVS            R2, #4
0x6d134 ADDS            R1, #6
0x6d136 ADD             R0, SP, #0x74+var_8
0x6d138 BL              sub_6EAD0
0x6d13c LDR             R3, =unk_14032EC
0x6d13e LDR             R0, [SP,#0x74+var_C]
0x6d140 BL              sub_6EACE
0x6d144 STR             R0, [SP,#0x74+var_5C]
0x6d146 MOVS            R7, R0
0x6d148 LDR             R0, [SP,#0x74+var_60]
0x6d14a MOVS            R1, #6
0x6d14c STR             R1, [SP,#0x74+var_74]
0x6d14e ADDS            R0, #0xA
0x6d150 MOVS            R1, R7
0x6d152 LDR             R2, [SP,#0x74+var_C]
0x6d154 LDR             R3, [SP,#0x74+var_8]
0x6d156 LDR             R4, =(sub_692B4+1)
0x6d158 BL              sub_6EAD0
0x6d15c MOVS            R1, #0
0x6d15e STR             R1, [SP,#0x74+var_58]
0x6d160 STR             R1, [SP,#0x74+var_70]
0x6d162 MOV             R0, SP
0x6d164 MOVS            R1, R7
0x6d166 MOVS            R2, #1
0x6d168 LDR             R3, =unk_140327C
0x6d16a ADDS            R0, #0x73 ; 's'
0x6d16c BL              sub_6EACE
0x6d170 MOVS            R2, #0x73 ; 's'
0x6d172 ADD             R2, SP
0x6d174 LDRB            R3, [R2]
0x6d176 ADDS            R7, #1
0x6d178 CMP             R3, #0
0x6d17a BNE             loc_6D17E
0x6d17c B               loc_6D37C
0x6d17e LSLS            R5, R3, #2
0x6d180 ADDS            R5, R5, R3
0x6d182 LDR             R6, =dword_1501D90
0x6d184 LSLS            R5, R5, #3
0x6d186 LDR             R3, =unk_14032EC
0x6d188 ADDS            R0, R5, #2
0x6d18a LDR             R4, [R6]
0x6d18c BL              sub_6EACE
0x6d190 LDR             R3, [SP,#0x74+var_70]
0x6d192 LDR             R1, [SP,#0x74+var_70]
0x6d194 ADDS            R4, R3, R4
0x6d196 LDR             R3, [R6]
0x6d198 STR             R0, [R4,#0x18]
0x6d19a ADDS            R3, R1, R3
0x6d19c LDR             R0, [R3,#0x18]
0x6d19e MOVS            R1, #0
0x6d1a0 STR             R0, [R3,#0x1C]
0x6d1a2 MOVS            R2, R5
0x6d1a4 LDR             R3, =unk_140329C
0x6d1a6 BL              sub_6EACE
0x6d1aa LDR             R2, [SP,#0x74+var_70]
0x6d1ac LDR             R3, [R6]
0x6d1ae MOVS            R1, #0x73 ; 's'
0x6d1b0 ADD             R1, SP
0x6d1b2 ADDS            R3, R2, R3
0x6d1b4 LDRB            R2, [R1]
0x6d1b6 STRB            R2, [R3,#0x14]
0x6d1b8 MOVS            R2, #0
0x6d1ba STR             R2, [SP,#0x74+var_54]
0x6d1bc STR             R2, [SP,#0x74+var_4C]
0x6d1be B               loc_6D36A
0x6d1c0 LDR             R0, [R2,#0x1C]
0x6d1c2 LDR             R3, [SP,#0x74+var_4C]
0x6d1c4 ADDS            R0, R3, R0
0x6d1c6 LDR             R4, =unk_140327C
0x6d1c8 MOVS            R1, R7
0x6d1ca MOVS            R2, #1
0x6d1cc ADDS            R0, #1
0x6d1ce BL              sub_6EAD0
0x6d1d2 LDR             R1, [SP,#0x74+var_70]
0x6d1d4 LDR             R3, [R5]
0x6d1d6 ADDS            R3, R1, R3
0x6d1d8 LDR             R0, [R3,#0x1C]
0x6d1da LDR             R2, [SP,#0x74+var_4C]
0x6d1dc ADDS            R0, R2, R0
0x6d1de ADDS            R1, R7, #1
0x6d1e0 MOVS            R2, #1
0x6d1e2 ADDS            R0, #2
0x6d1e4 BL              sub_6EAD0
0x6d1e8 LDR             R1, [SP,#0x74+var_70]
0x6d1ea LDR             R3, [R5]
0x6d1ec ADDS            R3, R1, R3
0x6d1ee LDR             R0, [R3,#0x1C]
0x6d1f0 LDR             R2, [SP,#0x74+var_4C]
0x6d1f2 ADDS            R0, R2, R0
0x6d1f4 ADDS            R1, R7, #2
0x6d1f6 MOVS            R2, #1
0x6d1f8 ADDS            R0, #3
0x6d1fa BL              sub_6EAD0
0x6d1fe LDR             R1, [SP,#0x74+var_70]
0x6d200 LDR             R3, [R5]
0x6d202 ADDS            R3, R1, R3
0x6d204 LDR             R0, [R3,#0x1C]
0x6d206 LDR             R2, [SP,#0x74+var_4C]
0x6d208 ADDS            R0, R2, R0
0x6d20a ADDS            R1, R7, #3
0x6d20c MOVS            R2, #1
0x6d20e ADDS            R0, #4
0x6d210 BL              sub_6EAD0
0x6d214 LDR             R1, [SP,#0x74+var_70]
0x6d216 LDR             R3, [R5]
0x6d218 ADDS            R3, R1, R3
0x6d21a LDR             R0, [R3,#0x1C]
0x6d21c LDR             R2, [SP,#0x74+var_4C]
0x6d21e ADDS            R0, R2, R0
0x6d220 ADDS            R1, R7, #4
0x6d222 MOVS            R2, #1
0x6d224 ADDS            R0, #5
0x6d226 BL              sub_6EAD0
0x6d22a LDR             R1, [SP,#0x74+var_70]
0x6d22c LDR             R3, [R5]
0x6d22e ADDS            R3, R1, R3
0x6d230 LDR             R0, [R3,#0x1C]
0x6d232 LDR             R2, [SP,#0x74+var_4C]
0x6d234 ADDS            R0, R2, R0
0x6d236 ADDS            R1, R7, #5
0x6d238 MOVS            R2, #2
0x6d23a ADDS            R0, #6
0x6d23c BL              sub_6EAD0
0x6d240 LDR             R1, [SP,#0x74+var_70]
0x6d242 LDR             R3, [R5]
0x6d244 ADDS            R3, R1, R3
0x6d246 LDR             R0, [R3,#0x1C]
0x6d248 LDR             R2, [SP,#0x74+var_4C]
0x6d24a ADDS            R0, R2, R0
0x6d24c ADDS            R1, R7, #7
0x6d24e MOVS            R2, #1
0x6d250 ADDS            R0, #8
0x6d252 BL              sub_6EAD0
0x6d256 LDR             R1, [SP,#0x74+var_70]
0x6d258 LDR             R3, [R5]
0x6d25a ADDS            R3, R1, R3
0x6d25c LDR             R0, [R3,#0x1C]
0x6d25e LDR             R2, [SP,#0x74+var_4C]
0x6d260 MOVS            R1, R7
0x6d262 ADDS            R0, R2, R0
0x6d264 ADDS            R1, #8
0x6d266 MOVS            R2, #1
0x6d268 ADDS            R0, #9
0x6d26a BL              sub_6EAD0
0x6d26e LDR             R1, [SP,#0x74+var_70]
0x6d270 LDR             R3, [R5]
0x6d272 ADDS            R3, R1, R3
0x6d274 LDR             R0, [R3,#0x1C]
0x6d276 LDR             R2, [SP,#0x74+var_4C]
0x6d278 MOVS            R1, R7
0x6d27a ADDS            R0, R2, R0
0x6d27c ADDS            R1, #9
0x6d27e MOVS            R2, #1
0x6d280 ADDS            R0, #0xA
0x6d282 BL              sub_6EAD0
0x6d286 LDR             R1, [SP,#0x74+var_70]
0x6d288 LDR             R3, [R5]
0x6d28a ADDS            R3, R1, R3
0x6d28c LDR             R0, [R3,#0x1C]
0x6d28e LDR             R2, [SP,#0x74+var_4C]
0x6d290 MOVS            R1, R7
0x6d292 ADDS            R0, R2, R0
0x6d294 ADDS            R1, #0xA
0x6d296 MOVS            R2, #1
0x6d298 ADDS            R0, #0xB
0x6d29a BL              sub_6EAD0
0x6d29e LDR             R1, [SP,#0x74+var_70]
0x6d2a0 LDR             R3, [R5]
0x6d2a2 ADDS            R3, R1, R3
0x6d2a4 LDR             R0, [R3,#0x1C]
0x6d2a6 LDR             R2, [SP,#0x74+var_4C]
0x6d2a8 MOVS            R1, R7
0x6d2aa ADDS            R0, R2, R0
0x6d2ac ADDS            R1, #0xB
0x6d2ae MOVS            R2, #2
0x6d2b0 ADDS            R0, #0xC
0x6d2b2 BL              sub_6EAD0
0x6d2b6 LDR             R1, [SP,#0x74+var_70]
0x6d2b8 LDR             R3, [R5]
0x6d2ba ADDS            R3, R1, R3
0x6d2bc LDR             R0, [R3,#0x1C]
0x6d2be LDR             R2, [SP,#0x74+var_4C]
0x6d2c0 MOVS            R1, R7
0x6d2c2 ADDS            R0, R2, R0
0x6d2c4 ADDS            R1, #0xD
0x6d2c6 ADDS            R0, #0xE
0x6d2c8 MOVS            R2, #2
0x6d2ca BL              sub_6EAD0
0x6d2ce MOVS            R3, R7
0x6d2d0 ADDS            R3, #0xF
0x6d2d2 MOVS            R1, #0
0x6d2d4 STR             R3, [SP,#0x74+var_48]
0x6d2d6 STR             R1, [SP,#0x74+var_50]
0x6d2d8 LDR             R6, =dword_1501D90
0x6d2da LDR             R2, [SP,#0x74+var_70]
0x6d2dc LDR             R3, [R6]
0x6d2de LDR             R1, [SP,#0x74+var_50]
0x6d2e0 ADDS            R3, R2, R3
0x6d2e2 LDR             R0, [R3,#0x1C]
0x6d2e4 LSLS            R4, R1, #3
0x6d2e6 LDR             R3, [SP,#0x74+var_4C]
0x6d2e8 MOVS            R2, R4
0x6d2ea ADDS            R0, R3, R0
0x6d2ec ADDS            R2, #0x10
0x6d2ee LDR             R5, =unk_140327C
0x6d2f0 STR             R2, [SP,#0x74+var_64]
0x6d2f2 ADDS            R0, R0, R2
0x6d2f4 LDR             R1, [SP,#0x74+var_48]
0x6d2f6 MOVS            R2, #1
0x6d2f8 BL              sub_6EAD2
0x6d2fc LDR             R1, [SP,#0x74+var_70]
0x6d2fe LDR             R3, [R6]
0x6d300 ADDS            R3, R1, R3
0x6d302 LDR             R0, [R3,#0x1C]
0x6d304 LDR             R2, [SP,#0x74+var_4C]
0x6d306 LDR             R3, [SP,#0x74+var_64]
0x6d308 ADDS            R0, R2, R0
0x6d30a LDR             R1, [SP,#0x74+var_48]
0x6d30c ADDS            R0, R0, R3
0x6d30e ADDS            R1, #1
0x6d310 MOVS            R2, #2
0x6d312 ADDS            R0, #2
0x6d314 BL              sub_6EAD2
0x6d318 LDR             R1, [SP,#0x74+var_70]
0x6d31a LDR             R3, [R6]
0x6d31c ADDS            R3, R1, R3
0x6d31e LDR             R0, [R3,#0x1C]
0x6d320 LDR             R2, [SP,#0x74+var_4C]
0x6d322 LDR             R1, [SP,#0x74+var_48]
0x6d324 ADDS            R0, R2, R0
0x6d326 ADDS            R4, #0x14
0x6d328 ADDS            R1, #3
0x6d32a MOVS            R2, #2
0x6d32c ADDS            R0, R0, R4
0x6d32e BL              sub_6EAD2
0x6d332 LDR             R1, [SP,#0x74+var_70]
0x6d334 LDR             R3, [R6]
0x6d336 ADDS            R3, R1, R3
0x6d338 LDR             R0, [R3,#0x1C]
0x6d33a LDR             R2, [SP,#0x74+var_4C]
0x6d33c LDR             R1, [SP,#0x74+var_48]
0x6d33e ADDS            R0, R2, R0
0x6d340 ADDS            R0, R0, R4
0x6d342 ADDS            R1, #5
0x6d344 ADDS            R0, #2
0x6d346 MOVS            R2, #2
0x6d348 BL              sub_6EAD2
0x6d34c LDR             R3, [SP,#0x74+var_48]
0x6d34e LDR             R1, [SP,#0x74+var_50]
0x6d350 ADDS            R3, #7
0x6d352 ADDS            R1, #1
0x6d354 STR             R3, [SP,#0x74+var_48]
0x6d356 STR             R1, [SP,#0x74+var_50]
0x6d358 CMP             R1, #3
0x6d35a BNE             loc_6D2D8
0x6d35c LDR             R2, [SP,#0x74+var_54]
0x6d35e LDR             R3, [SP,#0x74+var_4C]
0x6d360 ADDS            R2, #1
0x6d362 ADDS            R3, #0x28 ; '('
0x6d364 STR             R2, [SP,#0x74+var_54]
0x6d366 STR             R3, [SP,#0x74+var_4C]
0x6d368 ADDS            R7, #0x24 ; '$'
0x6d36a LDR             R5, =dword_1501D90
0x6d36c LDR             R1, [SP,#0x74+var_70]
0x6d36e LDR             R3, [R5]
0x6d370 ADDS            R2, R1, R3
0x6d372 LDRB            R3, [R2,#0x14]
0x6d374 LDR             R1, [SP,#0x74+var_54]
0x6d376 CMP             R1, R3
0x6d378 BGE             loc_6D37C
0x6d37a B               loc_6D1C0
0x6d37c LDR             R2, [SP,#0x74+var_58]
0x6d37e LDR             R3, [SP,#0x74+var_70]
0x6d380 ADDS            R2, #1
0x6d382 ADDS            R3, #0xC
0x6d384 STR             R2, [SP,#0x74+var_58]
0x6d386 STR             R3, [SP,#0x74+var_70]
0x6d388 CMP             R2, #0xB
0x6d38a BEQ             loc_6D38E
0x6d38c B               loc_6D162
0x6d38e MOV             R3, SP
0x6d390 MOVS            R2, #0
0x6d392 ADDS            R3, #0x73 ; 's'
0x6d394 STRB            R2, [R3]
0x6d396 STR             R2, [SP,#0x74+var_40]
0x6d398 STR             R2, [SP,#0x74+var_6C]
0x6d39a MOV             R0, SP
0x6d39c MOVS            R1, R7
0x6d39e ADDS            R0, #0x73 ; 's'
0x6d3a0 MOVS            R2, #1
0x6d3a2 LDR             R3, =unk_140327C
0x6d3a4 BL              sub_6EACE
0x6d3a8 MOVS            R1, #0x73 ; 's'
0x6d3aa ADD             R1, SP
0x6d3ac LDRB            R6, [R1]
0x6d3ae ADDS            R7, #1
0x6d3b0 CMP             R6, #0
0x6d3b2 BNE             loc_6D3B6
0x6d3b4 B               loc_6D4B8
0x6d3b6 LDR             R5, =dword_1501D90
0x6d3b8 LSLS            R6, R6, #3
0x6d3ba LDR             R3, =unk_14032EC
0x6d3bc ADDS            R0, R6, #2
0x6d3be LDR             R4, [R5]
0x6d3c0 BL              sub_6EACE
0x6d3c4 LDR             R2, [SP,#0x74+var_6C]
0x6d3c6 LDR             R3, [R5]
0x6d3c8 ADDS            R4, R2, R4
0x6d3ca ADDS            R4, #0x9C
0x6d3cc STR             R0, [R4]
0x6d3ce ADDS            R3, R2, R3
0x6d3d0 MOVS            R2, R3
0x6d3d2 ADDS            R3, #0x9C
0x6d3d4 LDR             R0, [R3]
0x6d3d6 ADDS            R2, #0xA0
0x6d3d8 STR             R0, [R2]
0x6d3da MOVS            R1, #0
0x6d3dc MOVS            R2, R6
0x6d3de LDR             R3, =unk_140329C
0x6d3e0 BL              sub_6EACE
0x6d3e4 LDR             R1, [SP,#0x74+var_6C]
0x6d3e6 LDR             R3, [R5]
0x6d3e8 ADDS            R3, R1, R3
0x6d3ea MOVS            R1, #0x73 ; 's'
0x6d3ec ADD             R1, SP
0x6d3ee LDRB            R2, [R1]
0x6d3f0 ADDS            R3, #0x98
0x6d3f2 STRB            R2, [R3]
0x6d3f4 MOVS            R2, #0
0x6d3f6 B               loc_6D4A2
0x6d414 LDR             R3, [SP,#0x74+var_3C]
0x6d416 LSLS            R4, R3, #3
0x6d418 MOVS            R3, R2
0x6d41a ADDS            R3, #0xA0
0x6d41c LDR             R0, [R3]
0x6d41e ADDS            R0, R4, R0
0x6d420 LDR             R5, =unk_140327C
0x6d422 MOVS            R1, R7
0x6d424 MOVS            R2, #1
0x6d426 ADDS            R0, #1
0x6d428 BL              sub_6EAD2
0x6d42c LDR             R1, [SP,#0x74+var_6C]
0x6d42e LDR             R3, [R6]
0x6d430 ADDS            R3, R1, R3
0x6d432 ADDS            R3, #0xA0
0x6d434 LDR             R0, [R3]
0x6d436 ADDS            R0, R4, R0
0x6d438 ADDS            R1, R7, #1
0x6d43a MOVS            R2, #1
0x6d43c ADDS            R0, #2
0x6d43e BL              sub_6EAD2
0x6d442 LDR             R2, [SP,#0x74+var_6C]
0x6d444 LDR             R3, [R6]
0x6d446 ADDS            R3, R2, R3
0x6d448 ADDS            R3, #0xA0
0x6d44a LDR             R0, [R3]
0x6d44c ADDS            R0, R4, R0
0x6d44e ADDS            R1, R7, #2
0x6d450 MOVS            R2, #1
0x6d452 ADDS            R0, #3
0x6d454 BL              sub_6EAD2
0x6d458 LDR             R1, [SP,#0x74+var_6C]
0x6d45a LDR             R3, [R6]
0x6d45c ADDS            R3, R1, R3
0x6d45e ADDS            R3, #0xA0
0x6d460 LDR             R0, [R3]
0x6d462 ADDS            R0, R4, R0
0x6d464 ADDS            R1, R7, #3
0x6d466 MOVS            R2, #2
0x6d468 ADDS            R0, #4
0x6d46a BL              sub_6EAD2
0x6d46e LDR             R2, [SP,#0x74+var_6C]
0x6d470 LDR             R3, [R6]
0x6d472 ADDS            R3, R2, R3
0x6d474 ADDS            R3, #0xA0
0x6d476 LDR             R0, [R3]
0x6d478 ADDS            R0, R4, R0
0x6d47a ADDS            R1, R7, #5
0x6d47c MOVS            R2, #1
0x6d47e ADDS            R0, #6
0x6d480 BL              sub_6EAD2
0x6d484 LDR             R1, [SP,#0x74+var_6C]
0x6d486 LDR             R3, [R6]
0x6d488 ADDS            R3, R1, R3
0x6d48a ADDS            R3, #0xA0
0x6d48c LDR             R3, [R3]
0x6d48e ADDS            R4, R4, R3
0x6d490 ADDS            R4, #7
0x6d492 ADDS            R1, R7, #6
0x6d494 MOVS            R2, #1
0x6d496 MOVS            R0, R4
0x6d498 BL              sub_6EAD2
0x6d49c LDR             R2, [SP,#0x74+var_3C]
0x6d49e ADDS            R7, #7
0x6d4a0 ADDS            R2, #1
0x6d4a2 LDR             R6, =dword_1501D90
0x6d4a4 LDR             R1, [SP,#0x74+var_6C]
0x6d4a6 LDR             R3, [R6]
0x6d4a8 STR             R2, [SP,#0x74+var_3C]
0x6d4aa ADDS            R2, R1, R3
0x6d4ac MOVS            R3, R2
0x6d4ae ADDS            R3, #0x98
0x6d4b0 LDRB            R3, [R3]
0x6d4b2 LDR             R1, [SP,#0x74+var_3C]
0x6d4b4 CMP             R1, R3
0x6d4b6 BLT             loc_6D414
0x6d4b8 LDR             R2, [SP,#0x74+var_40]
0x6d4ba LDR             R3, [SP,#0x74+var_6C]
0x6d4bc ADDS            R2, #1
0x6d4be ADDS            R3, #0xC
0x6d4c0 STR             R2, [SP,#0x74+var_40]
0x6d4c2 STR             R3, [SP,#0x74+var_6C]
0x6d4c4 CMP             R2, #2
0x6d4c6 BEQ             loc_6D4CA
0x6d4c8 B               loc_6D39A
0x6d4ca MOV             R3, SP
0x6d4cc MOVS            R2, #0
0x6d4ce ADDS            R3, #0x73 ; 's'
0x6d4d0 STRB            R2, [R3]
0x6d4d2 STR             R2, [SP,#0x74+var_44]
0x6d4d4 STR             R2, [SP,#0x74+var_68]
0x6d4d6 MOV             R4, SP
0x6d4d8 ADDS            R4, #0x73 ; 's'
0x6d4da MOVS            R1, R7
0x6d4dc MOVS            R2, #1
0x6d4de MOVS            R0, R4
0x6d4e0 LDR             R3, =unk_140327C
0x6d4e2 BL              sub_6EACE
0x6d4e6 LDRB            R2, [R4]
0x6d4e8 ADDS            R7, #1
0x6d4ea CMP             R2, #0
0x6d4ec BNE             loc_6D4F0
0x6d4ee B               loc_6D652
0x6d4f0 LDR             R6, =dword_1501D90
0x6d4f2 LDR             R1, [SP,#0x74+var_68]
0x6d4f4 LDR             R3, [R6]
0x6d4f6 ADDS            R3, R1, R3
0x6d4f8 ADDS            R3, #0xB0
0x6d4fa STRB            R2, [R3]
0x6d4fc LDR             R4, [R6]
0x6d4fe ADDS            R4, R1, R4
0x6d500 MOVS            R3, R4
0x6d502 ADDS            R3, #0xB0
0x6d504 LDRB            R3, [R3]
0x6d506 LSLS            R5, R3, #2
0x6d508 ADDS            R5, R5, R3
0x6d50a LSLS            R5, R5, #2
0x6d50c LDR             R3, =unk_14032EC
0x6d50e ADDS            R0, R5, #2
0x6d510 BL              sub_6EACE
0x6d514 LDR             R3, [R6]
0x6d516 LDR             R2, [SP,#0x74+var_68]
0x6d518 ADDS            R4, #0xB4
0x6d51a STR             R0, [R4]
0x6d51c ADDS            R3, R2, R3
0x6d51e MOVS            R2, R3
0x6d520 ADDS            R3, #0xB4
0x6d522 LDR             R0, [R3]
0x6d524 ADDS            R2, #0xB8
0x6d526 STR             R0, [R2]
0x6d528 LDR             R3, =unk_140329C
0x6d52a MOVS            R1, #0
0x6d52c MOVS            R2, R5
0x6d52e BL              sub_6EACE
0x6d532 MOVS            R6, #0
0x6d534 MOVS            R3, #0
0x6d536 STR             R3, [SP,#0x74+var_38]
0x6d538 B               loc_6D63C
0x6d53a MOVS            R3, R2
0x6d53c ADDS            R3, #0xB8
0x6d53e LDR             R0, [R3]
0x6d540 ADDS            R0, R6, R0
0x6d542 LDR             R4, =unk_140327C
0x6d544 MOVS            R1, R7
0x6d546 MOVS            R2, #1
0x6d548 ADDS            R0, #1
0x6d54a BL              sub_6EAD0
0x6d54e LDR             R1, [SP,#0x74+var_68]
0x6d550 LDR             R3, [R5]
0x6d552 ADDS            R3, R1, R3
0x6d554 ADDS            R3, #0xB8
0x6d556 LDR             R0, [R3]
0x6d558 ADDS            R0, R6, R0
0x6d55a ADDS            R1, R7, #1
0x6d55c MOVS            R2, #1
0x6d55e ADDS            R0, #2
0x6d560 BL              sub_6EAD0
0x6d564 LDR             R2, [SP,#0x74+var_68]
0x6d566 LDR             R3, [R5]
0x6d568 ADDS            R3, R2, R3
0x6d56a ADDS            R3, #0xB8
0x6d56c LDR             R0, [R3]
0x6d56e ADDS            R0, R6, R0
0x6d570 ADDS            R1, R7, #2
0x6d572 MOVS            R2, #1
0x6d574 ADDS            R0, #3
0x6d576 BL              sub_6EAD0
0x6d57a LDR             R1, [SP,#0x74+var_68]
0x6d57c LDR             R3, [R5]
0x6d57e ADDS            R3, R1, R3
0x6d580 ADDS            R3, #0xB8
0x6d582 LDR             R0, [R3]
0x6d584 ADDS            R0, R6, R0
0x6d586 ADDS            R1, R7, #3
0x6d588 MOVS            R2, #1
0x6d58a ADDS            R0, #4
0x6d58c BL              sub_6EAD0
0x6d590 LDR             R2, [SP,#0x74+var_68]
0x6d592 LDR             R3, [R5]
0x6d594 ADDS            R3, R2, R3
0x6d596 ADDS            R3, #0xB8
0x6d598 LDR             R0, [R3]
0x6d59a ADDS            R0, R6, R0
0x6d59c ADDS            R1, R7, #4
0x6d59e MOVS            R2, #2
0x6d5a0 ADDS            R0, #6
0x6d5a2 BL              sub_6EAD0
0x6d5a6 LDR             R1, [SP,#0x74+var_68]
0x6d5a8 LDR             R3, [R5]
0x6d5aa ADDS            R3, R1, R3
0x6d5ac ADDS            R3, #0xB8
0x6d5ae LDR             R0, [R3]
0x6d5b0 ADDS            R0, R6, R0
0x6d5b2 ADDS            R1, R7, #6
0x6d5b4 MOVS            R2, #1
0x6d5b6 ADDS            R0, #8
0x6d5b8 BL              sub_6EAD0
0x6d5bc LDR             R2, [SP,#0x74+var_68]
0x6d5be LDR             R3, [R5]
0x6d5c0 ADDS            R3, R2, R3
0x6d5c2 ADDS            R3, #0xB8
0x6d5c4 LDR             R0, [R3]
0x6d5c6 ADDS            R0, R6, R0
0x6d5c8 ADDS            R1, R7, #7
0x6d5ca MOVS            R2, #1
0x6d5cc ADDS            R0, #9
0x6d5ce BL              sub_6EAD0
0x6d5d2 LDR             R1, [SP,#0x74+var_68]
0x6d5d4 LDR             R3, [R5]
0x6d5d6 ADDS            R3, R1, R3
0x6d5d8 ADDS            R3, #0xB8
0x6d5da LDR             R0, [R3]
0x6d5dc MOVS            R1, R7
0x6d5de ADDS            R0, R6, R0
0x6d5e0 ADDS            R1, #8
0x6d5e2 MOVS            R2, #1
0x6d5e4 ADDS            R0, #0xC
0x6d5e6 BL              sub_6EAD0
0x6d5ea LDR             R2, [SP,#0x74+var_68]
0x6d5ec LDR             R3, [R5]
0x6d5ee ADDS            R3, R2, R3
0x6d5f0 ADDS            R3, #0xB8
0x6d5f2 LDR             R0, [R3]
0x6d5f4 MOVS            R1, R7
0x6d5f6 ADDS            R0, R6, R0
0x6d5f8 ADDS            R1, #9
0x6d5fa MOVS            R2, #2
0x6d5fc ADDS            R0, #0xE
0x6d5fe BL              sub_6EAD0
0x6d602 LDR             R1, [SP,#0x74+var_68]
0x6d604 LDR             R3, [R5]
0x6d606 ADDS            R3, R1, R3
0x6d608 ADDS            R3, #0xB8
0x6d60a LDR             R0, [R3]
0x6d60c MOVS            R1, R7
0x6d60e ADDS            R0, R6, R0
0x6d610 ADDS            R1, #0xB
0x6d612 MOVS            R2, #2
0x6d614 ADDS            R0, #0x10
0x6d616 BL              sub_6EAD0
0x6d61a LDR             R2, [SP,#0x74+var_68]
0x6d61c LDR             R3, [R5]
0x6d61e ADDS            R3, R2, R3
0x6d620 ADDS            R3, #0xB8
0x6d622 LDR             R0, [R3]
0x6d624 MOVS            R1, R7
0x6d626 ADDS            R0, R6, R0
0x6d628 ADDS            R0, #0x12
0x6d62a ADDS            R1, #0xD
0x6d62c MOVS            R2, #2
0x6d62e BL              sub_6EAD0
0x6d632 LDR             R3, [SP,#0x74+var_38]
0x6d634 ADDS            R3, #1
0x6d636 STR             R3, [SP,#0x74+var_38]
0x6d638 ADDS            R7, #0xF
0x6d63a ADDS            R6, #0x14
0x6d63c LDR             R5, =dword_1501D90
0x6d63e LDR             R1, [SP,#0x74+var_68]
0x6d640 LDR             R3, [R5]
0x6d642 ADDS            R2, R1, R3
0x6d644 MOVS            R3, R2
0x6d646 ADDS            R3, #0xB0
0x6d648 LDRB            R3, [R3]
0x6d64a LDR             R1, [SP,#0x74+var_38]
0x6d64c CMP             R1, R3
0x6d64e BGE             loc_6D652
0x6d650 B               loc_6D53A
0x6d652 LDR             R2, [SP,#0x74+var_44]
0x6d654 LDR             R3, [SP,#0x74+var_68]
0x6d656 ADDS            R2, #1
0x6d658 ADDS            R3, #0xC
0x6d65a STR             R2, [SP,#0x74+var_44]
0x6d65c STR             R3, [SP,#0x74+var_68]
0x6d65e CMP             R2, #5
0x6d660 BEQ             loc_6D664
0x6d662 B               loc_6D4D6
0x6d664 LDR             R5, =dword_1501D90
0x6d666 LDR             R0, [R5]
0x6d668 MOVS            R1, R7
0x6d66a LDR             R3, =unk_140327C
0x6d66c ADDS            R0, #0xEC
0x6d66e MOVS            R2, #1
0x6d670 BL              sub_6EACE
0x6d674 ADDS            R6, R7, #1
0x6d676 LDR             R7, [R5]
0x6d678 MOVS            R3, R7
0x6d67a ADDS            R3, #0xEC
0x6d67c LDRB            R3, [R3]
0x6d67e CMP             R3, #0
0x6d680 BEQ             loc_6D73C
0x6d682 LSLS            R4, R3, #1
0x6d684 ADDS            R4, R4, R3
0x6d686 LSLS            R4, R4, #2
0x6d688 LDR             R3, =unk_14032EC
0x6d68a ADDS            R0, R4, #2
0x6d68c BL              sub_6EACE
0x6d690 MOVS            R3, R7
0x6d692 ADDS            R3, #0xF0
0x6d694 STR             R0, [R3]
0x6d696 LDR             R3, [R5]
0x6d698 MOVS            R2, R3
0x6d69a ADDS            R3, #0xF0
0x6d69c LDR             R0, [R3]
0x6d69e ADDS            R2, #0xF4
0x6d6a0 STR             R0, [R2]
0x6d6a2 MOVS            R1, #0
0x6d6a4 MOVS            R2, R4
0x6d6a6 LDR             R3, =unk_140329C
0x6d6a8 BL              sub_6EACE
0x6d6ac MOVS            R7, #0
0x6d6ae MOVS            R1, #0
0x6d6b0 STR             R1, [SP,#0x74+var_34]
0x6d6b2 B               loc_6D72C
0x6d6b4 MOVS            R3, R2
0x6d6b6 ADDS            R3, #0xF4
0x6d6b8 LDR             R0, [R3]
0x6d6ba ADDS            R0, R7, R0
0x6d6bc LDR             R4, =unk_140327C
0x6d6be MOVS            R1, R6
0x6d6c0 MOVS            R2, #1
0x6d6c2 ADDS            R0, #1
0x6d6c4 BL              sub_6EAD0
0x6d6c8 LDR             R3, [R5]
0x6d6ca ADDS            R3, #0xF4
0x6d6cc LDR             R0, [R3]
0x6d6ce ADDS            R0, R7, R0
0x6d6d0 ADDS            R1, R6, #1
0x6d6d2 MOVS            R2, #1
0x6d6d4 ADDS            R0, #2
0x6d6d6 BL              sub_6EAD0
0x6d6da LDR             R3, [R5]
0x6d6dc ADDS            R3, #0xF4
0x6d6de LDR             R0, [R3]
0x6d6e0 ADDS            R0, R7, R0
0x6d6e2 ADDS            R1, R6, #2
0x6d6e4 MOVS            R2, #2
0x6d6e6 ADDS            R0, #4
0x6d6e8 BL              sub_6EAD0
0x6d6ec LDR             R3, [R5]
0x6d6ee ADDS            R3, #0xF4
0x6d6f0 LDR             R0, [R3]
0x6d6f2 ADDS            R0, R7, R0
0x6d6f4 ADDS            R1, R6, #4
0x6d6f6 MOVS            R2, #1
0x6d6f8 ADDS            R0, #6
0x6d6fa BL              sub_6EAD0
0x6d6fe LDR             R3, [R5]
0x6d700 ADDS            R3, #0xF4
0x6d702 LDR             R0, [R3]
0x6d704 ADDS            R0, R7, R0
0x6d706 ADDS            R1, R6, #5
0x6d708 MOVS            R2, #1
0x6d70a ADDS            R0, #7
0x6d70c BL              sub_6EAD0
0x6d710 LDR             R3, [R5]
0x6d712 ADDS            R3, #0xF4
0x6d714 LDR             R0, [R3]
0x6d716 ADDS            R0, R7, R0
0x6d718 ADDS            R1, R6, #6
0x6d71a MOVS            R2, #1
0x6d71c ADDS            R0, #8
0x6d71e BL              sub_6EAD0
0x6d722 LDR             R2, [SP,#0x74+var_34]
0x6d724 ADDS            R2, #1
0x6d726 STR             R2, [SP,#0x74+var_34]
0x6d728 ADDS            R6, #7
0x6d72a ADDS            R7, #0xC
0x6d72c LDR             R5, =dword_1501D90
0x6d72e LDR             R2, [R5]
0x6d730 MOVS            R3, R2
0x6d732 ADDS            R3, #0xEC
0x6d734 LDRB            R3, [R3]
0x6d736 LDR             R1, [SP,#0x74+var_34]
0x6d738 CMP             R1, R3
0x6d73a BLT             loc_6D6B4
0x6d73c LDR             R5, =dword_1501D90
0x6d73e LDR             R0, [R5]
0x6d740 LDR             R3, =unk_140327C
0x6d742 ADDS            R0, #0xF8
0x6d744 MOVS            R1, R6
0x6d746 MOVS            R2, #1
0x6d748 BL              sub_6EACE
0x6d74c LDR             R7, [R5]
0x6d74e MOVS            R3, R7
0x6d750 ADDS            R3, #0xF8
0x6d752 LDRB            R4, [R3]
0x6d754 CMP             R4, #0
0x6d756 BEQ             loc_6D80E
0x6d758 LSLS            R4, R4, #3
0x6d75a LDR             R3, =unk_14032EC
0x6d75c ADDS            R0, R4, #2
0x6d75e BL              sub_6EACE
0x6d762 MOVS            R3, R7
0x6d764 ADDS            R3, #0xFC
0x6d766 STR             R0, [R3]
0x6d768 LDR             R3, [R5]
0x6d76a ADDS            R3, #0xFC
0x6d76c LDR             R0, [R3]
0x6d76e MOVS            R2, R4
0x6d770 STR             R0, [R3,#4]
0x6d772 MOVS            R1, #0
0x6d774 LDR             R3, =unk_140329C
0x6d776 BL              sub_6EACE
0x6d77a ADDS            R6, #1
0x6d77c MOVS            R2, #0
0x6d77e STR             R2, [SP,#0x74+var_30]
0x6d780 B               loc_6D7FE
0x6d794 LDR             R3, [SP,#0x74+var_30]
0x6d796 LSLS            R4, R3, #3
0x6d798 MOVS            R3, R2
0x6d79a ADDS            R3, #0xFC
0x6d79c LDR             R0, [R3,#4]
0x6d79e ADDS            R0, R4, R0
0x6d7a0 LDR             R5, =unk_140327C
0x6d7a2 MOVS            R1, R6
0x6d7a4 MOVS            R2, #1
0x6d7a6 ADDS            R0, #1
0x6d7a8 BL              sub_6EAD2
0x6d7ac LDR             R3, [R7]
0x6d7ae ADDS            R3, #0xFC
0x6d7b0 LDR             R0, [R3,#4]
0x6d7b2 ADDS            R0, R4, R0
0x6d7b4 ADDS            R1, R6, #1
0x6d7b6 MOVS            R2, #1
0x6d7b8 ADDS            R0, #2
0x6d7ba BL              sub_6EAD2
0x6d7be LDR             R3, [R7]
0x6d7c0 ADDS            R3, #0xFC
0x6d7c2 LDR             R0, [R3,#4]
0x6d7c4 ADDS            R0, R4, R0
0x6d7c6 ADDS            R1, R6, #2
0x6d7c8 MOVS            R2, #2
0x6d7ca ADDS            R0, #4
0x6d7cc BL              sub_6EAD2
0x6d7d0 LDR             R3, [R7]
0x6d7d2 ADDS            R3, #0xFC
0x6d7d4 LDR             R0, [R3,#4]
0x6d7d6 ADDS            R0, R4, R0
0x6d7d8 ADDS            R1, R6, #4
0x6d7da MOVS            R2, #1
0x6d7dc ADDS            R0, #6
0x6d7de BL              sub_6EAD2
0x6d7e2 LDR             R3, [R7]
0x6d7e4 ADDS            R3, #0xFC
0x6d7e6 LDR             R3, [R3,#4]
0x6d7e8 ADDS            R4, R4, R3
0x6d7ea ADDS            R4, #7
0x6d7ec ADDS            R1, R6, #5
0x6d7ee MOVS            R0, R4
0x6d7f0 MOVS            R2, #1
0x6d7f2 BL              sub_6EAD2
0x6d7f6 LDR             R1, [SP,#0x74+var_30]
0x6d7f8 ADDS            R1, #1
0x6d7fa STR             R1, [SP,#0x74+var_30]
0x6d7fc ADDS            R6, #6
0x6d7fe LDR             R7, =dword_1501D90
0x6d800 LDR             R2, [R7]
0x6d802 MOVS            R3, R2
0x6d804 ADDS            R3, #0xF8
0x6d806 LDRB            R3, [R3]
0x6d808 LDR             R1, [SP,#0x74+var_30]
0x6d80a CMP             R1, R3
0x6d80c BLT             loc_6D794
0x6d80e LDR             R2, [SP,#0x74+var_5C]
0x6d810 CMP             R2, #0
0x6d812 BEQ             loc_6D81C
0x6d814 MOVS            R0, R2
0x6d816 LDR             R3, =unk_14032FC
0x6d818 BL              sub_6EACE
0x6d81c LDR             R0, [SP,#0x74+var_60]
0x6d81e LDR             R3, =unk_14032FC
0x6d820 BL              sub_6EACE
0x6d824 ADD             SP, SP, #0x74 ; 't'
0x6d826 POP             {R4-R7}
0x6d828 POP             {R0}
0x6d82a BX              R0