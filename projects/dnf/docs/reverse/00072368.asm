0x72368 PUSH            {R4-R7,LR}
0x7236a SUB             SP, SP, #0x24
0x7236c LDR             R5, [SP,#0x24+arg_0]
0x7236e STR             R1, [SP,#0x24+var_1C]
0x72370 STR             R0, [SP,#0x24+var_18]
0x72372 STR             R3, [SP,#0x24+var_20]
0x72374 MOVS            R0, R5
0x72376 LDR             R3, =0x8B221
0x72378 MOVS            R6, R2
0x7237a BL              sub_75958
0x7237e LDR             R3, =0x8B229
0x72380 STR             R0, [SP,#0x24+var_10]
0x72382 MOVS            R0, R5
0x72384 BL              sub_75958
0x72388 LDR             R3, =0x8B1E9
0x7238a STR             R0, [SP,#0x24+var_C]
0x7238c MOVS            R0, R5
0x7238e BL              sub_75958
0x72392 LDR             R3, =0x8B201
0x72394 STR             R0, [SP,#0x24+var_8]
0x72396 MOVS            R0, R5
0x72398 BL              sub_75958
0x7239c LDR             R3, =dword_1536C2C
0x7239e LDR             R3, [R3]
0x723a0 STR             R0, [SP,#0x24+var_4]
0x723a2 LSLS            R1, R3, #0x1F
0x723a4 BPL             loc_723C0
0x723a6 LDR             R3, =0x8B1D1
0x723a8 MOVS            R0, R5
0x723aa BL              sub_75958
0x723ae LDR             R3, =0x8B185
0x723b0 MOVS            R4, R0
0x723b2 MOVS            R0, R5
0x723b4 BL              sub_75958
0x723b8 LDR             R2, [SP,#0x24+var_1C]
0x723ba SUBS            R4, R4, R0
0x723bc ADDS            R2, R2, R4
0x723be STR             R2, [SP,#0x24+var_1C]
0x723c0 MOVS            R3, #0
0x723c2 MOVS            R7, R6
0x723c4 STR             R3, [SP,#0x24+var_14]
0x723c6 B               loc_72450
0x723c8 LDRB            R3, [R7]
0x723ca LDRB            R1, [R7,#1]
0x723cc MOVS            R5, R3
0x723ce MOVS            R6, R1
0x723d0 LSRS            R0, R3, #4
0x723d2 LSRS            R3, R1, #4
0x723d4 LDR             R1, [SP,#0x24+var_10]
0x723d6 MOVS            R2, #0xF
0x723d8 MOVS            R4, R3
0x723da ANDS            R5, R2
0x723dc ANDS            R4, R2
0x723de ANDS            R6, R2
0x723e0 CMP             R1, #0
0x723e2 BEQ             loc_7240A
0x723e4 LDR             R2, [SP,#0x24+var_C]
0x723e6 CMP             R2, #0
0x723e8 BEQ             loc_7240A
0x723ea ADDS            R2, R0, R4
0x723ec LDR             R4, [SP,#0x24+var_10]
0x723ee LSLS            R3, R0, #1
0x723f0 ADDS            R1, R5, R6
0x723f2 LDRSH           R0, [R3,R4]
0x723f4 LDR             R4, [SP,#0x24+var_C]
0x723f6 LSLS            R3, R5, #1
0x723f8 LDRSH           R5, [R3,R4]
0x723fa LDR             R4, [SP,#0x24+var_10]
0x723fc LSLS            R2, R2, #1
0x723fe LDRSH           R3, [R2,R4]
0x72400 LDR             R2, [SP,#0x24+var_C]
0x72402 LSLS            R1, R1, #1
0x72404 SUBS            R4, R3, R0
0x72406 LDRSH           R3, [R1,R2]
0x72408 SUBS            R6, R3, R5
0x7240a CMP             R4, #0
0x7240c BLE             loc_72448
0x7240e CMP             R6, #0
0x72410 BLE             loc_72448
0x72412 LDR             R3, =word_15369FC
0x72414 LDRH            R2, [R3]
0x72416 LSLS            R1, R2, #0x1F
0x72418 BPL             loc_7242A
0x7241a LDR             R3, [SP,#0x24+var_8]
0x7241c LDR             R1, [SP,#0x24+var_4]
0x7241e SUBS            R0, R0, R3
0x72420 LSLS            R3, R3, #1
0x72422 ADDS            R4, R4, R3
0x72424 LSLS            R3, R1, #1
0x72426 SUBS            R5, R5, R1
0x72428 ADDS            R6, R6, R3
0x7242a LSLS            R3, R2, #0x1E
0x7242c BPL             loc_72432
0x7242e LDR             R1, [SP,#0x24+var_8]
0x72430 ADDS            R4, R4, R1
0x72432 LDR             R2, [SP,#0x24+var_18]
0x72434 LDR             R3, [SP,#0x24+var_1C]
0x72436 ADDS            R0, R2, R0
0x72438 LDR             R2, [SP,#0x24+arg_4]
0x7243a ADDS            R1, R3, R5
0x7243c STR             R2, [SP,#0x24+var_24]
0x7243e MOVS            R3, R6
0x72440 MOVS            R2, R4
0x72442 LDR             R4, =(sub_6A854+1)
0x72444 BL              sub_7595A
0x72448 LDR             R3, [SP,#0x24+var_14]
0x7244a ADDS            R3, #2
0x7244c STR             R3, [SP,#0x24+var_14]
0x7244e ADDS            R7, #2
0x72450 LDR             R4, [SP,#0x24+var_14]
0x72452 LDR             R6, [SP,#0x24+var_20]
0x72454 CMP             R4, R6
0x72456 BLT             loc_723C8
0x72458 ADD             SP, SP, #0x24 ; '$'
0x7245a POP             {R4-R7}
0x7245c POP             {R0}
0x7245e BX              R0