0x7fe9c PUSH            {R4-R7,LR}
0x7fe9e MOVS            R6, R0
0x7fea0 ADDS            R6, #0x44 ; 'D'
0x7fea2 LDRB            R2, [R6,#6]
0x7fea4 LSLS            R3, R2, #3
0x7fea6 LDR             R1, [R6,#0x18]
0x7fea8 ADDS            R3, R3, R2
0x7feaa LSLS            R3, R3, #2
0x7feac ADDS            R3, R3, R1
0x7feae LDRB            R1, [R6,#7]
0x7feb0 LSLS            R2, R1, #4
0x7feb2 LDR             R3, [R3,#0x20]
0x7feb4 ADDS            R2, R2, R1
0x7feb6 LSLS            R2, R2, #2
0x7feb8 ADDS            R2, R2, R3
0x7feba ADDS            R3, R2, #5
0x7febc LDRB            R3, [R3,#0x1F]
0x7febe SUB             SP, SP, #0x50
0x7fec0 MOVS            R7, R0
0x7fec2 CMP             R3, #0
0x7fec4 BNE             loc_7FECC
0x7fec6 MOVS            R0, #0
0x7fec8 STR             R0, [SP,#0x50+var_38]
0x7feca B               loc_80096
0x7fecc MOVS            R3, R2
0x7fece ADD             R1, SP, #0x50+var_14
0x7fed0 ADDS            R3, #0x28 ; '('
0x7fed2 MOVS            R2, R1
0x7fed4 LDM             R3!, {R0,R4,R5}
0x7fed6 STM             R2!, {R0,R4,R5}
0x7fed8 LDM             R3!, {R4,R5}
0x7feda STM             R2!, {R4,R5}
0x7fedc MOVS            R3, R7
0x7fede ADDS            R3, #0x40 ; '@'
0x7fee0 LDRB            R3, [R3]
0x7fee2 CMP             R3, #1
0x7fee4 BNE             loc_7FEF6
0x7fee6 LDRH            R3, [R1]
0x7fee8 STRH            R3, [R1,#0xE]
0x7feea LDRH            R3, [R1,#4]
0x7feec NEGS            R3, R3
0x7feee STRH            R3, [R1]
0x7fef0 LDRH            R3, [R1,#0xE]
0x7fef2 NEGS            R3, R3
0x7fef4 STRH            R3, [R1,#4]
0x7fef6 LDRH            R3, [R7,#0x3A]
0x7fef8 STRH            R3, [R1,#8]
0x7fefa LDRH            R3, [R7,#0x3C]
0x7fefc MOVS            R0, #0
0x7fefe STRH            R3, [R1,#0xC]
0x7ff00 STR             R0, [SP,#0x50+var_38]
0x7ff02 STR             R0, [SP,#0x50+var_30]
0x7ff04 B               loc_7FFC8
0x7ff06 LDR             R1, [SP,#0x50+var_3C]
0x7ff08 LSLS            R3, R1, #2
0x7ff0a LDR             R2, =unk_1538F9C
0x7ff0c ADDS            R3, R3, R1
0x7ff0e LSLS            R3, R3, #7
0x7ff10 ADDS            R3, R3, R2
0x7ff12 MOV             R12, R3
0x7ff14 ADDS            R3, #0x20 ; ' '
0x7ff16 LDRB            R3, [R3,#2]
0x7ff18 CMP             R3, #0
0x7ff1a BEQ             loc_7FFC2
0x7ff1c LDR             R3, =byte_1537CD9
0x7ff1e LDR             R4, [SP,#0x50+var_3C]
0x7ff20 LDRB            R2, [R3,R4]
0x7ff22 MOV             R0, R12
0x7ff24 LSLS            R3, R2, #3
0x7ff26 LDR             R1, =dword_1538AE4
0x7ff28 ADDS            R3, R3, R2
0x7ff2a ADDS            R0, #0x54 ; 'T'
0x7ff2c LDRB            R2, [R0]
0x7ff2e LSLS            R3, R3, #2
0x7ff30 ADDS            R3, R3, R1
0x7ff32 LDR             R1, [R3,#0x18]
0x7ff34 LSLS            R3, R2, #3
0x7ff36 ADDS            R3, R3, R2
0x7ff38 LSLS            R3, R3, #2
0x7ff3a ADDS            R3, R3, R1
0x7ff3c LDRB            R1, [R0,#1]
0x7ff3e LSLS            R2, R1, #4
0x7ff40 ADDS            R2, R2, R1
0x7ff42 LDR             R3, [R3,#0x20]
0x7ff44 LSLS            R2, R2, #2
0x7ff46 ADDS            R2, R2, R3
0x7ff48 LDRB            R1, [R2,#9]
0x7ff4a CMP             R1, #0
0x7ff4c BEQ             loc_7FFC2
0x7ff4e CMP             R1, #2
0x7ff50 BEQ             loc_7FFC2
0x7ff52 MOVS            R3, R2
0x7ff54 ADD             R1, SP, #0x50+var_2C
0x7ff56 ADDS            R3, #0xC
0x7ff58 MOVS            R2, R1
0x7ff5a LDM             R3!, {R0,R4,R5}
0x7ff5c STM             R2!, {R0,R4,R5}
0x7ff5e LDM             R3!, {R0,R4,R5}
0x7ff60 STM             R2!, {R0,R4,R5}
0x7ff62 MOV             R3, R12
0x7ff64 ADDS            R3, #0x30 ; '0'
0x7ff66 LDRB            R3, [R3]
0x7ff68 CMP             R3, #1
0x7ff6a BNE             loc_7FF7E
0x7ff6c LDR             R3, [SP,#0x50+var_2C]
0x7ff6e STRH            R3, [R1,#0x16]
0x7ff70 LDR             R3, [SP,#0x50+var_24]
0x7ff72 NEGS            R3, R3
0x7ff74 STR             R3, [SP,#0x50+var_2C]
0x7ff76 MOVS            R5, #0x16
0x7ff78 LDRSH           R3, [R1,R5]
0x7ff7a NEGS            R3, R3
0x7ff7c STR             R3, [SP,#0x50+var_24]
0x7ff7e MOV             R0, R12
0x7ff80 LDRH            R3, [R0,#0x10]
0x7ff82 STRH            R3, [R1,#0x10]
0x7ff84 LDRH            R3, [R0,#0x12]
0x7ff86 ADD             R0, SP, #0x50+var_14
0x7ff88 STRH            R3, [R1,#0x14]
0x7ff8a BL              sub_7638C
0x7ff8e CMP             R0, #0
0x7ff90 BEQ             loc_7FFC2
0x7ff92 LDRB            R1, [R6,#6]
0x7ff94 LDR             R3, =0x19B0
0x7ff96 LDRB            R2, [R7,R3]
0x7ff98 LSLS            R3, R1, #3
0x7ff9a LDR             R0, [R6,#0x18]
0x7ff9c ADDS            R3, R3, R1
0x7ff9e LSLS            R3, R3, #2
0x7ffa0 LDRB            R1, [R6,#7]
0x7ffa2 ADDS            R3, R3, R0
0x7ffa4 LDR             R0, [R3,#0x20]
0x7ffa6 LSLS            R3, R1, #4
0x7ffa8 ADDS            R3, R3, R1
0x7ffaa LSLS            R3, R3, #2
0x7ffac ADDS            R3, R3, R0
0x7ffae ADDS            R3, #5
0x7ffb0 LDRB            R3, [R3,#0x1F]
0x7ffb2 MOVS            R0, R7
0x7ffb4 STR             R3, [SP,#0x50+var_50]
0x7ffb6 LDR             R1, [SP,#0x50+var_3C]
0x7ffb8 MOVS            R3, #0
0x7ffba STR             R6, [SP,#0x50+var_4C]
0x7ffbc BL              sub_7ED64
0x7ffc0 STR             R0, [SP,#0x50+var_38]
0x7ffc2 LDR             R1, [SP,#0x50+var_30]
0x7ffc4 ADDS            R1, #1
0x7ffc6 STR             R1, [SP,#0x50+var_30]
0x7ffc8 LDR             R2, [SP,#0x50+var_30]
0x7ffca LSLS            R3, R2, #0x18
0x7ffcc LSRS            R3, R3, #0x18
0x7ffce STR             R3, [SP,#0x50+var_3C]
0x7ffd0 LDR             R3, =byte_153AD9C
0x7ffd2 LDR             R4, [SP,#0x50+var_3C]
0x7ffd4 LDRB            R3, [R3]
0x7ffd6 CMP             R3, R4
0x7ffd8 BHI             loc_7FF06
0x7ffda MOVS            R5, #0
0x7ffdc B               loc_80080
0x7ffde LSLS            R3, R5, #1
0x7ffe0 ADDS            R3, R3, R5
0x7ffe2 LSLS            R3, R3, #2
0x7ffe4 LDR             R7, [SP,#0x50+var_48]
0x7ffe6 MOV             R12, R3
0x7ffe8 MOVS            R3, #(dword_1533450 - 0x15332A0)
0x7ffec LDR             R3, [R7,R3]; dword_1533450
0x7ffee LSLS            R2, R5, #4
0x7fff0 MOVS            R0, #0xD4
0x7fff2 ADDS            R2, R2, R3
0x7fff4 LSLS            R0, R0, #1
0x7fff6 STR             R2, [SP,#0x50+var_40]
0x7fff8 STR             R0, [SP,#0x50+var_44]
0x7fffa LDR             R3, [R7,R0]; dword_1533448
0x7fffc MOV             R1, R12
0x7fffe LDRB            R2, [R3,R1]
0x80000 MOVS            R3, #(dword_1533458 - 0x15332A0)
0x80004 LDR             R3, [R7,R3]; dword_1533458
0x80006 LDR             R4, [SP,#0x50+var_40]
0x80008 LSLS            R2, R2, #3
0x8000a ADDS            R2, R2, R3
0x8000c LDR             R3, [R2,#4]
0x8000e LDRB            R2, [R4,#4]
0x80010 LDR             R1, [R3,#0x18]
0x80012 LSLS            R3, R2, #3
0x80014 ADDS            R3, R3, R2
0x80016 LSLS            R3, R3, #2
0x80018 ADDS            R3, R3, R1
0x8001a LDRB            R1, [R4,#5]
0x8001c LSLS            R2, R1, #4
0x8001e ADDS            R2, R2, R1
0x80020 LDR             R3, [R3,#0x20]
0x80022 LSLS            R2, R2, #2
0x80024 ADDS            R2, R2, R3
0x80026 LDRB            R1, [R2,#9]
0x80028 CMP             R1, #0
0x8002a BEQ             loc_8007C
0x8002c CMP             R1, #2
0x8002e BEQ             loc_8007C
0x80030 MOVS            R3, R2
0x80032 ADD             R1, SP, #0x50+var_2C
0x80034 ADDS            R3, #0xC
0x80036 MOVS            R2, R1
0x80038 LDM             R3!, {R0,R4,R7}
0x8003a STM             R2!, {R0,R4,R7}
0x8003c LDM             R3!, {R0,R4,R7}
0x8003e STM             R2!, {R0,R4,R7}
0x80040 LDR             R7, [SP,#0x50+var_40]
0x80042 LDRB            R3, [R7,#0xC]
0x80044 CMP             R3, #1
0x80046 BNE             loc_8005A
0x80048 LDR             R3, [SP,#0x50+var_2C]
0x8004a STRH            R3, [R1,#0x16]
0x8004c LDR             R3, [SP,#0x50+var_24]
0x8004e NEGS            R3, R3
0x80050 STR             R3, [SP,#0x50+var_2C]
0x80052 MOVS            R0, #0x16
0x80054 LDRSH           R3, [R1,R0]
0x80056 NEGS            R3, R3
0x80058 STR             R3, [SP,#0x50+var_24]
0x8005a LDR             R2, [SP,#0x50+var_48]
0x8005c LDR             R4, [SP,#0x50+var_44]
0x8005e LDR             R3, [R2,R4]; dword_1533448
0x80060 ADD             R3, R12
0x80062 LDRH            R2, [R3,#2]
0x80064 STRH            R2, [R1,#0x10]
0x80066 LDRH            R3, [R3,#4]
0x80068 ADD             R0, SP, #0x50+var_14
0x8006a STRH            R3, [R1,#0x14]
0x8006c BL              sub_76480
0x80070 CMP             R0, #0
0x80072 BEQ             loc_8007C
0x80074 MOVS            R0, R5
0x80076 LDR             R3, =(sub_28D98+1)
0x80078 BL              sub_80706
0x8007c LDR             R5, [SP,#0x50+var_34]
0x8007e ADDS            R5, #1
0x80080 STR             R5, [SP,#0x50+var_34]
0x80082 LDR             R7, [SP,#0x50+var_34]
0x80084 LDR             R0, =word_15332A0
0x80086 LSLS            R3, R7, #0x18
0x80088 LSRS            R5, R3, #0x18
0x8008a STR             R0, [SP,#0x50+var_48]
0x8008c MOVS            R3, #(byte_1533440 - 0x15332A0)
0x80090 LDRB            R3, [R0,R3]; byte_1533440
0x80092 CMP             R3, R5
0x80094 BHI             loc_7FFDE
0x80096 LDRB            R2, [R6,#6]
0x80098 LSLS            R3, R2, #3
0x8009a LDR             R1, [R6,#0x18]
0x8009c ADDS            R3, R3, R2
0x8009e LSLS            R3, R3, #2
0x800a0 LDRB            R2, [R6,#7]
0x800a2 ADDS            R3, R3, R1
0x800a4 LDR             R1, [R3,#0x20]
0x800a6 LSLS            R3, R2, #4
0x800a8 ADDS            R3, R3, R2
0x800aa LSLS            R3, R3, #2
0x800ac ADDS            R3, R3, R1
0x800ae LDRB            R2, [R3,#7]
0x800b0 LDR             R0, [SP,#0x50+var_38]
0x800b2 MOVS            R1, #0x16
0x800b4 LDR             R3, =(sub_2D77C+1)
0x800b6 BL              sub_80706
0x800ba ADD             SP, SP, #0x50 ; 'P'
0x800bc POP             {R4-R7}
0x800be POP             {R0}
0x800c0 BX              R0