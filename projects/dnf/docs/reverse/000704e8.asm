0x704e8 PUSH            {R4-R7,LR}
0x704ea MOVS            R5, R0
0x704ec LDR             R7, =unk_1536348
0x704ee ADDS            R5, #0xC
0x704f0 MOVS            R6, #0
0x704f2 B               loc_7051C
0x704f4 LDR             R3, =unk_14032EC
0x704f6 LDR             R0, =0x272
0x704f8 BL              sub_71334
0x704fc MOVS            R2, #0x9C
0x704fe MOVS            R4, R0
0x70500 MOVS            R1, #0
0x70502 LSLS            R2, R2, #2
0x70504 LDR             R3, =unk_140329C
0x70506 BL              sub_71334
0x7050a MOVS            R1, R5
0x7050c MOVS            R0, R4
0x7050e MOVS            R2, #0x24 ; '$'
0x70510 LDR             R3, =unk_140327C
0x70512 BL              sub_71334
0x70516 STM             R7!, {R4}
0x70518 ADDS            R6, #1
0x7051a ADDS            R5, #0x24 ; '$'
0x7051c LDR             R3, =unk_15364FC
0x7051e LDRB            R3, [R3,#(byte_15364FD - 0x15364FC)]
0x70520 CMP             R6, R3
0x70522 BLT             loc_704F4
0x70524 POP             {R4-R7}
0x70526 POP             {R0}
0x70528 BX              R0