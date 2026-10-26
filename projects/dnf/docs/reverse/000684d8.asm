0x684d8 PUSH            {R4-R6,LR}
0x684da MOVS            R5, R0
0x684dc MOVS            R0, R3
0x684de LDR             R3, [R5,#4]
0x684e0 LDR             R3, [R3,#4]
0x684e2 LDR             R6, [R3,#4]
0x684e4 MOVS            R4, R1
0x684e6 MOVS            R1, R2
0x684e8 B               loc_68500
0x684ea LDRB            R3, [R0]
0x684ec LSLS            R3, R3, #1
0x684ee LDRH            R2, [R3,R6]
0x684f0 LDR             R3, [R5]
0x684f2 LDR             R3, [R3,#0x20]
0x684f4 SUBS            R1, #2
0x684f6 CMP             R2, R3
0x684f8 BEQ             loc_684FC
0x684fa STRH            R2, [R1]
0x684fc ADDS            R0, #1
0x684fe SUBS            R4, #1
0x68500 CMP             R4, #0
0x68502 BGT             loc_684EA
0x68504 POP             {R4-R6}
0x68506 POP             {R0}
0x68508 BX              R0