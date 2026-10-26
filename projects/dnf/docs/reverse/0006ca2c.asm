0x6ca2c PUSH            {R4-R7,LR}
0x6ca2e SUB             SP, SP, #4
0x6ca30 MOVS            R1, #0
0x6ca32 STR             R1, [SP,#4+var_4]
0x6ca34 MOVS            R6, #0
0x6ca36 LDR             R3, =dword_1501D90
0x6ca38 LDR             R3, [R3]
0x6ca3a ADDS            R3, R6, R3
0x6ca3c ADDS            R3, #0xFC
0x6ca3e LDR             R3, [R3,#0xC]
0x6ca40 CMP             R3, #0
0x6ca42 BLE             loc_6CAA0
0x6ca44 MOVS            R7, #0
0x6ca46 B               loc_6CA6A
0x6ca48 LDR             R3, [R0,#0x10]
0x6ca4a LSLS            R5, R7, #3
0x6ca4c LDR             R0, [R3,R5]
0x6ca4e CMP             R0, #0
0x6ca50 BLE             loc_6CA68
0x6ca52 LDR             R3, =unk_14032FC
0x6ca54 BL              sub_6EACE
0x6ca58 LDR             R3, [R4]
0x6ca5a ADDS            R3, R6, R3
0x6ca5c ADDS            R3, #0xFC
0x6ca5e LDR             R3, [R3,#0x10]
0x6ca60 MOVS            R2, #0
0x6ca62 ADDS            R3, R3, R5
0x6ca64 STR             R2, [R3]
0x6ca66 STR             R2, [R3,#4]
0x6ca68 ADDS            R7, #1
0x6ca6a LDR             R4, =dword_1501D90
0x6ca6c LDR             R3, [R4]
0x6ca6e MOVS            R1, #0x82
0x6ca70 ADDS            R3, R6, R3
0x6ca72 LSLS            R1, R1, #1
0x6ca74 ADDS            R2, R3, R1
0x6ca76 LDRB            R2, [R2]
0x6ca78 MOVS            R0, R3
0x6ca7a ADDS            R0, #0xFC
0x6ca7c CMP             R7, R2
0x6ca7e BLT             loc_6CA48
0x6ca80 LDR             R0, [R0,#0xC]
0x6ca82 CMP             R0, #0
0x6ca84 BLE             loc_6CA96
0x6ca86 LDR             R3, =unk_14032FC
0x6ca88 BL              sub_6EACE
0x6ca8c LDR             R3, [R4]
0x6ca8e ADDS            R3, R6, R3
0x6ca90 ADDS            R3, #0xFC
0x6ca92 MOVS            R2, #0
0x6ca94 STR             R2, [R3,#0xC]
0x6ca96 LDR             R3, [R4]
0x6ca98 ADDS            R3, R6, R3
0x6ca9a ADDS            R3, #0xFC
0x6ca9c MOVS            R2, #0
0x6ca9e STR             R2, [R3,#0x10]
0x6caa0 LDR             R3, [SP,#4+var_4]
0x6caa2 ADDS            R3, #1
0x6caa4 STR             R3, [SP,#4+var_4]
0x6caa6 ADDS            R6, #0xC
0x6caa8 CMP             R3, #0x14
0x6caaa BNE             loc_6CA36
0x6caac ADD             SP, SP, #4
0x6caae POP             {R4-R7}
0x6cab0 POP             {R0}
0x6cab2 BX              R0