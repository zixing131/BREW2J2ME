0x8b05c PUSH            {LR}
0x8b05e SUB             SP, SP, #4
0x8b060 MOVS            R3, #0
0x8b062 STR             R3, [SP,#4+var_4]
0x8b064 CMP             R0, #0xF; switch 16 cases
0x8b066 BHI             def_8B06E; jumptable 0008B06E default case, cases 12,13
0x8b068 LDR             R2, =jpt_8B06E
0x8b06a LSLS            R3, R0, #2
0x8b06c LDR             R3, [R3,R2]
0x8b06e MOV             PC, R3; switch jump
0x8b070 MOV             R0, SP; jumptable 0008B06E case 1
0x8b072 MOVS            R3, #0x61 ; 'a'
0x8b074 STRB            R3, [R0,#4+var_4]
0x8b076 MOVS            R1, #2
0x8b078 MOVS            R3, #0x62 ; 'b'
0x8b07a MOVS            R2, #1
0x8b07c STRB            R3, [R0,#4+var_4+1]
0x8b07e B               loc_8B08E
0x8b080 MOV             R0, SP; jumptable 0008B06E case 2
0x8b082 MOVS            R3, #0x63 ; 'c'
0x8b084 STRB            R3, [R0,#4+var_4]
0x8b086 MOVS            R3, #0x64 ; 'd'
0x8b088 STRB            R3, [R0,#4+var_4+1]
0x8b08a MOVS            R1, #2
0x8b08c MOVS            R2, #2
0x8b08e BL              sub_8AF94
0x8b092 B               def_8B06E; jumptable 0008B06E default case, cases 12,13
0x8b094 MOV             R0, SP; jumptable 0008B06E case 3
0x8b096 MOVS            R3, #0x65 ; 'e'
0x8b098 STRB            R3, [R0,#4+var_4]
0x8b09a MOVS            R1, #2
0x8b09c MOVS            R3, #0x66 ; 'f'
0x8b09e MOVS            R2, #3
0x8b0a0 STRB            R3, [R0,#4+var_4+1]
0x8b0a2 B               loc_8B08E
0x8b0a4 MOV             R0, SP; jumptable 0008B06E case 4
0x8b0a6 MOVS            R3, #0x67 ; 'g'
0x8b0a8 STRB            R3, [R0,#4+var_4]
0x8b0aa MOVS            R1, #2
0x8b0ac MOVS            R3, #0x68 ; 'h'
0x8b0ae MOVS            R2, #4
0x8b0b0 STRB            R3, [R0,#4+var_4+1]
0x8b0b2 B               loc_8B08E
0x8b0b4 MOV             R0, SP; jumptable 0008B06E case 5
0x8b0b6 MOVS            R3, #0x69 ; 'i'
0x8b0b8 STRB            R3, [R0,#4+var_4]
0x8b0ba MOVS            R1, #2
0x8b0bc MOVS            R3, #0x6A ; 'j'
0x8b0be MOVS            R2, #5
0x8b0c0 STRB            R3, [R0,#4+var_4+1]
0x8b0c2 B               loc_8B08E
0x8b0c4 MOV             R0, SP; jumptable 0008B06E case 6
0x8b0c6 MOVS            R3, #0x6B ; 'k'
0x8b0c8 STRB            R3, [R0,#4+var_4]
0x8b0ca MOVS            R1, #2
0x8b0cc MOVS            R3, #0x6C ; 'l'
0x8b0ce MOVS            R2, #6
0x8b0d0 STRB            R3, [R0,#4+var_4+1]
0x8b0d2 B               loc_8B08E
0x8b0d4 MOV             R0, SP; jumptable 0008B06E case 7
0x8b0d6 MOVS            R3, #0x6D ; 'm'
0x8b0d8 STRB            R3, [R0,#4+var_4]
0x8b0da MOVS            R1, #2
0x8b0dc MOVS            R3, #0x6E ; 'n'
0x8b0de MOVS            R2, #7
0x8b0e0 STRB            R3, [R0,#4+var_4+1]
0x8b0e2 B               loc_8B08E
0x8b0e4 MOV             R0, SP; jumptable 0008B06E case 8
0x8b0e6 MOVS            R3, #0x6F ; 'o'
0x8b0e8 STRB            R3, [R0,#4+var_4]
0x8b0ea MOVS            R1, #2
0x8b0ec MOVS            R3, #0x70 ; 'p'
0x8b0ee MOVS            R2, #8
0x8b0f0 STRB            R3, [R0,#4+var_4+1]
0x8b0f2 B               loc_8B08E
0x8b0f4 MOV             R0, SP; jumptable 0008B06E case 9
0x8b0f6 MOVS            R3, #0x71 ; 'q'
0x8b0f8 STRB            R3, [R0,#4+var_4]
0x8b0fa MOVS            R1, #2
0x8b0fc MOVS            R3, #0x72 ; 'r'
0x8b0fe MOVS            R2, #9
0x8b100 STRB            R3, [R0,#4+var_4+1]
0x8b102 B               loc_8B08E
0x8b104 MOV             R0, SP; jumptable 0008B06E case 10
0x8b106 MOVS            R3, #0x73 ; 's'
0x8b108 STRB            R3, [R0,#4+var_4]
0x8b10a MOVS            R1, #2
0x8b10c MOVS            R3, #0x74 ; 't'
0x8b10e MOVS            R2, #0xA
0x8b110 STRB            R3, [R0,#4+var_4+1]
0x8b112 B               loc_8B08E
0x8b114 MOV             R0, SP; jumptable 0008B06E case 0
0x8b116 MOVS            R3, #0x75 ; 'u'
0x8b118 STRB            R3, [R0,#4+var_4]
0x8b11a MOVS            R1, #2
0x8b11c MOVS            R3, #0x76 ; 'v'
0x8b11e MOVS            R2, #0
0x8b120 STRB            R3, [R0,#4+var_4+1]
0x8b122 B               loc_8B08E
0x8b124 MOV             R0, SP; jumptable 0008B06E case 11
0x8b126 MOVS            R3, #0x77 ; 'w'
0x8b128 STRB            R3, [R0,#4+var_4]
0x8b12a MOVS            R1, #2
0x8b12c MOVS            R3, #0x78 ; 'x'
0x8b12e MOVS            R2, #0xB
0x8b130 STRB            R3, [R0,#4+var_4+1]
0x8b132 B               loc_8B08E
0x8b134 MOV             R0, SP; jumptable 0008B06E case 14
0x8b136 MOVS            R3, #0x79 ; 'y'
0x8b138 STRB            R3, [R0,#4+var_4]
0x8b13a MOVS            R1, #2
0x8b13c MOVS            R3, #0x7A ; 'z'
0x8b13e MOVS            R2, #0xE
0x8b140 STRB            R3, [R0,#4+var_4+1]
0x8b142 B               loc_8B08E
0x8b144 MOVS            R0, #0xF; jumptable 0008B06E case 15
0x8b146 LDR             R3, =(sub_8AA3C+1)
0x8b148 BL              sub_8B15E
0x8b14c ADD             SP, SP, #4; jumptable 0008B06E default case, cases 12,13
0x8b14e POP             {R0}
0x8b150 BX              R0