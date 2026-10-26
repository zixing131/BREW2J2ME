0x2220 PUSH            {R4-R7,LR}
0x2222 LSLS            R0, R0, #0x18
0x2224 LSLS            R1, R1, #0x18
0x2226 SUB             SP, SP, #0x58
0x2228 LSRS            R1, R1, #0x18
0x222a LSRS            R0, R0, #0x18
0x222c STR             R0, [SP,#0x58+var_38]
0x222e STR             R1, [SP,#0x58+var_3C]
0x2230 ADD             R0, SP, #0x58+var_8
0x2232 LDR             R3, =0x2CD19
0x2234 BL              sub_6D00
0x2238 LDR             R2, =unk_1501F68
0x223a MOVS            R1, #1
0x223c STR             R1, [SP,#0x58+var_30]
0x223e STR             R2, [SP,#0x58+var_2C]
0x2240 LDR             R3, [SP,#0x58+var_30]
0x2242 LDR             R7, =byte_1501E15
0x2244 SUBS            R3, #1
0x2246 STR             R3, [SP,#0x58+var_34]
0x2248 LDR             R4, [SP,#0x58+var_34]
0x224a MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x224c LDRSB           R3, [R7,R3]; byte_1501E15
0x224e CMP             R4, R3
0x2250 BNE             loc_233E
0x2252 LDR             R1, [SP,#0x58+var_3C]
0x2254 CMP             R1, #0
0x2256 BEQ             loc_228C
0x2258 ADD             R6, SP, #0x58+var_8
0x225a MOVS            R3, #4
0x225c STRB            R3, [R6]
0x225e MOVS            R3, #1
0x2260 STRB            R3, [R6,#1]
0x2262 LDR             R3, =dword_1501C14
0x2264 LDR             R2, [SP,#0x58+var_2C]
0x2266 LDR             R0, [R3]
0x2268 LDR             R3, =dword_1501BFC
0x226a LDR             R1, [R3]
0x226c LDR             R3, [R2]
0x226e MOVS            R5, #0
0x2270 STR             R3, [SP,#0x58+var_58]
0x2272 MOVS            R3, #0x24 ; '$'
0x2274 STR             R3, [SP,#0x58+var_54]
0x2276 ADDS            R1, #0x14
0x2278 STR             R5, [SP,#0x58+var_50]
0x227a STR             R6, [SP,#0x58+var_4C]
0x227c MOVS            R2, #0
0x227e MOVS            R3, #0
0x2280 LDR             R4, =0x6B159
0x2282 BL              sub_6D02
0x2286 STRB            R5, [R6]
0x2288 STRB            R5, [R6,#1]
0x228a B               loc_22FC
0x228c LDR             R3, [SP,#0x58+var_38]
0x228e LDR             R4, =dword_1501C14
0x2290 LDR             R5, =dword_1501BFC
0x2292 CMP             R3, #0
0x2294 BEQ             loc_22DA
0x2296 LDR             R0, [SP,#0x58+var_34]
0x2298 BL              sub_1BE4
0x229c LDRB            R3, [R7]
0x229e LDR             R1, [SP,#0x58+var_34]
0x22a0 LSLS            R3, R3, #0x18
0x22a2 ASRS            R3, R3, #0x18
0x22a4 SUBS            R2, R1, R3
0x22a6 LSLS            R0, R2, #2
0x22a8 ADDS            R0, R0, R2
0x22aa LDR             R2, [R4]
0x22ac LSLS            R0, R0, #4
0x22ae ADDS            R0, R0, R2
0x22b0 LSLS            R2, R3, #3
0x22b2 ADDS            R2, R2, R3
0x22b4 LDR             R4, =unk_1501F4C
0x22b6 LSLS            R2, R2, #2
0x22b8 ADDS            R2, R2, R4
0x22ba LDR             R4, =unk_1501ED8
0x22bc LSLS            R3, R3, #4
0x22be LDR             R1, [R5]
0x22c0 ADDS            R3, R3, R4
0x22c2 LDR             R4, [SP,#0x58+var_3C]
0x22c4 ADDS            R1, #0x14
0x22c6 STR             R4, [SP,#0x58+var_58]
0x22c8 STR             R4, [SP,#0x58+var_54]
0x22ca STR             R4, [SP,#0x58+var_50]
0x22cc STR             R4, [SP,#0x58+var_4C]
0x22ce STR             R4, [SP,#0x58+var_48]
0x22d0 STR             R4, [SP,#0x58+var_44]
0x22d2 LDR             R4, =0x6B351
0x22d4 BL              sub_6D02
0x22d8 B               loc_22FC
0x22da LDR             R2, [SP,#0x58+var_2C]
0x22dc LDR             R3, [R2]
0x22de LDR             R0, [R4]
0x22e0 LDR             R1, [R5]
0x22e2 STR             R3, [SP,#0x58+var_58]
0x22e4 MOVS            R3, #0x24 ; '$'
0x22e6 STR             R3, [SP,#0x58+var_54]
0x22e8 LDR             R3, [SP,#0x58+var_38]
0x22ea STR             R3, [SP,#0x58+var_50]
0x22ec ADD             R3, SP, #0x58+var_8
0x22ee STR             R3, [SP,#0x58+var_4C]
0x22f0 ADDS            R1, #0x14
0x22f2 MOVS            R2, #0
0x22f4 MOVS            R3, #0
0x22f6 LDR             R4, =0x6B159
0x22f8 BL              sub_6D02
0x22fc MOV             R4, SP
0x22fe ADDS            R4, #0x32 ; '2'
0x2300 MOVS            R1, #0
0x2302 MOVS            R2, #0x1E
0x2304 LDR             R3, =unk_140329C
0x2306 MOVS            R0, R4
0x2308 BL              sub_6D00
0x230c LDR             R1, =aSlotD; "Slot %d"
0x230e LDR             R2, [SP,#0x58+var_30]
0x2310 LDR             R3, =unk_14032CC
0x2312 MOVS            R0, R4
0x2314 BL              sub_6D00
0x2318 LDR             R3, =byte_1501E15
0x231a LDR             R1, [SP,#0x58+var_34]
0x231c LDRB            R3, [R3]
0x231e LSLS            R3, R3, #0x18
0x2320 ASRS            R3, R3, #0x18
0x2322 LDR             R2, =dword_1501C14
0x2324 SUBS            R3, R1, R3
0x2326 LSLS            R0, R3, #2
0x2328 ADDS            R0, R0, R3
0x232a LDR             R3, [R2]
0x232c LSLS            R0, R0, #4
0x232e ADDS            R0, R0, R3
0x2330 LDR             R3, =dword_1501BFC
0x2332 LDR             R1, [R3]
0x2334 MOVS            R3, #0
0x2336 STR             R3, [SP,#0x58+var_58]
0x2338 LDR             R3, =0xFEED1400
0x233a SUBS            R1, #0x50 ; 'P'
0x233c B               loc_23AA
0x233e LDR             R4, [SP,#0x58+var_34]
0x2340 LDR             R2, =dword_1501C14
0x2342 SUBS            R3, R4, R3
0x2344 LSLS            R0, R3, #2
0x2346 STR             R2, [SP,#0x58+var_40]
0x2348 ADDS            R0, R0, R3
0x234a LDR             R3, [R2]
0x234c LDR             R2, [SP,#0x58+var_2C]
0x234e LSLS            R0, R0, #4
0x2350 ADDS            R0, R0, R3
0x2352 LDR             R6, =dword_1501BFC
0x2354 LDR             R3, [R2]
0x2356 LDR             R1, [R6]
0x2358 STR             R3, [SP,#0x58+var_58]
0x235a MOVS            R3, #0x24 ; '$'
0x235c STR             R3, [SP,#0x58+var_54]
0x235e MOVS            R5, #0
0x2360 ADD             R3, SP, #0x58+var_8
0x2362 ADDS            R1, #0x14
0x2364 STR             R3, [SP,#0x58+var_4C]
0x2366 MOVS            R2, #0
0x2368 MOVS            R3, #0
0x236a LDR             R4, =0x6B159
0x236c STR             R5, [SP,#0x58+var_50]
0x236e BL              sub_6D02
0x2372 MOV             R4, SP
0x2374 ADDS            R4, #0x32 ; '2'
0x2376 MOVS            R1, #0
0x2378 MOVS            R2, #0x1E
0x237a LDR             R3, =unk_140329C
0x237c MOVS            R0, R4
0x237e BL              sub_6D00
0x2382 LDR             R1, =aSlotD; "Slot %d"
0x2384 LDR             R2, [SP,#0x58+var_30]
0x2386 LDR             R3, =unk_14032CC
0x2388 MOVS            R0, R4
0x238a BL              sub_6D00
0x238e MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2390 LDRSB           R3, [R7,R3]; byte_1501E15
0x2392 LDR             R1, [SP,#0x58+var_34]
0x2394 LDR             R2, [SP,#0x58+var_40]
0x2396 SUBS            R3, R1, R3
0x2398 LSLS            R0, R3, #2
0x239a ADDS            R0, R0, R3
0x239c LDR             R3, [R2]
0x239e LDR             R1, [R6]
0x23a0 LSLS            R0, R0, #4
0x23a2 ADDS            R0, R0, R3
0x23a4 STR             R5, [SP,#0x58+var_58]
0x23a6 LDR             R3, =0xFFFFFF00
0x23a8 SUBS            R1, #0x50 ; 'P'
0x23aa STR             R3, [SP,#0x58+var_54]
0x23ac MOVS            R2, R4
0x23ae MOVS            R3, #1
0x23b0 LDR             R4, =0x676C5
0x23b2 BL              sub_6D02
0x23b6 LDR             R3, [SP,#0x58+var_30]
0x23b8 LDR             R4, [SP,#0x58+var_2C]
0x23ba ADDS            R3, #1
0x23bc ADDS            R4, #0x24 ; '$'
0x23be STR             R3, [SP,#0x58+var_30]
0x23c0 STR             R4, [SP,#0x58+var_2C]
0x23c2 CMP             R3, #5
0x23c4 BEQ             loc_23C8
0x23c6 B               loc_2240
0x23c8 ADD             SP, SP, #0x58 ; 'X'
0x23ca POP             {R4-R7}
0x23cc POP             {R0}
0x23ce BX              R0