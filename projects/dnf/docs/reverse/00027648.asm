0x27648 PUSH            {R4-R7,LR}
0x2764a SUB             SP, SP, #0x40
0x2764c MOV             R4, SP
0x2764e LSLS            R2, R0, #0x10
0x27650 LSLS            R1, R1, #0x18
0x27652 ADDS            R4, #0x12
0x27654 LSRS            R2, R2, #0x10
0x27656 LDR             R3, =unk_14032CC
0x27658 LSRS            R7, R1, #0x18
0x2765a MOVS            R0, R4
0x2765c LDR             R1, =aDBd; "%d.bd"
0x2765e BL              sub_2BCB6
0x27662 MOVS            R0, R4
0x27664 LDR             R3, =0x6CBE1
0x27666 BL              sub_2BCB6
0x2766a STR             R0, [SP,#0x40+var_3C]
0x2766c CMP             R0, #0
0x2766e BEQ             loc_2772A
0x27670 MOV             R0, SP
0x27672 LDR             R6, =unk_140327C
0x27674 LDR             R1, [SP,#0x40+var_3C]
0x27676 MOVS            R2, #2
0x27678 ADDS            R0, #0x3E ; '>'
0x2767a BL              sub_2BCBC
0x2767e LDR             R1, [SP,#0x40+var_3C]
0x27680 MOVS            R2, #4
0x27682 ADDS            R1, #2
0x27684 ADD             R0, SP, #0x40+var_10
0x27686 BL              sub_2BCBC
0x2768a LDR             R1, [SP,#0x40+var_3C]
0x2768c MOVS            R2, #4
0x2768e ADDS            R1, #6
0x27690 ADD             R0, SP, #0x40+var_C
0x27692 BL              sub_2BCBC
0x27696 LDR             R0, [SP,#0x40+var_10]
0x27698 LDR             R3, =unk_14032EC
0x2769a ADDS            R0, #2
0x2769c BL              sub_2BCB6
0x276a0 STR             R0, [SP,#0x40+var_38]
0x276a2 LDR             R0, [SP,#0x40+var_3C]
0x276a4 MOVS            R1, #6
0x276a6 LDR             R3, [SP,#0x40+var_C]
0x276a8 LDR             R2, [SP,#0x40+var_10]
0x276aa STR             R1, [SP,#0x40+var_40]
0x276ac LDR             R4, =0x692B5
0x276ae LDR             R1, [SP,#0x40+var_38]
0x276b0 ADDS            R0, #0xA
0x276b2 BL              sub_2BCB8
0x276b6 LDR             R1, [SP,#0x40+var_38]
0x276b8 MOVS            R2, #2
0x276ba ADD             R0, SP, #0x40+var_4
0x276bc BL              sub_2BCBC
0x276c0 LDR             R4, [SP,#0x40+var_38]
0x276c2 MOV             R5, SP
0x276c4 ADDS            R4, #2
0x276c6 ADDS            R5, #0x3A ; ':'
0x276c8 MOVS            R1, R4
0x276ca MOVS            R2, #2
0x276cc MOVS            R0, R5
0x276ce BL              sub_2BCBC
0x276d2 MOVS            R3, #0
0x276d4 LDRSH           R2, [R5,R3]
0x276d6 LSLS            R3, R2, #2
0x276d8 ADDS            R3, R3, R2
0x276da LSLS            R3, R3, #1
0x276dc MULS            R3, R7
0x276de ADDS            R4, #2
0x276e0 ADDS            R6, R4, R3
0x276e2 MOVS            R3, #0
0x276e4 STR             R3, [SP,#0x40+var_34]
0x276e6 LDR             R7, =0x1AF0
0x276e8 LDR             R4, =dword_1501D90
0x276ea LDR             R0, [R4]
0x276ec MOVS            R1, R6
0x276ee ADDS            R0, R7, R0
0x276f0 MOVS            R2, #2
0x276f2 LDR             R5, =unk_140327C
0x276f4 BL              sub_2BCBA
0x276f8 LDR             R0, [R4]
0x276fa ADDS            R0, R7, R0
0x276fc ADDS            R1, R6, #2
0x276fe ADDS            R0, #2
0x27700 MOVS            R2, #2
0x27702 BL              sub_2BCBA
0x27706 LDR             R3, [SP,#0x40+var_34]
0x27708 ADDS            R3, #1
0x2770a ADDS            R6, #4
0x2770c STR             R3, [SP,#0x40+var_34]
0x2770e ADDS            R7, #4
0x27710 CMP             R3, #0xA
0x27712 BNE             loc_276E8
0x27714 LDR             R3, [SP,#0x40+var_38]
0x27716 CMP             R3, #0
0x27718 BEQ             loc_27722
0x2771a MOVS            R0, R3
0x2771c LDR             R3, =unk_14032FC
0x2771e BL              sub_2BCB6
0x27722 LDR             R0, [SP,#0x40+var_3C]
0x27724 LDR             R3, =unk_14032FC
0x27726 BL              sub_2BCB6
0x2772a ADD             SP, SP, #0x40 ; '@'
0x2772c POP             {R4-R7}
0x2772e POP             {R0}
0x27730 BX              R0