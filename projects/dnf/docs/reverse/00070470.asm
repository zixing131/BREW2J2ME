0x70470 PUSH            {R4-R6,LR}
0x70472 LDR             R5, =unk_15364FC
0x70474 MOVS            R6, R0
0x70476 LDRH            R0, [R5,#(word_1536502 - 0x15364FC)]
0x70478 CMP             R0, #0
0x7047a BEQ             loc_70496
0x7047c LDR             R3, =unk_14032EC
0x7047e ADDS            R0, #2
0x70480 BL              sub_71334
0x70484 LDRH            R1, [R5,#(word_1536506 - 0x15364FC)]
0x70486 LDR             R3, =unk_140327C
0x70488 ADDS            R1, R6, R1
0x7048a LDRH            R2, [R5,#(word_1536502 - 0x15364FC)]
0x7048c MOVS            R4, R0
0x7048e BL              sub_71334
0x70492 LDR             R3, =dword_1535F34
0x70494 STR             R4, [R3]
0x70496 POP             {R4-R6}
0x70498 POP             {R0}
0x7049a BX              R0