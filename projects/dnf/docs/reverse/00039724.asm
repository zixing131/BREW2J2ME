0x39724 PUSH            {R4,R5,LR}
0x39726 SUB             SP, SP, #4
0x39728 BL              sub_39388
0x3972c BL              sub_39360
0x39730 LDR             R3, =byte_1501CC0
0x39732 LDRB            R3, [R3,#(byte_1501CC1 - 0x1501CC0)]
0x39734 LSLS            R3, R3, #0x18
0x39736 ASRS            R3, R3, #0x18
0x39738 CMP             R3, #1
0x3973a BNE             loc_3973E
0x3973c B               loc_39872
0x3973e LDR             R3, =dword_1501D90
0x39740 LDR             R1, [R3]
0x39742 LDR             R3, =0x1AE8
0x39744 LDR             R2, [R1,R3]
0x39746 LDR             R3, =0xFFFF00
0x39748 ANDS            R2, R3
0x3974a MOVS            R3, #0x10400
0x3974e CMP             R2, R3
0x39750 BEQ             loc_39758
0x39752 LDR             R3, =0x10500
0x39754 CMP             R2, R3
0x39756 BNE             loc_3975E
0x39758 LDR             R1, =byte_1535E9C
0x3975a MOVS            R0, #0xE
0x3975c B               loc_39768
0x3975e LDR             R3, =0x14F00
0x39760 CMP             R2, R3
0x39762 BNE             loc_39774
0x39764 LDR             R1, =byte_1535E9C
0x39766 MOVS            R0, #0xF
0x39768 LDR             R3, =0x6C2B5
0x3976a BL              sub_66A76
0x3976e BL              sub_30AF4
0x39772 B               loc_39872
0x39774 MOVS            R3, #0x10000
0x39778 CMP             R2, R3
0x3977a BEQ             loc_39790
0x3977c LDR             R3, =0x10100
0x3977e CMP             R2, R3
0x39780 BEQ             loc_39790
0x39782 MOVS            R3, #0x10200
0x39786 CMP             R2, R3
0x39788 BEQ             loc_39790
0x3978a LDR             R3, =0x10300
0x3978c CMP             R2, R3
0x3978e BNE             loc_39796
0x39790 LDR             R1, =byte_1535E9C
0x39792 MOVS            R0, #0xD
0x39794 B               loc_39768
0x39796 LDR             R0, =dword_150D88C
0x39798 LDR             R3, [R0,#(dword_150D8A0 - 0x150D88C)]
0x3979a CMP             R3, #0
0x3979c BEQ             loc_39872
0x3979e LDR             R3, =0x1AED
0x397a0 LDRB            R3, [R1,R3]
0x397a2 CMP             R3, #1
0x397a4 BLS             loc_39872
0x397a6 LDR             R1, [R0,#(dword_150D89C - 0x150D88C)]
0x397a8 LDRB            R4, [R0,#(byte_150D898 - 0x150D88C)]
0x397aa MOVS            R3, #8
0x397ac LDRSB           R3, [R1,R3]
0x397ae CMP             R3, R4
0x397b0 BNE             loc_397D4
0x397b2 MOVS            R2, #9
0x397b4 LDRSB           R2, [R1,R2]
0x397b6 LDRB            R3, [R0,#(byte_150D899 - 0x150D88C)]
0x397b8 CMP             R2, R3
0x397ba BNE             loc_397D4
0x397bc LDR             R4, =byte_1535E28
0x397be LDR             R3, [R4,#(dword_1535E2C - 0x1535E28)]
0x397c0 CMP             R3, #0
0x397c2 BNE             loc_39872
0x397c4 MOVS            R0, R4
0x397c6 MOVS            R1, #0
0x397c8 MOVS            R2, #0xC
0x397ca LDR             R3, =unk_140329C
0x397cc BL              sub_66A76
0x397d0 MOVS            R0, #0x1B
0x397d2 B               loc_3985A
0x397d4 MOVS            R3, #4
0x397d6 LDRSB           R3, [R1,R3]
0x397d8 CMP             R3, R4
0x397da BNE             loc_39834
0x397dc LDR             R2, =dword_150D88C
0x397de MOVS            R3, #5
0x397e0 LDRSB           R3, [R1,R3]
0x397e2 LDRB            R2, [R2,#(byte_150D899 - 0x150D88C)]
0x397e4 CMP             R3, R2
0x397e6 BNE             loc_39834
0x397e8 LDR             R4, =byte_1535E28
0x397ea LDR             R3, [R4,#(dword_1535E2C - 0x1535E28)]
0x397ec CMP             R3, #0
0x397ee BNE             loc_39872
0x397f0 MOVS            R2, #0xC
0x397f2 LDR             R3, =unk_140329C
0x397f4 MOVS            R0, R4
0x397f6 MOVS            R1, #0
0x397f8 BL              sub_66A76
0x397fc LDR             R3, =dword_1501D90
0x397fe LDR             R2, [R3]
0x39800 LDR             R3, =0x1AED
0x39802 LDRB            R3, [R2,R3]
0x39804 LSLS            R3, R3, #0x18
0x39806 ASRS            R0, R3, #0x18
0x39808 LDR             R5, =(sub_6C6DC+1)
0x3980a LDR             R3, =0x6C2B5
0x3980c CMP             R0, #7
0x3980e BNE             loc_39814
0x39810 MOVS            R0, #0x1A
0x39812 B               loc_3981E
0x39814 MOVS            R2, #0xF0
0x39816 LSLS            R0, R0, #0x19
0x39818 LSLS            R2, R2, #0x14
0x3981a ADDS            R0, R0, R2
0x3981c LSRS            R0, R0, #0x18
0x3981e MOVS            R1, R4
0x39820 BL              sub_66A76
0x39824 MOVS            R3, #1
0x39826 STR             R3, [SP,#4+var_4]
0x39828 MOVS            R0, R4
0x3982a MOVS            R1, #0
0x3982c MOVS            R2, #0
0x3982e BL              sub_66A7A
0x39832 B               loc_39872
0x39834 LDR             R4, =byte_1535E28
0x39836 LDR             R3, [R4,#(dword_1535E2C - 0x1535E28)]
0x39838 CMP             R3, #0
0x3983a BNE             loc_39872
0x3983c MOVS            R2, #0xC
0x3983e LDR             R3, =unk_140329C
0x39840 MOVS            R0, R4
0x39842 MOVS            R1, #0
0x39844 BL              sub_66A76
0x39848 LDR             R3, =dword_1501D90
0x3984a LDR             R2, [R3]
0x3984c LDR             R3, =0x1AED
0x3984e LDRSB           R0, [R2,R3]
0x39850 MOVS            R3, #0xE0
0x39852 LSLS            R0, R0, #0x19
0x39854 LSLS            R3, R3, #0x14
0x39856 ADDS            R0, R0, R3
0x39858 LSRS            R0, R0, #0x18
0x3985a MOVS            R1, R4
0x3985c LDR             R3, =0x6C2B5
0x3985e BL              sub_66A76
0x39862 MOVS            R3, #1
0x39864 MOVS            R0, R4
0x39866 STR             R3, [SP,#4+var_4]
0x39868 MOVS            R1, #0
0x3986a MOVS            R2, #0
0x3986c LDR             R4, =(sub_6C6DC+1)
0x3986e BL              sub_66A78
0x39872 ADD             SP, SP, #4
0x39874 POP             {R4,R5}
0x39876 POP             {R0}
0x39878 BX              R0