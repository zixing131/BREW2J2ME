0x1f94 PUSH            {R4-R7,LR}
0x1f96 LDR             R3, =byte_1501E14
0x1f98 LDRB            R3, [R3]
0x1f9a SUB             SP, SP, #0x14
0x1f9c CMP             R3, #0
0x1f9e BEQ             loc_208E
0x1fa0 MOV             R0, SP
0x1fa2 MOVS            R1, #0
0x1fa4 MOVS            R2, #0xA
0x1fa6 LDR             R3, =0x8CA1C
0x1fa8 ADDS            R0, #0xA
0x1faa BL              sub_6D00
0x1fae LDR             R5, =dword_1501C14
0x1fb0 LDR             R7, =dword_1501BFC
0x1fb2 LDR             R0, [R5]
0x1fb4 LDR             R1, [R7]
0x1fb6 LDR             R3, =0xFFFFFF00
0x1fb8 SUBS            R0, #0x50 ; 'P'
0x1fba SUBS            R1, #0x46 ; 'F'
0x1fbc STR             R3, [SP,#0x14+var_14]
0x1fbe MOVS            R2, #0xA0
0x1fc0 MOVS            R3, #0x8C
0x1fc2 LDR             R4, =0x6A855
0x1fc4 BL              sub_6D02
0x1fc8 LDR             R0, [R5]
0x1fca LDR             R1, [R7]
0x1fcc MOVS            R2, #0
0x1fce SUBS            R0, #0x4F ; 'O'
0x1fd0 SUBS            R1, #0x45 ; 'E'
0x1fd2 STR             R2, [SP,#0x14+var_14]
0x1fd4 MOVS            R3, #0x8A
0x1fd6 MOVS            R2, #0x9E
0x1fd8 LDR             R4, =0x6A879
0x1fda BL              sub_6D02
0x1fde MOV             R2, SP
0x1fe0 MOVS            R3, #0x4C ; 'L'
0x1fe2 STRB            R3, [R2,#0x14+var_A]
0x1fe4 MOVS            R3, #0x56 ; 'V'
0x1fe6 STRB            R3, [R2,#0x14+var_9]
0x1fe8 MOVS            R3, #0x41 ; 'A'
0x1fea STRB            R3, [R2,#0x14+var_7]
0x1fec MOVS            R3, #0x4E ; 'N'
0x1fee STRB            R3, [R2,#0x14+var_8]
0x1ff0 LDR             R1, [R7]
0x1ff2 MOVS            R3, #0x53 ; 'S'
0x1ff4 STRB            R3, [R2,#0x14+var_6]
0x1ff6 MOVS            R3, #0
0x1ff8 LDR             R6, =0x6770D
0x1ffa LDR             R0, [R5]
0x1ffc SUBS            R1, #0x3C ; '<'
0x1ffe LDR             R2, =dword_8CD44
0x2000 STR             R3, [SP,#0x14+var_14]
0x2002 MOVS            R3, #1
0x2004 BL              sub_6D06
0x2008 LDR             R1, [R7]
0x200a MOVS            R2, #0
0x200c LDR             R0, [R5]
0x200e MOVS            R3, #1
0x2010 STR             R2, [SP,#0x14+var_10]
0x2012 MOV             R2, SP
0x2014 SUBS            R1, #0x2D ; '-'
0x2016 STR             R3, [SP,#0x14+var_14]
0x2018 ADDS            R2, #0xA
0x201a MOVS            R3, #5
0x201c LDR             R4, =0x6A76D
0x201e BL              sub_6D02
0x2022 LDR             R1, [R7]
0x2024 MOVS            R3, #0
0x2026 LDR             R0, [R5]
0x2028 SUBS            R1, #0x19
0x202a LDR             R2, =aLgtWipic; "LGT_WIPIC"
0x202c STR             R3, [SP,#0x14+var_14]
0x202e MOVS            R3, #1
0x2030 BL              sub_6D06
0x2034 LDR             R1, [R7]
0x2036 MOVS            R3, #0
0x2038 LDR             R0, [R5]
0x203a SUBS            R1, #0xA
0x203c LDR             R2, =aQvga240; "QVGA(240)"
0x203e STR             R3, [SP,#0x14+var_14]
0x2040 MOVS            R3, #1
0x2042 BL              sub_6D06
0x2046 LDR             R1, [R7]
0x2048 MOVS            R3, #0
0x204a LDR             R0, [R5]
0x204c ADDS            R1, #5
0x204e LDR             R2, =dword_8CD6C
0x2050 STR             R3, [SP,#0x14+var_14]
0x2052 MOVS            R3, #1
0x2054 BL              sub_6D06
0x2058 LDR             R1, [R7]
0x205a MOVS            R3, #0
0x205c LDR             R0, [R5]
0x205e ADDS            R1, #0x14
0x2060 LDR             R2, =dword_8CD74
0x2062 STR             R3, [SP,#0x14+var_14]
0x2064 MOVS            R3, #1
0x2066 BL              sub_6D06
0x206a LDR             R1, [R7]
0x206c MOVS            R3, #0
0x206e LDR             R0, [R5]
0x2070 ADDS            R1, #0x32 ; '2'
0x2072 LDR             R2, =a201004161338; "2010_0416_1338"
0x2074 STR             R3, [SP,#0x14+var_14]
0x2076 MOVS            R3, #1
0x2078 BL              sub_6D06
0x207c LDR             R1, [R7]
0x207e MOVS            R3, #0
0x2080 LDR             R0, [R5]
0x2082 ADDS            R1, #0x23 ; '#'
0x2084 STR             R3, [SP,#0x14+var_14]
0x2086 LDR             R2, =dword_8CD90
0x2088 MOVS            R3, #1
0x208a BL              sub_6D06
0x208e ADD             SP, SP, #0x14
0x2090 POP             {R4-R7}
0x2092 POP             {R0}
0x2094 BX              R0