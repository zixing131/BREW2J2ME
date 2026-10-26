0x68634 PUSH            {R4-R7,LR}
0x68636 SUB             SP, SP, #0x1C
0x68638 STR             R3, [SP,#0x1C+var_18]
0x6863a LDR             R3, [R0,#4]
0x6863c LDR             R3, [R3,#4]
0x6863e STR             R1, [SP,#0x1C+var_14]
0x68640 LDR             R3, [R3,#4]
0x68642 LDR             R1, =0x8BFE9
0x68644 STR             R0, [SP,#0x1C+var_10]
0x68646 STR             R3, [SP,#0x1C+var_C]
0x68648 STR             R2, [SP,#0x1C+var_8]
0x6864a STR             R1, [SP,#0x1C+var_1C]
0x6864c B               loc_68714
0x6864e LDR             R2, [SP,#0x1C+var_8]
0x68650 SUBS            R2, #2
0x68652 STR             R2, [SP,#0x1C+var_8]
0x68654 LDR             R1, [SP,#0x1C+var_18]
0x68656 LDRB            R3, [R1]
0x68658 LDR             R2, [SP,#0x1C+var_C]
0x6865a LSLS            R3, R3, #1
0x6865c LDRH            R7, [R3,R2]
0x6865e LDR             R3, [SP,#0x1C+var_10]
0x68660 LDR             R2, [R3]
0x68662 LDR             R3, [R2,#0x20]
0x68664 CMP             R7, R3
0x68666 BEQ             loc_68708
0x68668 LDR             R1, [SP,#0x1C+var_8]
0x6866a LDR             R2, [R2,#0x24]
0x6866c LDR             R3, =0x7FFF
0x6866e LDRH            R6, [R1]
0x68670 CMP             R2, R3
0x68672 BNE             loc_686B2
0x68674 MOVS            R2, #0x1F
0x68676 ANDS            R2, R7
0x68678 MOVS            R4, #0x3E0
0x6867c STR             R2, [SP,#0x1C+var_4]
0x6867e MOVS            R3, R7
0x68680 MOVS            R2, R6
0x68682 ANDS            R2, R4
0x68684 ANDS            R3, R4
0x68686 MOVS            R0, R3
0x68688 MULS            R0, R2
0x6868a MOVS            R1, R4
0x6868c LDR             R3, [SP,#0x1C+var_1C]
0x6868e BL              sub_68DCE
0x68692 LDR             R1, [SP,#0x1C+var_4]
0x68694 MOVS            R3, #0x1F
0x68696 ANDS            R3, R6
0x68698 MOVS            R5, R0
0x6869a LDR             R2, [SP,#0x1C+var_1C]
0x6869c MOVS            R0, R1
0x6869e MULS            R0, R3
0x686a0 MOVS            R1, #0x1F
0x686a2 BL              sub_68DCC
0x686a6 MOVS            R3, #0x1F
0x686a8 LDR             R1, [SP,#0x1C+var_4]
0x686aa ANDS            R0, R3
0x686ac ANDS            R5, R4
0x686ae ORRS            R0, R1
0x686b0 B               loc_68702
0x686b2 MOVS            R4, #0xF800
0x686b6 MOVS            R2, R6
0x686b8 MOVS            R3, R7
0x686ba ANDS            R3, R4
0x686bc ANDS            R2, R4
0x686be MOVS            R0, R3
0x686c0 MULS            R0, R2
0x686c2 MOVS            R1, R4
0x686c4 LDR             R2, [SP,#0x1C+var_1C]
0x686c6 BL              sub_68DCC
0x686ca MOVS            R5, R0
0x686cc ANDS            R5, R4
0x686ce MOVS            R4, #0x7E0
0x686d2 MOVS            R2, R6
0x686d4 MOVS            R3, R7
0x686d6 ANDS            R2, R4
0x686d8 ANDS            R3, R4
0x686da MOVS            R0, R3
0x686dc MULS            R0, R2
0x686de MOVS            R1, R4
0x686e0 LDR             R3, [SP,#0x1C+var_1C]
0x686e2 BL              sub_68DCE
0x686e6 MOVS            R2, R6
0x686e8 ANDS            R0, R4
0x686ea MOVS            R3, R7
0x686ec MOVS            R4, #0x1F
0x686ee ANDS            R2, R4
0x686f0 ANDS            R3, R4
0x686f2 ORRS            R5, R0
0x686f4 MOVS            R1, #0x1F
0x686f6 MOVS            R0, R3
0x686f8 MULS            R0, R2
0x686fa LDR             R2, [SP,#0x1C+var_1C]
0x686fc BL              sub_68DCC
0x68700 ANDS            R0, R4
0x68702 LDR             R3, [SP,#0x1C+var_8]
0x68704 ORRS            R0, R5
0x68706 STRH            R0, [R3]
0x68708 LDR             R1, [SP,#0x1C+var_18]
0x6870a LDR             R2, [SP,#0x1C+var_14]
0x6870c ADDS            R1, #1
0x6870e SUBS            R2, #1
0x68710 STR             R1, [SP,#0x1C+var_18]
0x68712 STR             R2, [SP,#0x1C+var_14]
0x68714 LDR             R3, [SP,#0x1C+var_14]
0x68716 CMP             R3, #0
0x68718 BGT             loc_6864E
0x6871a ADD             SP, SP, #0x1C
0x6871c POP             {R4-R7}
0x6871e POP             {R0}
0x68720 BX              R0