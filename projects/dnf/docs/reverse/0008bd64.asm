0x8bd64 PUSH            {R4-R7,LR}
0x8bd66 MOVS            R6, R0
0x8bd68 LDRB            R3, [R0,#3]
0x8bd6a LDR             R0, =0xFFFFFC00
0x8bd6c CMP             R1, R0
0x8bd6e BGE             loc_8BD72
0x8bd70 MOVS            R1, R0
0x8bd72 MULS            R3, R1
0x8bd74 ASRS            R5, R3, #0xA
0x8bd76 LDRB            R3, [R6,#4]
0x8bd78 CMP             R2, R0
0x8bd7a BGE             loc_8BD7E
0x8bd7c MOVS            R2, R0
0x8bd7e MULS            R3, R2
0x8bd80 ASRS            R7, R3, #0xA
0x8bd82 ADDS            R3, R6, #1
0x8bd84 LDRB            R3, [R3,#0x1F]
0x8bd86 CMP             R3, #0
0x8bd88 BNE             loc_8BD8E
0x8bd8a MOVS            R2, #0
0x8bd8c B               loc_8BD90
0x8bd8e LDR             R2, [R6,#0x74]
0x8bd90 CMP             R2, R5
0x8bd92 BNE             loc_8BDA2
0x8bd94 CMP             R3, #0
0x8bd96 BNE             loc_8BD9C
0x8bd98 MOVS            R2, #0
0x8bd9a B               loc_8BD9E
0x8bd9c LDR             R2, [R6,#0x78]
0x8bd9e CMP             R2, R7
0x8bda0 BEQ             loc_8BDD4
0x8bda2 CMP             R3, #0
0x8bda4 BNE             loc_8BDAE
0x8bda6 MOVS            R0, R6
0x8bda8 MOVS            R1, #1
0x8bdaa BL              sub_8B4DC
0x8bdae LDRB            R1, [R6,#3]
0x8bdb0 STR             R5, [R6,#0x74]
0x8bdb2 ADDS            R0, R1, R5
0x8bdb4 STR             R7, [R6,#0x78]
0x8bdb6 LDR             R5, =0x8C065
0x8bdb8 BL              sub_8BDEC
0x8bdbc MOVS            R4, R6
0x8bdbe ADDS            R4, #0xB0
0x8bdc0 STR             R0, [R4]
0x8bdc2 LDRB            R1, [R6,#4]
0x8bdc4 ADDS            R0, R1, R7
0x8bdc6 BL              sub_8BDEC
0x8bdca ADDS            R4, #4
0x8bdcc STR             R0, [R4]
0x8bdce MOVS            R0, R6
0x8bdd0 BL              sub_8B5DC
0x8bdd4 POP             {R4-R7}
0x8bdd6 POP             {R0}
0x8bdd8 BX              R0