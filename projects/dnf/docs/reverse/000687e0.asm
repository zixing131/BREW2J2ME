0x687e0 PUSH            {R4-R7,LR}
0x687e2 SUB             SP, SP, #0x40
0x687e4 STR             R0, [SP,#0x40+var_40]
0x687e6 LDR             R4, =sub_8C9DC
0x687e8 MOVS            R7, R1
0x687ea MOVS            R5, R2
0x687ec LDR             R1, =dword_97370
0x687ee MOVS            R2, #0x18
0x687f0 ADD             R0, SP, #0x40+var_18
0x687f2 MOVS            R6, R3
0x687f4 BL              sub_68DD0
0x687f8 LDR             R1, =dword_97358
0x687fa MOVS            R2, #0x18
0x687fc ADD             R0, SP, #0x40+var_30
0x687fe BL              sub_68DD0
0x68802 LDR             R1, [SP,#0x40+var_40]
0x68804 LDR             R3, [R1,#4]
0x68806 LDR             R3, [R3,#4]
0x68808 LDR             R3, [R3,#4]
0x6880a STR             R3, [SP,#0x40+var_3C]
0x6880c LDR             R3, [R1]
0x6880e LDR             R2, [R3,#0x24]
0x68810 LDR             R3, [SP,#0x40+arg_0]
0x68812 LSLS            R0, R3, #1
0x68814 LDR             R3, =0x7FFF
0x68816 CMP             R2, R3
0x68818 BNE             loc_68822
0x6881a ADDS            R0, #0x10
0x6881c MOV             R4, SP
0x6881e LDRH            R0, [R0,R4]
0x68820 B               loc_68828
0x68822 ADDS            R0, #0x28 ; '('
0x68824 MOV             R1, SP
0x68826 LDRH            R0, [R0,R1]
0x68828 LDR             R2, [SP,#0x40+arg_0]
0x6882a CMP             R2, #0
0x6882c BEQ             loc_6887A
0x6882e LDR             R3, [SP,#0x40+arg_4]
0x68830 MOVS            R2, #0x20 ; ' '
0x68832 SUBS            R2, R2, R3
0x68834 LDR             R3, =0xF81F
0x68836 ANDS            R3, R0
0x68838 MOVS            R4, R2
0x6883a MULS            R4, R3
0x6883c MOVS            R3, #0x7E0
0x68840 ANDS            R3, R0
0x68842 MOVS            R1, R2
0x68844 MULS            R1, R3
0x68846 LDR             R3, =0x7C1F
0x68848 ANDS            R3, R0
0x6884a STR             R4, [SP,#0x40+var_38]
0x6884c MOVS            R4, R2
0x6884e MULS            R4, R3
0x68850 MOVS            R3, #0x3E0
0x68854 ANDS            R3, R0
0x68856 MOVS            R0, R2
0x68858 MULS            R0, R3
0x6885a MOV             R12, R4
0x6885c STR             R1, [SP,#0x40+var_34]
0x6885e B               loc_688EA
0x68860 LDRB            R3, [R6]
0x68862 LDR             R1, [SP,#0x40+var_3C]
0x68864 LDR             R4, [SP,#0x40+var_40]
0x68866 LSLS            R3, R3, #1
0x68868 LDRH            R2, [R3,R1]
0x6886a LDR             R3, [R4]
0x6886c LDR             R3, [R3,#0x20]
0x6886e SUBS            R5, #2
0x68870 CMP             R2, R3
0x68872 BEQ             loc_68876
0x68874 STRH            R2, [R5]
0x68876 ADDS            R6, #1
0x68878 SUBS            R7, #1
0x6887a CMP             R7, #0
0x6887c BGT             loc_68860
0x6887e B               loc_688EE
0x68880 LDRB            R3, [R6]
0x68882 LDR             R1, [SP,#0x40+var_3C]
0x68884 LSLS            R3, R3, #1
0x68886 LDRH            R4, [R3,R1]
0x68888 LDR             R3, [SP,#0x40+var_40]
0x6888a LDR             R2, [R3]
0x6888c LDR             R3, [R2,#0x20]
0x6888e SUBS            R5, #2
0x68890 CMP             R4, R3
0x68892 BEQ             loc_688E6
0x68894 LDR             R2, [R2,#0x24]
0x68896 LDR             R3, =0x7FFF
0x68898 CMP             R2, R3
0x6889a BNE             loc_688BC
0x6889c LDR             R1, =0x7C1F
0x6889e MOVS            R2, R4
0x688a0 LDR             R3, [SP,#0x40+arg_4]
0x688a2 ANDS            R2, R1
0x688a4 MULS            R2, R3
0x688a6 ADD             R2, R12
0x688a8 LSRS            R2, R2, #5
0x688aa ANDS            R2, R1
0x688ac MOVS            R1, #0xF8
0x688ae MOVS            R3, R4
0x688b0 LSLS            R1, R1, #2
0x688b2 LDR             R4, [SP,#0x40+arg_4]
0x688b4 ANDS            R3, R1
0x688b6 MULS            R3, R4
0x688b8 ADDS            R3, R3, R0
0x688ba B               loc_688DE
0x688bc LDR             R1, =0xF81F
0x688be MOVS            R2, R4
0x688c0 LDR             R3, [SP,#0x40+arg_4]
0x688c2 ANDS            R2, R1
0x688c4 MULS            R2, R3
0x688c6 LDR             R3, [SP,#0x40+var_38]
0x688c8 ADDS            R2, R2, R3
0x688ca LSRS            R2, R2, #5
0x688cc ANDS            R2, R1
0x688ce MOVS            R1, #0xFC
0x688d0 MOVS            R3, R4
0x688d2 LSLS            R1, R1, #3
0x688d4 LDR             R4, [SP,#0x40+arg_4]
0x688d6 ANDS            R3, R1
0x688d8 MULS            R3, R4
0x688da LDR             R4, [SP,#0x40+var_34]
0x688dc ADDS            R3, R3, R4
0x688de LSRS            R3, R3, #5
0x688e0 ANDS            R3, R1
0x688e2 ORRS            R2, R3
0x688e4 STRH            R2, [R5]
0x688e6 ADDS            R6, #1
0x688e8 SUBS            R7, #1
0x688ea CMP             R7, #0
0x688ec BGT             loc_68880
0x688ee ADD             SP, SP, #0x40 ; '@'
0x688f0 POP             {R4-R7}
0x688f2 POP             {R0}
0x688f4 BX              R0