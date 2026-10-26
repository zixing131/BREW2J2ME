0x6c538 PUSH            {R4-R6,LR}
0x6c53a LDR             R6, =byte_1501CC0
0x6c53c MOVS            R3, #(byte_1501CC0 - 0x1501CC0)
0x6c53e LDRSB           R3, [R6,R3]; byte_1501CC0
0x6c540 CMP             R3, #0
0x6c542 BEQ             loc_6C5BC
0x6c544 LDR             R4, =byte_1535E40
0x6c546 LDR             R3, [R4,#(dword_1535E44 - 0x1535E40)]
0x6c548 CMP             R3, #0
0x6c54a BEQ             loc_6C5BC
0x6c54c LDR             R0, =aYamahaMa3; "Yamaha_MA3"
0x6c54e LDR             R1, [R4,#(dword_1535E48 - 0x1535E40)]
0x6c550 LDR             R2, =0x6C685
0x6c552 LDR             R3, =unk_140330C
0x6c554 BL              sub_6C778
0x6c558 LDR             R5, =dword_1535E24
0x6c55a STR             R0, [R5]
0x6c55c CMP             R0, #0
0x6c55e BEQ             loc_6C5BC
0x6c560 LDR             R3, [R4,#(dword_1535E50 - 0x1535E40)]
0x6c562 CMP             R3, #0
0x6c564 BEQ             loc_6C5BC
0x6c566 MOVS            R1, #0
0x6c568 LDR             R3, =unk_140338C
0x6c56a BL              sub_6C778
0x6c56e LDR             R2, [R4,#(dword_1535E48 - 0x1535E40)]
0x6c570 LDR             R1, [R4,#(dword_1535E50 - 0x1535E40)]
0x6c572 LDR             R3, =unk_140332C
0x6c574 LDR             R0, [R5]
0x6c576 BL              sub_6C778
0x6c57a LDR             R3, =0x7210D
0x6c57c BL              sub_6C778
0x6c580 LDR             R2, [R5]
0x6c582 LDR             R4, =unk_140333C
0x6c584 CMP             R0, #0
0x6c586 BEQ             loc_6C58E
0x6c588 MOVS            R0, R2
0x6c58a MOVS            R1, #0x3C ; '<'
0x6c58c B               loc_6C59A
0x6c58e MOVS            R3, #(byte_1501CC0 - 0x1501CC0)
0x6c590 LDRSB           R3, [R6,R3]; byte_1501CC0
0x6c592 LSLS            R1, R3, #2
0x6c594 ADDS            R1, R1, R3
0x6c596 LSLS            R1, R1, #2
0x6c598 MOVS            R0, R2
0x6c59a BL              sub_6C77A
0x6c59e LDR             R3, =dword_1535E24
0x6c5a0 LDR             R4, =byte_1535E40
0x6c5a2 LDR             R0, [R3]
0x6c5a4 LDRB            R3, [R4,#(byte_1535E41 - 0x1535E40)]
0x6c5a6 MOVS            R1, #0
0x6c5a8 CMP             R3, #0
0x6c5aa BEQ             loc_6C5AE
0x6c5ac MOVS            R1, #1
0x6c5ae LDR             R3, =unk_140334C
0x6c5b0 BL              sub_6C778
0x6c5b4 LDRB            R3, [R4]
0x6c5b6 MOVS            R2, #1
0x6c5b8 ORRS            R3, R2
0x6c5ba STRB            R3, [R4]
0x6c5bc POP             {R4-R6}
0x6c5be POP             {R0}
0x6c5c0 BX              R0