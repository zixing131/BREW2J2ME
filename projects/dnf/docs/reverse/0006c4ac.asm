0x6c4ac PUSH            {R4-R6,LR}
0x6c4ae SUB             SP, SP, #4
0x6c4b0 MOV             R5, SP
0x6c4b2 LSLS            R1, R1, #0x18
0x6c4b4 ADDS            R5, #1
0x6c4b6 LDR             R3, =sub_8C9DC
0x6c4b8 MOVS            R6, R0
0x6c4ba LSRS            R4, R1, #0x18
0x6c4bc MOVS            R0, R5
0x6c4be LDR             R1, =dword_9C6DC
0x6c4c0 MOVS            R2, #3
0x6c4c2 BL              sub_6C778
0x6c4c6 LDR             R3, =byte_1501CC0
0x6c4c8 LDRB            R3, [R3,#(byte_1501CC3 - 0x1501CC0)]
0x6c4ca LSLS            R3, R3, #0x18
0x6c4cc ASRS            R3, R3, #0x18
0x6c4ce CMP             R3, #0
0x6c4d0 BNE             loc_6C4D6
0x6c4d2 MOVS            R0, #0
0x6c4d4 B               loc_6C4E6
0x6c4d6 BL              sub_6C498
0x6c4da LDRSB           R0, [R5,R4]
0x6c4dc MOVS            R1, R6
0x6c4de LDR             R3, =unk_140336C
0x6c4e0 BL              sub_6C778
0x6c4e4 MOVS            R0, #1
0x6c4e6 ADD             SP, SP, #4
0x6c4e8 POP             {R4-R6}
0x6c4ea POP             {R1}
0x6c4ec BX              R1