0x28be4 PUSH            {R4,R5,LR}
0x28be6 MOVS            R1, #0
0x28be8 B               loc_28C48
0x28bea MOVS            R5, #0
0x28bec ADDS            R2, #1
0x28bee STRB            R5, [R3]
0x28bf0 ADDS            R3, #1
0x28bf2 CMP             R2, #0xA
0x28bf4 BNE             loc_28BEA
0x28bf6 ADDS            R1, #1
0x28bf8 CMP             R1, #0xA
0x28bfa BNE             loc_28C48
0x28bfc LDR             R4, =dword_150D88C
0x28bfe LDR             R3, =dword_9216C
0x28c00 LDR             R0, [R4,#(dword_150D8A0 - 0x150D88C)]
0x28c02 STR             R3, [R4,#(dword_150D908 - 0x150D88C)]
0x28c04 CMP             R0, #0
0x28c06 BEQ             loc_28C12
0x28c08 LDR             R3, =unk_14032FC
0x28c0a BL              sub_2BCB6
0x28c0e STR             R5, [R4,#(dword_150D8A0 - 0x150D88C)]
0x28c10 STR             R5, [R4,#(dword_150D89C - 0x150D88C)]
0x28c12 LDR             R3, =unk_14032EC
0x28c14 MOVS            R0, #0xDE
0x28c16 BL              sub_2BCB6
0x28c1a MOVS            R1, #0
0x28c1c STR             R0, [R4,#(dword_150D8A0 - 0x150D88C)]
0x28c1e STR             R0, [R4,#(dword_150D89C - 0x150D88C)]
0x28c20 MOVS            R2, #0xDC
0x28c22 LDR             R3, =unk_140329C
0x28c24 BL              sub_2BCB6
0x28c28 MOVS            R3, R4
0x28c2a ADDS            R3, #0x80
0x28c2c STRB            R5, [R3]
0x28c2e ADDS            R3, #1
0x28c30 STRB            R5, [R3]
0x28c32 ADDS            R3, #1
0x28c34 STRB            R5, [R3]
0x28c36 LDR             R3, =dword_1501D90
0x28c38 LDR             R2, =0x1AEB
0x28c3a LDR             R1, [R3]
0x28c3c MOVS            R3, #0x38 ; '8'
0x28c3e NEGS            R3, R3
0x28c40 STRB            R3, [R1,R2]
0x28c42 POP             {R4,R5}
0x28c44 POP             {R0}
0x28c46 BX              R0
0x28c48 LSLS            R3, R1, #2
0x28c4a ADDS            R3, R3, R1
0x28c4c LDR             R2, =dword_150D88C
0x28c4e LSLS            R3, R3, #1
0x28c50 ADDS            R3, #0x18
0x28c52 ADDS            R3, R3, R2
0x28c54 MOVS            R2, #0
0x28c56 B               loc_28BEA