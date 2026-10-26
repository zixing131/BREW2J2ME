0x2ee98 PUSH            {R4,LR}
0x2ee9a MOVS            R4, #0
0x2ee9c B               loc_2EEAE
0x2ee9e LDR             R3, =unk_15355BC
0x2eea0 LSLS            R0, R0, #4
0x2eea2 ADDS            R0, R0, R3
0x2eea4 MOVS            R1, #0
0x2eea6 MOVS            R2, #0x10
0x2eea8 LDR             R3, =unk_140329C
0x2eeaa BL              sub_66A76
0x2eeae LSLS            R3, R4, #0x18
0x2eeb0 LSRS            R0, R3, #0x18
0x2eeb2 LDR             R3, =byte_150D864
0x2eeb4 LDRB            R3, [R3]
0x2eeb6 ADDS            R4, #1
0x2eeb8 CMP             R3, R0
0x2eeba BHI             loc_2EE9E
0x2eebc MOVS            R4, #0
0x2eebe B               loc_2EED4
0x2eec0 LSLS            R0, R2, #3
0x2eec2 SUBS            R0, R0, R2
0x2eec4 LDR             R3, =unk_1534168
0x2eec6 LSLS            R0, R0, #2
0x2eec8 ADDS            R0, R0, R3
0x2eeca MOVS            R1, #0
0x2eecc MOVS            R2, #0x1C
0x2eece LDR             R3, =unk_140329C
0x2eed0 BL              sub_66A76
0x2eed4 LSLS            R3, R4, #0x18
0x2eed6 LSRS            R2, R3, #0x18
0x2eed8 LDR             R3, =byte_1533720
0x2eeda LDRB            R3, [R3]
0x2eedc ADDS            R4, #1
0x2eede CMP             R3, R2
0x2eee0 BHI             loc_2EEC0
0x2eee2 POP             {R4}
0x2eee4 POP             {R0}
0x2eee6 BX              R0