0x2abd4 PUSH            {R4,R5,LR}
0x2abd6 LDR             R4, =word_15332A0
0x2abd8 MOVS            R3, R4
0x2abda ADDS            R3, #0x31 ; '1'
0x2abdc LDRB            R2, [R3]
0x2abde ADDS            R3, #1
0x2abe0 LDRB            R3, [R3]
0x2abe2 MOVS            R5, R3
0x2abe4 MULS            R5, R2
0x2abe6 LSLS            R5, R5, #3
0x2abe8 ADDS            R0, R5, #2
0x2abea LDR             R3, =unk_14032EC
0x2abec BL              sub_2BCB6
0x2abf0 MOVS            R2, R5
0x2abf2 STR             R0, [R4,#(dword_15332EC - 0x15332A0)]
0x2abf4 STR             R0, [R4,#(dword_15332F0 - 0x15332A0)]
0x2abf6 MOVS            R1, #0
0x2abf8 LDR             R3, =unk_140329C
0x2abfa ADDS            R4, #0x30 ; '0'
0x2abfc BL              sub_2BCB6
0x2ac00 LDRB            R0, [R4]
0x2ac02 BL              sub_28014
0x2ac06 MOVS            R5, #0
0x2ac08 B               loc_2AC20
0x2ac0a LDR             R3, [R1,#(dword_15332F0 - 0x15332A0)]
0x2ac0c LSLS            R0, R5, #3
0x2ac0e LDR             R1, [R4,#(dword_15333E0 - 0x153339C)]
0x2ac10 ADDS            R0, R0, R3
0x2ac12 ADDS            R1, R5, R1
0x2ac14 ADDS            R0, #4
0x2ac16 MOVS            R2, #1
0x2ac18 LDR             R3, =unk_140327C
0x2ac1a BL              sub_2BCB6
0x2ac1e ADDS            R5, #1
0x2ac20 LDR             R1, =word_15332A0
0x2ac22 MOVS            R3, R1
0x2ac24 ADDS            R3, #0x31 ; '1'
0x2ac26 LDRB            R2, [R3]
0x2ac28 ADDS            R3, #1
0x2ac2a LDRB            R3, [R3]
0x2ac2c MULS            R3, R2
0x2ac2e MOVS            R4, R1
0x2ac30 ADDS            R4, #0xFC
0x2ac32 CMP             R5, R3
0x2ac34 BLT             loc_2AC0A
0x2ac36 LDR             R0, [R4,#(dword_15333DC - 0x153339C)]
0x2ac38 CMP             R0, #0
0x2ac3a BEQ             loc_2AC50
0x2ac3c CMP             R0, #0
0x2ac3e BLE             loc_2AC4A
0x2ac40 LDR             R3, =unk_14032FC
0x2ac42 BL              sub_2BCB6
0x2ac46 MOVS            R3, #0
0x2ac48 STR             R3, [R4,#(dword_15333DC - 0x153339C)]
0x2ac4a MOVS            R3, #0
0x2ac4c STR             R3, [R4,#(dword_15333DC - 0x153339C)]
0x2ac4e STR             R3, [R4,#(dword_15333E0 - 0x153339C)]
0x2ac50 BL              sub_2AB48
0x2ac54 LDR             R5, =word_15332A0
0x2ac56 LDRB            R2, [R5,#(byte_15332A5 - 0x15332A0)]
0x2ac58 LDRB            R3, [R5,#(byte_15332A6 - 0x15332A0)]
0x2ac5a MOVS            R4, R3
0x2ac5c MULS            R4, R2
0x2ac5e LSLS            R4, R4, #3
0x2ac60 LDR             R3, =unk_14032EC
0x2ac62 ADDS            R0, R4, #2
0x2ac64 BL              sub_2BCB6
0x2ac68 MOVS            R1, #0
0x2ac6a MOVS            R2, R4
0x2ac6c LDR             R3, =unk_140329C
0x2ac6e STR             R0, [R5,#(dword_15332BC - 0x15332A0)]
0x2ac70 STR             R0, [R5,#(dword_15332C0 - 0x15332A0)]
0x2ac72 BL              sub_2BCB6
0x2ac76 LDRB            R0, [R5,#(byte_15332A4 - 0x15332A0)]
0x2ac78 BL              sub_27E44
0x2ac7c BL              sub_2AAC0
0x2ac80 MOVS            R5, #0
0x2ac82 LDR             R4, =word_15332A0
0x2ac84 ADDS            R3, R5, R4
0x2ac86 ADDS            R3, #0x60 ; '`'
0x2ac88 LDRB            R3, [R3]
0x2ac8a LSLS            R0, R3, #0x18
0x2ac8c CMP             R0, #0
0x2ac8e BLT             loc_2AC98
0x2ac90 LSRS            R0, R0, #0x18
0x2ac92 MOVS            R1, R5
0x2ac94 BL              sub_27A64
0x2ac98 ADDS            R5, #1
0x2ac9a CMP             R5, #5
0x2ac9c BNE             loc_2AC82
0x2ac9e BL              sub_2AA30
0x2aca2 BL              sub_2A9A0
0x2aca6 BL              sub_2A910
0x2acaa BL              sub_2A880
0x2acae BL              sub_2A7F0
0x2acb2 MOVS            R3, R4
0x2acb4 ADDS            R3, #0x32 ; '2'
0x2acb6 LDRB            R3, [R3]
0x2acb8 LSLS            R3, R3, #4
0x2acba STRH            R3, [R4]
0x2acbc MOVS            R2, R4
0x2acbe MOVS            R3, R4
0x2acc0 ADDS            R3, #0x31 ; '1'
0x2acc2 ADDS            R2, #0x35 ; '5'
0x2acc4 LDRB            R3, [R3]
0x2acc6 LDRB            R2, [R2]
0x2acc8 ADDS            R3, R3, R2
0x2acca LSLS            R3, R3, #4
0x2accc STRH            R3, [R4,#(word_15332A2 - 0x15332A0)]
0x2acce POP             {R4,R5}
0x2acd0 POP             {R0}
0x2acd2 BX              R0