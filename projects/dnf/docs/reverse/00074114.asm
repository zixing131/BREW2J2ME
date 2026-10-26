0x74114 PUSH            {R4-R6,LR}
0x74116 LDR             R6, =0x8D09
0x74118 LDR             R4, =unk_1536AC4
0x7411a LDR             R5, =(sub_6EA60+1)
0x7411c MOVS            R1, R6
0x7411e MOVS            R0, R4
0x74120 MOVS            R2, #0
0x74122 BL              sub_7595C
0x74126 MOVS            R0, R4
0x74128 MOVS            R1, R6
0x7412a ADDS            R0, #0x24 ; '$'
0x7412c MOVS            R2, #1
0x7412e BL              sub_7595C
0x74132 MOVS            R0, R4
0x74134 MOVS            R1, R6
0x74136 ADDS            R0, #0x48 ; 'H'
0x74138 MOVS            R2, #2
0x7413a ADDS            R4, #0x6C ; 'l'
0x7413c BL              sub_7595C
0x74140 MOVS            R1, R6
0x74142 MOVS            R0, R4
0x74144 MOVS            R2, #3
0x74146 BL              sub_7595C
0x7414a POP             {R4-R6}
0x7414c POP             {R0}
0x7414e BX              R0