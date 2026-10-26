0x8b31c PUSH            {R4-R7,LR}
0x8b31e LDR             R6, [SP,#arg_4]
0x8b320 MOVS            R4, R2
0x8b322 LSLS            R2, R6, #1
0x8b324 LDR             R7, [SP,#arg_0]
0x8b326 ADDS            R2, R2, R4
0x8b328 MOVS            R5, R0
0x8b32a SUBS            R2, #2
0x8b32c STRH            R3, [R2]
0x8b32e MOVS            R0, R1
0x8b330 MOVS            R2, R7
0x8b332 MOVS            R1, R5
0x8b334 LDR             R3, =unk_140327C
0x8b336 BL              sub_8BDE8
0x8b33a MOVS            R3, #0
0x8b33c LDRSH           R1, [R4,R3]
0x8b33e MOVS            R2, #0
0x8b340 B               loc_8B34C
0x8b342 LDRH            R3, [R4]
0x8b344 SUBS            R3, R3, R1
0x8b346 STRH            R3, [R4]
0x8b348 ADDS            R2, #1
0x8b34a ADDS            R4, #2
0x8b34c CMP             R2, R6
0x8b34e BLT             loc_8B342
0x8b350 MOVS            R0, R7
0x8b352 POP             {R4-R7}
0x8b354 POP             {R1}
0x8b356 BX              R1