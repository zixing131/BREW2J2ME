0x20644 PUSH            {R4-R7,LR}
0x20646 LSLS            R1, R1, #0x18
0x20648 LSRS            R1, R1, #0x18
0x2064a LSLS            R2, R2, #0x10
0x2064c SUB             SP, SP, #0xC
0x2064e LSRS            R2, R2, #0x10
0x20650 MOVS            R0, R1
0x20652 STR             R2, [SP,#0xC+var_C]
0x20654 BL              sub_1F39C
0x20658 LSLS            R0, R0, #0x18
0x2065a ASRS            R4, R0, #0x18
0x2065c ADDS            R0, R4, #1
0x2065e BEQ             loc_206FE
0x20660 LDR             R3, =0x71391
0x20662 BL              sub_22468
0x20666 LSLS            R3, R4, #3
0x20668 LDR             R1, [SP,#0xC+var_C]
0x2066a SUBS            R3, R3, R4
0x2066c LSLS            R3, R3, #2
0x2066e STR             R3, [SP,#0xC+var_8]
0x20670 LSLS            R3, R1, #2
0x20672 ADDS            R3, R3, R1
0x20674 MOVS            R2, #0
0x20676 LSLS            R6, R3, #5
0x20678 STR             R2, [SP,#0xC+var_4]
0x2067a B               loc_206EA
0x2067c LDR             R3, [R1,#0x18]
0x2067e ADDS            R4, R6, R3
0x20680 LDRB            R5, [R4]
0x20682 CMP             R5, #8
0x20684 BHI             loc_206E2
0x20686 LSLS            R3, R5, #0x18
0x20688 ASRS            R3, R3, #0x18
0x2068a MOVS            R2, #1
0x2068c LSLS            R2, R3
0x2068e MOVS            R3, #0x1F4
0x20692 TST             R2, R3
0x20694 BEQ             loc_206E2
0x20696 MOVS            R3, R4
0x20698 LDRB            R0, [R4,#4]
0x2069a LDRB            R1, [R4,#1]
0x2069c LDRB            R2, [R4,#2]
0x2069e ADDS            R3, #8
0x206a0 LDR             R4, =0x713D9
0x206a2 BL              sub_2246A
0x206a6 SUBS            R3, R5, #4
0x206a8 LSLS            R3, R3, #0x18
0x206aa LSRS            R3, R3, #0x18
0x206ac CMP             R3, #1
0x206ae BLS             loc_206FE
0x206b0 SUBS            R3, R5, #6
0x206b2 LSLS            R3, R3, #0x18
0x206b4 LSRS            R3, R3, #0x18
0x206b6 CMP             R3, #1
0x206b8 BHI             loc_206CC
0x206ba LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x206bc LDR             R0, [SP,#0xC+var_8]
0x206be ADDS            R3, R3, R0
0x206c0 LDR             R3, [R3,#0x18]
0x206c2 ADDS            R3, R3, R6
0x206c4 LDR             R2, =byte_150C6BC
0x206c6 LDRH            R3, [R3,#6]
0x206c8 STRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x206ca B               loc_206FE
0x206cc CMP             R5, #8
0x206ce BNE             loc_206E2
0x206d0 LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x206d2 LDR             R1, [SP,#0xC+var_8]
0x206d4 ADDS            R3, R3, R1
0x206d6 LDR             R3, [R3,#0x18]
0x206d8 ADDS            R3, R3, R6
0x206da LDR             R2, =byte_150C6BC
0x206dc LDRH            R3, [R3,#6]
0x206de STRH            R3, [R2,#(word_150C6C8 - 0x150C6BC)]
0x206e0 B               loc_206FE
0x206e2 LDR             R2, [SP,#0xC+var_4]
0x206e4 ADDS            R2, #1
0x206e6 STR             R2, [SP,#0xC+var_4]
0x206e8 ADDS            R6, #0xA0
0x206ea LDR             R7, =byte_150C79C
0x206ec LDR             R0, [SP,#0xC+var_8]
0x206ee LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x206f0 ADDS            R1, R0, R3
0x206f2 LDR             R3, [SP,#0xC+var_C]
0x206f4 LDR             R0, [SP,#0xC+var_4]
0x206f6 ADDS            R2, R3, R0
0x206f8 LDRH            R3, [R1,#2]
0x206fa CMP             R2, R3
0x206fc BLT             loc_2067C
0x206fe ADD             SP, SP, #0xC
0x20700 POP             {R4-R7}
0x20702 POP             {R0}
0x20704 BX              R0