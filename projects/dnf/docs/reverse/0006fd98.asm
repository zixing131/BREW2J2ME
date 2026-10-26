0x6fd98 PUSH            {R4-R7,LR}
0x6fd9a LDR             R3, =dword_15364D8
0x6fd9c MOVS            R2, #0
0x6fd9e STR             R2, [R3]
0x6fda0 LDR             R3, =dword_1535F58
0x6fda2 STR             R2, [R3]
0x6fda4 LDR             R3, =byte_1536344
0x6fda6 SUB             SP, SP, #0x10
0x6fda8 STRB            R2, [R3]
0x6fdaa LDR             R0, =dword_1501C30
0x6fdac MOVS            R2, #0x1E
0x6fdae LDR             R1, =unk_1536750
0x6fdb0 MOVS            R3, #1
0x6fdb2 LDR             R4, =(sub_6C9BC+1)
0x6fdb4 BL              sub_71336
0x6fdb8 LDR             R2, =unk_1536348
0x6fdba MOVS            R0, #0
0x6fdbc STR             R0, [SP,#0x10+var_C]
0x6fdbe STR             R0, [SP,#0x10+var_10]
0x6fdc0 STR             R2, [SP,#0x10+var_4]
0x6fdc2 B               loc_7014E
0x6fdc4 LDR             R3, [SP,#0x10+var_4]
0x6fdc6 LDR             R6, [R3]
0x6fdc8 LDRB            R3, [R6]
0x6fdca CMP             R3, #7; switch 8 cases
0x6fdcc BLS             loc_6FDD0
0x6fdce B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x6fdd0 LDR             R2, =jpt_6FDD6
0x6fdd2 LSLS            R3, R3, #2
0x6fdd4 LDR             R3, [R3,R2]
0x6fdd6 MOV             PC, R3; switch jump
0x6fdd8 LDR             R0, [SP,#0x10+var_C]; jumptable 0006FDD6 case 0
0x6fdda LSLS            R3, R0, #0x18
0x6fddc LSRS            R1, R3, #0x18
0x6fdde LDR             R3, =0x26D
0x6fde0 STRB            R1, [R6,R3]
0x6fde2 LSLS            R3, R0, #2
0x6fde4 ADDS            R3, R3, R0
0x6fde6 LDR             R4, =unk_1536348
0x6fde8 MOVS            R2, #0
0x6fdea LSLS            R7, R3, #2
0x6fdec STR             R2, [SP,#0x10+var_8]
0x6fdee B               loc_6FE7E
0x6fdf0 LDR             R0, [R4]
0x6fdf2 LDRB            R5, [R0]
0x6fdf4 CMP             R5, #0
0x6fdf6 BNE             loc_6FE76
0x6fdf8 LDRH            R2, [R0,#0x18]
0x6fdfa LDRH            R3, [R6,#0x18]
0x6fdfc CMP             R2, R3
0x6fdfe BNE             loc_6FE76
0x6fe00 LDRB            R2, [R0,#2]
0x6fe02 LDRB            R3, [R6,#2]
0x6fe04 CMP             R2, R3
0x6fe06 BNE             loc_6FE76
0x6fe08 LDR             R3, =0x26D
0x6fe0a LDRB            R3, [R0,R3]
0x6fe0c CMP             R3, R1
0x6fe0e BEQ             loc_6FE76
0x6fe10 LDR             R3, =unk_1536DA4
0x6fe12 ADDS            R1, R7, R3
0x6fe14 LDR             R3, =0x26E
0x6fe16 LDRB            R3, [R0,R3]
0x6fe18 STRB            R5, [R1,#0x11]
0x6fe1a STRB            R3, [R1,#0x10]
0x6fe1c LDR             R3, =0xA029
0x6fe1e LDRH            R2, [R6,#0x18]
0x6fe20 CMP             R2, R3
0x6fe22 BNE             loc_6FE36
0x6fe24 MOVS            R3, #0x244
0x6fe28 LDRH            R2, [R6,R3]
0x6fe2a LDR             R0, =dword_1501C30
0x6fe2c MOVS            R3, #1
0x6fe2e LDR             R4, =(sub_6C9BC+1)
0x6fe30 BL              sub_71336
0x6fe34 B               loc_6FE5E
0x6fe36 LDR             R5, =(sub_6C9BC+1)
0x6fe38 CMP             R2, #0
0x6fe3a BNE             loc_6FE46
0x6fe3c LDR             R3, =dword_1501D90
0x6fe3e LDR             R3, [R3]
0x6fe40 LDR             R0, [R3,#0x10]
0x6fe42 ADDS            R0, #0x44 ; 'D'
0x6fe44 B               loc_6FE52
0x6fe46 LDRB            R3, [R1,#0x10]
0x6fe48 LSLS            R0, R3, #3
0x6fe4a ADDS            R0, R0, R3
0x6fe4c LDR             R3, =unk_153718C
0x6fe4e LSLS            R0, R0, #2
0x6fe50 ADDS            R0, R0, R3
0x6fe52 MOVS            R3, #0x244
0x6fe56 LDRH            R2, [R6,R3]
0x6fe58 MOVS            R3, #1
0x6fe5a BL              sub_71338
0x6fe5e LDR             R3, [SP,#0x10+var_C]
0x6fe60 ADDS            R3, #1
0x6fe62 STR             R3, [SP,#0x10+var_C]
0x6fe64 MOV             R0, SP
0x6fe66 LDR             R3, =byte_1536A50
0x6fe68 LDRB            R0, [R0,#0x10+var_C]
0x6fe6a STRB            R0, [R3]
0x6fe6c LDR             R3, =unk_15364FC
0x6fe6e LDR             R2, =dword_1536D98
0x6fe70 LDRH            R3, [R3,#(word_15364FE - 0x15364FC)]
0x6fe72 STR             R3, [R2]
0x6fe74 B               loc_6FE86
0x6fe76 LDR             R2, [SP,#0x10+var_8]
0x6fe78 ADDS            R2, #1
0x6fe7a STR             R2, [SP,#0x10+var_8]
0x6fe7c ADDS            R4, #4
0x6fe7e LDR             R3, [SP,#0x10+var_8]
0x6fe80 LDR             R0, [SP,#0x10+var_10]
0x6fe82 CMP             R3, R0
0x6fe84 BLT             loc_6FDF0
0x6fe86 LDR             R2, [SP,#0x10+var_8]
0x6fe88 LDR             R3, [SP,#0x10+var_10]
0x6fe8a CMP             R2, R3
0x6fe8c BEQ             loc_6FE90
0x6fe8e B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x6fe90 LDRH            R1, [R6,#0x18]
0x6fe92 CMP             R1, #0
0x6fe94 BEQ             loc_6FF2E
0x6fe96 LDR             R3, =0x756F
0x6fe98 CMP             R1, R3
0x6fe9a BEQ             loc_6FEF0
0x6fe9c CMP             R1, R3
0x6fe9e BHI             loc_6FEC6
0x6fea0 SUBS            R3, #4
0x6fea2 CMP             R1, R3
0x6fea4 BEQ             loc_6FF04
0x6fea6 CMP             R1, R3
0x6fea8 BHI             loc_6FEB8
0x6feaa SUBS            R3, #0x15
0x6feac CMP             R1, R3
0x6feae BEQ             loc_6FEEC
0x6feb0 ADDS            R3, #1
0x6feb2 CMP             R1, R3
0x6feb4 BNE             loc_6FF1C
0x6feb6 B               loc_6FF14
0x6feb8 LDR             R3, =0x756D
0x6feba CMP             R1, R3
0x6febc BEQ             loc_6FF0C
0x6febe ADDS            R3, #1
0x6fec0 CMP             R1, R3
0x6fec2 BNE             loc_6FF1C
0x6fec4 B               loc_6FF00
0x6fec6 LDR             R3, =(off_7594+1)
0x6fec8 CMP             R1, R3
0x6feca BEQ             loc_6FEFC
0x6fecc CMP             R1, R3
0x6fece BHI             loc_6FEDE
0x6fed0 SUBS            R3, #0x25 ; '%'
0x6fed2 CMP             R1, R3
0x6fed4 BEQ             loc_6FEF4
0x6fed6 ADDS            R3, #0x13
0x6fed8 CMP             R1, R3
0x6feda BNE             loc_6FF1C
0x6fedc B               loc_6FF08
0x6fede LDR             R3, =0x7955
0x6fee0 CMP             R1, R3
0x6fee2 BEQ             loc_6FF10
0x6fee4 ADDS            R3, #3
0x6fee6 CMP             R1, R3
0x6fee8 BNE             loc_6FF1C
0x6feea B               loc_6FEF8
0x6feec LDR             R3, =0x7D26
0x6feee B               loc_6FF16
0x6fef0 LDR             R3, =0x7D3F
0x6fef2 B               loc_6FF16
0x6fef4 LDR             R3, =0x7D40
0x6fef6 B               loc_6FF16
0x6fef8 LDR             R3, =0xFFFF8128
0x6fefa B               loc_6FF16
0x6fefc LDR             R3, =0x7D65
0x6fefe B               loc_6FF16
0x6ff00 LDR             R3, =0x7D3E
0x6ff02 B               loc_6FF16
0x6ff04 LDR             R3, =0x7D3B
0x6ff06 B               loc_6FF16
0x6ff08 LDR             R3, =0x7D53
0x6ff0a B               loc_6FF16
0x6ff0c LDR             R3, =0x7D3D
0x6ff0e B               loc_6FF16
0x6ff10 LDR             R3, =0xFFFF8125
0x6ff12 B               loc_6FF16
0x6ff14 LDR             R3, =0x7D27
0x6ff16 STRH            R3, [R6,#0x18]
0x6ff18 LDRH            R1, [R6,#0x18]
0x6ff1a B               loc_6FF22
0x6ff1c LDR             R3, =0xA029
0x6ff1e CMP             R1, R3
0x6ff20 BEQ             loc_6FF2E
0x6ff22 LDR             R3, =dword_15364D8
0x6ff24 LDRB            R2, [R6,#2]
0x6ff26 LDRB            R0, [R3]
0x6ff28 LDR             R3, =0x73F7D
0x6ff2a BL              sub_71334
0x6ff2e LDR             R1, =dword_15364D8
0x6ff30 LDR             R3, =0x26E
0x6ff32 LDR             R2, [R1]
0x6ff34 STRB            R2, [R6,R3]
0x6ff36 LDR             R0, [SP,#0x10+var_C]
0x6ff38 LSLS            R3, R0, #2
0x6ff3a LDR             R2, =unk_1536DA4
0x6ff3c ADDS            R3, R3, R0
0x6ff3e LSLS            R3, R3, #2
0x6ff40 ADDS            R4, R3, R2
0x6ff42 LDR             R3, [R1]
0x6ff44 STRB            R3, [R4,#0x10]
0x6ff46 MOVS            R3, #0
0x6ff48 STRB            R3, [R4,#0x11]
0x6ff4a LDR             R3, =0xA029
0x6ff4c LDRH            R2, [R6,#0x18]
0x6ff4e CMP             R2, R3
0x6ff50 BNE             loc_6FF66
0x6ff52 MOVS            R3, #0x244
0x6ff56 LDRH            R2, [R6,R3]
0x6ff58 MOVS            R1, R4
0x6ff5a LDR             R0, =dword_1501C30
0x6ff5c MOVS            R3, #1
0x6ff5e LDR             R4, =(sub_6C9BC+1)
0x6ff60 BL              sub_71336
0x6ff64 B               loc_6FF90
0x6ff66 LDR             R5, =(sub_6C9BC+1)
0x6ff68 CMP             R2, #0
0x6ff6a BNE             loc_6FF76
0x6ff6c LDR             R3, =dword_1501D90
0x6ff6e LDR             R3, [R3]
0x6ff70 LDR             R0, [R3,#0x10]
0x6ff72 ADDS            R0, #0x44 ; 'D'
0x6ff74 B               loc_6FF82
0x6ff76 LDRB            R3, [R4,#0x10]
0x6ff78 LSLS            R0, R3, #3
0x6ff7a ADDS            R0, R0, R3
0x6ff7c LDR             R3, =unk_153718C
0x6ff7e LSLS            R0, R0, #2
0x6ff80 ADDS            R0, R0, R3
0x6ff82 MOVS            R3, #0x244
0x6ff86 LDRH            R2, [R6,R3]
0x6ff88 MOVS            R1, R4
0x6ff8a MOVS            R3, #1
0x6ff8c BL              sub_71338
0x6ff90 LDR             R3, =dword_15364D8
0x6ff92 LDR             R2, [R3]
0x6ff94 ADDS            R2, #1
0x6ff96 STR             R2, [R3]
0x6ff98 LDR             R2, [SP,#0x10+var_C]
0x6ff9a LDR             R3, =byte_1536A50
0x6ff9c ADDS            R2, #1
0x6ff9e STR             R2, [SP,#0x10+var_C]
0x6ffa0 B               loc_70056
0x6ffa2 LDR             R0, =dword_1501D90; jumptable 0006FDD6 case 1
0x6ffa4 LDRH            R2, [R6,#0x18]
0x6ffa6 LDR             R1, [R0]
0x6ffa8 LDR             R3, =0x1AE9
0x6ffaa STRB            R2, [R1,R3]
0x6ffac LDRH            R1, [R6,#8]
0x6ffae LDR             R0, [R0]
0x6ffb0 CMP             R1, #0
0x6ffb2 BNE             loc_6FFBA
0x6ffb4 ADDS            R3, #1
0x6ffb6 STRB            R1, [R0,R3]
0x6ffb8 B               loc_6FFC6
0x6ffba LDRH            R2, [R6,#0x18]
0x6ffbc MOVS            R3, #0x64 ; 'd'
0x6ffbe MULS            R3, R2
0x6ffc0 LDR             R2, =0x1AEA
0x6ffc2 SUBS            R3, R1, R3
0x6ffc4 STRB            R3, [R0,R2]
0x6ffc6 MOVS            R0, #1
0x6ffc8 LDR             R3, =(sub_2B750+1)
0x6ffca BL              sub_71334
0x6ffce B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x6ffd0 LDR             R2, =0x26D; jumptable 0006FDD6 case 2
0x6ffd2 MOVS            R3, #0
0x6ffd4 STRB            R3, [R6,R2]
0x6ffd6 ADDS            R2, #1
0x6ffd8 STRB            R3, [R6,R2]
0x6ffda LDRH            R0, [R6,#0xE]
0x6ffdc CMP             R0, #0
0x6ffde BNE             loc_6FFE2
0x6ffe0 B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x6ffe2 LDR             R2, =unk_1535F68
0x6ffe4 MOVS            R1, #0
0x6ffe6 MOVS            R5, #0
0x6ffe8 LDR             R3, [R2]
0x6ffea CMP             R3, #0
0x6ffec BEQ             loc_6FFFE
0x6ffee MOVS            R3, R2
0x6fff0 SUBS            R3, #0xA
0x6fff2 LDRH            R3, [R3]
0x6fff4 CMP             R3, R0
0x6fff6 BNE             loc_70044
0x6fff8 LDR             R3, =0x26F
0x6fffa STRB            R1, [R6,R3]
0x6fffc B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x6fffe LDR             R4, =0x26F
0x70000 LDR             R3, =unk_14032EC
0x70002 STRB            R1, [R6,R4]
0x70004 LDR             R0, =0x33A
0x70006 BL              sub_71334
0x7000a LDR             R1, =unk_1535F5C
0x7000c ADDS            R3, R5, R1
0x7000e STR             R0, [R3,#0xC]
0x70010 LDRB            R2, [R6,R4]
0x70012 LSLS            R3, R2, #2
0x70014 ADDS            R3, R3, R2
0x70016 LSLS            R3, R3, #2
0x70018 ADDS            R3, R3, R1
0x7001a LDR             R2, [R3,#0xC]
0x7001c STR             R2, [R3,#0x10]
0x7001e LDRB            R2, [R6,R4]
0x70020 LSLS            R3, R2, #2
0x70022 ADDS            R3, R3, R2
0x70024 LSLS            R3, R3, #2
0x70026 LDRH            R2, [R6,#0xE]
0x70028 ADDS            R3, R3, R1
0x7002a STRH            R2, [R3,#2]
0x7002c LDRB            R2, [R6,R4]
0x7002e LSLS            R3, R2, #2
0x70030 ADDS            R3, R3, R2
0x70032 LSLS            R3, R3, #2
0x70034 ADDS            R3, R3, R1
0x70036 LDR             R0, [R3,#0x10]
0x70038 LDRH            R1, [R6,#0xE]
0x7003a MOVS            R2, #0
0x7003c LDR             R3, =(sub_6E944+1)
0x7003e BL              sub_71334
0x70042 B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x70044 ADDS            R1, #1
0x70046 ADDS            R5, #0x14
0x70048 ADDS            R2, #0x14
0x7004a CMP             R1, #0x32 ; '2'
0x7004c BEQ             def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x7004e B               loc_6FFE8
0x70050 MOV             R2, SP; jumptable 0006FDD6 case 4
0x70052 LDR             R3, =byte_1535F30
0x70054 LDRB            R2, [R2,#0x10+var_10]
0x70056 STRB            R2, [R3]
0x70058 B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x7005a LDR             R5, =byte_1536344; jumptable 0006FDD6 case 6
0x7005c LDR             R3, =unk_14032EC
0x7005e LDR             R0, =0x33A
0x70060 LDRB            R4, [R5]
0x70062 BL              sub_71334
0x70066 LDR             R1, =dword_15364E8
0x70068 LDRB            R2, [R5]
0x7006a LSLS            R4, R4, #2
0x7006c STR             R0, [R4,R1]
0x7006e LSLS            R3, R2, #2
0x70070 LDR             R0, [R3,R1]
0x70072 LDR             R3, =0x26D
0x70074 STRB            R2, [R6,R3]
0x70076 LDR             R3, =(sub_6E944+1)
0x70078 LDRH            R1, [R6,#0x18]
0x7007a MOVS            R2, #0
0x7007c BL              sub_71334
0x70080 LDRB            R3, [R5]
0x70082 ADDS            R3, #1
0x70084 STRB            R3, [R5]
0x70086 B               def_6FDD6; jumptable 0006FDD6 default case, cases 3,5
0x70138 LDRH            R0, [R6,#0x18]; jumptable 0006FDD6 case 7
0x7013a LDR             R1, =unk_1535F3C
0x7013c LDR             R3, =(sub_6E440+1)
0x7013e BL              sub_71334
0x70142 LDR             R3, [SP,#0x10+var_10]; jumptable 0006FDD6 default case, cases 3,5
0x70144 LDR             R0, [SP,#0x10+var_4]
0x70146 ADDS            R3, #1
0x70148 ADDS            R0, #4
0x7014a STR             R3, [SP,#0x10+var_10]
0x7014c STR             R0, [SP,#0x10+var_4]
0x7014e LDR             R1, =unk_15364FC
0x70150 LDR             R2, [SP,#0x10+var_10]
0x70152 LDRB            R3, [R1,#(byte_15364FD - 0x15364FC)]
0x70154 CMP             R2, R3
0x70156 BGE             loc_7015A
0x70158 B               loc_6FDC4
0x7015a MOV             R0, SP
0x7015c LDR             R3, =byte_1536A50
0x7015e LDRB            R0, [R0,#0x10+var_C]
0x70160 STRB            R0, [R3]
0x70162 LDR             R2, =dword_1536D98
0x70164 LDRH            R3, [R1,#(word_15364FE - 0x15364FC)]
0x70166 ADD             SP, SP, #0x10
0x70168 STR             R3, [R2]
0x7016a POP             {R4-R7}
0x7016c POP             {R0}
0x7016e BX              R0