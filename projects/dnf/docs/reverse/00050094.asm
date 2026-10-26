0x50094 PUSH            {R4-R7,LR}
0x50096 LDR             R3, =dword_1501D90
0x50098 SUB             SP, SP, #4
0x5009a LDR             R0, [R3]
0x5009c BL              sub_4F154
0x500a0 CMP             R0, #0
0x500a2 BNE             loc_500A6
0x500a4 B               loc_5040A
0x500a6 CMP             R0, #0x38 ; '8'
0x500a8 BEQ             loc_50104
0x500aa CMP             R0, #0x38 ; '8'
0x500ac BHI             loc_500CA
0x500ae CMP             R0, #0x34 ; '4'
0x500b0 BEQ             loc_5011A
0x500b2 CMP             R0, #0x34 ; '4'
0x500b4 BHI             loc_500BE
0x500b6 CMP             R0, #0x32 ; '2'
0x500b8 BEQ             loc_500BC
0x500ba B               loc_5040A
0x500bc B               loc_50104
0x500be CMP             R0, #0x35 ; '5'
0x500c0 BEQ             loc_50162
0x500c2 CMP             R0, #0x36 ; '6'
0x500c4 BEQ             loc_500C8
0x500c6 B               loc_5040A
0x500c8 B               loc_5013C
0x500ca ADDS            R2, R0, #3
0x500cc BEQ             loc_5011A
0x500ce ADDS            R3, R0, #3
0x500d0 BHI             loc_500DE
0x500d2 ADDS            R2, R0, #5
0x500d4 BEQ             loc_50162
0x500d6 ADDS            R0, #4
0x500d8 BEQ             loc_500DC
0x500da B               loc_5040A
0x500dc B               loc_5013C
0x500de ADDS            R3, R0, #2
0x500e0 BEQ             loc_50104
0x500e2 ADDS            R0, #1
0x500e4 BEQ             loc_500E8
0x500e6 B               loc_5040A
0x500e8 B               loc_50104
0x500ea CMP             R3, #2
0x500ec BEQ             loc_500F0
0x500ee B               loc_5040A
0x500f0 LDR             R0, =dword_1501DA0
0x500f2 LDR             R2, [R0]
0x500f4 CMP             R2, #0
0x500f6 BEQ             loc_500FA
0x500f8 B               loc_5040A
0x500fa MOVS            R3, #1
0x500fc STR             R3, [R1]
0x500fe LDR             R3, =byte_1533C0B
0x50100 STRB            R2, [R3]
0x50102 B               loc_5040A
0x50104 LDR             R1, =dword_1501C18
0x50106 LDR             R3, [R1]
0x50108 CMP             R3, #1
0x5010a BNE             loc_500EA
0x5010c MOVS            R3, #2
0x5010e STR             R3, [R1]
0x50110 LDR             R3, =dword_1501DA0
0x50112 MOVS            R2, #0
0x50114 STR             R2, [R3]
0x50116 LDR             R3, =byte_15337C0
0x50118 B               loc_50100
0x5011a LDR             R3, =dword_1501C18
0x5011c LDR             R3, [R3]
0x5011e CMP             R3, #1
0x50120 BEQ             loc_50124
0x50122 B               loc_5040A
0x50124 LDR             R2, =byte_1533C0B
0x50126 LDRB            R3, [R2]
0x50128 SUBS            R3, #1
0x5012a LSLS            R3, R3, #0x18
0x5012c LSRS            R3, R3, #0x18
0x5012e STRB            R3, [R2]
0x50130 LSLS            R3, R3, #0x18
0x50132 CMP             R3, #0
0x50134 BLT             loc_50138
0x50136 B               loc_5040A
0x50138 MOVS            R3, #5
0x5013a B               loc_5015E
0x5013c LDR             R3, =dword_1501C18
0x5013e LDR             R3, [R3]
0x50140 CMP             R3, #1
0x50142 BEQ             loc_50146
0x50144 B               loc_5040A
0x50146 LDR             R2, =byte_1533C0B
0x50148 LDRB            R3, [R2]
0x5014a ADDS            R3, #1
0x5014c LSLS            R3, R3, #0x18
0x5014e LSRS            R3, R3, #0x18
0x50150 STRB            R3, [R2]
0x50152 LSLS            R3, R3, #0x18
0x50154 ASRS            R3, R3, #0x18
0x50156 CMP             R3, #5
0x50158 BGT             loc_5015C
0x5015a B               loc_5040A
0x5015c MOVS            R3, #0
0x5015e STRB            R3, [R2]
0x50160 B               loc_5040A
0x50162 LDR             R7, =dword_1501C18
0x50164 LDR             R6, [R7]
0x50166 CMP             R6, #1
0x50168 BNE             loc_501AC
0x5016a LDR             R4, =byte_150C6BC
0x5016c MOVS            R3, #(byte_150C6C4 - 0x150C6BC)
0x5016e LDRSB           R3, [R4,R3]; byte_150C6C4
0x50170 CMP             R3, #3
0x50172 BEQ             loc_50176
0x50174 B               loc_5040A
0x50176 LDR             R3, =byte_15340F4
0x50178 LDRB            R3, [R3]
0x5017a CMP             R3, #0
0x5017c BNE             loc_50180
0x5017e B               loc_5040A
0x50180 LDR             R3, =byte_1533C0B
0x50182 LDRB            R0, [R3]
0x50184 LSLS            R3, R0, #0x18
0x50186 ASRS            R1, R3, #0x18
0x50188 CMP             R1, #1
0x5018a BGT             loc_5018E
0x5018c B               loc_5040A
0x5018e LSLS            R2, R1, #4
0x50190 LDR             R3, =unk_1535928
0x50192 SUBS            R2, R2, R1
0x50194 LSLS            R2, R2, #2
0x50196 ADDS            R2, R2, R3
0x50198 SUBS            R2, #0x78 ; 'x'
0x5019a LDRB            R3, [R2,#1]
0x5019c CMP             R3, #0
0x5019e BNE             loc_501A2
0x501a0 B               loc_5040A
0x501a2 SUBS            R3, R0, #2
0x501a4 STRB            R3, [R4,#(byte_150C6CB - 0x150C6BC)]
0x501a6 MOVS            R3, #2
0x501a8 STR             R3, [R7]
0x501aa B               loc_5040A
0x501ac CMP             R6, #2
0x501ae BEQ             loc_501B2
0x501b0 B               loc_5040A
0x501b2 LDR             R2, =dword_1501DA0
0x501b4 LDR             R5, [R2]
0x501b6 STR             R2, [SP,#4+var_4]
0x501b8 CMP             R5, #0
0x501ba BNE             loc_5027E
0x501bc LDR             R4, =byte_150C6BC
0x501be LDRB            R3, [R4,#(byte_150C6C4 - 0x150C6BC)]
0x501c0 CMP             R3, #0
0x501c2 BNE             loc_501EE
0x501c4 MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x501c6 LDRSH           R0, [R4,R3]; word_150C6BE
0x501c8 LDR             R3, =(sub_1F5C8+1)
0x501ca BL              sub_66A76
0x501ce CMP             R0, #0
0x501d0 BNE             loc_50206
0x501d2 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x501d4 LDR             R3, =(sub_222AC+1)
0x501d6 BL              sub_66A76
0x501da CMP             R0, #0
0x501dc BNE             loc_501E4
0x501de LDR             R2, [SP,#4+var_4]
0x501e0 STR             R6, [R2]
0x501e2 B               loc_5040A
0x501e4 LDR             R3, =(sub_22420+1)
0x501e6 BL              sub_66A76
0x501ea MOVS            R3, #1
0x501ec B               loc_502E0
0x501ee LSLS            R3, R3, #0x18
0x501f0 ASRS            R5, R3, #0x18
0x501f2 CMP             R5, #3
0x501f4 BEQ             loc_501F8
0x501f6 B               loc_5040A
0x501f8 MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x501fa LDRSH           R0, [R4,R3]; word_150C6BE
0x501fc LDR             R3, =(sub_1F558+1)
0x501fe BL              sub_66A76
0x50202 CMP             R0, #0
0x50204 BEQ             loc_5021A
0x50206 MOVS            R2, #0
0x50208 MOVS            R3, #0
0x5020a MOVS            R0, #1
0x5020c MOVS            R1, #0xB
0x5020e LDR             R4, =(sub_1404+1)
0x50210 BL              sub_66A78
0x50214 LDR             R2, =dword_1501D7C
0x50216 MOVS            R3, #6
0x50218 B               loc_50338
0x5021a LDR             R3, =byte_15340F4
0x5021c LDRB            R3, [R3]
0x5021e CMP             R3, #0
0x50220 BEQ             loc_50242
0x50222 LDRB            R3, [R4,#(byte_150C6CB - 0x150C6BC)]
0x50224 LSLS            R3, R3, #0x18
0x50226 ASRS            R1, R3, #0x18
0x50228 CMP             R1, #0
0x5022a BLT             loc_5023C
0x5022c LSLS            R2, R1, #4
0x5022e LDR             R3, =unk_1535928
0x50230 SUBS            R2, R2, R1
0x50232 LSLS            R2, R2, #2
0x50234 ADDS            R2, R2, R3
0x50236 LDRB            R3, [R2,#1]
0x50238 CMP             R3, #0
0x5023a BNE             loc_50242
0x5023c LDR             R2, [SP,#4+var_4]
0x5023e STR             R5, [R2]
0x50240 B               loc_5040A
0x50242 LDR             R4, =byte_150C6BC
0x50244 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x50246 BL              sub_3587C
0x5024a LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x5024c BL              sub_3A264
0x50250 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x50252 LDR             R3, =(sub_221BC+1)
0x50254 BL              sub_66A76
0x50258 LDR             R3, =(sub_22420+1)
0x5025a BL              sub_66A76
0x5025e LDR             R2, =dword_1501DA0
0x50260 MOVS            R3, #4
0x50262 STR             R3, [R2]
0x50264 MOVS            R2, #(word_150C6BE - 0x150C6BC)
0x50266 LDRSH           R3, [R4,R2]; word_150C6BE
0x50268 CMP             R3, #6
0x5026a BEQ             loc_5026E
0x5026c B               loc_5040A
0x5026e LDR             R3, =byte_1534D88
0x50270 MOVS            R2, #1
0x50272 STRB            R2, [R3]
0x50274 STRB            R2, [R3,#(byte_1534D89 - 0x1534D88)]
0x50276 MOVS            R2, #0
0x50278 STRB            R2, [R3,#(byte_1534D8A - 0x1534D88)]
0x5027a STRB            R2, [R3,#(byte_1534D8B - 0x1534D88)]
0x5027c B               loc_5040A
0x5027e CMP             R5, #1
0x50280 BNE             loc_502B8
0x50282 LDR             R6, =byte_150C6BC
0x50284 MOVS            R0, #1
0x50286 MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x50288 LDRSH           R1, [R6,R3]; word_150C6BE
0x5028a MOVS            R2, #1
0x5028c MOVS            R3, #0
0x5028e LDR             R4, =(sub_21440+1)
0x50290 BL              sub_66A78
0x50294 LDR             R3, =byte_1402C5C
0x50296 LSLS            R0, R0, #0x18
0x50298 LSRS            R0, R0, #0x18
0x5029a STRB            R0, [R3]
0x5029c CMP             R0, #0xFF
0x5029e BNE             loc_50334
0x502a0 LDR             R3, [SP,#4+var_4]
0x502a2 MOVS            R2, #0
0x502a4 STR             R2, [R3]
0x502a6 LDR             R3, =dword_1501DB4
0x502a8 STR             R2, [R3]
0x502aa LDR             R3, =dword_1501C80
0x502ac STR             R2, [R3]
0x502ae LDR             R3, =dword_1501C58
0x502b0 STR             R5, [R7]
0x502b2 STR             R2, [R3]
0x502b4 LDRH            R3, [R6,#(word_150C6C6 - 0x150C6BC)]
0x502b6 B               loc_5035A
0x502b8 CMP             R5, #2
0x502ba BNE             loc_502D8
0x502bc MOVS            R3, #1
0x502be STR             R3, [R7]
0x502c0 LDR             R3, [SP,#4+var_4]
0x502c2 MOVS            R2, #0
0x502c4 STR             R2, [R3]
0x502c6 LDR             R3, =dword_1501DB4
0x502c8 STR             R2, [R3]
0x502ca LDR             R3, =dword_1501C80
0x502cc STR             R2, [R3]
0x502ce LDR             R3, =dword_1501C58
0x502d0 MOVS            R0, #1
0x502d2 MOVS            R1, #0
0x502d4 STR             R2, [R3]
0x502d6 B               loc_50402
0x502d8 CMP             R5, #3
0x502da BNE             loc_502E4
0x502dc STR             R6, [R7]
0x502de MOVS            R3, #0
0x502e0 LDR             R2, [SP,#4+var_4]
0x502e2 B               loc_50338
0x502e4 CMP             R5, #4
0x502e6 BNE             loc_5033C
0x502e8 LDR             R5, =byte_150C6BC
0x502ea MOVS            R0, #1
0x502ec MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x502ee LDRSH           R1, [R5,R3]; word_150C6BE
0x502f0 MOVS            R2, #1
0x502f2 MOVS            R3, #0
0x502f4 LDR             R4, =(sub_21440+1)
0x502f6 BL              sub_66A78
0x502fa LDR             R3, =byte_1402C5C
0x502fc LSLS            R0, R0, #0x18
0x502fe LSRS            R0, R0, #0x18
0x50300 STRB            R0, [R3]
0x50302 CMP             R0, #0xFF
0x50304 BNE             loc_50334
0x50306 MOVS            R3, #1
0x50308 STR             R3, [R7]
0x5030a LDR             R3, [SP,#4+var_4]
0x5030c MOVS            R2, #0
0x5030e STR             R2, [R3]
0x50310 LDR             R3, =dword_1501DB4
0x50312 STR             R2, [R3]
0x50314 LDR             R3, =dword_1501C80
0x50316 STR             R2, [R3]
0x50318 LDR             R3, =dword_1501C58
0x5031a STR             R2, [R3]
0x5031c LDRH            R3, [R5,#(word_150C6C6 - 0x150C6BC)]
0x5031e LSLS            R0, R3, #0x10
0x50320 CMP             R0, #0
0x50322 BGT             loc_50386
0x50324 LDRH            R3, [R5,#(word_150C6C8 - 0x150C6BC)]
0x50326 LSLS            R3, R3, #0x10
0x50328 ASRS            R1, R3, #0x10
0x5032a CMP             R1, #0
0x5032c BLE             loc_503FC
0x5032e MOVS            R0, #(byte_150C6BD - 0x150C6BC)
0x50330 LDRSB           R0, [R5,R0]; byte_150C6BD
0x50332 B               loc_5039E
0x50334 LDR             R2, =dword_1501DA0
0x50336 MOVS            R3, #5
0x50338 STR             R3, [R2]
0x5033a B               loc_5040A
0x5033c CMP             R5, #5
0x5033e BNE             loc_50362
0x50340 MOVS            R3, #1
0x50342 STR             R3, [R7]
0x50344 LDR             R3, [SP,#4+var_4]
0x50346 MOVS            R2, #0
0x50348 STR             R2, [R3]
0x5034a LDR             R3, =dword_1501DB4
0x5034c STR             R2, [R3]
0x5034e LDR             R3, =dword_1501C80
0x50350 STR             R2, [R3]
0x50352 LDR             R3, =dword_1501C58
0x50354 STR             R2, [R3]
0x50356 LDR             R3, =byte_150C6BC
0x50358 LDRH            R3, [R3,#(word_150C6C6 - 0x150C6BC)]
0x5035a LSLS            R0, R3, #0x10
0x5035c CMP             R0, #0
0x5035e BGT             loc_50386
0x50360 B               loc_503FC
0x50362 CMP             R5, #6
0x50364 BNE             loc_5040A
0x50366 MOVS            R3, #1
0x50368 STR             R3, [R7]
0x5036a LDR             R3, [SP,#4+var_4]
0x5036c MOVS            R2, #0
0x5036e STR             R2, [R3]
0x50370 LDR             R3, =dword_1501DB4
0x50372 STR             R2, [R3]
0x50374 LDR             R3, =dword_1501C80
0x50376 STR             R2, [R3]
0x50378 LDR             R3, =dword_1501C58
0x5037a STR             R2, [R3]
0x5037c LDR             R2, =byte_150C6BC
0x5037e LDRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x50380 LSLS            R0, R3, #0x10
0x50382 CMP             R0, #0
0x50384 BLE             loc_50390
0x50386 LSRS            R0, R0, #0x10
0x50388 LDR             R3, =0x70561
0x5038a BL              sub_66A76
0x5038e B               loc_5040A
0x50390 LDRH            R3, [R2,#(word_150C6C8 - 0x150C6BC)]
0x50392 LSLS            R3, R3, #0x10
0x50394 ASRS            R1, R3, #0x10
0x50396 CMP             R1, #0
0x50398 BLE             loc_503FC
0x5039a MOVS            R0, #(byte_150C6BD - 0x150C6BC)
0x5039c LDRSB           R0, [R2,R0]; byte_150C6BD
0x5039e BL              sub_4EE2C
0x503a2 B               loc_5040A
0x503fc MOVS            R0, #1
0x503fe MOVS            R1, #0
0x50400 MOVS            R2, #0
0x50402 MOVS            R3, #0
0x50404 LDR             R4, =(sub_1404+1)
0x50406 BL              sub_66A78
0x5040a ADD             SP, SP, #4
0x5040c POP             {R4-R7}
0x5040e POP             {R0}
0x50410 BX              R0