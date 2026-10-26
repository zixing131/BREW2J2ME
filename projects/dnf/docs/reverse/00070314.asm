0x70314 PUSH            {R4-R7,LR}
0x70316 LDR             R3, =dword_1535F34
0x70318 LSLS            R4, R0, #0x10
0x7031a LSRS            R4, R4, #0x10
0x7031c LDR             R7, [R3]
0x7031e ADDS            R0, R4, #3
0x70320 LDR             R3, =unk_14032EC
0x70322 LSLS            R5, R1, #0x10
0x70324 BL              sub_71334
0x70328 LSRS            R5, R5, #0x10
0x7032a MOVS            R6, R0
0x7032c ADDS            R2, R4, #1
0x7032e MOVS            R1, #0
0x70330 LDR             R3, =unk_140329C
0x70332 BL              sub_71334
0x70336 ADDS            R1, R7, R5
0x70338 MOVS            R0, R6
0x7033a MOVS            R2, R4
0x7033c LDR             R3, =unk_140327C
0x7033e BL              sub_71334
0x70342 MOVS            R0, R6
0x70344 POP             {R4-R7}
0x70346 POP             {R1}
0x70348 BX              R1