0x2b6b4 PUSH            {R4-R7,LR}
0x2b6b6 LDR             R1, =dword_1501D90
0x2b6b8 LDR             R3, =0x1AEB
0x2b6ba LDR             R2, [R1]
0x2b6bc LDRB            R3, [R2,R3]
0x2b6be LDR             R4, [R2,#0x10]
0x2b6c0 CMP             R3, #0xC8
0x2b6c2 BNE             loc_2B6D2
0x2b6c4 LDR             R3, =dword_150D88C
0x2b6c6 LDR             R2, [R3,#(dword_150D89C - 0x150D88C)]
0x2b6c8 LDRH            R3, [R2,#0x10]
0x2b6ca STRH            R3, [R4,#0x3A]
0x2b6cc LDRH            R3, [R2,#0x12]
0x2b6ce STRH            R3, [R4,#0x3C]
0x2b6d0 B               loc_2B72C
0x2b6d2 CMP             R3, #0xC9
0x2b6d4 BEQ             loc_2B72C
0x2b6d6 LDR             R6, =word_15332A0
0x2b6d8 MOVS            R5, #0
0x2b6da MOVS            R7, R1
0x2b6dc B               loc_2B722
0x2b6de MOVS            R3, #(dword_1533464 - 0x15332A0)
0x2b6e2 LDR             R3, [R6,R3]; dword_1533464
0x2b6e4 LSLS            R2, R5, #4
0x2b6e6 ADDS            R0, R2, R3
0x2b6e8 LDR             R2, [R7]
0x2b6ea LDR             R3, =0x1AEB
0x2b6ec LDRB            R1, [R0,#1]
0x2b6ee LDRB            R3, [R2,R3]
0x2b6f0 CMP             R1, R3
0x2b6f2 BNE             loc_2B720
0x2b6f4 LDRH            R1, [R0,#6]
0x2b6f6 MOVS            R3, #0xA
0x2b6f8 LDRSH           R2, [R0,R3]
0x2b6fa LSLS            R3, R1, #0x10
0x2b6fc ASRS            R3, R3, #0x10
0x2b6fe SUBS            R2, R2, R3
0x2b700 LSRS            R3, R2, #0x1F
0x2b702 ADDS            R3, R3, R2
0x2b704 ASRS            R3, R3, #1
0x2b706 ADDS            R1, R1, R3
0x2b708 STRH            R1, [R4,#0x3A]
0x2b70a LDRH            R1, [R0,#8]
0x2b70c MOVS            R3, #0xC
0x2b70e LDRSH           R2, [R0,R3]
0x2b710 LSLS            R3, R1, #0x10
0x2b712 ASRS            R3, R3, #0x10
0x2b714 SUBS            R2, R2, R3
0x2b716 LSRS            R3, R2, #0x1F
0x2b718 ADDS            R3, R3, R2
0x2b71a ASRS            R3, R3, #1
0x2b71c ADDS            R1, R1, R3
0x2b71e STRH            R1, [R4,#0x3C]
0x2b720 ADDS            R5, #1
0x2b722 MOVS            R3, #(byte_153345C - 0x15332A0)
0x2b726 LDRB            R3, [R6,R3]; byte_153345C
0x2b728 CMP             R5, R3
0x2b72a BLT             loc_2B6DE
0x2b72c LDR             R3, =dword_1501D90
0x2b72e LDR             R0, [R3]
0x2b730 LDR             R3, =0x2C0BD
0x2b732 BL              sub_2BCB6
0x2b736 POP             {R4-R7}
0x2b738 POP             {R0}
0x2b73a BX              R0