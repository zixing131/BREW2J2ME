0x1fef4 PUSH            {R4-R7,LR}
0x1fef6 LSLS            R1, R1, #0x18
0x1fef8 SUB             SP, SP, #0x94
0x1fefa LSRS            R1, R1, #0x18
0x1fefc LSLS            R0, R0, #0x10
0x1fefe LSRS            R0, R0, #0x10
0x1ff00 STR             R1, [SP,#0x94+var_80]
0x1ff02 LDR             R1, =unk_150C9E2
0x1ff04 STR             R0, [SP,#0x94+var_7C]
0x1ff06 MOVS            R2, #0xC
0x1ff08 MOVS            R0, #0
0x1ff0a STR             R0, [SP,#0x94+var_74]
0x1ff0c STR             R1, [SP,#0x94+var_68]
0x1ff0e STR             R2, [SP,#0x94+var_8C]
0x1ff10 LDR             R0, [SP,#0x94+var_68]
0x1ff12 LDRH            R3, [R0]
0x1ff14 LSLS            R3, R3, #0x10
0x1ff16 ASRS            R2, R3, #0x10
0x1ff18 ADDS            R1, R2, #1
0x1ff1a BNE             loc_1FF1E
0x1ff1c B               loc_20026
0x1ff1e LSLS            R3, R2, #6
0x1ff20 SUBS            R3, R3, R2
0x1ff22 LSLS            R3, R3, #2
0x1ff24 STR             R3, [SP,#0x94+var_78]
0x1ff26 LDR             R2, [SP,#0x94+var_8C]
0x1ff28 LDR             R3, =byte_150C9DC
0x1ff2a ADDS            R3, R2, R3
0x1ff2c ADDS            R3, #3
0x1ff2e STR             R3, [SP,#0x94+var_6C]
0x1ff30 MOVS            R3, #0
0x1ff32 STR             R3, [SP,#0x94+var_70]
0x1ff34 STR             R3, [SP,#0x94+var_84]
0x1ff36 STR             R3, [SP,#0x94+var_88]
0x1ff38 LDR             R7, =word_150C9D0
0x1ff3a LDR             R1, [SP,#0x94+var_70]
0x1ff3c LDR             R3, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x1ff3e LDR             R0, [SP,#0x94+var_78]
0x1ff40 LSLS            R2, R1, #3
0x1ff42 ADDS            R3, R0, R3
0x1ff44 ADDS            R2, R2, R3
0x1ff46 MOVS            R1, R2
0x1ff48 ADDS            R1, #0xC0
0x1ff4a LDRB            R3, [R1]
0x1ff4c CMP             R3, #3
0x1ff4e BNE             loc_2000A
0x1ff50 LDRH            R3, [R1,#2]
0x1ff52 LDR             R0, [SP,#0x94+var_7C]
0x1ff54 ADDS            R3, #1
0x1ff56 CMP             R3, R0
0x1ff58 BNE             loc_2000A
0x1ff5a ADDS            R2, #0xC4
0x1ff5c LDRB            R1, [R2,#2]
0x1ff5e CMP             R1, #6
0x1ff60 BEQ             loc_1FF6C
0x1ff62 LDR             R0, [SP,#0x94+var_80]
0x1ff64 LSLS            R3, R0, #0x18
0x1ff66 ASRS            R3, R3, #0x18
0x1ff68 CMP             R3, R1
0x1ff6a BLT             loc_2000A
0x1ff6c LDR             R1, [SP,#0x94+var_6C]
0x1ff6e LDRB            R3, [R1]
0x1ff70 ADDS            R3, #1
0x1ff72 LSLS            R3, R3, #0x18
0x1ff74 LSRS            R3, R3, #0x18
0x1ff76 STRB            R3, [R1]
0x1ff78 LSLS            R3, R3, #0x18
0x1ff7a LDRH            R2, [R2]
0x1ff7c ASRS            R6, R3, #0x18
0x1ff7e CMP             R6, R2
0x1ff80 BLE             loc_1FF86
0x1ff82 STRB            R2, [R1]
0x1ff84 B               loc_2000A
0x1ff86 LSLS            R3, R2, #0x18
0x1ff88 ASRS            R4, R3, #0x18
0x1ff8a CMP             R6, R4
0x1ff8c BGE             loc_1FFC8
0x1ff8e ADD             R5, SP, #0x94+var_64
0x1ff90 MOVS            R1, #0
0x1ff92 MOVS            R2, #0x64 ; 'd'
0x1ff94 LDR             R3, =unk_140329C
0x1ff96 MOVS            R0, R5
0x1ff98 BL              sub_22468
0x1ff9c LDR             R2, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x1ff9e LDR             R0, [SP,#0x94+var_74]
0x1ffa0 LDR             R3, [SP,#0x94+var_78]
0x1ffa2 ADDS            R2, R3, R2
0x1ffa4 LSLS            R3, R0, #1
0x1ffa6 ADDS            R3, R3, R0
0x1ffa8 LDR             R0, [SP,#0x94+var_88]
0x1ffaa LSLS            R3, R3, #5
0x1ffac ADDS            R3, R0, R3
0x1ffae LDR             R0, =byte_150C9DC
0x1ffb0 ADDS            R3, R3, R0
0x1ffb2 STR             R4, [SP,#0x94+var_90]
0x1ffb4 LDR             R1, =aSSDD; "%s\n%s(%d / %d)"
0x1ffb6 ADDS            R2, #1
0x1ffb8 ADDS            R3, #0x12
0x1ffba STR             R6, [SP,#0x94+var_94]
0x1ffbc MOVS            R0, R5
0x1ffbe LDR             R4, =unk_14032CC
0x1ffc0 BL              sub_2246A
0x1ffc4 MOVS            R0, #1
0x1ffc6 B               loc_20004
0x1ffc8 CMP             R6, R4
0x1ffca BNE             loc_2000A
0x1ffcc ADD             R5, SP, #0x94+var_64
0x1ffce MOVS            R1, #0
0x1ffd0 MOVS            R2, #0x64 ; 'd'
0x1ffd2 LDR             R3, =unk_140329C
0x1ffd4 MOVS            R0, R5
0x1ffd6 BL              sub_22468
0x1ffda LDR             R2, [R7,#(dword_150C9D8 - 0x150C9D0)]
0x1ffdc LDR             R0, [SP,#0x94+var_74]
0x1ffde LDR             R3, [SP,#0x94+var_78]
0x1ffe0 ADDS            R2, R3, R2
0x1ffe2 LSLS            R3, R0, #1
0x1ffe4 ADDS            R3, R3, R0
0x1ffe6 LDR             R0, [SP,#0x94+var_84]
0x1ffe8 LSLS            R3, R3, #5
0x1ffea ADDS            R3, R0, R3
0x1ffec LDR             R0, =byte_150C9DC
0x1ffee ADDS            R3, R3, R0
0x1fff0 LDR             R1, =dword_90688
0x1fff2 ADDS            R2, #1
0x1fff4 ADDS            R3, #0x12
0x1fff6 STR             R6, [SP,#0x94+var_94]
0x1fff8 STR             R6, [SP,#0x94+var_90]
0x1fffa MOVS            R0, R5
0x1fffc LDR             R4, =unk_14032CC
0x1fffe BL              sub_2246A
0x20002 MOVS            R0, #2
0x20004 MOVS            R1, R5
0x20006 BL              sub_1FECC
0x2000a LDR             R1, [SP,#0x94+var_70]
0x2000c LDR             R2, [SP,#0x94+var_88]
0x2000e LDR             R3, [SP,#0x94+var_84]
0x20010 LDR             R0, [SP,#0x94+var_6C]
0x20012 ADDS            R1, #1
0x20014 ADDS            R2, #0x18
0x20016 ADDS            R3, #0x18
0x20018 ADDS            R0, #1
0x2001a STR             R1, [SP,#0x94+var_70]
0x2001c STR             R2, [SP,#0x94+var_88]
0x2001e STR             R3, [SP,#0x94+var_84]
0x20020 STR             R0, [SP,#0x94+var_6C]
0x20022 CMP             R1, #3
0x20024 BNE             loc_1FF38
0x20026 LDR             R1, [SP,#0x94+var_74]
0x20028 LDR             R2, [SP,#0x94+var_8C]
0x2002a LDR             R3, [SP,#0x94+var_68]
0x2002c ADDS            R1, #1
0x2002e ADDS            R2, #0x60 ; '`'
0x20030 ADDS            R3, #0x60 ; '`'
0x20032 STR             R1, [SP,#0x94+var_74]
0x20034 STR             R2, [SP,#0x94+var_8C]
0x20036 STR             R3, [SP,#0x94+var_68]
0x20038 CMP             R1, #0x14
0x2003a BEQ             loc_2003E
0x2003c B               loc_1FF10
0x2003e ADD             SP, SP, #0x94
0x20040 POP             {R4-R7}
0x20042 POP             {R0}
0x20044 BX              R0