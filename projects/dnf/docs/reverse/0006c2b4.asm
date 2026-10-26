0x6c2b4 PUSH            {R4-R7,LR}
0x6c2b6 SUB             SP, SP, #0x3C
0x6c2b8 MOV             R4, SP
0x6c2ba LSLS            R2, R0, #0x18
0x6c2bc ADDS            R4, #0x16
0x6c2be LSRS            R2, R2, #0x18
0x6c2c0 LDR             R3, =unk_14032CC
0x6c2c2 MOVS            R7, R1
0x6c2c4 MOVS            R0, R4
0x6c2c6 LDR             R1, =aDSnd; "%d.snd"
0x6c2c8 BL              sub_6C778
0x6c2cc MOVS            R0, R4
0x6c2ce LDR             R3, =0x6CBE1
0x6c2d0 BL              sub_6C778
0x6c2d4 STR             R0, [SP,#0x3C+var_38]
0x6c2d6 CMP             R0, #0
0x6c2d8 BEQ             loc_6C3CA
0x6c2da MOVS            R1, R0
0x6c2dc LDR             R5, =unk_140327C
0x6c2de ADDS            R1, #2
0x6c2e0 MOVS            R2, #4
0x6c2e2 ADD             R0, SP, #0x3C+var_8
0x6c2e4 BL              sub_6C77C
0x6c2e8 LDR             R1, [SP,#0x3C+var_38]
0x6c2ea MOVS            R2, #4
0x6c2ec ADDS            R1, #6
0x6c2ee ADD             R0, SP, #0x3C+var_4
0x6c2f0 BL              sub_6C77C
0x6c2f4 LDR             R0, [SP,#0x3C+var_8]
0x6c2f6 LDR             R6, =unk_14032EC
0x6c2f8 ADDS            R0, #2
0x6c2fa BL              sub_6C77E
0x6c2fe STR             R0, [SP,#0x3C+var_34]
0x6c300 LDR             R0, [SP,#0x3C+var_38]
0x6c302 MOVS            R1, #6
0x6c304 LDR             R2, [SP,#0x3C+var_8]
0x6c306 LDR             R3, [SP,#0x3C+var_4]
0x6c308 STR             R1, [SP,#0x3C+var_3C]
0x6c30a LDR             R4, =(sub_692B4+1)
0x6c30c LDR             R1, [SP,#0x3C+var_34]
0x6c30e ADDS            R0, #0xA
0x6c310 BL              sub_6C77A
0x6c314 MOVS            R3, #0
0x6c316 STR             R3, [R7]
0x6c318 LDR             R1, [SP,#0x3C+var_34]
0x6c31a MOVS            R2, #1
0x6c31c MOVS            R0, R7
0x6c31e BL              sub_6C77C
0x6c322 LDR             R0, [R7]
0x6c324 LSLS            R0, R0, #4
0x6c326 ADDS            R0, #2
0x6c328 LDR             R4, [SP,#0x3C+var_34]
0x6c32a BL              sub_6C77E
0x6c32e LDR             R2, [R7]
0x6c330 STR             R0, [R7,#4]
0x6c332 LSLS            R2, R2, #4
0x6c334 STR             R0, [R7,#8]
0x6c336 MOVS            R1, #0
0x6c338 LDR             R3, =unk_140329C
0x6c33a BL              sub_6C778
0x6c33e ADDS            R4, #1
0x6c340 MOVS            R2, #0
0x6c342 STR             R2, [SP,#0x3C+var_30]
0x6c344 B               loc_6C3AC
0x6c346 LDR             R3, [SP,#0x3C+var_30]
0x6c348 LDR             R0, [R7,#8]
0x6c34a LSLS            R5, R3, #4
0x6c34c ADDS            R0, R5, R0
0x6c34e MOVS            R1, R4
0x6c350 LDR             R6, =unk_140327C
0x6c352 MOVS            R2, #1
0x6c354 ADDS            R0, #8
0x6c356 BL              sub_6C77E
0x6c35a LDR             R0, [R7,#8]
0x6c35c ADDS            R0, R5, R0
0x6c35e ADDS            R1, R4, #1
0x6c360 MOVS            R2, #4
0x6c362 ADDS            R4, #5
0x6c364 ADDS            R0, #4
0x6c366 BL              sub_6C77E
0x6c36a STR             R4, [SP,#0x3C+var_2C]
0x6c36c LDR             R4, [R7,#8]
0x6c36e ADDS            R4, R5, R4
0x6c370 LDR             R0, [R4,#4]
0x6c372 LDR             R3, =unk_14032EC
0x6c374 ADDS            R0, #2
0x6c376 BL              sub_6C778
0x6c37a LDR             R3, [R7,#8]
0x6c37c STR             R0, [R4]
0x6c37e ADDS            R3, R5, R3
0x6c380 LDR             R0, [R3]
0x6c382 LDR             R2, [R3,#4]
0x6c384 STR             R0, [R3,#0xC]
0x6c386 MOVS            R1, #0
0x6c388 LDR             R3, =unk_140329C
0x6c38a BL              sub_6C778
0x6c38e LDR             R3, [R7,#8]
0x6c390 ADDS            R3, R5, R3
0x6c392 LDR             R2, [R3,#4]
0x6c394 LDR             R0, [R3,#0xC]
0x6c396 LDR             R1, [SP,#0x3C+var_2C]
0x6c398 BL              sub_6C77E
0x6c39c LDR             R3, [R7,#8]
0x6c39e ADDS            R3, R3, R5
0x6c3a0 LDR             R3, [R3,#4]
0x6c3a2 LDR             R2, [SP,#0x3C+var_2C]
0x6c3a4 ADDS            R4, R2, R3
0x6c3a6 LDR             R3, [SP,#0x3C+var_30]
0x6c3a8 ADDS            R3, #1
0x6c3aa STR             R3, [SP,#0x3C+var_30]
0x6c3ac LDR             R3, [R7]
0x6c3ae LDR             R2, [SP,#0x3C+var_30]
0x6c3b0 CMP             R2, R3
0x6c3b2 BCC             loc_6C346
0x6c3b4 LDR             R3, [SP,#0x3C+var_34]
0x6c3b6 CMP             R3, #0
0x6c3b8 BEQ             loc_6C3C2
0x6c3ba MOVS            R0, R3
0x6c3bc LDR             R3, =unk_14032FC
0x6c3be BL              sub_6C778
0x6c3c2 LDR             R0, [SP,#0x3C+var_38]
0x6c3c4 LDR             R3, =unk_14032FC
0x6c3c6 BL              sub_6C778
0x6c3ca ADD             SP, SP, #0x3C ; '<'
0x6c3cc POP             {R4-R7}
0x6c3ce POP             {R0}
0x6c3d0 BX              R0