0x800e4 PUSH            {R4,LR}
0x800e6 BL              sub_761A4
0x800ea LDR             R1, =dword_150D88C
0x800ec LDRB            R2, [R1,#(byte_150D899 - 0x150D88C)]
0x800ee LSLS            R3, R2, #2
0x800f0 ADDS            R3, R3, R2
0x800f2 LDRB            R0, [R1,#(byte_150D898 - 0x150D88C)]
0x800f4 LSLS            R3, R3, #1
0x800f6 ADDS            R3, R3, R1
0x800f8 ADDS            R3, R3, R0
0x800fa MOVS            R4, #1
0x800fc STRB            R4, [R3,#0x18]
0x800fe MOVS            R0, #1
0x80100 MOVS            R1, #0
0x80102 LDR             R3, =(sub_2FB10+1)
0x80104 BL              sub_80706
0x80108 LSLS            R0, R0, #0x18
0x8010a ASRS            R0, R0, #0x18
0x8010c CMP             R0, #0
0x8010e BLE             loc_8011A
0x80110 LDR             R3, =byte_150C714
0x80112 LSLS            R0, R0, #0x10
0x80114 LSRS            R0, R0, #0x10
0x80116 STRB            R4, [R3]
0x80118 B               loc_8012E
0x8011a LDR             R3, =dword_1501D90
0x8011c LDR             R2, [R3]
0x8011e LDR             R3, =0x1AE8
0x80120 LDR             R2, [R2,R3]
0x80122 LDR             R3, =0xFFFFFF
0x80124 ANDS            R2, R3
0x80126 LDR             R3, =0x3290B
0x80128 CMP             R2, R3
0x8012a BNE             loc_80136
0x8012c MOVS            R0, #6
0x8012e LDR             R3, =(sub_3592C+1)
0x80130 BL              sub_80706
0x80134 B               loc_80152
0x80136 LDR             R3, =0x4290B
0x80138 CMP             R2, R3
0x8013a BNE             loc_80152
0x8013c LDR             R0, =0x1CF
0x8013e LDR             R3, =(sub_3A890+1)
0x80140 BL              sub_80706
0x80144 LDR             R3, =(sub_3592C+1)
0x80146 MOVS            R0, #8
0x80148 BL              sub_80706
0x8014c LDR             R2, =byte_1533780
0x8014e MOVS            R3, #0
0x80150 STRB            R3, [R2,#(byte_153378C - 0x1533780)]
0x80152 POP             {R4}
0x80154 POP             {R0}
0x80156 BX              R0