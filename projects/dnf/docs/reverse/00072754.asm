0x72754 PUSH            {R4-R6,LR}
0x72756 MOVS            R5, R0
0x72758 MOVS            R6, #0
0x7275a B               loc_727F8
0x7275c CMP             R2, #0x24 ; '$'
0x7275e BNE             loc_727B8
0x72760 LDRB            R2, [R5,#1]
0x72762 ADDS            R3, R5, #1
0x72764 CMP             R2, #0x41 ; 'A'
0x72766 BEQ             loc_727AC
0x72768 CMP             R2, #0x61 ; 'a'
0x7276a BNE             loc_727F6
0x7276c B               loc_727AC
0x7276e ADDS            R4, #1
0x72770 B               loc_727B4
0x72772 LSLS            R3, R2, #0x18
0x72774 CMP             R3, #0
0x72776 BGE             loc_72786
0x72778 LDR             R0, =unk_15377C8
0x7277a LDR             R3, =0x8B171
0x7277c BL              sub_75958
0x72780 ADDS            R4, #2
0x72782 ADDS            R6, R6, R0
0x72784 B               loc_727AE
0x72786 CMP             R2, #0x24 ; '$'
0x72788 BEQ             loc_7276E
0x7278a MOVS            R3, #0
0x7278c LDRSB           R3, [R5,R3]
0x7278e CMP             R3, #0
0x72790 BLT             loc_727AE
0x72792 MOVS            R3, R2
0x72794 SUBS            R3, #0x20 ; ' '
0x72796 LDR             R2, =0x8B171
0x72798 CMP             R3, #0x5E ; '^'
0x7279a BHI             loc_727A0
0x7279c LDR             R0, =unk_1536CBC
0x7279e B               loc_727A2
0x727a0 LDR             R0, =unk_1536B60
0x727a2 BL              sub_75956
0x727a6 ADDS            R4, #1
0x727a8 ADDS            R6, R6, R0
0x727aa B               loc_727AE
0x727ac MOVS            R4, #4
0x727ae LDRB            R2, [R5,R4]
0x727b0 CMP             R2, #0
0x727b2 BNE             loc_72772
0x727b4 ADDS            R3, R5, R4
0x727b6 B               loc_727F6
0x727b8 CMP             R2, #0xD
0x727ba BEQ             loc_727E0
0x727bc CMP             R2, #0xA
0x727be BEQ             loc_727E0
0x727c0 CMP             R2, #0x40 ; '@'
0x727c2 BEQ             loc_727E0
0x727c4 LSLS            R3, R2, #0x18
0x727c6 CMP             R3, #0
0x727c8 BLT             loc_727E4
0x727ca MOVS            R3, R2
0x727cc SUBS            R3, #0x20 ; ' '
0x727ce LDR             R2, =0x8B171
0x727d0 CMP             R3, #0x5E ; '^'
0x727d2 BHI             loc_727D8
0x727d4 LDR             R0, =unk_1536CBC
0x727d6 B               loc_727DA
0x727d8 LDR             R0, =unk_1536B60
0x727da BL              sub_75956
0x727de ADDS            R6, R6, R0
0x727e0 ADDS            R3, R5, #1
0x727e2 B               loc_727F6
0x727e4 MOVS            R0, R5
0x727e6 BL              sub_7271C
0x727ea LDR             R3, =0x8B171
0x727ec LDR             R0, =unk_15377C8
0x727ee BL              sub_75958
0x727f2 ADDS            R3, R5, #2
0x727f4 ADDS            R6, R6, R0
0x727f6 MOVS            R5, R3
0x727f8 LDRB            R2, [R5]
0x727fa CMP             R2, #0
0x727fc BNE             loc_7275C
0x727fe MOVS            R0, R6
0x72800 POP             {R4-R6}
0x72802 POP             {R1}
0x72804 BX              R1