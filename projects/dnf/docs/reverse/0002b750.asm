0x2b750 PUSH            {R4-R7,LR}
0x2b752 LSLS            R4, R0, #0x18
0x2b754 BL              sub_2A0E4
0x2b758 LDR             R5, =dword_1501D90
0x2b75a LDR             R7, =0x1AE9
0x2b75c LDR             R3, [R5]
0x2b75e LDRB            R0, [R3,R7]
0x2b760 BL              sub_28838
0x2b764 LSRS            R4, R4, #0x18
0x2b766 BL              sub_2ABD4
0x2b76a LDR             R6, =0x62B01
0x2b76c BL              sub_2BCBC
0x2b770 LDR             R5, [R5]
0x2b772 CMP             R4, #1
0x2b774 BNE             loc_2B79A
0x2b776 LDR             R3, =0x1AEA
0x2b778 LDRB            R3, [R5,R3]
0x2b77a LSLS            R3, R3, #0x18
0x2b77c ASRS            R1, R3, #0x18
0x2b77e CMP             R1, #0
0x2b780 BLE             loc_2B838
0x2b782 LDRB            R2, [R5,R7]
0x2b784 MOVS            R3, #0x64 ; 'd'
0x2b786 MOVS            R0, R2
0x2b788 MULS            R0, R3
0x2b78a ADDS            R0, R1, R0
0x2b78c LSLS            R0, R0, #0x10
0x2b78e LSRS            R0, R0, #0x10
0x2b790 BL              sub_28258
0x2b794 BL              sub_2ACE8
0x2b798 B               loc_2B838
0x2b79a LDR             R3, =0x1AEA
0x2b79c LDRB            R3, [R5,R3]
0x2b79e LSLS            R3, R3, #0x18
0x2b7a0 ASRS            R1, R3, #0x18
0x2b7a2 CMP             R1, #0
0x2b7a4 BLE             loc_2B832
0x2b7a6 LDRB            R2, [R5,R7]
0x2b7a8 MOVS            R3, #0x64 ; 'd'
0x2b7aa MOVS            R0, R2
0x2b7ac MULS            R0, R3
0x2b7ae ADDS            R0, R1, R0
0x2b7b0 LSLS            R0, R0, #0x10
0x2b7b2 LSRS            R0, R0, #0x10
0x2b7b4 BL              sub_28258
0x2b7b8 BL              sub_2BCBC
0x2b7bc BL              sub_2ACE8
0x2b7c0 BL              sub_2B59C
0x2b7c4 BL              sub_2BCBC
0x2b7c8 LDR             R5, =word_15332A0
0x2b7ca MOVS            R3, #(byte_1533440 - 0x15332A0)
0x2b7ce LDRB            R4, [R5,R3]; byte_1533440
0x2b7d0 CMP             R4, #0
0x2b7d2 BEQ             loc_2B832
0x2b7d4 LSLS            R4, R4, #4
0x2b7d6 LDR             R3, =unk_14032EC
0x2b7d8 ADDS            R0, R4, #2
0x2b7da BL              sub_2BCB6
0x2b7de MOVS            R3, #(dword_153344C - 0x15332A0)
0x2b7e2 STR             R0, [R5,R3]; dword_153344C
0x2b7e4 MOVS            R3, #(dword_1533450 - 0x15332A0)
0x2b7e8 STR             R0, [R5,R3]; dword_1533450
0x2b7ea MOVS            R1, #0
0x2b7ec MOVS            R2, R4
0x2b7ee LDR             R3, =unk_140329C
0x2b7f0 BL              sub_2BCB6
0x2b7f4 MOVS            R5, #0
0x2b7f6 MOVS            R6, #0
0x2b7f8 B               loc_2B826
0x2b7fa MOVS            R3, #(dword_1533448 - 0x15332A0)
0x2b7fe LDR             R3, [R4,R3]; dword_1533448
0x2b800 LDRB            R2, [R3,R6]
0x2b802 MOVS            R3, #(dword_1533458 - 0x15332A0)
0x2b806 LDR             R3, [R4,R3]; dword_1533458
0x2b808 LSLS            R2, R2, #3
0x2b80a ADDS            R2, R2, R3
0x2b80c MOVS            R3, #(dword_1533450 - 0x15332A0)
0x2b810 LDR             R3, [R4,R3]; dword_1533450
0x2b812 LSLS            R1, R5, #4
0x2b814 LDR             R0, [R2,#4]
0x2b816 ADDS            R1, R1, R3
0x2b818 MOVS            R2, #0
0x2b81a MOVS            R3, #1
0x2b81c LDR             R4, =0x6C9BD
0x2b81e BL              sub_2BCB8
0x2b822 ADDS            R5, #1
0x2b824 ADDS            R6, #0xC
0x2b826 LDR             R4, =word_15332A0
0x2b828 MOVS            R3, #(byte_1533440 - 0x15332A0)
0x2b82c LDRB            R3, [R4,R3]; byte_1533440
0x2b82e CMP             R5, R3
0x2b830 BLT             loc_2B7FA
0x2b832 LDR             R3, =0x34E41
0x2b834 BL              sub_2BCB6
0x2b838 POP             {R4-R7}
0x2b83a POP             {R0}
0x2b83c BX              R0