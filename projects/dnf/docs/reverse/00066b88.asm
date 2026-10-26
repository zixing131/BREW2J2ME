0x66b88 PUSH            {R4-R7,LR}
0x66b8a MOVS            R7, R2
0x66b8c LDR             R2, =dword_1535ADC
0x66b8e MOVS            R3, R2
0x66b90 ADDS            R3, #0xBC
0x66b92 LDR             R5, [R3]
0x66b94 ADDS            R3, #8
0x66b96 LDR             R3, [R3]
0x66b98 ADDS            R6, R5, R3
0x66b9a MOVS            R3, R2
0x66b9c ADDS            R3, #0xC0
0x66b9e ADDS            R2, #0xC8
0x66ba0 MOVS            R4, R0
0x66ba2 MOVS            R0, R1
0x66ba4 LDR             R1, [R3]
0x66ba6 LDR             R3, [R2]
0x66ba8 ADDS            R1, R1, R3
0x66baa LDR             R3, [R4]
0x66bac CMP             R3, R5
0x66bae BGE             loc_66BCE
0x66bb0 SUBS            R2, R5, R3
0x66bb2 LDR             R3, [R4,#8]
0x66bb4 SUBS            R3, R3, R2
0x66bb6 STR             R3, [R4,#8]
0x66bb8 CMP             R0, #0
0x66bba BEQ             loc_66BC6
0x66bbc LSLS            R3, R7, #0x1D
0x66bbe BMI             loc_66BC6
0x66bc0 LDRH            R3, [R0,#0xA]
0x66bc2 ADDS            R3, R3, R2
0x66bc4 STRH            R3, [R0,#0xA]
0x66bc6 LDR             R3, =dword_1535ADC
0x66bc8 ADDS            R3, #0xBC
0x66bca LDR             R3, [R3]
0x66bcc STR             R3, [R4]
0x66bce LDR             R2, [R4]
0x66bd0 LDR             R3, [R4,#8]
0x66bd2 ADDS            R2, R2, R3
0x66bd4 CMP             R2, R6
0x66bd6 BLE             loc_66BEE
0x66bd8 CMP             R0, #0
0x66bda BEQ             loc_66BE8
0x66bdc LSLS            R3, R7, #0x1D
0x66bde BPL             loc_66BE8
0x66be0 LDRH            R3, [R0,#0xA]
0x66be2 SUBS            R2, R2, R6
0x66be4 ADDS            R3, R3, R2
0x66be6 STRH            R3, [R0,#0xA]
0x66be8 LDR             R3, [R4]
0x66bea SUBS            R3, R6, R3
0x66bec STR             R3, [R4,#8]
0x66bee LDR             R3, =dword_1535ADC
0x66bf0 ADDS            R3, #0xC0
0x66bf2 LDR             R2, [R4,#4]
0x66bf4 LDR             R3, [R3]
0x66bf6 CMP             R2, R3
0x66bf8 BGE             loc_66C18
0x66bfa SUBS            R2, R3, R2
0x66bfc LDR             R3, [R4,#0xC]
0x66bfe SUBS            R3, R3, R2
0x66c00 STR             R3, [R4,#0xC]
0x66c02 CMP             R0, #0
0x66c04 BEQ             loc_66C10
0x66c06 LSLS            R3, R7, #0x1C
0x66c08 BMI             loc_66C10
0x66c0a LDRH            R3, [R0,#0xC]
0x66c0c ADDS            R3, R3, R2
0x66c0e STRH            R3, [R0,#0xC]
0x66c10 LDR             R3, =dword_1535ADC
0x66c12 ADDS            R3, #0xC0
0x66c14 LDR             R3, [R3]
0x66c16 STR             R3, [R4,#4]
0x66c18 LDR             R2, [R4,#4]
0x66c1a LDR             R3, [R4,#0xC]
0x66c1c ADDS            R2, R2, R3
0x66c1e CMP             R2, R1
0x66c20 BLE             loc_66C38
0x66c22 CMP             R0, #0
0x66c24 BEQ             loc_66C32
0x66c26 LSLS            R3, R7, #0x1C
0x66c28 BPL             loc_66C32
0x66c2a LDRH            R3, [R0,#0xC]
0x66c2c SUBS            R2, R2, R1
0x66c2e ADDS            R3, R3, R2
0x66c30 STRH            R3, [R0,#0xC]
0x66c32 LDR             R3, [R4,#4]
0x66c34 SUBS            R3, R1, R3
0x66c36 STR             R3, [R4,#0xC]
0x66c38 CMP             R0, #0
0x66c3a BEQ             loc_66C84
0x66c3c LDR             R3, [R0]
0x66c3e CMP             R3, #0
0x66c40 BEQ             loc_66C84
0x66c42 LDRH            R3, [R3,#4]
0x66c44 MOVS            R1, #0xA
0x66c46 LDRSH           R2, [R0,R1]
0x66c48 SUBS            R2, R3, R2
0x66c4a LDR             R3, [R4,#8]
0x66c4c CMP             R3, R2
0x66c4e BLE             loc_66C52
0x66c50 STR             R2, [R4,#8]
0x66c52 LDR             R3, [R0]
0x66c54 LDRH            R2, [R3,#6]
0x66c56 MOVS            R1, #0xC
0x66c58 LDRSH           R3, [R0,R1]
0x66c5a SUBS            R2, R2, R3
0x66c5c LDR             R3, [R4,#0xC]
0x66c5e CMP             R3, R2
0x66c60 BLE             loc_66C64
0x66c62 STR             R2, [R4,#0xC]
0x66c64 MOVS            R2, #0xA
0x66c66 LDRSH           R3, [R0,R2]
0x66c68 LDR             R2, [R0]
0x66c6a LDRH            R2, [R2,#4]
0x66c6c CMP             R3, R2
0x66c6e BLT             loc_66C74
0x66c70 MOVS            R3, #0
0x66c72 STR             R3, [R4,#8]
0x66c74 LDR             R2, [R0]
0x66c76 MOVS            R1, #0xC
0x66c78 LDRSH           R3, [R0,R1]
0x66c7a LDRH            R2, [R2,#6]
0x66c7c CMP             R3, R2
0x66c7e BLT             loc_66C84
0x66c80 MOVS            R3, #0
0x66c82 STR             R3, [R4,#0xC]
0x66c84 POP             {R4-R7}
0x66c86 POP             {R0}
0x66c88 BX              R0