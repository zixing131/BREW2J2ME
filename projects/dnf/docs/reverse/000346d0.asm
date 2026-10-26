0x346d0 PUSH            {R4-R7,LR}
0x346d2 SUB             SP, SP, #0xB0
0x346d4 MOV             R0, SP
0x346d6 LDR             R4, =sub_8C9DC
0x346d8 LDR             R1, =0x96731
0x346da MOVS            R2, #0xC
0x346dc ADDS            R0, #0x95
0x346de BL              sub_66A78
0x346e2 MOV             R0, SP
0x346e4 LDR             R1, =0x96726
0x346e6 MOVS            R2, #0xB
0x346e8 ADDS            R0, #0xA1
0x346ea BL              sub_66A78
0x346ee LDR             R1, =0x96715
0x346f0 MOVS            R2, #0x11
0x346f2 ADD             R0, SP, #0xB0+var_2C
0x346f4 BL              sub_66A78
0x346f8 LDR             R1, =0x96711
0x346fa ADD             R0, SP, #0xB0+var_4
0x346fc MOVS            R2, #4
0x346fe BL              sub_66A78
0x34702 MOVS            R6, #0
0x34704 MOVS            R5, #0
0x34706 LDR             R4, =dword_1501D90
0x34708 LDR             R3, [R4]
0x3470a LDR             R3, [R3,#0x10]
0x3470c ADDS            R3, R5, R3
0x3470e MOVS            R2, #0
0x34710 ADDS            R3, #0x74 ; 't'
0x34712 STRB            R2, [R3]
0x34714 LDR             R3, [R4]
0x34716 LDR             R3, [R3,#0x10]
0x34718 MOVS            R1, #0x92
0x3471a ADDS            R3, R5, R3
0x3471c LSLS            R1, R1, #2
0x3471e ADDS            R3, R3, R1
0x34720 STRB            R2, [R3]
0x34722 LDR             R3, [R4]
0x34724 MOVS            R1, R6
0x34726 LDR             R0, [R3,#0x10]
0x34728 ADDS            R6, #1
0x3472a LDR             R3, =0x7E1F1
0x3472c BL              sub_66A76
0x34730 ADDS            R5, #0x24 ; '$'
0x34732 CMP             R6, #0xD
0x34734 BNE             loc_34706
0x34736 LDR             R3, [R4]
0x34738 LDR             R0, [R3,#0x10]
0x3473a LDR             R3, =0x6E349
0x3473c ADDS            R0, #0x44 ; 'D'
0x3473e BL              sub_66A76
0x34742 LDR             R3, [R4]
0x34744 LDR             R3, [R3,#0x10]
0x34746 MOVS            R2, #1
0x34748 ADDS            R3, #0x42 ; 'B'
0x3474a STRB            R2, [R3]
0x3474c LDR             R3, [R4]
0x3474e LDR             R3, [R3,#0x10]
0x34750 MOVS            R0, R3
0x34752 ADDS            R3, #0x42 ; 'B'
0x34754 LDRB            R2, [R3]
0x34756 MOVS            R1, #1
0x34758 LDR             R3, =0x6EA61
0x3475a ADDS            R0, #0x44 ; 'D'
0x3475c BL              sub_66A76
0x34760 LDR             R3, [R4]
0x34762 LDR             R1, [R3,#0x10]
0x34764 LDR             R3, =0x19C5
0x34766 MOVS            R2, #0x3C ; '<'
0x34768 STRB            R2, [R1,R3]
0x3476a LDR             R3, [R4]
0x3476c LDR             R3, [R3,#0x10]
0x3476e MOVS            R2, #5
0x34770 ADDS            R3, #0x32 ; '2'
0x34772 STRB            R2, [R3]
0x34774 MOVS            R4, #0
0x34776 MOVS            R5, #0
0x34778 MOVS            R0, R4
0x3477a LDR             R3, =0x80CC5
0x3477c BL              sub_66A76
0x34780 ADD             R3, SP, #0xB0+var_4
0x34782 LDRB            R2, [R4,R3]
0x34784 SUBS            R3, #0xB
0x34786 LDRB            R0, [R3,R2]
0x34788 LDR             R3, =0x80C95
0x3478a BL              sub_66A76
0x3478e LDR             R3, =dword_1501D90
0x34790 LDR             R3, [R3]
0x34792 MOVS            R2, #0x80
0x34794 ADDS            R3, R5, R3
0x34796 LSLS            R2, R2, #2
0x34798 ADDS            R3, R3, R2
0x3479a ADDS            R4, #1
0x3479c MOVS            R2, #0
0x3479e STRB            R2, [R3,#2]
0x347a0 ADDS            R5, #0x3C ; '<'
0x347a2 CMP             R4, #4
0x347a4 BNE             loc_34778
0x347a6 STR             R2, [SP,#0xB0+var_A8]
0x347a8 STR             R2, [SP,#0xB0+var_AC]
0x347aa ADD             R7, SP, #0xB0+var_68
0x347ac MOVS            R1, #0
0x347ae MOVS            R2, #0x3C ; '<'
0x347b0 LDR             R3, =unk_140329C
0x347b2 MOVS            R0, R7
0x347b4 BL              sub_66A76
0x347b8 LDR             R4, [SP,#0xB0+var_A8]
0x347ba MOV             R3, SP
0x347bc ADDS            R3, #0x95
0x347be LDRB            R5, [R4,R3]
0x347c0 ADDS            R3, R3, R4
0x347c2 LDRB            R3, [R3,#6]
0x347c4 ADD             R6, SP, #0xB0+var_A4
0x347c6 STR             R3, [SP,#0xB0+var_B0]
0x347c8 MOVS            R0, R6
0x347ca MOVS            R1, R5
0x347cc MOVS            R2, R5
0x347ce LDR             R4, =0x8175D
0x347d0 BL              sub_66A78
0x347d4 MOVS            R1, R6
0x347d6 MOVS            R2, #0x3C ; '<'
0x347d8 LDR             R3, =sub_8C9DC
0x347da MOVS            R0, R7
0x347dc BL              sub_66A76
0x347e0 MOVS            R0, R7
0x347e2 LDR             R3, =0x81329
0x347e4 BL              sub_66A76
0x347e8 MOV             R3, SP
0x347ea ADDS            R3, #0xA1
0x347ec LDR             R4, =dword_1501D90
0x347ee LDR             R2, [SP,#0xB0+var_AC]
0x347f0 LDRB            R0, [R3,R5]
0x347f2 MOVS            R3, #0x1F8
0x347f6 ADDS            R1, R2, R3
0x347f8 LDR             R3, [R4]
0x347fa ADDS            R1, R1, R3
0x347fc LDR             R3, =0x81105
0x347fe BL              sub_66A76
0x34802 LDR             R3, [R4]
0x34804 LDR             R4, [SP,#0xB0+var_AC]
0x34806 MOVS            R1, #0x80
0x34808 ADDS            R3, R4, R3
0x3480a LSLS            R1, R1, #2
0x3480c MOVS            R2, #1
0x3480e ADDS            R3, R3, R1
0x34810 STRB            R2, [R3,#2]
0x34812 LDR             R2, [SP,#0xB0+var_A8]
0x34814 ADDS            R4, #0x3C ; '<'
0x34816 ADDS            R2, #1
0x34818 STR             R2, [SP,#0xB0+var_A8]
0x3481a STR             R4, [SP,#0xB0+var_AC]
0x3481c CMP             R2, #6
0x3481e BNE             loc_347AA
0x34820 LDR             R3, =(sub_258B8+1)
0x34822 BL              sub_66A76
0x34826 MOVS            R0, #1
0x34828 MOVS            R1, #0
0x3482a LDR             R3, =(sub_24C4C+1)
0x3482c BL              sub_66A76
0x34830 MOVS            R7, #0
0x34832 MOVS            R5, #0
0x34834 LDR             R3, =dword_1501D90
0x34836 CMP             R7, #0xC
0x34838 BNE             loc_3485E
0x3483a LDR             R3, [R3]
0x3483c LDR             R1, [R3,#0x10]
0x3483e MOVS            R3, R1
0x34840 ADDS            R3, #0x32 ; '2'
0x34842 LDRB            R3, [R3]
0x34844 LSLS            R3, R3, #0x18
0x34846 ASRS            R3, R3, #0x18
0x34848 ADD             R2, SP, #0xB0+var_2C
0x3484a CMP             R3, #4
0x3484c BLE             loc_34854
0x3484e ADDS            R3, R3, R2
0x34850 LDRB            R2, [R3,#8]
0x34852 B               loc_34858
0x34854 ADDS            R3, R3, R2
0x34856 LDRB            R2, [R3,#0xC]
0x34858 LDR             R3, =0x1948
0x3485a STRB            R2, [R1,R3]
0x3485c B               loc_3486E
0x3485e LDR             R3, [R3]
0x34860 LDR             R3, [R3,#0x10]
0x34862 LDR             R4, =0x1468
0x34864 ADD             R2, SP, #0xB0+var_2C
0x34866 ADDS            R3, R5, R3
0x34868 LDRB            R2, [R7,R2]
0x3486a ADDS            R3, R3, R4
0x3486c STRB            R2, [R3]
0x3486e LDR             R0, =dword_1501D90
0x34870 LDR             R3, [R0]
0x34872 LDR             R2, [R3,#0x10]
0x34874 LDR             R4, =0x1468
0x34876 ADDS            R3, R5, R2
0x34878 ADDS            R1, R3, R4
0x3487a MOVS            R3, #0
0x3487c LDRSB           R3, [R1,R3]
0x3487e ADDS            R3, #1
0x34880 BNE             loc_34890
0x34882 MOVS            R2, #0
0x34884 STRB            R2, [R1,#1]
0x34886 LDR             R3, [R0]
0x34888 LDR             R3, [R3,#0x10]
0x3488a ADDS            R3, R5, R3
0x3488c ADDS            R3, R3, R4
0x3488e B               loc_348A4
0x34890 LDR             R1, =0x1468
0x34892 ADDS            R3, R5, R2
0x34894 ADDS            R3, R3, R1
0x34896 MOVS            R2, #1
0x34898 STRB            R2, [R3,#1]
0x3489a LDR             R3, =dword_1501D90
0x3489c LDR             R3, [R3]
0x3489e LDR             R3, [R3,#0x10]
0x348a0 ADDS            R3, R5, R3
0x348a2 ADDS            R3, R3, R1
0x348a4 STRB            R2, [R3,#2]
0x348a6 LDR             R3, =dword_1501D90
0x348a8 LDR             R3, [R3]
0x348aa LDR             R1, [R3,#0x10]
0x348ac LDR             R2, =0x146C
0x348ae ADDS            R3, R5, R1
0x348b0 ADDS            R4, R3, R2
0x348b2 MOVS            R2, #0
0x348b4 STRH            R2, [R4]
0x348b6 LDR             R2, =0x1468
0x348b8 ADDS            R3, R3, R2
0x348ba LDRB            R3, [R3]
0x348bc LSLS            R3, R3, #0x18
0x348be ASRS            R0, R3, #0x18
0x348c0 ADDS            R3, R0, #1
0x348c2 BEQ             loc_348CE
0x348c4 LDR             R3, =0x797E9
0x348c6 BL              sub_66A76
0x348ca STRB            R0, [R4,#2]
0x348cc B               loc_348DA
0x348ce LDR             R4, =0x146C
0x348d0 ADDS            R2, R5, R1
0x348d2 MOVS            R3, #1
0x348d4 ADDS            R2, R2, R4
0x348d6 NEGS            R3, R3
0x348d8 STRB            R3, [R2,#2]
0x348da LDR             R6, =dword_1501D90
0x348dc LDR             R3, [R6]
0x348de LDR             R0, [R3,#0x10]
0x348e0 LDR             R1, =0x146C
0x348e2 ADDS            R3, R5, R0
0x348e4 ADDS            R3, R3, R1
0x348e6 LDRB            R1, [R3,#2]
0x348e8 CMP             R1, #0xFF
0x348ea BEQ             loc_348F6
0x348ec MOVS            R2, R7
0x348ee MOVS            R3, #0
0x348f0 LDR             R4, =0x7ADF1
0x348f2 BL              sub_66A78
0x348f6 LDR             R3, [R6]
0x348f8 LDR             R2, =0x1470
0x348fa LDR             R3, [R3,#0x10]
0x348fc ADDS            R0, R5, R2
0x348fe ADDS            R0, R0, R3
0x34900 MOVS            R1, #0
0x34902 MOVS            R2, #0x30 ; '0'
0x34904 LDR             R3, =unk_140329C
0x34906 ADDS            R7, #1
0x34908 BL              sub_66A76
0x3490c ADDS            R5, #0x68 ; 'h'
0x3490e CMP             R7, #0xD
0x34910 BNE             loc_34834
0x34912 LDR             R3, =0x7E261
0x34914 BL              sub_66A76
0x34918 LDR             R3, =(sub_25288+1)
0x3491a BL              sub_66A76
0x3491e LDR             R3, =(sub_24020+1)
0x34920 BL              sub_66A76
0x34924 LDR             R3, =(sub_24F8C+1)
0x34926 BL              sub_66A76
0x3492a LDR             R3, [R6]
0x3492c LDR             R2, [R3,#0x10]
0x3492e LDR             R3, =dword_14A4
0x34930 LDRH            R1, [R2,R3]
0x34932 SUBS            R3, #0x38 ; '8'
0x34934 STRH            R1, [R2,R3]
0x34936 ADDS            R3, #0xA0
0x34938 LDRH            R1, [R2,R3]
0x3493a SUBS            R3, #0x38 ; '8'
0x3493c STRH            R1, [R2,R3]
0x3493e ADDS            R3, #0xA0
0x34940 LDRH            R1, [R2,R3]
0x34942 SUBS            R3, #0x38 ; '8'
0x34944 STRH            R1, [R2,R3]
0x34946 ADDS            R3, #0xA0
0x34948 LDRH            R1, [R2,R3]
0x3494a SUBS            R3, #0x38 ; '8'
0x3494c STRH            R1, [R2,R3]
0x3494e ADDS            R3, #0xA0
0x34950 LDRH            R1, [R2,R3]
0x34952 SUBS            R3, #0x38 ; '8'
0x34954 STRH            R1, [R2,R3]
0x34956 MOVS            R0, #4
0x34958 LDR             R3, =0x6CCE9
0x3495a BL              sub_66A76
0x3495e LDR             R3, [R6]
0x34960 MOVS            R1, #0
0x34962 LDR             R4, [R3,#0x10]
0x34964 MOVS            R2, #0
0x34966 LDR             R3, =0x79E15
0x34968 MOVS            R0, #0
0x3496a BL              sub_66A76
0x3496e LDR             R3, [R6]
0x34970 LDR             R2, =0x19B8
0x34972 STR             R0, [R4,R2]
0x34974 LDR             R4, [R3,#0x10]
0x34976 LDR             R3, =0x19B4
0x34978 LDR             R2, [R4,R2]
0x3497a MOVS            R1, #0
0x3497c STR             R2, [R4,R3]
0x3497e MOVS            R0, #0
0x34980 MOVS            R2, #0
0x34982 LDR             R3, =0x79C89
0x34984 BL              sub_66A76
0x34988 LDR             R3, [R6]
0x3498a STR             R0, [R4,#0xC]
0x3498c LDR             R2, [R3,#0x10]
0x3498e LDR             R3, [R2,#0xC]
0x34990 ADD             SP, SP, #0xB0
0x34992 STR             R3, [R2,#8]
0x34994 POP             {R4-R7}
0x34996 POP             {R0}
0x34998 BX              R0