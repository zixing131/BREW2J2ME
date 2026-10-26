0x6872c PUSH            {R4-R7,LR}
0x6872e MOV             R12, R3
0x68730 LDR             R3, [R0,#4]
0x68732 LDR             R3, [R3,#4]
0x68734 LDR             R3, [R3,#4]
0x68736 SUB             SP, SP, #0xC
0x68738 MOVS            R7, R2
0x6873a STR             R0, [SP,#0xC+var_8]
0x6873c STR             R1, [SP,#0xC+var_C]
0x6873e STR             R3, [SP,#0xC+var_4]
0x68740 B               loc_687C6
0x68742 MOV             R0, R12
0x68744 LDRB            R3, [R0]
0x68746 LDR             R1, [SP,#0xC+var_4]
0x68748 LSLS            R3, R3, #1
0x6874a LDRH            R5, [R3,R1]
0x6874c LDR             R3, [SP,#0xC+var_8]
0x6874e LDR             R2, [R3]
0x68750 LDR             R3, [R2,#0x20]
0x68752 SUBS            R7, #2
0x68754 CMP             R5, R3
0x68756 BEQ             loc_687BC
0x68758 LDR             R2, [R2,#0x24]
0x6875a LDR             R3, =0x7FFF
0x6875c LDRH            R6, [R7]
0x6875e CMP             R2, R3
0x68760 BNE             loc_68784
0x68762 LDR             R0, [SP,#0xC+arg_4]
0x68764 LDR             R2, =0x7C1F
0x68766 MOVS            R4, #0x20 ; ' '
0x68768 MOVS            R3, R5
0x6876a SUBS            R4, R4, R0
0x6876c ANDS            R3, R2
0x6876e MOVS            R1, R4
0x68770 MULS            R1, R3
0x68772 MOVS            R3, R6
0x68774 ANDS            R3, R2
0x68776 MULS            R3, R0
0x68778 ADDS            R1, R1, R3
0x6877a LSRS            R1, R1, #5
0x6877c MOVS            R0, #0xF8
0x6877e ANDS            R1, R2
0x68780 LSLS            R0, R0, #2
0x68782 B               loc_687A4
0x68784 LDR             R0, [SP,#0xC+arg_4]
0x68786 LDR             R2, =0xF81F
0x68788 MOVS            R4, #0x20 ; ' '
0x6878a MOVS            R3, R5
0x6878c SUBS            R4, R4, R0
0x6878e ANDS            R3, R2
0x68790 MOVS            R1, R4
0x68792 MULS            R1, R3
0x68794 MOVS            R3, R6
0x68796 ANDS            R3, R2
0x68798 MULS            R3, R0
0x6879a ADDS            R1, R1, R3
0x6879c LSRS            R1, R1, #5
0x6879e MOVS            R0, #0xFC
0x687a0 ANDS            R1, R2
0x687a2 LSLS            R0, R0, #3
0x687a4 MOVS            R3, R5
0x687a6 ANDS            R3, R0
0x687a8 MULS            R3, R4
0x687aa MOVS            R2, R6
0x687ac LDR             R4, [SP,#0xC+arg_4]
0x687ae ANDS            R2, R0
0x687b0 MULS            R2, R4
0x687b2 ADDS            R3, R3, R2
0x687b4 LSRS            R3, R3, #5
0x687b6 ANDS            R3, R0
0x687b8 ORRS            R1, R3
0x687ba STRH            R1, [R7]
0x687bc LDR             R1, [SP,#0xC+var_C]
0x687be SUBS            R1, #1
0x687c0 MOVS            R0, #1
0x687c2 STR             R1, [SP,#0xC+var_C]
0x687c4 ADD             R12, R0
0x687c6 LDR             R2, [SP,#0xC+var_C]
0x687c8 CMP             R2, #0
0x687ca BGT             loc_68742
0x687cc ADD             SP, SP, #0xC
0x687ce POP             {R4-R7}
0x687d0 POP             {R0}
0x687d2 BX              R0