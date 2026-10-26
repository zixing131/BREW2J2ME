0x704ac PUSH            {R4-R6,LR}
0x704ae LDR             R4, =unk_15364FC
0x704b0 MOVS            R5, R0
0x704b2 LDRH            R0, [R4,#(word_1536500 - 0x15364FC)]
0x704b4 LDR             R3, =unk_14032EC
0x704b6 ADDS            R0, #2
0x704b8 BL              sub_71334
0x704bc LDRH            R3, [R4,#(word_1536504 - 0x15364FC)]
0x704be ADDS            R5, R5, R3
0x704c0 MOVS            R1, R5
0x704c2 LDRH            R2, [R4,#(word_1536500 - 0x15364FC)]
0x704c4 LDR             R3, =unk_140327C
0x704c6 MOVS            R6, R0
0x704c8 BL              sub_71334
0x704cc LDR             R3, =dword_1535F54
0x704ce STR             R6, [R3]
0x704d0 POP             {R4-R6}
0x704d2 POP             {R0}
0x704d4 BX              R0