0x2f9bc PUSH            {R4-R7,LR}
0x2f9be LSLS            R1, R1, #0x18
0x2f9c0 LSRS            R1, R1, #0x18
0x2f9c2 LSLS            R3, R1, #3
0x2f9c4 SUBS            R3, R3, R1
0x2f9c6 LSLS            R7, R3, #2
0x2f9c8 LDR             R3, =word_150C790
0x2f9ca LSLS            R2, R2, #0x10
0x2f9cc SUB             SP, SP, #4
0x2f9ce LSRS            R2, R2, #0x10
0x2f9d0 LDR             R3, [R3,#(dword_150C798 - 0x150C790)]
0x2f9d2 STR             R2, [SP,#4+var_4]
0x2f9d4 ADDS            R3, R3, R7
0x2f9d6 LSLS            R0, R0, #0x18
0x2f9d8 LDRB            R3, [R3,#1]
0x2f9da LSRS            R0, R0, #0x18
0x2f9dc CMP             R3, R0
0x2f9de BEQ             loc_2F9E2
0x2f9e0 B               loc_2FAE4
0x2f9e2 MOVS            R6, #0
0x2f9e4 LDR             R3, =word_150C790
0x2f9e6 LDR             R3, [R3,#(dword_150C798 - 0x150C790)]
0x2f9e8 LSLS            R2, R6, #3
0x2f9ea ADDS            R3, R7, R3
0x2f9ec ADDS            R0, R2, R3
0x2f9ee LDRB            R3, [R0,#4]
0x2f9f0 ADDS            R4, R0, #4
0x2f9f2 CMP             R3, #1
0x2f9f4 BNE             loc_2FA14
0x2f9f6 LDRH            R3, [R4,#2]
0x2f9f8 LDRH            R0, [R0,#8]
0x2f9fa CMP             R3, #3
0x2f9fc BEQ             loc_2FA04
0x2f9fe CMP             R3, #1
0x2fa00 BEQ             loc_2FA04
0x2fa02 B               loc_2FAD8
0x2fa04 LDR             R3, =(sub_1F2F0+1)
0x2fa06 BL              sub_66A76
0x2fa0a LSLS            R0, R0, #0x18
0x2fa0c ASRS            R0, R0, #0x18
0x2fa0e CMP             R0, #1
0x2fa10 BEQ             loc_2FAD8
0x2fa12 B               loc_2FAE4
0x2fa14 CMP             R3, #2
0x2fa16 BNE             loc_2FA52
0x2fa18 LDR             R3, =dword_1501D90
0x2fa1a LDR             R1, [R3]
0x2fa1c LDR             R3, =0x1AE9
0x2fa1e LDRB            R2, [R1,R3]
0x2fa20 LDRH            R3, [R4,#2]
0x2fa22 LDRH            R5, [R0,#8]
0x2fa24 LDRB            R0, [R0,#0xA]
0x2fa26 CMP             R2, R3
0x2fa28 BNE             loc_2FAE4
0x2fa2a LDR             R3, =0x1AEA
0x2fa2c LDRSB           R3, [R1,R3]
0x2fa2e CMP             R3, R5
0x2fa30 BNE             loc_2FAE4
0x2fa32 LDR             R3, =0x1AEC
0x2fa34 LDRSB           R3, [R1,R3]
0x2fa36 CMP             R3, R0
0x2fa38 BLT             loc_2FAE4
0x2fa3a LDR             R1, =dword_150D88C
0x2fa3c LDRB            R2, [R1,#(byte_150D899 - 0x150D88C)]
0x2fa3e LSLS            R3, R2, #2
0x2fa40 ADDS            R3, R3, R2
0x2fa42 LDRB            R0, [R1,#(byte_150D898 - 0x150D88C)]
0x2fa44 LSLS            R3, R3, #1
0x2fa46 ADDS            R3, R3, R1
0x2fa48 ADDS            R3, R3, R0
0x2fa4a LDRB            R3, [R3,#0x18]
0x2fa4c CMP             R3, #0
0x2fa4e BNE             loc_2FAD8
0x2fa50 B               loc_2FAE4
0x2fa52 CMP             R3, #3
0x2fa54 BNE             loc_2FA70
0x2fa56 LDR             R3, =dword_1501D90
0x2fa58 LDR             R1, [R3]
0x2fa5a LDR             R3, =0x1AE9
0x2fa5c LDRB            R2, [R1,R3]
0x2fa5e LDRH            R3, [R4,#2]
0x2fa60 LDRH            R0, [R0,#8]
0x2fa62 CMP             R2, R3
0x2fa64 BNE             loc_2FAE4
0x2fa66 LDR             R3, =0x1AEA
0x2fa68 LDRSB           R3, [R1,R3]
0x2fa6a CMP             R3, R0
0x2fa6c BEQ             loc_2FAD8
0x2fa6e B               loc_2FAE4
0x2fa70 CMP             R3, #4
0x2fa72 BNE             loc_2FAB0
0x2fa74 LDR             R3, =dword_1501D90
0x2fa76 LDR             R1, [R3]
0x2fa78 LDR             R3, =0x1AE8
0x2fa7a LDRSB           R2, [R1,R3]
0x2fa7c LDRH            R3, [R4,#2]
0x2fa7e LDRH            R5, [R0,#8]
0x2fa80 LDRB            R0, [R0,#0xA]
0x2fa82 CMP             R2, R3
0x2fa84 BNE             loc_2FAE4
0x2fa86 LDR             R3, =0x1AEA
0x2fa88 LDRSB           R3, [R1,R3]
0x2fa8a CMP             R3, R5
0x2fa8c BNE             loc_2FAE4
0x2fa8e LDR             R3, =0x1AEC
0x2fa90 LDRSB           R3, [R1,R3]
0x2fa92 CMP             R3, R0
0x2fa94 BLT             loc_2FAE4
0x2fa96 LDR             R1, =dword_150D88C
0x2fa98 LDR             R0, [R1,#(dword_150D89C - 0x150D88C)]
0x2fa9a LDRB            R3, [R1,#(byte_150D898 - 0x150D88C)]
0x2fa9c MOVS            R2, #4
0x2fa9e LDRSB           R2, [R0,R2]
0x2faa0 CMP             R2, R3
0x2faa2 BNE             loc_2FAE4
0x2faa4 MOVS            R2, #5
0x2faa6 LDRSB           R2, [R0,R2]
0x2faa8 LDRB            R3, [R1,#(byte_150D899 - 0x150D88C)]
0x2faaa CMP             R2, R3
0x2faac BEQ             loc_2FAD8
0x2faae B               loc_2FAE4
0x2fab0 CMP             R3, #5
0x2fab2 BEQ             loc_2FAD8
0x2fab4 CMP             R3, #6
0x2fab6 BNE             loc_2FAD8
0x2fab8 LDR             R3, =dword_1501D90
0x2faba LDR             R1, [R3]
0x2fabc LDR             R3, =0x1AEA
0x2fabe LDRSB           R2, [R1,R3]
0x2fac0 LDRH            R3, [R0,#8]
0x2fac2 LDRH            R5, [R4,#2]
0x2fac4 LDRB            R4, [R0,#0xA]
0x2fac6 CMP             R2, R3
0x2fac8 BNE             loc_2FAE4
0x2faca LDR             R3, =0x1AEC
0x2facc LDRSB           R3, [R1,R3]
0x2face CMP             R3, R4
0x2fad0 BLT             loc_2FAE4
0x2fad2 LDR             R3, [SP,#4+var_4]
0x2fad4 CMP             R3, R5
0x2fad6 BNE             loc_2FAE4
0x2fad8 ADDS            R6, #1
0x2fada CMP             R6, #3
0x2fadc BEQ             loc_2FAE0
0x2fade B               loc_2F9E4
0x2fae0 MOVS            R0, #1
0x2fae2 B               loc_2FAE6
0x2fae4 MOVS            R0, #0
0x2fae6 ADD             SP, SP, #4
0x2fae8 POP             {R4-R7}
0x2faea POP             {R1}
0x2faec BX              R1