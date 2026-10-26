0x2c0bc PUSH            {R4-R7,LR}
0x2c0be LDR             R7, [R0,#0x10]
0x2c0c0 LDRH            R6, [R7,#0x3A]
0x2c0c2 LSLS            R3, R6, #0x10
0x2c0c4 ASRS            R5, R3, #0x10
0x2c0c6 LDR             R3, =dword_1501C04
0x2c0c8 LDR             R1, [R3]
0x2c0ca LSRS            R3, R1, #0x1F
0x2c0cc ADDS            R3, R3, R1
0x2c0ce ASRS            R2, R3, #1
0x2c0d0 CMP             R5, R2
0x2c0d2 BGE             loc_2C0DC
0x2c0d4 LDR             R2, =word_1534730
0x2c0d6 MOVS            R3, #0
0x2c0d8 STRH            R3, [R2]
0x2c0da B               loc_2C0F0
0x2c0dc LDR             R3, =word_15332A0
0x2c0de LDRH            R0, [R3]
0x2c0e0 SUBS            R3, R0, R2
0x2c0e2 LDR             R4, =word_1534730
0x2c0e4 CMP             R5, R3
0x2c0e6 BLE             loc_2C0EC
0x2c0e8 SUBS            R3, R1, R0
0x2c0ea B               loc_2C0EE
0x2c0ec SUBS            R3, R2, R6
0x2c0ee STRH            R3, [R4]
0x2c0f0 LDRH            R6, [R7,#0x3C]
0x2c0f2 LSLS            R3, R6, #0x10
0x2c0f4 ASRS            R5, R3, #0x10
0x2c0f6 LDR             R3, =dword_1501BF0
0x2c0f8 LDR             R2, [R3]
0x2c0fa LSRS            R3, R2, #0x1F
0x2c0fc ADDS            R3, R3, R2
0x2c0fe ASRS            R1, R3, #1
0x2c100 CMP             R5, R1
0x2c102 BGE             loc_2C10C
0x2c104 LDR             R2, =word_15346FC
0x2c106 MOVS            R3, #0
0x2c108 STRH            R3, [R2]
0x2c10a B               loc_2C128
0x2c10c LDR             R3, =word_15332A0
0x2c10e LDRH            R0, [R3,#(word_15332A2 - 0x15332A0)]
0x2c110 SUBS            R3, R0, R1
0x2c112 ADDS            R3, #0x1D
0x2c114 LDR             R4, =word_15346FC
0x2c116 CMP             R5, R3
0x2c118 BLE             loc_2C124
0x2c11a MOVS            R3, #0x1D
0x2c11c SUBS            R2, R0, R2
0x2c11e NEGS            R3, R3
0x2c120 SUBS            R3, R3, R2
0x2c122 B               loc_2C126
0x2c124 SUBS            R3, R1, R6
0x2c126 STRH            R3, [R4]
0x2c128 POP             {R4-R7}
0x2c12a POP             {R0}
0x2c12c BX              R0