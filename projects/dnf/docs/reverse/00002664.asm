0x2664 PUSH            {R4-R7,LR}
0x2666 SUB             SP, SP, #0x2C
0x2668 LDR             R7, =dword_1501C14
0x266a LDR             R5, =dword_1501BFC
0x266c ADD             R6, SP, #0x2C+var_8
0x266e STR             R0, [SP,#0x2C+var_8]
0x2670 STR             R1, [SP,#0x2C+var_4]
0x2672 LDR             R3, =unk_1502038
0x2674 LDR             R0, [R7]
0x2676 LDR             R1, [R5]
0x2678 STR             R6, [SP,#0x2C+var_20]
0x267a LDR             R6, =0x6ADB9
0x267c MOVS            R4, #0
0x267e STR             R3, [SP,#0x2C+var_C]
0x2680 STR             R3, [SP,#0x2C+var_2C]
0x2682 STR             R4, [SP,#0x2C+var_28]
0x2684 STR             R4, [SP,#0x2C+var_24]
0x2686 STR             R4, [SP,#0x2C+var_1C]
0x2688 STR             R6, [SP,#0x2C+var_10]
0x268a SUBS            R0, #0x78 ; 'x'
0x268c SUBS            R1, #0xA0
0x268e MOVS            R2, #0
0x2690 MOVS            R3, #0
0x2692 BL              sub_6D06
0x2696 LDR             R3, [SP,#0x2C+var_C]
0x2698 LDR             R0, [R7]
0x269a LDR             R1, [R5]
0x269c ADD             R6, SP, #0x2C+var_8
0x269e STR             R3, [SP,#0x2C+var_2C]
0x26a0 MOVS            R3, #1
0x26a2 STR             R3, [SP,#0x2C+var_28]
0x26a4 STR             R4, [SP,#0x2C+var_24]
0x26a6 STR             R6, [SP,#0x2C+var_20]
0x26a8 STR             R4, [SP,#0x2C+var_1C]
0x26aa LDR             R6, [SP,#0x2C+var_10]
0x26ac SUBS            R0, #0x78 ; 'x'
0x26ae SUBS            R1, #0x22 ; '"'
0x26b0 MOVS            R2, #0
0x26b2 MOVS            R3, #0
0x26b4 BL              sub_6D06
0x26b8 LDR             R1, [R5]
0x26ba LDR             R3, =dword_1501FF0
0x26bc LDR             R0, [R7]
0x26be STR             R3, [SP,#0x2C+var_14]
0x26c0 STR             R4, [SP,#0x2C+var_2C]
0x26c2 STR             R4, [SP,#0x2C+var_28]
0x26c4 STR             R4, [SP,#0x2C+var_24]
0x26c6 STR             R4, [SP,#0x2C+var_20]
0x26c8 STR             R4, [SP,#0x2C+var_1C]
0x26ca STR             R4, [SP,#0x2C+var_18]
0x26cc MOVS            R2, R3
0x26ce LDR             R5, =0x6B235
0x26d0 SUBS            R1, #0x23 ; '#'
0x26d2 MOVS            R3, #1
0x26d4 BL              sub_6D04
0x26d8 LDR             R6, =dword_1501BF0
0x26da LDR             R1, [R6]
0x26dc LDR             R0, [R7]
0x26de LDR             R2, [SP,#0x2C+var_14]
0x26e0 STR             R4, [SP,#0x2C+var_2C]
0x26e2 STR             R4, [SP,#0x2C+var_28]
0x26e4 STR             R4, [SP,#0x2C+var_24]
0x26e6 STR             R4, [SP,#0x2C+var_20]
0x26e8 STR             R4, [SP,#0x2C+var_1C]
0x26ea STR             R4, [SP,#0x2C+var_18]
0x26ec SUBS            R1, #0xC
0x26ee MOVS            R3, #3
0x26f0 BL              sub_6D04
0x26f4 LDR             R3, =byte_1501F18
0x26f6 MOVS            R5, #(byte_1501F18 - 0x1501F18)
0x26f8 LDRSB           R5, [R3,R5]; byte_1501F18
0x26fa LDR             R3, =byte_14000CE
0x26fc LDR             R0, [R7]
0x26fe LDRSB           R3, [R3,R5]
0x2700 LDR             R1, [R6]
0x2702 LDR             R6, [SP,#0x2C+var_14]
0x2704 SUBS            R0, R0, R3
0x2706 LDR             R2, [R6,#(dword_150200C - 0x1501FF0)]
0x2708 MOVS            R3, #0x334
0x270c LDR             R3, [R2,R3]
0x270e STR             R3, [SP,#0x2C+var_2C]
0x2710 LDR             R3, =byte_14000C8
0x2712 LDRSB           R3, [R3,R5]
0x2714 STR             R3, [SP,#0x2C+var_28]
0x2716 ADD             R3, SP, #0x2C+var_8
0x2718 SUBS            R1, #0x1E
0x271a STR             R4, [SP,#0x2C+var_24]
0x271c STR             R3, [SP,#0x2C+var_20]
0x271e STR             R4, [SP,#0x2C+var_1C]
0x2720 MOVS            R2, #0
0x2722 MOVS            R3, #0
0x2724 LDR             R4, [SP,#0x2C+var_10]
0x2726 BL              sub_6D02
0x272a BL              sub_240C
0x272e ADD             SP, SP, #0x2C ; ','
0x2730 POP             {R4-R7}
0x2732 POP             {R0}
0x2734 BX              R0