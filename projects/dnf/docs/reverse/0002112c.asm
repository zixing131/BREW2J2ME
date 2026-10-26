0x2112c PUSH            {R4-R7,LR}
0x2112e SUB             SP, SP, #0x44
0x21130 LDR             R0, =aQuest; "quest"
0x21132 LDR             R3, =0x6CBE1
0x21134 BL              sub_22468
0x21138 STR             R0, [SP,#0x44+var_34]
0x2113a CMP             R0, #0
0x2113c BNE             loc_21140
0x2113e B               loc_2141C
0x21140 LDR             R5, =unk_140327C
0x21142 LDR             R1, [SP,#0x44+var_34]
0x21144 MOVS            R2, #2
0x21146 ADD             R0, SP, #0x44+var_4
0x21148 BL              sub_2246C
0x2114c LDR             R1, [SP,#0x44+var_34]
0x2114e MOVS            R2, #4
0x21150 ADDS            R1, #2
0x21152 ADD             R0, SP, #0x44+var_C
0x21154 BL              sub_2246C
0x21158 LDR             R1, [SP,#0x44+var_34]
0x2115a MOVS            R2, #4
0x2115c ADDS            R1, #6
0x2115e ADD             R0, SP, #0x44+var_8
0x21160 BL              sub_2246C
0x21164 LDR             R0, [SP,#0x44+var_C]
0x21166 LDR             R6, =unk_14032EC
0x21168 ADDS            R0, #2
0x2116a BL              sub_2246E
0x2116e STR             R0, [SP,#0x44+var_30]
0x21170 LDR             R0, [SP,#0x44+var_34]
0x21172 MOVS            R1, #6
0x21174 LDR             R3, [SP,#0x44+var_8]
0x21176 LDR             R2, [SP,#0x44+var_C]
0x21178 STR             R1, [SP,#0x44+var_44]
0x2117a LDR             R4, =0x692B5
0x2117c LDR             R1, [SP,#0x44+var_30]
0x2117e ADDS            R0, #0xA
0x21180 BL              sub_2246A
0x21184 LDR             R4, =word_150C9D0
0x21186 LDR             R1, [SP,#0x44+var_30]
0x21188 MOVS            R2, #2
0x2118a MOVS            R0, R4
0x2118c BL              sub_2246C
0x21190 LDR             R2, [SP,#0x44+var_30]
0x21192 ADDS            R2, #2
0x21194 STR             R2, [SP,#0x44+var_20]
0x21196 LDRH            R3, [R4]
0x21198 LSLS            R0, R3, #6
0x2119a SUBS            R0, R0, R3
0x2119c LSLS            R0, R0, #2
0x2119e ADDS            R0, #2
0x211a0 BL              sub_2246E
0x211a4 MOVS            R3, #0
0x211a6 STR             R0, [R4,#(dword_150C9D4 - 0x150C9D0)]
0x211a8 STR             R0, [R4,#(dword_150C9D8 - 0x150C9D0)]
0x211aa STR             R3, [SP,#0x44+var_2C]
0x211ac B               loc_213F8
0x211ae LDR             R2, [SP,#0x44+var_24]
0x211b0 LDR             R0, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x211b2 LDR             R4, =unk_140327C
0x211b4 ADDS            R0, R2, R0
0x211b6 LDR             R1, [SP,#0x44+var_20]
0x211b8 MOVS            R2, #1
0x211ba BL              sub_2246A
0x211be LDR             R3, [SP,#0x44+var_24]
0x211c0 LDR             R0, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x211c2 LDR             R1, [SP,#0x44+var_20]
0x211c4 ADDS            R0, R3, R0
0x211c6 ADDS            R1, #1
0x211c8 MOVS            R2, #0x20 ; ' '
0x211ca ADDS            R0, #1
0x211cc BL              sub_2246A
0x211d0 LDR             R2, [SP,#0x44+var_24]
0x211d2 LDR             R0, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x211d4 LDR             R1, [SP,#0x44+var_20]
0x211d6 ADDS            R0, R2, R0
0x211d8 ADDS            R1, #0x21 ; '!'
0x211da MOVS            R2, #0x80
0x211dc ADDS            R0, #0x21 ; '!'
0x211de BL              sub_2246A
0x211e2 LDR             R3, [SP,#0x44+var_24]
0x211e4 LDR             R0, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x211e6 LDR             R1, [SP,#0x44+var_20]
0x211e8 ADDS            R0, R3, R0
0x211ea ADDS            R1, #0xA1
0x211ec MOVS            R2, #2
0x211ee ADDS            R0, #0xA2
0x211f0 BL              sub_2246A
0x211f4 LDR             R2, [SP,#0x44+var_24]
0x211f6 LDR             R0, [R5,#(dword_150C9D8 - 0x150C9D0)]
0x211f8 LDR             R1, [SP,#0x44+var_20]
0x211fa ADDS            R0, R2, R0
0x211fc ADDS            R0, #0xA4
0x211fe ADDS            R1, #0xA3
0x21200 MOVS            R2, #2
0x21202 BL              sub_2246A
0x21206 LDR             R7, [SP,#0x44+var_20]
0x21208 MOVS            R3, #0
0x2120a STR             R3, [SP,#0x44+var_10]
0x2120c ADDS            R7, #0xA5
0x2120e LDR             R6, =word_150C9D0
0x21210 LDR             R3, [SP,#0x44+var_10]
0x21212 LDR             R2, [SP,#0x44+var_24]
0x21214 LSLS            R3, R3, #3
0x21216 LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x21218 MOVS            R4, R3
0x2121a ADDS            R4, #0xA8
0x2121c ADDS            R0, R2, R0
0x2121e LDR             R5, =unk_140327C
0x21220 STR             R3, [SP,#0x44+var_38]
0x21222 MOVS            R1, R7
0x21224 ADDS            R0, R0, R4
0x21226 MOVS            R2, #1
0x21228 BL              sub_2246C
0x2122c LDR             R2, [SP,#0x44+var_24]
0x2122e LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x21230 ADDS            R0, R2, R0
0x21232 ADDS            R0, R0, R4
0x21234 ADDS            R1, R7, #1
0x21236 MOVS            R2, #1
0x21238 ADDS            R0, #1
0x2123a BL              sub_2246C
0x2123e LDR             R3, [SP,#0x44+var_24]
0x21240 LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x21242 ADDS            R0, R3, R0
0x21244 ADDS            R0, R0, R4
0x21246 ADDS            R1, R7, #2
0x21248 MOVS            R2, #2
0x2124a ADDS            R0, #2
0x2124c BL              sub_2246C
0x21250 LDR             R2, [SP,#0x44+var_24]
0x21252 LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x21254 LDR             R4, [SP,#0x44+var_38]
0x21256 ADDS            R0, R2, R0
0x21258 ADDS            R4, #0xAC
0x2125a ADDS            R1, R7, #4
0x2125c ADDS            R0, R0, R4
0x2125e MOVS            R2, #1
0x21260 BL              sub_2246C
0x21264 LDR             R3, [SP,#0x44+var_10]
0x21266 ADDS            R3, #1
0x21268 ADDS            R7, #5
0x2126a STR             R3, [SP,#0x44+var_10]
0x2126c CMP             R3, #3
0x2126e BNE             loc_2120E
0x21270 LDR             R2, [SP,#0x44+var_20]
0x21272 MOVS            R3, #0
0x21274 ADDS            R2, #0xB4
0x21276 STR             R2, [SP,#0x44+var_1C]
0x21278 STR             R3, [SP,#0x44+var_14]
0x2127a LDR             R7, =word_150C9D0
0x2127c LDR             R3, [SP,#0x44+var_14]
0x2127e LDR             R2, [SP,#0x44+var_24]
0x21280 LSLS            R4, R3, #3
0x21282 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x21284 MOVS            R5, R4
0x21286 ADDS            R0, R2, R0
0x21288 ADDS            R5, #0xC0
0x2128a LDR             R6, =unk_140327C
0x2128c LDR             R1, [SP,#0x44+var_1C]
0x2128e MOVS            R2, #1
0x21290 ADDS            R0, R0, R5
0x21292 BL              sub_2246E
0x21296 LDR             R2, [SP,#0x44+var_24]
0x21298 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x2129a LDR             R1, [SP,#0x44+var_1C]
0x2129c ADDS            R0, R2, R0
0x2129e ADDS            R0, R0, R5
0x212a0 ADDS            R1, #1
0x212a2 MOVS            R2, #2
0x212a4 ADDS            R0, #2
0x212a6 BL              sub_2246E
0x212aa LDR             R3, [SP,#0x44+var_24]
0x212ac LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x212ae LDR             R1, [SP,#0x44+var_1C]
0x212b0 ADDS            R0, R3, R0
0x212b2 ADDS            R4, #0xC4
0x212b4 ADDS            R1, #3
0x212b6 MOVS            R2, #2
0x212b8 ADDS            R0, R0, R4
0x212ba BL              sub_2246E
0x212be LDR             R2, [SP,#0x44+var_24]
0x212c0 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x212c2 LDR             R1, [SP,#0x44+var_1C]
0x212c4 ADDS            R0, R2, R0
0x212c6 ADDS            R0, R0, R4
0x212c8 MOVS            R2, #1
0x212ca ADDS            R0, #2
0x212cc ADDS            R1, #5
0x212ce BL              sub_2246E
0x212d2 LDR             R3, [SP,#0x44+var_1C]
0x212d4 LDR             R2, [SP,#0x44+var_14]
0x212d6 ADDS            R3, #6
0x212d8 ADDS            R2, #1
0x212da STR             R3, [SP,#0x44+var_1C]
0x212dc STR             R2, [SP,#0x44+var_14]
0x212de CMP             R2, #3
0x212e0 BNE             loc_2127A
0x212e2 LDR             R3, [SP,#0x44+var_24]
0x212e4 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x212e6 LDR             R1, [SP,#0x44+var_20]
0x212e8 ADDS            R0, R3, R0
0x212ea ADDS            R1, #0xC6
0x212ec MOVS            R2, #4
0x212ee ADDS            R0, #0xD8
0x212f0 BL              sub_2246E
0x212f4 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x212f6 LDR             R2, [SP,#0x44+var_24]
0x212f8 LDR             R1, [SP,#0x44+var_20]
0x212fa ADDS            R0, R2, R0
0x212fc ADDS            R1, #0xCA
0x212fe MOVS            R2, #4
0x21300 ADDS            R0, #0xDC
0x21302 BL              sub_2246E
0x21306 LDR             R0, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x21308 LDR             R3, [SP,#0x44+var_24]
0x2130a LDR             R1, [SP,#0x44+var_20]
0x2130c ADDS            R0, R3, R0
0x2130e MOVS            R2, #1
0x21310 ADDS            R0, #0xE0
0x21312 ADDS            R1, #0xCE
0x21314 BL              sub_2246E
0x21318 LDR             R7, [SP,#0x44+var_20]
0x2131a MOVS            R2, #0
0x2131c STR             R2, [SP,#0x44+var_18]
0x2131e ADDS            R7, #0xCF
0x21320 MOV             R5, SP
0x21322 ADDS            R5, #0x43 ; 'C'
0x21324 MOVS            R3, #0
0x21326 STRB            R3, [R5]
0x21328 LDR             R3, =unk_140327C
0x2132a MOVS            R1, R7
0x2132c MOVS            R2, #1
0x2132e STR             R3, [SP,#0x44+var_3C]
0x21330 MOVS            R0, R5
0x21332 BL              sub_22468
0x21336 LDR             R6, =word_150C9D0
0x21338 LDR             R2, [SP,#0x44+var_18]
0x2133a LDR             R3, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x2133c LSLS            R4, R2, #2
0x2133e LDR             R2, [SP,#0x44+var_24]
0x21340 ADDS            R3, R4, R3
0x21342 ADDS            R3, R3, R2
0x21344 LDRB            R2, [R5]
0x21346 ADDS            R3, #0xE4
0x21348 STRB            R2, [R3]
0x2134a LDR             R3, [SP,#0x44+var_24]
0x2134c LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x2134e ADDS            R4, #0xE4
0x21350 ADDS            R0, R3, R0
0x21352 ADDS            R0, R0, R4
0x21354 ADDS            R1, R7, #1
0x21356 MOVS            R2, #1
0x21358 LDR             R3, [SP,#0x44+var_3C]
0x2135a ADDS            R0, #1
0x2135c BL              sub_22468
0x21360 LDR             R2, [SP,#0x44+var_24]
0x21362 LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x21364 ADDS            R0, R2, R0
0x21366 ADDS            R0, R0, R4
0x21368 ADDS            R1, R7, #2
0x2136a MOVS            R2, #1
0x2136c ADDS            R0, #2
0x2136e LDR             R3, [SP,#0x44+var_3C]
0x21370 BL              sub_22468
0x21374 LDR             R2, [SP,#0x44+var_18]
0x21376 ADDS            R2, #1
0x21378 ADDS            R7, #3
0x2137a STR             R2, [SP,#0x44+var_18]
0x2137c CMP             R2, #2
0x2137e BNE             loc_21320
0x21380 LDR             R7, [SP,#0x44+var_20]
0x21382 MOVS            R3, #0
0x21384 STR             R3, [SP,#0x44+var_28]
0x21386 ADDS            R7, #0xD5
0x21388 MOV             R5, SP
0x2138a ADDS            R5, #0x43 ; 'C'
0x2138c MOVS            R3, #0
0x2138e STRB            R3, [R5]
0x21390 LDR             R3, =unk_140327C
0x21392 MOVS            R1, R7
0x21394 MOVS            R2, #1
0x21396 STR             R3, [SP,#0x44+var_40]
0x21398 MOVS            R0, R5
0x2139a BL              sub_22468
0x2139e LDR             R6, =word_150C9D0
0x213a0 LDR             R2, [SP,#0x44+var_28]
0x213a2 LDR             R3, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x213a4 LSLS            R4, R2, #2
0x213a6 LDR             R2, [SP,#0x44+var_24]
0x213a8 ADDS            R3, R4, R3
0x213aa ADDS            R3, R3, R2
0x213ac LDRB            R2, [R5]
0x213ae ADDS            R3, #0xEC
0x213b0 STRB            R2, [R3]
0x213b2 LDR             R3, [SP,#0x44+var_24]
0x213b4 LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x213b6 ADDS            R4, #0xEC
0x213b8 ADDS            R0, R3, R0
0x213ba ADDS            R0, R0, R4
0x213bc ADDS            R1, R7, #1
0x213be MOVS            R2, #1
0x213c0 LDR             R3, [SP,#0x44+var_40]
0x213c2 ADDS            R0, #1
0x213c4 BL              sub_22468
0x213c8 LDR             R2, [SP,#0x44+var_24]
0x213ca LDR             R0, [R6,#(dword_150C9D8 - 0x150C9D0)]
0x213cc ADDS            R0, R2, R0
0x213ce ADDS            R0, R0, R4
0x213d0 ADDS            R1, R7, #2
0x213d2 MOVS            R2, #1
0x213d4 ADDS            R0, #2
0x213d6 LDR             R3, [SP,#0x44+var_40]
0x213d8 BL              sub_22468
0x213dc LDR             R2, [SP,#0x44+var_28]
0x213de ADDS            R2, #1
0x213e0 ADDS            R7, #3
0x213e2 STR             R2, [SP,#0x44+var_28]
0x213e4 CMP             R2, #4
0x213e6 BNE             loc_21388
0x213e8 LDR             R3, [SP,#0x44+var_20]
0x213ea LDR             R2, [SP,#0x44+var_2C]
0x213ec ADDS            R3, #0xE1
0x213ee STR             R3, [SP,#0x44+var_20]
0x213f0 ADDS            R2, #1
0x213f2 LDR             R3, [SP,#0x44+var_24]
0x213f4 STR             R2, [SP,#0x44+var_2C]
0x213f6 ADDS            R3, #0xFC
0x213f8 STR             R3, [SP,#0x44+var_24]
0x213fa LDR             R5, =word_150C9D0
0x213fc LDR             R2, [SP,#0x44+var_2C]
0x213fe LDRH            R3, [R5]
0x21400 CMP             R2, R3
0x21402 BGE             loc_21406
0x21404 B               loc_211AE
0x21406 LDR             R3, [SP,#0x44+var_30]
0x21408 CMP             R3, #0
0x2140a BEQ             loc_21414
0x2140c MOVS            R0, R3
0x2140e LDR             R3, =unk_14032FC
0x21410 BL              sub_22468
0x21414 LDR             R0, [SP,#0x44+var_34]
0x21416 LDR             R3, =unk_14032FC
0x21418 BL              sub_22468
0x2141c ADD             SP, SP, #0x44 ; 'D'
0x2141e POP             {R4-R7}
0x21420 POP             {R0}
0x21422 BX              R0