0x14ac PUSH            {R4,LR}
0x14ae LSLS            R4, R0, #0x18
0x14b0 LDR             R3, =0x2BC95
0x14b2 BL              sub_1B40
0x14b6 LSRS            R4, R4, #0x18
0x14b8 LDR             R3, =0x62B01
0x14ba BL              sub_1B40
0x14be MOVS            R0, R4
0x14c0 LDR             R3, =0x2B865
0x14c2 BL              sub_1B40
0x14c6 POP             {R4}
0x14c8 POP             {R0}
0x14ca BX              R0