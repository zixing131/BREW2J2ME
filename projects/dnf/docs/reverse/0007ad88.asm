0x7ad88 PUSH            {R4-R6,LR}
0x7ad8a LDR             R3, =(sub_24084+1)
0x7ad8c MOVS            R4, R0
0x7ad8e BL              sub_80706
0x7ad92 LDR             R6, =dword_1501D90
0x7ad94 LDR             R3, =0x171D
0x7ad96 LDR             R2, [R6]
0x7ad98 MOVS            R5, R0
0x7ad9a LDRB            R0, [R2,R3]
0x7ad9c LDR             R3, =(sub_240B0+1)
0x7ad9e BL              sub_80706
0x7ada2 LDR             R3, [R6]
0x7ada4 LDR             R3, [R3,#0x10]
0x7ada6 ADDS            R3, #0x42 ; 'B'
0x7ada8 LDRB            R3, [R3]
0x7adaa LSLS            R2, R0, #2
0x7adac LSLS            R1, R5, #2
0x7adae ADDS            R2, R2, R3
0x7adb0 ADDS            R1, R1, R5
0x7adb2 ADDS            R4, #0x44 ; 'D'
0x7adb4 LSLS            R2, R2, #0x18
0x7adb6 LSLS            R1, R1, #1
0x7adb8 LSRS            R2, R2, #0x18
0x7adba MOVS            R0, R4
0x7adbc LDR             R3, =(sub_6EA60+1)
0x7adbe BL              sub_80706
0x7adc2 POP             {R4-R6}
0x7adc4 POP             {R0}
0x7adc6 BX              R0