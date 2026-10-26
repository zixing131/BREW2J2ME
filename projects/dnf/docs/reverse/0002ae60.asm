0x2ae60 PUSH            {R4-R7,LR}
0x2ae62 LDR             R3, =word_15332A0
0x2ae64 ADDS            R3, #0x35 ; '5'
0x2ae66 LDRB            R3, [R3]
0x2ae68 SUB             SP, SP, #0xB8
0x2ae6a LSLS            R3, R3, #4
0x2ae6c STR             R3, [SP,#0xB8+var_94]
0x2ae6e ADD             R0, SP, #0xB8+var_8
0x2ae70 LDR             R3, =(sub_2CD18+1)
0x2ae72 BL              sub_2BCB6
0x2ae76 MOVS            R0, #0
0x2ae78 LDR             R3, =0x6A821
0x2ae7a BL              sub_2BCB6
0x2ae7e MOVS            R0, #0
0x2ae80 STR             R0, [SP,#0xB8+var_A0]
0x2ae82 B               loc_2AEEC
0x2ae84 LDR             R1, [SP,#0xB8+var_A0]
0x2ae86 MULS            R3, R1
0x2ae88 LDR             R2, [R7,#(dword_15332C0 - 0x15332A0)]
0x2ae8a ADDS            R3, R3, R5
0x2ae8c LSLS            R3, R3, #3
0x2ae8e ADDS            R3, R3, R2
0x2ae90 LDRB            R6, [R3,#1]
0x2ae92 LDRB            R2, [R3]
0x2ae94 LDRB            R3, [R3,#3]
0x2ae96 STR             R3, [SP,#0xB8+var_80]
0x2ae98 ADDS            R3, R2, R7
0x2ae9a LDRB            R3, [R3,#0x17]
0x2ae9c ADD             R4, SP, #0xB8+var_8
0x2ae9e STRB            R3, [R4,#4]
0x2aea0 LDR             R3, =word_1534730
0x2aea2 MOVS            R0, #(word_1534730 - 0x1534730)
0x2aea4 LDRSH           R3, [R3,R0]; word_1534730
0x2aea6 LSRS            R0, R3, #0x1F
0x2aea8 ADDS            R0, R0, R3
0x2aeaa ASRS            R0, R0, #1
0x2aeac LSLS            R3, R5, #4
0x2aeae ADDS            R0, R0, R3
0x2aeb0 LDR             R3, =word_15346FC
0x2aeb2 MOV             R12, R6
0x2aeb4 MOVS            R6, #(word_15346FC - 0x15346FC)
0x2aeb6 LDRSH           R1, [R3,R6]; word_15346FC
0x2aeb8 LDR             R3, [SP,#0xB8+var_70]
0x2aeba ADDS            R1, R3, R1
0x2aebc LDR             R3, [R7,#(dword_15332CC - 0x15332A0)]
0x2aebe LSLS            R2, R2, #3
0x2aec0 ADDS            R2, R2, R3
0x2aec2 LDR             R3, [R2,#4]
0x2aec4 LDR             R2, [SP,#0xB8+var_80]
0x2aec6 STR             R3, [SP,#0xB8+var_B8]
0x2aec8 MOV             R6, R12
0x2aeca MOVS            R3, #0
0x2aecc STR             R4, [SP,#0xB8+var_AC]
0x2aece STR             R2, [SP,#0xB8+var_A8]
0x2aed0 STR             R6, [SP,#0xB8+var_B4]
0x2aed2 STR             R3, [SP,#0xB8+var_B0]
0x2aed4 MOVS            R2, #0
0x2aed6 LDR             R4, =0x6AA7D
0x2aed8 BL              sub_2BCB8
0x2aedc ADDS            R5, #1
0x2aede LDR             R7, =word_15332A0
0x2aee0 LDRB            R3, [R7,#(byte_15332A6 - 0x15332A0)]
0x2aee2 CMP             R5, R3
0x2aee4 BLT             loc_2AE84
0x2aee6 LDR             R3, [SP,#0xB8+var_A0]
0x2aee8 ADDS            R3, #1
0x2aeea STR             R3, [SP,#0xB8+var_A0]
0x2aeec LDR             R3, =word_15332A0
0x2aeee LDR             R5, [SP,#0xB8+var_A0]
0x2aef0 LDRB            R3, [R3,#(byte_15332A5 - 0x15332A0)]
0x2aef2 CMP             R5, R3
0x2aef4 BLT             loc_2AEFC
0x2aef6 MOVS            R6, #0
0x2aef8 STR             R6, [SP,#0xB8+var_20]
0x2aefa B               loc_2AF74
0x2aefc LDR             R0, [SP,#0xB8+var_A0]
0x2aefe MOVS            R5, #0
0x2af00 LSLS            R0, R0, #4
0x2af02 STR             R0, [SP,#0xB8+var_70]
0x2af04 B               loc_2AEDE
0x2af06 LDR             R1, [SP,#0xB8+var_20]
0x2af08 MULS            R3, R1
0x2af0a LDR             R2, [R7,#(dword_15332F0 - 0x15332A0)]
0x2af0c ADDS            R3, R3, R6
0x2af0e LSLS            R3, R3, #3
0x2af10 ADDS            R3, R3, R2
0x2af12 LDRB            R5, [R3,#1]
0x2af14 LDRB            R2, [R3]
0x2af16 LDRB            R3, [R3,#3]
0x2af18 STR             R3, [SP,#0xB8+var_84]
0x2af1a ADDS            R3, R2, R7
0x2af1c ADDS            R3, #0x44 ; 'D'
0x2af1e LDRB            R3, [R3,#1]
0x2af20 ADD             R4, SP, #0xB8+var_8
0x2af22 STRB            R3, [R4,#4]
0x2af24 LDR             R3, =word_1534730
0x2af26 MOVS            R1, #(word_1534730 - 0x1534730)
0x2af28 LDRSH           R3, [R3,R1]; word_1534730
0x2af2a LSLS            R0, R6, #4
0x2af2c ADDS            R0, R0, R3
0x2af2e LDR             R3, =word_15346FC
0x2af30 MOV             R12, R5
0x2af32 MOVS            R5, #(word_15346FC - 0x15346FC)
0x2af34 LDRSH           R1, [R3,R5]; word_15346FC
0x2af36 LDR             R3, [SP,#0xB8+var_94]
0x2af38 ADDS            R1, R3, R1
0x2af3a LDR             R3, [R7,#(dword_15332FC - 0x15332A0)]
0x2af3c LSLS            R2, R2, #3
0x2af3e ADDS            R2, R2, R3
0x2af40 LDR             R3, [R2,#4]
0x2af42 STR             R3, [SP,#0xB8+var_B8]
0x2af44 MOVS            R3, #0
0x2af46 LDR             R5, [SP,#0xB8+var_6C]
0x2af48 STR             R3, [SP,#0xB8+var_B0]
0x2af4a LDR             R3, [SP,#0xB8+var_84]
0x2af4c MOV             R2, R12
0x2af4e STR             R2, [SP,#0xB8+var_B4]
0x2af50 STR             R4, [SP,#0xB8+var_AC]
0x2af52 STR             R3, [SP,#0xB8+var_A8]
0x2af54 ADDS            R1, R5, R1
0x2af56 MOVS            R2, #0
0x2af58 MOVS            R3, #0
0x2af5a LDR             R4, =0x6AA7D
0x2af5c BL              sub_2BCB8
0x2af60 ADDS            R6, #1
0x2af62 LDR             R7, =word_15332A0
0x2af64 MOVS            R3, R7
0x2af66 ADDS            R3, #0x32 ; '2'
0x2af68 LDRB            R3, [R3]
0x2af6a CMP             R6, R3
0x2af6c BLT             loc_2AF06
0x2af6e LDR             R5, [SP,#0xB8+var_20]
0x2af70 ADDS            R5, #1
0x2af72 STR             R5, [SP,#0xB8+var_20]
0x2af74 LDR             R1, =word_15332A0
0x2af76 MOVS            R3, R1
0x2af78 ADDS            R3, #0x31 ; '1'
0x2af7a LDRB            R3, [R3]
0x2af7c LDR             R6, [SP,#0xB8+var_20]
0x2af7e CMP             R6, R3
0x2af80 BGE             loc_2AF8A
0x2af82 LSLS            R0, R6, #4
0x2af84 MOVS            R6, #0
0x2af86 STR             R0, [SP,#0xB8+var_6C]
0x2af88 B               loc_2AF62
0x2af8a MOVS            R3, R1
0x2af8c ADDS            R3, #0x60 ; '`'
0x2af8e LDRB            R3, [R3]
0x2af90 LSLS            R3, R3, #0x18
0x2af92 ASRS            R3, R3, #0x18
0x2af94 CMP             R3, #0
0x2af96 BLT             loc_2B090
0x2af98 MOVS            R3, R1
0x2af9a ADDS            R3, #0x7E ; '~'
0x2af9c LDRB            R2, [R3]
0x2af9e SUBS            R3, #0x49 ; 'I'
0x2afa0 LDRB            R3, [R3]
0x2afa2 ADDS            R3, #1
0x2afa4 ADDS            R2, R2, R3
0x2afa6 MOVS            R3, R1
0x2afa8 ADDS            R3, #0x65 ; 'e'
0x2afaa LDRB            R3, [R3]
0x2afac SUBS            R2, R2, R3
0x2afae LSLS            R2, R2, #0x14
0x2afb0 LSRS            R2, R2, #0x10
0x2afb2 MOVS            R1, #0
0x2afb4 STR             R2, [SP,#0xB8+var_3C]
0x2afb6 STR             R1, [SP,#0xB8+var_9C]
0x2afb8 B               loc_2B082
0x2afba MOVS            R3, R2
0x2afbc ADDS            R3, #0x79 ; 'y'
0x2afbe LDRB            R1, [R3]
0x2afc0 ADDS            R2, #0x6A ; 'j'
0x2afc2 SUBS            R3, #5
0x2afc4 LDRB            R2, [R2]
0x2afc6 LDRB            R3, [R3]
0x2afc8 ADDS            R3, R3, R2
0x2afca LDR             R2, [SP,#0xB8+var_9C]
0x2afcc MULS            R3, R2
0x2afce ADDS            R1, R1, R3
0x2afd0 LSLS            R1, R1, #0x14
0x2afd2 LSRS            R1, R1, #0x10
0x2afd4 MOVS            R3, #0
0x2afd6 STR             R1, [SP,#0xB8+var_50]
0x2afd8 STR             R3, [SP,#0xB8+var_1C]
0x2afda B               loc_2B066
0x2afdc LDR             R5, [SP,#0xB8+var_1C]
0x2afde MULS            R3, R5
0x2afe0 LDR             R6, [SP,#0xB8+var_28]
0x2afe2 MOVS            R2, R7
0x2afe4 ADDS            R2, #0xF0
0x2afe6 LDR             R2, [R2]
0x2afe8 ADDS            R3, R3, R6
0x2afea LSLS            R3, R3, #3
0x2afec ADDS            R3, R3, R2
0x2afee LDRB            R0, [R3,#1]
0x2aff0 LDRB            R4, [R3]
0x2aff2 STR             R0, [SP,#0xB8+var_78]
0x2aff4 LDRB            R3, [R3,#3]
0x2aff6 MOV             R12, R3
0x2aff8 ADDS            R3, R4, R7
0x2affa ADDS            R3, #0x94
0x2affc LDRB            R3, [R3,#3]
0x2affe ADD             R1, SP, #0xB8+var_4
0x2b000 STRB            R3, [R1]
0x2b002 LDR             R3, =word_1534730
0x2b004 LDR             R2, [SP,#0xB8+var_50]
0x2b006 MOVS            R5, #(word_1534730 - 0x1534730)
0x2b008 LDRSH           R3, [R3,R5]; word_1534730
0x2b00a LSLS            R0, R2, #0x10
0x2b00c LSLS            R2, R6, #4
0x2b00e ADDS            R3, R3, R2
0x2b010 ASRS            R0, R0, #0x10
0x2b012 LDR             R6, [SP,#0xB8+var_3C]
0x2b014 ADDS            R0, R0, R3
0x2b016 LDR             R3, =word_15346FC
0x2b018 LSLS            R1, R6, #0x10
0x2b01a MOVS            R2, #(word_15346FC - 0x15346FC)
0x2b01c LDRSH           R3, [R3,R2]; word_15346FC
0x2b01e ASRS            R1, R1, #0x10
0x2b020 ADDS            R1, R1, R3
0x2b022 LDR             R3, [SP,#0xB8+var_60]
0x2b024 ADDS            R1, R3, R1
0x2b026 MOVS            R3, R7
0x2b028 ADDS            R3, #0xFC
0x2b02a LDR             R3, [R3,#(dword_15333B8 - 0x153339C)]
0x2b02c LSLS            R4, R4, #3
0x2b02e ADDS            R4, R4, R3
0x2b030 LDR             R3, [R4,#4]
0x2b032 LDR             R5, [SP,#0xB8+var_78]
0x2b034 MOV             R2, R12
0x2b036 STR             R3, [SP,#0xB8+var_B8]
0x2b038 ADD             R6, SP, #0xB8+var_8
0x2b03a MOVS            R3, #0
0x2b03c STR             R3, [SP,#0xB8+var_B0]
0x2b03e STR             R2, [SP,#0xB8+var_A8]
0x2b040 STR             R5, [SP,#0xB8+var_B4]
0x2b042 STR             R6, [SP,#0xB8+var_AC]
0x2b044 MOVS            R2, #0
0x2b046 LDR             R4, =0x6AA7D
0x2b048 BL              sub_2BCB8
0x2b04c LDR             R3, [SP,#0xB8+var_28]
0x2b04e ADDS            R3, #1
0x2b050 STR             R3, [SP,#0xB8+var_28]
0x2b052 LDR             R7, =word_15332A0
0x2b054 MOVS            R3, R7
0x2b056 ADDS            R3, #0x6A ; 'j'
0x2b058 LDRB            R3, [R3]
0x2b05a LDR             R5, [SP,#0xB8+var_28]
0x2b05c CMP             R5, R3
0x2b05e BLT             loc_2AFDC
0x2b060 LDR             R6, [SP,#0xB8+var_1C]
0x2b062 ADDS            R6, #1
0x2b064 STR             R6, [SP,#0xB8+var_1C]
0x2b066 LDR             R3, =word_15332A0
0x2b068 ADDS            R3, #0x65 ; 'e'
0x2b06a LDRB            R3, [R3]
0x2b06c LDR             R0, [SP,#0xB8+var_1C]
0x2b06e CMP             R0, R3
0x2b070 BGE             loc_2B07C
0x2b072 LSLS            R1, R0, #4
0x2b074 MOVS            R2, #0
0x2b076 STR             R1, [SP,#0xB8+var_60]
0x2b078 STR             R2, [SP,#0xB8+var_28]
0x2b07a B               loc_2B052
0x2b07c LDR             R3, [SP,#0xB8+var_9C]
0x2b07e ADDS            R3, #1
0x2b080 STR             R3, [SP,#0xB8+var_9C]
0x2b082 LDR             R2, =word_15332A0
0x2b084 MOVS            R3, R2
0x2b086 ADDS            R3, #0x6F ; 'o'
0x2b088 LDRB            R3, [R3]
0x2b08a LDR             R5, [SP,#0xB8+var_9C]
0x2b08c CMP             R5, R3
0x2b08e BLT             loc_2AFBA
0x2b090 LDR             R1, =word_15332A0
0x2b092 MOVS            R3, R1
0x2b094 ADDS            R3, #0x61 ; 'a'
0x2b096 LDRB            R3, [R3]
0x2b098 LSLS            R3, R3, #0x18
0x2b09a ASRS            R3, R3, #0x18
0x2b09c CMP             R3, #0
0x2b09e BLT             loc_2B198
0x2b0a0 MOVS            R3, R1
0x2b0a2 ADDS            R3, #0x7F
0x2b0a4 LDRB            R2, [R3]
0x2b0a6 SUBS            R3, #0x4A ; 'J'
0x2b0a8 LDRB            R3, [R3]
0x2b0aa ADDS            R3, #1
0x2b0ac ADDS            R2, R2, R3
0x2b0ae MOVS            R3, R1
0x2b0b0 ADDS            R3, #0x66 ; 'f'
0x2b0b2 LDRB            R3, [R3]
0x2b0b4 SUBS            R2, R2, R3
0x2b0b6 LSLS            R2, R2, #0x14
0x2b0b8 LSRS            R2, R2, #0x10
0x2b0ba MOVS            R6, #0
0x2b0bc STR             R2, [SP,#0xB8+var_40]
0x2b0be STR             R6, [SP,#0xB8+var_38]
0x2b0c0 B               loc_2B18A
0x2b0c2 MOVS            R3, R2
0x2b0c4 ADDS            R3, #0x7A ; 'z'
0x2b0c6 LDRB            R1, [R3]
0x2b0c8 ADDS            R2, #0x6B ; 'k'
0x2b0ca SUBS            R3, #5
0x2b0cc LDRB            R3, [R3]
0x2b0ce LDRB            R2, [R2]
0x2b0d0 LDR             R0, [SP,#0xB8+var_38]
0x2b0d2 ADDS            R3, R3, R2
0x2b0d4 MULS            R3, R0
0x2b0d6 ADDS            R1, R1, R3
0x2b0d8 LSLS            R1, R1, #0x14
0x2b0da LSRS            R1, R1, #0x10
0x2b0dc STR             R1, [SP,#0xB8+var_54]
0x2b0de MOVS            R1, #0
0x2b0e0 STR             R1, [SP,#0xB8+var_18]
0x2b0e2 B               loc_2B16E
0x2b0e4 LDR             R5, [SP,#0xB8+var_18]
0x2b0e6 MULS            R3, R5
0x2b0e8 LDR             R6, [SP,#0xB8+var_24]
0x2b0ea MOVS            R2, R7
0x2b0ec ADDS            R2, #0xF8
0x2b0ee LDR             R2, [R2]
0x2b0f0 ADDS            R3, R3, R6
0x2b0f2 LSLS            R3, R3, #3
0x2b0f4 ADDS            R3, R3, R2
0x2b0f6 LDRB            R0, [R3,#1]
0x2b0f8 LDRB            R4, [R3]
0x2b0fa STR             R0, [SP,#0xB8+var_7C]
0x2b0fc LDRB            R3, [R3,#3]
0x2b0fe MOV             R12, R3
0x2b100 ADDS            R3, R4, R7
0x2b102 ADDS            R3, #0xA8
0x2b104 LDRB            R3, [R3,#3]
0x2b106 ADD             R1, SP, #0xB8+var_4
0x2b108 STRB            R3, [R1]
0x2b10a LDR             R3, =word_1534730
0x2b10c LDR             R2, [SP,#0xB8+var_54]
0x2b10e MOVS            R5, #(word_1534730 - 0x1534730)
0x2b110 LDRSH           R3, [R3,R5]; word_1534730
0x2b112 LSLS            R0, R2, #0x10
0x2b114 LSLS            R2, R6, #4
0x2b116 ADDS            R3, R3, R2
0x2b118 ASRS            R0, R0, #0x10
0x2b11a LDR             R6, [SP,#0xB8+var_40]
0x2b11c ADDS            R0, R0, R3
0x2b11e LDR             R3, =word_15346FC
0x2b120 LSLS            R1, R6, #0x10
0x2b122 MOVS            R2, #(word_15346FC - 0x15346FC)
0x2b124 LDRSH           R3, [R3,R2]; word_15346FC
0x2b126 ASRS            R1, R1, #0x10
0x2b128 ADDS            R1, R1, R3
0x2b12a LDR             R3, [SP,#0xB8+var_64]
0x2b12c ADDS            R1, R3, R1
0x2b12e MOVS            R3, R7
0x2b130 ADDS            R3, #0xFC
0x2b132 LDR             R3, [R3,#(dword_15333C0 - 0x153339C)]
0x2b134 LSLS            R4, R4, #3
0x2b136 ADDS            R4, R4, R3
0x2b138 LDR             R3, [R4,#4]
0x2b13a LDR             R5, [SP,#0xB8+var_7C]
0x2b13c MOV             R2, R12
0x2b13e STR             R3, [SP,#0xB8+var_B8]
0x2b140 ADD             R6, SP, #0xB8+var_8
0x2b142 MOVS            R3, #0
0x2b144 STR             R3, [SP,#0xB8+var_B0]
0x2b146 STR             R2, [SP,#0xB8+var_A8]
0x2b148 STR             R5, [SP,#0xB8+var_B4]
0x2b14a STR             R6, [SP,#0xB8+var_AC]
0x2b14c MOVS            R2, #0
0x2b14e LDR             R4, =0x6AA7D
0x2b150 BL              sub_2BCB8
0x2b154 LDR             R3, [SP,#0xB8+var_24]
0x2b156 ADDS            R3, #1
0x2b158 STR             R3, [SP,#0xB8+var_24]
0x2b15a LDR             R7, =word_15332A0
0x2b15c MOVS            R3, R7
0x2b15e ADDS            R3, #0x6B ; 'k'
0x2b160 LDRB            R3, [R3]
0x2b162 LDR             R5, [SP,#0xB8+var_24]
0x2b164 CMP             R5, R3
0x2b166 BLT             loc_2B0E4
0x2b168 LDR             R6, [SP,#0xB8+var_18]
0x2b16a ADDS            R6, #1
0x2b16c STR             R6, [SP,#0xB8+var_18]
0x2b16e LDR             R3, =word_15332A0
0x2b170 ADDS            R3, #0x66 ; 'f'
0x2b172 LDRB            R3, [R3]
0x2b174 LDR             R0, [SP,#0xB8+var_18]
0x2b176 CMP             R0, R3
0x2b178 BGE             loc_2B184
0x2b17a LSLS            R1, R0, #4
0x2b17c MOVS            R2, #0
0x2b17e STR             R1, [SP,#0xB8+var_64]
0x2b180 STR             R2, [SP,#0xB8+var_24]
0x2b182 B               loc_2B15A
0x2b184 LDR             R3, [SP,#0xB8+var_38]
0x2b186 ADDS            R3, #1
0x2b188 STR             R3, [SP,#0xB8+var_38]
0x2b18a LDR             R2, =word_15332A0
0x2b18c MOVS            R3, R2
0x2b18e ADDS            R3, #0x70 ; 'p'
0x2b190 LDRB            R3, [R3]
0x2b192 LDR             R5, [SP,#0xB8+var_38]
0x2b194 CMP             R5, R3
0x2b196 BLT             loc_2B0C2
0x2b198 LDR             R1, =word_15332A0
0x2b19a MOVS            R3, R1
0x2b19c ADDS            R3, #0x62 ; 'b'
0x2b19e LDRB            R3, [R3]
0x2b1a0 LSLS            R3, R3, #0x18
0x2b1a2 ASRS            R3, R3, #0x18
0x2b1a4 CMP             R3, #0
0x2b1a6 BGE             loc_2B1AA
0x2b1a8 B               loc_2B2AE
0x2b1aa MOVS            R3, R1
0x2b1ac ADDS            R3, #0x80
0x2b1ae LDRB            R2, [R3]
0x2b1b0 SUBS            R3, #0x4B ; 'K'
0x2b1b2 LDRB            R3, [R3]
0x2b1b4 ADDS            R3, #1
0x2b1b6 ADDS            R2, R2, R3
0x2b1b8 MOVS            R3, R1
0x2b1ba ADDS            R3, #0x67 ; 'g'
0x2b1bc LDRB            R3, [R3]
0x2b1be SUBS            R2, R2, R3
0x2b1c0 LSLS            R2, R2, #0x14
0x2b1c2 LSRS            R2, R2, #0x10
0x2b1c4 MOVS            R6, #0
0x2b1c6 STR             R2, [SP,#0xB8+var_44]
0x2b1c8 STR             R6, [SP,#0xB8+var_34]
0x2b1ca B               loc_2B2A0
0x2b1cc MOVS            R3, R2
0x2b1ce ADDS            R3, #0x7B ; '{'
0x2b1d0 LDRB            R1, [R3]
0x2b1d2 ADDS            R2, #0x6C ; 'l'
0x2b1d4 SUBS            R3, #5
0x2b1d6 LDRB            R3, [R3]
0x2b1d8 LDRB            R2, [R2]
0x2b1da LDR             R0, [SP,#0xB8+var_34]
0x2b1dc ADDS            R3, R3, R2
0x2b1de MULS            R3, R0
0x2b1e0 ADDS            R1, R1, R3
0x2b1e2 LSLS            R1, R1, #0x14
0x2b1e4 LSRS            R1, R1, #0x10
0x2b1e6 STR             R1, [SP,#0xB8+var_58]
0x2b1e8 MOVS            R1, #0
0x2b1ea STR             R1, [SP,#0xB8+var_14]
0x2b1ec B               loc_2B286
0x2b208 LDR             R2, [SP,#0xB8+var_14]
0x2b20a MULS            R3, R2
0x2b20c LDR             R5, =dword_153339C
0x2b20e ADDS            R3, R3, R7
0x2b210 LDR             R2, [R5,#(dword_15333A0 - 0x153339C)]
0x2b212 LSLS            R3, R3, #3
0x2b214 ADDS            R3, R3, R2
0x2b216 LDRB            R4, [R3]
0x2b218 LDRB            R6, [R3,#1]
0x2b21a LDRB            R3, [R3,#3]
0x2b21c STR             R3, [SP,#0xB8+var_88]
0x2b21e ADDS            R3, R4, R1
0x2b220 ADDS            R3, #0xBC
0x2b222 LDRB            R3, [R3,#3]
0x2b224 ADD             R0, SP, #0xB8+var_4
0x2b226 STRB            R3, [R0]
0x2b228 LDR             R3, =word_1534730
0x2b22a LDR             R1, [SP,#0xB8+var_58]
0x2b22c MOVS            R2, #(word_1534730 - 0x1534730)
0x2b22e LDRSH           R3, [R3,R2]; word_1534730
0x2b230 LSLS            R0, R1, #0x10
0x2b232 LSLS            R2, R7, #4
0x2b234 ADDS            R3, R3, R2
0x2b236 ASRS            R0, R0, #0x10
0x2b238 ADDS            R0, R0, R3
0x2b23a LDR             R3, [SP,#0xB8+var_44]
0x2b23c LSLS            R1, R3, #0x10
0x2b23e LDR             R3, =word_15346FC
0x2b240 LDR             R2, =dword_153339C
0x2b242 MOVS            R5, #(word_15346FC - 0x15346FC)
0x2b244 LDRSH           R3, [R3,R5]; word_15346FC
0x2b246 ASRS            R1, R1, #0x10
0x2b248 ADDS            R1, R1, R3
0x2b24a LDR             R3, [R2,#(dword_15333C8 - 0x153339C)]
0x2b24c LSLS            R4, R4, #3
0x2b24e ADDS            R4, R4, R3
0x2b250 LDR             R3, [R4,#4]
0x2b252 MOV             R12, R6
0x2b254 LDR             R6, [SP,#0xB8+var_68]
0x2b256 STR             R3, [SP,#0xB8+var_B8]
0x2b258 ADDS            R1, R6, R1
0x2b25a MOV             R3, R12
0x2b25c LDR             R6, [SP,#0xB8+var_88]
0x2b25e STR             R3, [SP,#0xB8+var_B4]
0x2b260 ADD             R5, SP, #0xB8+var_8
0x2b262 MOVS            R3, #0
0x2b264 STR             R3, [SP,#0xB8+var_B0]
0x2b266 STR             R5, [SP,#0xB8+var_AC]
0x2b268 STR             R6, [SP,#0xB8+var_A8]
0x2b26a MOVS            R2, #0
0x2b26c LDR             R4, =0x6AA7D
0x2b26e BL              sub_2BCB8
0x2b272 ADDS            R7, #1
0x2b274 LDR             R1, =word_15332A0
0x2b276 MOVS            R3, R1
0x2b278 ADDS            R3, #0x6C ; 'l'
0x2b27a LDRB            R3, [R3]
0x2b27c CMP             R7, R3
0x2b27e BLT             loc_2B208
0x2b280 LDR             R0, [SP,#0xB8+var_14]
0x2b282 ADDS            R0, #1
0x2b284 STR             R0, [SP,#0xB8+var_14]
0x2b286 LDR             R3, =word_15332A0
0x2b288 ADDS            R3, #0x67 ; 'g'
0x2b28a LDRB            R3, [R3]
0x2b28c LDR             R1, [SP,#0xB8+var_14]
0x2b28e CMP             R1, R3
0x2b290 BGE             loc_2B29A
0x2b292 LSLS            R2, R1, #4
0x2b294 MOVS            R7, #0
0x2b296 STR             R2, [SP,#0xB8+var_68]
0x2b298 B               loc_2B274
0x2b29a LDR             R3, [SP,#0xB8+var_34]
0x2b29c ADDS            R3, #1
0x2b29e STR             R3, [SP,#0xB8+var_34]
0x2b2a0 LDR             R2, =word_15332A0
0x2b2a2 MOVS            R3, R2
0x2b2a4 ADDS            R3, #0x71 ; 'q'
0x2b2a6 LDRB            R3, [R3]
0x2b2a8 LDR             R5, [SP,#0xB8+var_34]
0x2b2aa CMP             R5, R3
0x2b2ac BLT             loc_2B1CC
0x2b2ae LDR             R1, =word_15332A0
0x2b2b0 MOVS            R3, R1
0x2b2b2 ADDS            R3, #0x63 ; 'c'
0x2b2b4 LDRB            R3, [R3]
0x2b2b6 LSLS            R3, R3, #0x18
0x2b2b8 ASRS            R3, R3, #0x18
0x2b2ba CMP             R3, #0
0x2b2bc BLT             loc_2B3A8
0x2b2be MOVS            R3, R1
0x2b2c0 ADDS            R3, #0x81
0x2b2c2 LDRB            R2, [R3]
0x2b2c4 SUBS            R3, #0x4C ; 'L'
0x2b2c6 LDRB            R3, [R3]
0x2b2c8 ADDS            R3, #1
0x2b2ca ADDS            R2, R2, R3
0x2b2cc MOVS            R3, R1
0x2b2ce ADDS            R3, #0x68 ; 'h'
0x2b2d0 LDRB            R3, [R3]
0x2b2d2 SUBS            R2, R2, R3
0x2b2d4 LSLS            R2, R2, #0x14
0x2b2d6 LSRS            R2, R2, #0x10
0x2b2d8 MOVS            R6, #0
0x2b2da STR             R2, [SP,#0xB8+var_48]
0x2b2dc STR             R6, [SP,#0xB8+var_30]
0x2b2de B               loc_2B39A
0x2b2e0 MOVS            R3, R2
0x2b2e2 ADDS            R3, #0x7C ; '|'
0x2b2e4 LDRB            R1, [R3]
0x2b2e6 ADDS            R2, #0x6D ; 'm'
0x2b2e8 SUBS            R3, #5
0x2b2ea LDRB            R3, [R3]
0x2b2ec LDRB            R2, [R2]
0x2b2ee LDR             R0, [SP,#0xB8+var_30]
0x2b2f0 ADDS            R3, R3, R2
0x2b2f2 MULS            R3, R0
0x2b2f4 ADDS            R1, R1, R3
0x2b2f6 LSLS            R1, R1, #0x14
0x2b2f8 LSRS            R1, R1, #0x10
0x2b2fa STR             R1, [SP,#0xB8+var_5C]
0x2b2fc MOVS            R1, #0
0x2b2fe STR             R1, [SP,#0xB8+var_10]
0x2b300 B               loc_2B380
0x2b302 LDR             R2, [SP,#0xB8+var_10]
0x2b304 MULS            R3, R2
0x2b306 LDR             R5, =dword_153339C
0x2b308 ADDS            R3, R3, R7
0x2b30a LDR             R2, [R5,#(dword_15333A8 - 0x153339C)]
0x2b30c LSLS            R3, R3, #3
0x2b30e ADDS            R3, R3, R2
0x2b310 LDRB            R4, [R3]
0x2b312 LDRB            R6, [R3,#1]
0x2b314 LDRB            R3, [R3,#3]
0x2b316 STR             R3, [SP,#0xB8+var_8C]
0x2b318 ADDS            R3, R4, R1
0x2b31a ADDS            R3, #0xD0
0x2b31c LDRB            R3, [R3,#3]
0x2b31e ADD             R0, SP, #0xB8+var_4
0x2b320 STRB            R3, [R0]
0x2b322 LDR             R3, =word_1534730
0x2b324 LDR             R1, [SP,#0xB8+var_5C]
0x2b326 MOVS            R2, #(word_1534730 - 0x1534730)
0x2b328 LDRSH           R3, [R3,R2]; word_1534730
0x2b32a LSLS            R0, R1, #0x10
0x2b32c LSLS            R2, R7, #4
0x2b32e ADDS            R3, R3, R2
0x2b330 ASRS            R0, R0, #0x10
0x2b332 ADDS            R0, R0, R3
0x2b334 LDR             R3, [SP,#0xB8+var_48]
0x2b336 LSLS            R1, R3, #0x10
0x2b338 LDR             R3, =word_15346FC
0x2b33a LDR             R2, =dword_153339C
0x2b33c MOVS            R5, #(word_15346FC - 0x15346FC)
0x2b33e LDRSH           R3, [R3,R5]; word_15346FC
0x2b340 ASRS            R1, R1, #0x10
0x2b342 ADDS            R1, R1, R3
0x2b344 LDR             R3, [R2,#(dword_15333D0 - 0x153339C)]
0x2b346 LSLS            R4, R4, #3
0x2b348 ADDS            R4, R4, R3
0x2b34a LDR             R3, [R4,#4]
0x2b34c MOV             R12, R6
0x2b34e LDR             R6, [SP,#0xB8+var_A4]
0x2b350 STR             R3, [SP,#0xB8+var_B8]
0x2b352 ADDS            R1, R6, R1
0x2b354 MOV             R3, R12
0x2b356 LDR             R6, [SP,#0xB8+var_8C]
0x2b358 STR             R3, [SP,#0xB8+var_B4]
0x2b35a ADD             R5, SP, #0xB8+var_8
0x2b35c MOVS            R3, #0
0x2b35e STR             R3, [SP,#0xB8+var_B0]
0x2b360 STR             R5, [SP,#0xB8+var_AC]
0x2b362 STR             R6, [SP,#0xB8+var_A8]
0x2b364 MOVS            R2, #0
0x2b366 LDR             R4, =0x6AA7D
0x2b368 BL              sub_2BCB8
0x2b36c ADDS            R7, #1
0x2b36e LDR             R1, =word_15332A0
0x2b370 MOVS            R3, R1
0x2b372 ADDS            R3, #0x6D ; 'm'
0x2b374 LDRB            R3, [R3]
0x2b376 CMP             R7, R3
0x2b378 BLT             loc_2B302
0x2b37a LDR             R0, [SP,#0xB8+var_10]
0x2b37c ADDS            R0, #1
0x2b37e STR             R0, [SP,#0xB8+var_10]
0x2b380 LDR             R3, =word_15332A0
0x2b382 ADDS            R3, #0x68 ; 'h'
0x2b384 LDRB            R3, [R3]
0x2b386 LDR             R1, [SP,#0xB8+var_10]
0x2b388 CMP             R1, R3
0x2b38a BGE             loc_2B394
0x2b38c LSLS            R2, R1, #4
0x2b38e MOVS            R7, #0
0x2b390 STR             R2, [SP,#0xB8+var_A4]
0x2b392 B               loc_2B36E
0x2b394 LDR             R3, [SP,#0xB8+var_30]
0x2b396 ADDS            R3, #1
0x2b398 STR             R3, [SP,#0xB8+var_30]
0x2b39a LDR             R2, =word_15332A0
0x2b39c MOVS            R3, R2
0x2b39e ADDS            R3, #0x72 ; 'r'
0x2b3a0 LDRB            R3, [R3]
0x2b3a2 LDR             R5, [SP,#0xB8+var_30]
0x2b3a4 CMP             R5, R3
0x2b3a6 BLT             loc_2B2E0
0x2b3a8 LDR             R1, =word_15332A0
0x2b3aa MOVS            R3, R1
0x2b3ac ADDS            R3, #0x64 ; 'd'
0x2b3ae LDRB            R3, [R3]
0x2b3b0 LSLS            R3, R3, #0x18
0x2b3b2 ASRS            R3, R3, #0x18
0x2b3b4 CMP             R3, #0
0x2b3b6 BLT             loc_2B4A2
0x2b3b8 MOVS            R3, R1
0x2b3ba ADDS            R3, #0x82
0x2b3bc LDRB            R2, [R3]
0x2b3be SUBS            R3, #0x4D ; 'M'
0x2b3c0 LDRB            R3, [R3]
0x2b3c2 ADDS            R3, #1
0x2b3c4 ADDS            R2, R2, R3
0x2b3c6 MOVS            R3, R1
0x2b3c8 ADDS            R3, #0x69 ; 'i'
0x2b3ca LDRB            R3, [R3]
0x2b3cc SUBS            R2, R2, R3
0x2b3ce LSLS            R2, R2, #0x14
0x2b3d0 LSRS            R2, R2, #0x10
0x2b3d2 MOVS            R6, #0
0x2b3d4 STR             R2, [SP,#0xB8+var_4C]
0x2b3d6 STR             R6, [SP,#0xB8+var_2C]
0x2b3d8 B               loc_2B494
0x2b3da MOVS            R3, R2
0x2b3dc ADDS            R3, #0x7D ; '}'
0x2b3de LDRB            R1, [R3]
0x2b3e0 ADDS            R2, #0x6E ; 'n'
0x2b3e2 SUBS            R3, #5
0x2b3e4 LDRB            R3, [R3]
0x2b3e6 LDRB            R2, [R2]
0x2b3e8 LDR             R0, [SP,#0xB8+var_2C]
0x2b3ea ADDS            R3, R3, R2
0x2b3ec MULS            R3, R0
0x2b3ee ADDS            R1, R1, R3
0x2b3f0 LSLS            R1, R1, #0x14
0x2b3f2 LSRS            R1, R1, #0x10
0x2b3f4 STR             R1, [SP,#0xB8+var_98]
0x2b3f6 MOVS            R1, #0
0x2b3f8 STR             R1, [SP,#0xB8+var_C]
0x2b3fa B               loc_2B47A
0x2b3fc LDR             R2, [SP,#0xB8+var_C]
0x2b3fe MULS            R3, R2
0x2b400 LDR             R5, =dword_153339C
0x2b402 ADDS            R3, R3, R7
0x2b404 LDR             R2, [R5,#(dword_15333B0 - 0x153339C)]
0x2b406 LSLS            R3, R3, #3
0x2b408 ADDS            R3, R3, R2
0x2b40a LDRB            R4, [R3]
0x2b40c LDRB            R6, [R3,#1]
0x2b40e LDRB            R3, [R3,#3]
0x2b410 STR             R3, [SP,#0xB8+var_90]
0x2b412 ADDS            R3, R4, R1
0x2b414 ADDS            R3, #0xE4
0x2b416 LDRB            R3, [R3,#3]
0x2b418 ADD             R0, SP, #0xB8+var_4
0x2b41a STRB            R3, [R0]
0x2b41c LDR             R3, =word_1534730
0x2b41e LDR             R1, [SP,#0xB8+var_98]
0x2b420 MOVS            R2, #(word_1534730 - 0x1534730)
0x2b422 LDRSH           R3, [R3,R2]; word_1534730
0x2b424 LSLS            R0, R1, #0x10
0x2b426 LSLS            R2, R7, #4
0x2b428 ADDS            R3, R3, R2
0x2b42a ASRS            R0, R0, #0x10
0x2b42c ADDS            R0, R0, R3
0x2b42e LDR             R3, [SP,#0xB8+var_4C]
0x2b430 LSLS            R1, R3, #0x10
0x2b432 LDR             R3, =word_15346FC
0x2b434 LDR             R2, =dword_153339C
0x2b436 MOVS            R5, #(word_15346FC - 0x15346FC)
0x2b438 LDRSH           R3, [R3,R5]; word_15346FC
0x2b43a ASRS            R1, R1, #0x10
0x2b43c ADDS            R1, R1, R3
0x2b43e LDR             R3, [R2,#(dword_15333D8 - 0x153339C)]
0x2b440 LSLS            R4, R4, #3
0x2b442 ADDS            R4, R4, R3
0x2b444 LDR             R3, [R4,#4]
0x2b446 MOV             R12, R6
0x2b448 LDR             R6, [SP,#0xB8+var_74]
0x2b44a STR             R3, [SP,#0xB8+var_B8]
0x2b44c ADDS            R1, R6, R1
0x2b44e MOV             R3, R12
0x2b450 LDR             R6, [SP,#0xB8+var_90]
0x2b452 STR             R3, [SP,#0xB8+var_B4]
0x2b454 ADD             R5, SP, #0xB8+var_8
0x2b456 MOVS            R3, #0
0x2b458 STR             R3, [SP,#0xB8+var_B0]
0x2b45a STR             R5, [SP,#0xB8+var_AC]
0x2b45c STR             R6, [SP,#0xB8+var_A8]
0x2b45e MOVS            R2, #0
0x2b460 LDR             R4, =0x6AA7D
0x2b462 BL              sub_2BCB8
0x2b466 ADDS            R7, #1
0x2b468 LDR             R1, =word_15332A0
0x2b46a MOVS            R3, R1
0x2b46c ADDS            R3, #0x6E ; 'n'
0x2b46e LDRB            R3, [R3]
0x2b470 CMP             R7, R3
0x2b472 BLT             loc_2B3FC
0x2b474 LDR             R0, [SP,#0xB8+var_C]
0x2b476 ADDS            R0, #1
0x2b478 STR             R0, [SP,#0xB8+var_C]
0x2b47a LDR             R3, =word_15332A0
0x2b47c ADDS            R3, #0x69 ; 'i'
0x2b47e LDRB            R3, [R3]
0x2b480 LDR             R1, [SP,#0xB8+var_C]
0x2b482 CMP             R1, R3
0x2b484 BGE             loc_2B48E
0x2b486 LSLS            R2, R1, #4
0x2b488 MOVS            R7, #0
0x2b48a STR             R2, [SP,#0xB8+var_74]
0x2b48c B               loc_2B468
0x2b48e LDR             R3, [SP,#0xB8+var_2C]
0x2b490 ADDS            R3, #1
0x2b492 STR             R3, [SP,#0xB8+var_2C]
0x2b494 LDR             R2, =word_15332A0
0x2b496 MOVS            R3, R2
0x2b498 ADDS            R3, #0x73 ; 's'
0x2b49a LDRB            R3, [R3]
0x2b49c LDR             R5, [SP,#0xB8+var_2C]
0x2b49e CMP             R5, R3
0x2b4a0 BLT             loc_2B3DA
0x2b4a2 MOVS            R2, #0
0x2b4a4 ADD             R3, SP, #0xB8+var_8
0x2b4a6 MOVS            R7, #0
0x2b4a8 STRB            R2, [R3,#4]
0x2b4aa B               loc_2B4FC
0x2b4ac ADDS            R4, #0xFC
0x2b4ae LDR             R3, [R4,#(dword_153340C - 0x153339C)]
0x2b4b0 LSLS            R2, R7, #3
0x2b4b2 ADDS            R2, R2, R3
0x2b4b4 LDRB            R3, [R2,#2]
0x2b4b6 ADD             R0, SP, #0xB8+var_4
0x2b4b8 LDRB            R6, [R2,#3]
0x2b4ba STRB            R3, [R0]
0x2b4bc LDR             R3, =word_1534730
0x2b4be MOVS            R1, #4
0x2b4c0 LDRSH           R0, [R2,R1]
0x2b4c2 MOVS            R5, #(word_1534730 - 0x1534730)
0x2b4c4 LDRSH           R3, [R3,R5]; word_1534730
0x2b4c6 ADDS            R0, R0, R3
0x2b4c8 LDR             R3, =word_15346FC
0x2b4ca MOV             R12, R6
0x2b4cc MOVS            R5, #(word_15346FC - 0x15346FC)
0x2b4ce LDRSH           R3, [R3,R5]; word_15346FC
0x2b4d0 MOVS            R6, #6
0x2b4d2 LDRSH           R1, [R2,R6]
0x2b4d4 ADDS            R1, R1, R3
0x2b4d6 LDRB            R3, [R2]
0x2b4d8 LDR             R4, [R4,#(dword_1533400 - 0x153339C)]
0x2b4da LSLS            R3, R3, #3
0x2b4dc ADDS            R3, R3, R4
0x2b4de LDR             R3, [R3,#4]
0x2b4e0 STR             R3, [SP,#0xB8+var_B8]
0x2b4e2 LDRB            R3, [R2,#1]
0x2b4e4 ADD             R6, SP, #0xB8+var_8
0x2b4e6 MOV             R2, R12
0x2b4e8 STR             R3, [SP,#0xB8+var_B4]
0x2b4ea MOVS            R3, #0
0x2b4ec STR             R2, [SP,#0xB8+var_A8]
0x2b4ee STR             R3, [SP,#0xB8+var_B0]
0x2b4f0 STR             R6, [SP,#0xB8+var_AC]
0x2b4f2 MOVS            R2, #0
0x2b4f4 LDR             R4, =(sub_6ADB8+1)
0x2b4f6 BL              sub_2BCB8
0x2b4fa ADDS            R7, #1
0x2b4fc LDR             R4, =word_15332A0
0x2b4fe MOVS            R3, #(byte_1533404 - 0x15332A0)
0x2b502 LDRB            R3, [R4,R3]; byte_1533404
0x2b504 CMP             R7, R3
0x2b506 BLT             loc_2B4AC
0x2b508 ADD             SP, SP, #0xB8
0x2b50a POP             {R4-R7}
0x2b50c POP             {R0}
0x2b50e BX              R0