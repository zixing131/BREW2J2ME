0x66d20 PUSH            {LR}
0x66d22 LDR             R3, [R0,#8]
0x66d24 CMP             R3, #0
0x66d26 BLE             loc_66D34
0x66d28 LDR             R3, [R0,#0xC]
0x66d2a CMP             R3, #0
0x66d2c BLE             loc_66D34
0x66d2e BL              sub_66C90
0x66d32 B               loc_66D36
0x66d34 MOVS            R0, #1
0x66d36 POP             {R1}
0x66d38 BX              R1