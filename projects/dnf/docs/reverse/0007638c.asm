0x7638c PUSH            {R4-R7,LR}
0x7638e LDRH            R2, [R0]
0x76390 SUB             SP, SP, #0x18
0x76392 STR             R2, [SP,#0x18+var_18]
0x76394 LDRH            R3, [R0,#8]
0x76396 STR             R3, [SP,#0x18+var_14]
0x76398 LDRH            R3, [R0,#2]
0x7639a LDRH            R2, [R0,#4]
0x7639c STR             R3, [SP,#0x18+var_10]
0x7639e MOV             R12, R2
0x763a0 LDR             R3, [R1]
0x763a2 LDRH            R2, [R0,#6]
0x763a4 STR             R3, [SP,#0x18+var_8]
0x763a6 STR             R2, [SP,#0x18+var_C]
0x763a8 LDR             R2, [R1,#8]
0x763aa LDRH            R5, [R1,#0x10]
0x763ac STR             R2, [SP,#0x18+var_4]
0x763ae LDR             R6, [R1,#4]
0x763b0 MOVS            R3, #0xC
0x763b2 LDRSH           R4, [R0,R3]
0x763b4 LDR             R7, [R1,#0xC]
0x763b6 MOVS            R3, #0x14
0x763b8 LDRSH           R2, [R1,R3]
0x763ba MOVS            R1, #0x10
0x763bc LDRSH           R3, [R0,R1]
0x763be SUBS            R3, R4, R3
0x763c0 CMP             R3, R2
0x763c2 BGT             loc_76476
0x763c4 MOVS            R1, #0x12
0x763c6 LDRSH           R3, [R0,R1]
0x763c8 ADDS            R3, R4, R3
0x763ca CMP             R2, R3
0x763cc BGT             loc_76476
0x763ce LDR             R3, [SP,#0x18+var_14]
0x763d0 MOV             R0, R12
0x763d2 ADDS            R2, R3, R0
0x763d4 LSLS            R2, R2, #0x10
0x763d6 LSRS            R2, R2, #0x10
0x763d8 LDR             R0, [SP,#0x18+var_8]
0x763da MOV             R12, R2
0x763dc LSLS            R2, R5, #0x10
0x763de ASRS            R2, R2, #0x10
0x763e0 ADDS            R1, R0, R2
0x763e2 LDR             R0, [SP,#0x18+var_4]
0x763e4 ADDS            R4, R0, R2
0x763e6 LDR             R2, [SP,#0x18+var_18]
0x763e8 ADDS            R3, R3, R2
0x763ea LSLS            R3, R3, #0x10
0x763ec ASRS            R0, R3, #0x10
0x763ee CMP             R0, R1
0x763f0 BGE             loc_76412
0x763f2 CMP             R0, R4
0x763f4 BGE             loc_76412
0x763f6 MOV             R2, R12
0x763f8 LSLS            R3, R2, #0x10
0x763fa ASRS            R3, R3, #0x10
0x763fc CMP             R3, R1
0x763fe BGE             loc_76412
0x76400 MOVS            R2, #0
0x76402 CMP             R3, R4
0x76404 BGE             loc_76408
0x76406 MOVS            R2, #1
0x76408 MOVS            R3, #1
0x7640a EORS            R3, R2
0x7640c LSLS            R3, R3, #0x18
0x7640e LSRS            R5, R3, #0x18
0x76410 B               loc_76414
0x76412 MOVS            R5, #1
0x76414 CMP             R0, R1
0x76416 BLE             loc_7642C
0x76418 CMP             R0, R4
0x7641a BLE             loc_7642C
0x7641c MOV             R0, R12
0x7641e LSLS            R3, R0, #0x10
0x76420 ASRS            R2, R3, #0x10
0x76422 CMP             R2, R1
0x76424 BLE             loc_7642C
0x76426 CMP             R2, R4
0x76428 BLE             loc_7642C
0x7642a MOVS            R5, #0
0x7642c LDR             R1, [SP,#0x18+var_10]
0x7642e LSLS            R3, R1, #0x10
0x76430 ASRS            R1, R3, #0x10
0x76432 CMP             R1, R6
0x76434 BGE             loc_76452
0x76436 CMP             R1, R7
0x76438 BGE             loc_76452
0x7643a LDR             R0, [SP,#0x18+var_C]
0x7643c LSLS            R3, R0, #0x10
0x7643e ASRS            R3, R3, #0x10
0x76440 MOVS            R2, #0
0x76442 CMP             R3, R6
0x76444 BGE             loc_76448
0x76446 MOVS            R2, #1
0x76448 MOVS            R3, #1
0x7644a EORS            R3, R2
0x7644c LSLS            R3, R3, #0x18
0x7644e LSRS            R2, R3, #0x18
0x76450 B               loc_76454
0x76452 MOVS            R2, #1
0x76454 CMP             R1, R6
0x76456 BLE             loc_7646C
0x76458 CMP             R1, R7
0x7645a BLE             loc_7646C
0x7645c LDR             R1, [SP,#0x18+var_C]
0x7645e LSLS            R3, R1, #0x10
0x76460 ASRS            R3, R3, #0x10
0x76462 CMP             R3, R6
0x76464 BLE             loc_7646C
0x76466 CMP             R3, R7
0x76468 BLE             loc_7646C
0x7646a MOVS            R2, #0
0x7646c CMP             R5, #0
0x7646e BEQ             loc_76476
0x76470 NEGS            R3, R2
0x76472 LSRS            R0, R3, #0x1F
0x76474 B               loc_76478
0x76476 MOVS            R0, #0
0x76478 ADD             SP, SP, #0x18
0x7647a POP             {R4-R7}
0x7647c POP             {R1}
0x7647e BX              R1