0x20d8 PUSH            {R4-R7,LR}
0x20da SUB             SP, SP, #0x58
0x20dc MOVS            R4, R0
0x20de LDR             R0, [SP,#0x58+arg_0]
0x20e0 LSLS            R1, R1, #0x18
0x20e2 LSLS            R2, R2, #0x18
0x20e4 LSLS            R3, R3, #0x18
0x20e6 LSLS            R0, R0, #0x18
0x20e8 LSRS            R2, R2, #0x18
0x20ea LSRS            R1, R1, #0x18
0x20ec LSRS            R3, R3, #0x18
0x20ee LSRS            R0, R0, #0x18
0x20f0 STR             R2, [SP,#0x58+var_3C]
0x20f2 STR             R3, [SP,#0x58+var_40]
0x20f4 STR             R0, [SP,#0x58+var_44]
0x20f6 LDR             R3, =0x2CD19
0x20f8 STR             R1, [SP,#0x58+var_38]
0x20fa ADD             R0, SP, #0x58+var_8
0x20fc BL              sub_6D00
0x2100 LDR             R3, =byte_1501ED4
0x2102 LDRB            R3, [R3]
0x2104 LSLS            R3, R3, #0x18
0x2106 ASRS            R3, R3, #0x18
0x2108 LDR             R2, =byte_1501E15
0x210a CMP             R3, #1
0x210c BNE             loc_2118
0x210e LDRB            R2, [R2]
0x2110 MOVS            R3, R2
0x2112 ADDS            R3, #1
0x2114 STR             R2, [SP,#0x58+var_30]
0x2116 B               loc_2120
0x2118 LDRB            R2, [R2]
0x211a MOVS            R3, R2
0x211c STR             R2, [SP,#0x58+var_30]
0x211e SUBS            R3, #1
0x2120 LSLS            R3, R3, #0x18
0x2122 LSRS            R2, R3, #0x18
0x2124 LSLS            R2, R2, #0x18
0x2126 ASRS            R2, R2, #0x18
0x2128 LSLS            R3, R2, #0x1A
0x212a SUBS            R3, R3, R2
0x212c LSLS            R3, R3, #2
0x212e SUBS            R3, R3, R2
0x2130 LSLS            R3, R3, #4
0x2132 ADDS            R7, R4, R3
0x2134 LDR             R3, =unk_1501F68
0x2136 MOVS            R2, #0
0x2138 STR             R2, [SP,#0x58+var_34]
0x213a STR             R3, [SP,#0x58+var_2C]
0x213c LDR             R2, [SP,#0x58+var_38]
0x213e CMP             R2, #4
0x2140 BNE             loc_215E
0x2142 LDR             R2, [SP,#0x58+var_30]
0x2144 LSLS            R3, R2, #0x18
0x2146 LDR             R2, [SP,#0x58+var_34]
0x2148 ASRS            R3, R3, #0x18
0x214a CMP             R2, R3
0x214c BNE             loc_215E
0x214e ADD             R2, SP, #0x58+var_38
0x2150 LDRB            R2, [R2]
0x2152 ADD             R3, SP, #0x58+var_8
0x2154 STRB            R2, [R3]
0x2156 MOV             R2, SP
0x2158 LDRB            R2, [R2,#0x58+var_3C]
0x215a STRB            R2, [R3,#1]
0x215c B               loc_2170
0x215e ADD             R2, SP, #0x58+var_38
0x2160 LDRB            R2, [R2]
0x2162 ADD             R3, SP, #0x58+var_8
0x2164 STRB            R2, [R3]
0x2166 MOVS            R2, #0
0x2168 STRB            R2, [R3,#1]
0x216a MOV             R2, SP
0x216c LDRB            R2, [R2,#0x58+var_40]
0x216e STRB            R2, [R3,#2]
0x2170 LDR             R3, =dword_1501BFC
0x2172 LDR             R2, [SP,#0x58+var_2C]
0x2174 LDR             R1, [R3]
0x2176 STR             R3, [SP,#0x58+var_48]
0x2178 LDR             R3, [R2]
0x217a MOVS            R6, #0
0x217c ADD             R5, SP, #0x58+var_8
0x217e STR             R3, [SP,#0x58+var_58]
0x2180 MOVS            R3, #0x24 ; '$'
0x2182 STR             R3, [SP,#0x58+var_54]
0x2184 ADDS            R1, #0x14
0x2186 MOVS            R3, #0
0x2188 STR             R6, [SP,#0x58+var_50]
0x218a STR             R5, [SP,#0x58+var_4C]
0x218c MOVS            R0, R7
0x218e MOVS            R2, #0
0x2190 LDR             R4, =0x6B159
0x2192 BL              sub_6D02
0x2196 STRB            R6, [R5,#1]
0x2198 STRB            R6, [R5]
0x219a STRB            R6, [R5,#2]
0x219c LDR             R3, [SP,#0x58+var_44]
0x219e CMP             R3, #0
0x21a0 BEQ             loc_21D8
0x21a2 MOV             R4, SP
0x21a4 ADDS            R4, #0x32 ; '2'
0x21a6 MOVS            R0, R4
0x21a8 MOVS            R1, #0
0x21aa MOVS            R2, #0x1E
0x21ac LDR             R3, =unk_140329C
0x21ae BL              sub_6D00
0x21b2 LDR             R2, [SP,#0x58+var_34]
0x21b4 LDR             R1, =aSlotD; "Slot %d"
0x21b6 ADDS            R2, #1
0x21b8 MOVS            R0, R4
0x21ba LDR             R3, =unk_14032CC
0x21bc BL              sub_6D00
0x21c0 LDR             R2, [SP,#0x58+var_48]
0x21c2 LDR             R3, =0xFEED1400
0x21c4 LDR             R1, [R2]
0x21c6 MOVS            R0, R7
0x21c8 STR             R3, [SP,#0x58+var_54]
0x21ca MOVS            R2, R4
0x21cc SUBS            R1, #0x50 ; 'P'
0x21ce STR             R6, [SP,#0x58+var_58]
0x21d0 MOVS            R3, #1
0x21d2 LDR             R4, =0x676C5
0x21d4 BL              sub_6D02
0x21d8 LDR             R3, [SP,#0x58+var_34]
0x21da LDR             R2, [SP,#0x58+var_2C]
0x21dc ADDS            R3, #1
0x21de ADDS            R2, #0x24 ; '$'
0x21e0 STR             R3, [SP,#0x58+var_34]
0x21e2 STR             R2, [SP,#0x58+var_2C]
0x21e4 ADDS            R7, #0x50 ; 'P'
0x21e6 CMP             R3, #4
0x21e8 BNE             loc_213C
0x21ea ADD             SP, SP, #0x58 ; 'X'
0x21ec POP             {R4-R7}
0x21ee POP             {R0}
0x21f0 BX              R0