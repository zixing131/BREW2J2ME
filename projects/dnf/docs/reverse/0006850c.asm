0x6850c PUSH            {R4-R7,LR}
0x6850e SUB             SP, SP, #0x34
0x68510 STR             R3, [SP,#0x34+var_28]
0x68512 LDR             R3, [R0,#4]
0x68514 LDR             R3, [R3,#4]
0x68516 STR             R1, [SP,#0x34+var_24]
0x68518 LDR             R3, [R3,#4]
0x6851a LDR             R1, =0x8BFE9
0x6851c STR             R0, [SP,#0x34+var_20]
0x6851e STR             R3, [SP,#0x34+var_1C]
0x68520 STR             R2, [SP,#0x34+var_18]
0x68522 STR             R1, [SP,#0x34+var_34]
0x68524 B               loc_6861C
0x68526 LDR             R2, [SP,#0x34+var_18]
0x68528 SUBS            R2, #2
0x6852a STR             R2, [SP,#0x34+var_18]
0x6852c LDR             R1, [SP,#0x34+var_28]
0x6852e LDRB            R3, [R1]
0x68530 LDR             R2, [SP,#0x34+var_1C]
0x68532 LSLS            R3, R3, #1
0x68534 LDRH            R7, [R3,R2]
0x68536 LDR             R3, [SP,#0x34+var_20]
0x68538 LDR             R2, [R3]
0x6853a LDR             R3, [R2,#0x20]
0x6853c CMP             R7, R3
0x6853e BEQ             loc_68610
0x68540 LDR             R3, [SP,#0x34+var_18]
0x68542 LDR             R2, [R2,#0x24]
0x68544 LDRH            R1, [R3]
0x68546 LDR             R3, =0x7FFF
0x68548 CMP             R2, R3
0x6854a BNE             loc_68598
0x6854c MOVS            R4, #0xF8
0x6854e MOVS            R3, #0x1F
0x68550 LSLS            R4, R4, #2
0x68552 ANDS            R3, R1
0x68554 MOVS            R6, R1
0x68556 MOVS            R2, #0x1F
0x68558 ANDS            R2, R7
0x6855a ANDS            R6, R4
0x6855c STR             R3, [SP,#0x34+var_8]
0x6855e MOVS            R3, R7
0x68560 ANDS            R3, R4
0x68562 STR             R2, [SP,#0x34+var_4]
0x68564 SUBS            R2, R4, R6
0x68566 MOVS            R0, R3
0x68568 MULS            R0, R2
0x6856a MOVS            R1, R4
0x6856c LDR             R2, [SP,#0x34+var_34]
0x6856e BL              sub_68DCC
0x68572 LDR             R2, [SP,#0x34+var_8]
0x68574 MOVS            R1, #0x1F
0x68576 SUBS            R3, R1, R2
0x68578 LDR             R1, [SP,#0x34+var_4]
0x6857a ADDS            R5, R0, R6
0x6857c LDR             R2, [SP,#0x34+var_34]
0x6857e MOVS            R0, R1
0x68580 MULS            R0, R3
0x68582 MOVS            R1, #0x1F
0x68584 BL              sub_68DCC
0x68588 LDR             R3, [SP,#0x34+var_8]
0x6858a MOVS            R1, #0x1F
0x6858c ADDS            R0, R0, R3
0x6858e LDR             R2, [SP,#0x34+var_4]
0x68590 ANDS            R0, R1
0x68592 ANDS            R5, R4
0x68594 ORRS            R0, R2
0x68596 B               loc_6860A
0x68598 MOVS            R4, #0xF800
0x6859c MOVS            R3, R1
0x6859e ANDS            R3, R4
0x685a0 STR             R3, [SP,#0x34+var_14]
0x685a2 MOVS            R5, #0xFC
0x685a4 MOVS            R3, #0x1F
0x685a6 LSLS            R5, R5, #3
0x685a8 ANDS            R3, R1
0x685aa MOVS            R2, R1
0x685ac LDR             R1, [SP,#0x34+var_14]
0x685ae ANDS            R2, R5
0x685b0 STR             R3, [SP,#0x34+var_C]
0x685b2 MOVS            R3, R7
0x685b4 ANDS            R3, R4
0x685b6 STR             R2, [SP,#0x34+var_10]
0x685b8 SUBS            R2, R4, R1
0x685ba MOVS            R0, R3
0x685bc MULS            R0, R2
0x685be MOVS            R1, R4
0x685c0 LDR             R2, [SP,#0x34+var_34]
0x685c2 BL              sub_68DCC
0x685c6 LDR             R3, [SP,#0x34+var_14]
0x685c8 LDR             R1, [SP,#0x34+var_10]
0x685ca ADDS            R3, R0, R3
0x685cc STR             R3, [SP,#0x34+var_30]
0x685ce ANDS            R4, R3
0x685d0 MOVS            R3, R7
0x685d2 SUBS            R2, R5, R1
0x685d4 ANDS            R3, R5
0x685d6 MOVS            R1, R5
0x685d8 STR             R0, [SP,#0x34+var_2C]
0x685da MOVS            R0, R3
0x685dc MULS            R0, R2
0x685de LDR             R2, [SP,#0x34+var_34]
0x685e0 BL              sub_68DCC
0x685e4 LDR             R3, [SP,#0x34+var_10]
0x685e6 ADDS            R0, R0, R3
0x685e8 LDR             R3, [SP,#0x34+var_C]
0x685ea MOVS            R1, #0x1F
0x685ec SUBS            R2, R1, R3
0x685ee MOVS            R3, #0x1F
0x685f0 ANDS            R0, R5
0x685f2 ANDS            R3, R7
0x685f4 MOVS            R5, R4
0x685f6 ORRS            R5, R0
0x685f8 MOVS            R0, R3
0x685fa MULS            R0, R2
0x685fc LDR             R2, [SP,#0x34+var_34]
0x685fe BL              sub_68DCC
0x68602 LDR             R3, [SP,#0x34+var_C]
0x68604 MOVS            R1, #0x1F
0x68606 ADDS            R0, R0, R3
0x68608 ANDS            R0, R1
0x6860a LDR             R2, [SP,#0x34+var_18]
0x6860c ORRS            R0, R5
0x6860e STRH            R0, [R2]
0x68610 LDR             R3, [SP,#0x34+var_28]
0x68612 LDR             R1, [SP,#0x34+var_24]
0x68614 ADDS            R3, #1
0x68616 SUBS            R1, #1
0x68618 STR             R3, [SP,#0x34+var_28]
0x6861a STR             R1, [SP,#0x34+var_24]
0x6861c LDR             R2, [SP,#0x34+var_24]
0x6861e CMP             R2, #0
0x68620 BLE             loc_68624
0x68622 B               loc_68526
0x68624 ADD             SP, SP, #0x34 ; '4'
0x68626 POP             {R4-R7}
0x68628 POP             {R0}
0x6862a BX              R0