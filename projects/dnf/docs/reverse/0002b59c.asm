0x2b59c PUSH            {R4-R7,LR}
0x2b59e LDR             R5, =word_15332A0
0x2b5a0 MOVS            R3, #(byte_1533434 - 0x15332A0)
0x2b5a4 LDRB            R4, [R5,R3]; byte_1533434
0x2b5a6 SUB             SP, SP, #0xC
0x2b5a8 CMP             R4, #0
0x2b5aa BEQ             loc_2B68C
0x2b5ac LSLS            R4, R4, #3
0x2b5ae LDR             R3, =unk_14032EC
0x2b5b0 ADDS            R0, R4, #2
0x2b5b2 BL              sub_2BCB6
0x2b5b6 MOVS            R3, #(dword_1533454 - 0x15332A0)
0x2b5ba STR             R0, [R5,R3]; dword_1533454
0x2b5bc MOVS            R3, #(dword_1533458 - 0x15332A0)
0x2b5c0 STR             R0, [R5,R3]; dword_1533458
0x2b5c2 MOVS            R1, #0
0x2b5c4 MOVS            R2, R4
0x2b5c6 LDR             R3, =unk_140329C
0x2b5c8 BL              sub_2BCB6
0x2b5cc MOVS            R1, #0
0x2b5ce STR             R1, [SP,#0xC+var_4]
0x2b5d0 STR             R1, [SP,#0xC+var_C]
0x2b5d2 B               loc_2B67E
0x2b5d4 MOVS            R3, #0xDC
0x2b5d6 LDR             R2, [SP,#0xC+var_4]
0x2b5d8 LSLS            R3, R3, #1
0x2b5da LDR             R4, [R5,R3]; dword_1533458
0x2b5dc STR             R3, [SP,#0xC+var_8]
0x2b5de MOVS            R0, #0x26 ; '&'
0x2b5e0 LDR             R3, =unk_14032EC
0x2b5e2 LSLS            R6, R2, #3
0x2b5e4 BL              sub_2BCB6
0x2b5e8 LDR             R1, [SP,#0xC+var_8]
0x2b5ea ADDS            R4, R6, R4
0x2b5ec LDR             R3, [R5,R1]; dword_1533458
0x2b5ee STR             R0, [R4]
0x2b5f0 ADDS            R3, R6, R3
0x2b5f2 LDR             R0, [R3]
0x2b5f4 MOVS            R4, #0xCE
0x2b5f6 STR             R0, [R3,#4]
0x2b5f8 MOVS            R1, #0
0x2b5fa MOVS            R2, #0x24 ; '$'
0x2b5fc LDR             R3, =unk_140329C
0x2b5fe LSLS            R4, R4, #1
0x2b600 BL              sub_2BCB6
0x2b604 LDR             R3, [R5,R4]; dword_153343C
0x2b606 LDR             R2, [SP,#0xC+var_C]
0x2b608 ADDS            R1, R2, R3
0x2b60a LDRH            R7, [R1,#4]
0x2b60c LDR             R3, =0xA42D
0x2b60e CMP             R7, R3
0x2b610 BNE             loc_2B65C
0x2b612 LDR             R3, =dword_1501D90
0x2b614 LDR             R2, [R3]
0x2b616 LDR             R3, =0x1AE9
0x2b618 LDRB            R3, [R2,R3]
0x2b61a SUBS            R3, #3
0x2b61c LSLS            R3, R3, #0x18
0x2b61e LSRS            R3, R3, #0x18
0x2b620 CMP             R3, #1
0x2b622 BHI             loc_2B65C
0x2b624 LDR             R3, =(sub_1F2F0+1)
0x2b626 MOVS            R0, #0x16
0x2b628 BL              sub_2BCB6
0x2b62c LDR             R1, [SP,#0xC+var_8]
0x2b62e LSLS            R0, R0, #0x18
0x2b630 ASRS            R0, R0, #0x18
0x2b632 LDR             R2, [R5,R4]; dword_153343C
0x2b634 LDR             R3, [R5,R1]; dword_1533458
0x2b636 LDR             R4, =0x6EA61
0x2b638 CMP             R0, #2
0x2b63a BEQ             loc_2B64A
0x2b63c LDR             R1, [SP,#0xC+var_C]
0x2b63e ADDS            R3, R3, R6
0x2b640 LDR             R0, [R3,#4]
0x2b642 ADDS            R3, R2, R1
0x2b644 LDRH            R1, [R3,#4]
0x2b646 MOVS            R2, #1
0x2b648 B               loc_2B656
0x2b64a LDR             R1, [SP,#0xC+var_C]
0x2b64c ADDS            R3, R3, R6
0x2b64e ADDS            R2, R1, R2
0x2b650 LDRH            R1, [R2,#4]
0x2b652 LDR             R0, [R3,#4]
0x2b654 LDRB            R2, [R2,#6]
0x2b656 BL              sub_2BCB8
0x2b65a B               loc_2B672
0x2b65c LDR             R2, =word_15332A0
0x2b65e MOVS            R3, #(dword_1533458 - 0x15332A0)
0x2b662 LDR             R3, [R2,R3]; dword_1533458
0x2b664 ADDS            R3, R3, R6
0x2b666 LDR             R0, [R3,#4]
0x2b668 LDRB            R2, [R1,#6]
0x2b66a LDR             R3, =0x6EA61
0x2b66c MOVS            R1, R7
0x2b66e BL              sub_2BCB6
0x2b672 LDR             R2, [SP,#0xC+var_4]
0x2b674 LDR             R3, [SP,#0xC+var_C]
0x2b676 ADDS            R2, #1
0x2b678 ADDS            R3, #0x2C ; ','
0x2b67a STR             R2, [SP,#0xC+var_4]
0x2b67c STR             R3, [SP,#0xC+var_C]
0x2b67e LDR             R5, =word_15332A0
0x2b680 MOVS            R3, #(byte_1533434 - 0x15332A0)
0x2b684 LDRB            R3, [R5,R3]; byte_1533434
0x2b686 LDR             R1, [SP,#0xC+var_4]
0x2b688 CMP             R1, R3
0x2b68a BLT             loc_2B5D4
0x2b68c ADD             SP, SP, #0xC
0x2b68e POP             {R4-R7}
0x2b690 POP             {R0}
0x2b692 BX              R0