0x28014 PUSH            {R4-R7,LR}
0x28016 SUB             SP, SP, #0x44
0x28018 MOVS            R1, #0x43 ; 'C'
0x2801a MOVS            R3, #0
0x2801c ADD             R1, SP
0x2801e STRB            R3, [R1]
0x28020 MOV             R4, SP
0x28022 MOVS            R1, #0x42 ; 'B'
0x28024 LSLS            R2, R0, #0x18
0x28026 ADD             R1, SP
0x28028 ADDS            R4, #0x1A
0x2802a STRB            R3, [R1]
0x2802c LSRS            R2, R2, #0x18
0x2802e LDR             R1, =aDBac; "%d.bac"
0x28030 LDR             R3, =unk_14032CC
0x28032 MOVS            R0, R4
0x28034 BL              sub_2BCB6
0x28038 MOVS            R0, R4
0x2803a LDR             R3, =0x6CBE1
0x2803c BL              sub_2BCB6
0x28040 STR             R0, [SP,#0x44+var_40]
0x28042 CMP             R0, #0
0x28044 BNE             loc_28048
0x28046 B               loc_28228
0x28048 LDR             R5, =unk_140327C
0x2804a LDR             R1, [SP,#0x44+var_40]
0x2804c MOVS            R2, #2
0x2804e ADD             R0, SP, #0x44+var_4
0x28050 BL              sub_2BCBA
0x28054 LDR             R1, [SP,#0x44+var_40]
0x28056 MOVS            R2, #4
0x28058 ADDS            R1, #2
0x2805a ADD             R0, SP, #0x44+var_C
0x2805c BL              sub_2BCBA
0x28060 LDR             R1, [SP,#0x44+var_40]
0x28062 MOVS            R2, #4
0x28064 ADDS            R1, #6
0x28066 ADD             R0, SP, #0x44+var_8
0x28068 BL              sub_2BCBA
0x2806c LDR             R0, [SP,#0x44+var_C]
0x2806e LDR             R6, =unk_14032EC
0x28070 ADDS            R0, #2
0x28072 BL              sub_2BCBC
0x28076 STR             R0, [SP,#0x44+var_3C]
0x28078 LDR             R0, [SP,#0x44+var_40]
0x2807a MOVS            R1, #6
0x2807c LDR             R3, [SP,#0x44+var_8]
0x2807e LDR             R2, [SP,#0x44+var_C]
0x28080 STR             R1, [SP,#0x44+var_44]
0x28082 LDR             R4, =0x692B5
0x28084 LDR             R1, [SP,#0x44+var_3C]
0x28086 ADDS            R0, #0xA
0x28088 BL              sub_2BCB8
0x2808c MOV             R0, SP
0x2808e LDR             R1, [SP,#0x44+var_3C]
0x28090 MOVS            R2, #1
0x28092 ADDS            R0, #0x43 ; 'C'
0x28094 BL              sub_2BCBA
0x28098 LDR             R4, [SP,#0x44+var_3C]
0x2809a MOV             R0, SP
0x2809c ADDS            R4, #1
0x2809e MOVS            R1, R4
0x280a0 MOVS            R2, #1
0x280a2 ADDS            R0, #0x42 ; 'B'
0x280a4 BL              sub_2BCBA
0x280a8 MOVS            R3, #0x43 ; 'C'
0x280aa MOVS            R1, #0x42 ; 'B'
0x280ac ADD             R1, SP
0x280ae ADD             R3, SP
0x280b0 MOVS            R2, #0
0x280b2 LDRSB           R2, [R3,R2]
0x280b4 MOVS            R3, #0
0x280b6 LDRSB           R3, [R1,R3]
0x280b8 ADDS            R7, R4, #1
0x280ba MOVS            R4, R3
0x280bc MULS            R4, R2
0x280be LSLS            R4, R4, #3
0x280c0 ADDS            R0, R4, #2
0x280c2 BL              sub_2BCBC
0x280c6 MOVS            R2, R4
0x280c8 STR             R0, [SP,#0x44+var_30]
0x280ca MOVS            R1, #0
0x280cc LDR             R3, =unk_140329C
0x280ce BL              sub_2BCB6
0x280d2 MOVS            R2, #0
0x280d4 B               loc_28182
0x280d6 LDR             R3, [SP,#0x44+var_38]
0x280d8 MULS            R0, R3
0x280da LDR             R1, [SP,#0x44+var_30]
0x280dc ADDS            R0, R0, R6
0x280de LSLS            R0, R0, #3
0x280e0 LDR             R4, =unk_140327C
0x280e2 ADDS            R0, R1, R0
0x280e4 MOVS            R2, #1
0x280e6 MOVS            R1, R7
0x280e8 BL              sub_2BCB8
0x280ec MOVS            R2, #0x42 ; 'B'
0x280ee ADD             R2, SP
0x280f0 MOVS            R3, #0
0x280f2 LDRSB           R3, [R2,R3]
0x280f4 LDR             R1, [SP,#0x44+var_38]
0x280f6 MOVS            R0, R3
0x280f8 MULS            R0, R1
0x280fa LDR             R2, [SP,#0x44+var_30]
0x280fc ADDS            R0, R0, R6
0x280fe LSLS            R0, R0, #3
0x28100 ADDS            R0, R2, R0
0x28102 ADDS            R1, R7, #1
0x28104 MOVS            R2, #1
0x28106 ADDS            R0, #1
0x28108 BL              sub_2BCB8
0x2810c MOVS            R1, #0x42 ; 'B'
0x2810e ADD             R1, SP
0x28110 MOVS            R3, #0
0x28112 LDRSB           R3, [R1,R3]
0x28114 LDR             R2, [SP,#0x44+var_38]
0x28116 MOVS            R0, R3
0x28118 MULS            R0, R2
0x2811a LDR             R3, [SP,#0x44+var_30]
0x2811c ADDS            R0, R0, R6
0x2811e LSLS            R0, R0, #3
0x28120 ADDS            R0, R3, R0
0x28122 ADDS            R1, R7, #2
0x28124 MOVS            R2, #1
0x28126 ADDS            R0, #3
0x28128 BL              sub_2BCB8
0x2812c MOVS            R1, #0x42 ; 'B'
0x2812e ADD             R1, SP
0x28130 MOVS            R3, #0
0x28132 LDRSB           R3, [R1,R3]
0x28134 LDR             R2, [SP,#0x44+var_38]
0x28136 MOVS            R0, R3
0x28138 MULS            R0, R2
0x2813a LDR             R3, [SP,#0x44+var_30]
0x2813c ADDS            R0, R0, R6
0x2813e LSLS            R0, R0, #3
0x28140 ADDS            R0, R3, R0
0x28142 ADDS            R1, R7, #3
0x28144 MOVS            R2, #1
0x28146 ADDS            R0, #4
0x28148 BL              sub_2BCB8
0x2814c MOVS            R1, #0x42 ; 'B'
0x2814e ADD             R1, SP
0x28150 MOVS            R3, #0
0x28152 LDRSB           R3, [R1,R3]
0x28154 LDR             R2, [SP,#0x44+var_38]
0x28156 MOVS            R0, R3
0x28158 MULS            R0, R2
0x2815a LDR             R3, [SP,#0x44+var_30]
0x2815c ADDS            R0, R0, R6
0x2815e LSLS            R0, R0, #3
0x28160 ADDS            R5, R7, #4
0x28162 ADDS            R0, R3, R0
0x28164 ADDS            R0, #5
0x28166 MOVS            R1, R5
0x28168 MOVS            R2, #1
0x2816a BL              sub_2BCB8
0x2816e ADDS            R7, #5
0x28170 ADDS            R6, #1
0x28172 MOVS            R1, #0x42 ; 'B'
0x28174 ADD             R1, SP
0x28176 MOVS            R0, #0
0x28178 LDRSB           R0, [R1,R0]
0x2817a CMP             R6, R0
0x2817c BLT             loc_280D6
0x2817e LDR             R2, [SP,#0x44+var_38]
0x28180 ADDS            R2, #1
0x28182 STR             R2, [SP,#0x44+var_38]
0x28184 MOV             R3, SP
0x28186 ADDS            R3, #0x43 ; 'C'
0x28188 LDRB            R3, [R3]
0x2818a LSLS            R3, R3, #0x18
0x2818c ASRS            R3, R3, #0x18
0x2818e LDR             R1, [SP,#0x44+var_38]
0x28190 CMP             R1, R3
0x28192 BLT             loc_28198
0x28194 MOVS            R7, #0
0x28196 B               loc_281F6
0x28198 MOVS            R6, #0
0x2819a B               loc_28172
0x2819c MOV             R3, SP
0x2819e ADDS            R3, #0x43 ; 'C'
0x281a0 MOVS            R1, #0
0x281a2 LDRSB           R1, [R3,R1]
0x281a4 MOVS            R0, R7
0x281a6 LDR             R3, =0x8C1C1
0x281a8 BL              sub_2BCB6
0x281ac MOVS            R6, #0
0x281ae STR             R0, [SP,#0x44+var_34]
0x281b0 B               loc_281E8
0x281b2 MULS            R5, R7
0x281b4 MOV             R3, SP
0x281b6 ADDS            R3, #0x42 ; 'B'
0x281b8 MOVS            R1, #0
0x281ba LDRSB           R1, [R3,R1]
0x281bc ADDS            R5, R5, R6
0x281be LDR             R3, [R2,#(dword_15332F0 - 0x15332A0)]
0x281c0 LSLS            R5, R5, #3
0x281c2 LDR             R2, [SP,#0x44+var_34]
0x281c4 ADDS            R5, R5, R3
0x281c6 MOVS            R0, R6
0x281c8 LDR             R3, =0x8C1C1
0x281ca MOVS            R4, R1
0x281cc MULS            R4, R2
0x281ce BL              sub_2BCB6
0x281d2 LDR             R3, [SP,#0x44+var_30]
0x281d4 ADDS            R4, R4, R0
0x281d6 LSLS            R4, R4, #3
0x281d8 ADDS            R4, R3, R4
0x281da MOVS            R0, R5
0x281dc MOVS            R1, R4
0x281de MOVS            R2, #8
0x281e0 LDR             R3, =unk_140327C
0x281e2 BL              sub_2BCB6
0x281e6 ADDS            R6, #1
0x281e8 LDR             R2, =word_15332A0
0x281ea MOVS            R3, R2
0x281ec ADDS            R3, #0x32 ; '2'
0x281ee LDRB            R5, [R3]
0x281f0 CMP             R6, R5
0x281f2 BLT             loc_281B2
0x281f4 ADDS            R7, #1
0x281f6 LDR             R3, =word_15332A0
0x281f8 ADDS            R3, #0x31 ; '1'
0x281fa LDRB            R3, [R3]
0x281fc CMP             R7, R3
0x281fe BLT             loc_2819C
0x28200 LDR             R1, [SP,#0x44+var_30]
0x28202 CMP             R1, #0
0x28204 BEQ             loc_28212
0x28206 CMP             R1, #0
0x28208 BLE             loc_28212
0x2820a MOVS            R0, R1
0x2820c LDR             R3, =unk_14032FC
0x2820e BL              sub_2BCB6
0x28212 LDR             R2, [SP,#0x44+var_3C]
0x28214 CMP             R2, #0
0x28216 BEQ             loc_28220
0x28218 MOVS            R0, R2
0x2821a LDR             R3, =unk_14032FC
0x2821c BL              sub_2BCB6
0x28220 LDR             R0, [SP,#0x44+var_40]
0x28222 LDR             R3, =unk_14032FC
0x28224 BL              sub_2BCB6
0x28228 ADD             SP, SP, #0x44 ; 'D'
0x2822a POP             {R4-R7}
0x2822c POP             {R0}
0x2822e BX              R0