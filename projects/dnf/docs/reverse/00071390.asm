0x71390 PUSH            {R4-R6,LR}
0x71392 LDR             R3, =byte_153676C
0x71394 MOVS            R2, #0
0x71396 MOVS            R6, R3
0x71398 STRB            R2, [R3]
0x7139a STRB            R2, [R3,#(byte_153676D - 0x153676C)]
0x7139c ADDS            R4, R3, #4
0x7139e ADDS            R6, #8
0x713a0 MOVS            R3, #1
0x713a2 LDR             R0, [R6]
0x713a4 MOVS            R5, #0
0x713a6 NEGS            R3, R3
0x713a8 STRB            R3, [R4]
0x713aa STRB            R5, [R4,#1]
0x713ac STRB            R5, [R4,#2]
0x713ae CMP             R0, #0
0x713b0 BLE             loc_713BC
0x713b2 LDR             R3, =unk_14032FC
0x713b4 BL              sub_71680
0x713b8 STR             R5, [R6]
0x713ba STR             R5, [R4,#8]
0x713bc LDR             R3, =dword_15369C8
0x713be ADDS            R4, #0xC
0x713c0 ADDS            R6, #0xC
0x713c2 CMP             R4, R3
0x713c4 BNE             loc_713A0
0x713c6 POP             {R4-R6}
0x713c8 POP             {R0}
0x713ca BX              R0