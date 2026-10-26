0x85708 PUSH            {R4-R7,LR}
0x8570a LDR             R3, =dword_1501D90
0x8570c LSLS            R0, R0, #0x18
0x8570e SUB             SP, SP, #0x24
0x85710 LSRS            R0, R0, #0x18
0x85712 LDR             R2, [R3]
0x85714 STR             R0, [SP,#0x24+var_10]
0x85716 LDR             R3, =0x1AED
0x85718 LDRSB           R3, [R2,R3]
0x8571a LSLS            R1, R1, #0x18
0x8571c LSRS            R4, R1, #0x18
0x8571e CMP             R3, #7
0x85720 BNE             loc_85724
0x85722 B               loc_85962
0x85724 LDR             R3, =(sub_6C7D4+1)
0x85726 LDR             R0, =0x2710
0x85728 BL              sub_8A950
0x8572c LDR             R2, =unk_1401FFA
0x8572e STR             R0, [SP,#0x24+var_C]
0x85730 LDRB            R3, [R2,#(byte_1401FFB - 0x1401FFA)]
0x85732 LDRB            R1, [R2,#(byte_1401FFC - 0x1401FFA)]
0x85734 LDRB            R2, [R2,#(byte_1401FFD - 0x1401FFA)]
0x85736 ADDS            R3, R3, R1
0x85738 ADDS            R3, R3, R2
0x8573a LSLS            R3, R3, #0x18
0x8573c LSRS            R3, R3, #0x18
0x8573e STR             R3, [SP,#0x24+var_8]
0x85740 LDR             R3, =byte_1500088
0x85742 LDR             R0, [SP,#0x24+var_8]
0x85744 LDRB            R3, [R3]
0x85746 LSLS            R2, R0, #2
0x85748 LSLS            R0, R4, #3
0x8574a CMP             R3, #1
0x8574c BNE             loc_85758
0x8574e LDR             R1, [SP,#0x24+var_8]
0x85750 ADDS            R2, R2, R1
0x85752 LDR             R1, =word_1401F16
0x85754 LSLS            R2, R2, #1
0x85756 B               loc_85760
0x85758 LDR             R3, [SP,#0x24+var_8]
0x8575a LDR             R1, =word_1401E3E
0x8575c ADDS            R2, R2, R3
0x8575e LSLS            R2, R2, #1
0x85760 ADDS            R3, R0, R4
0x85762 LSLS            R3, R3, #2
0x85764 ADDS            R3, R3, R1
0x85766 LDRH            R3, [R3,#4]
0x85768 ADDS            R7, R2, R3
0x8576a LDR             R3, =dword_1501D90
0x8576c LDR             R3, [R3]
0x8576e LDR             R5, [R3,#0x10]
0x85770 LDR             R3, =0x482
0x85772 LDRH            R3, [R5,R3]
0x85774 LDR             R6, =0x8BFE9
0x85776 MOVS            R0, R3
0x85778 MULS            R0, R7
0x8577a MOVS            R1, #0x64 ; 'd'
0x8577c BL              sub_8A956
0x85780 LDR             R3, =0x4FE
0x85782 LDRH            R3, [R5,R3]
0x85784 ADDS            R4, R7, R0
0x85786 MOVS            R1, #0x64 ; 'd'
0x85788 MOVS            R0, R3
0x8578a MULS            R0, R7
0x8578c BL              sub_8A956
0x85790 MOVS            R3, #0x548
0x85794 LDRH            R3, [R5,R3]
0x85796 ADDS            R4, R4, R0
0x85798 MOVS            R1, #0x64 ; 'd'
0x8579a MOVS            R0, R3
0x8579c MULS            R0, R7
0x8579e BL              sub_8A956
0x857a2 LDR             R6, [SP,#0x24+var_C]
0x857a4 ADDS            R4, R4, R0
0x857a6 CMP             R6, R4
0x857a8 BCC             loc_857AC
0x857aa B               loc_85962
0x857ac LDR             R3, =(sub_6C7D4+1)
0x857ae LDR             R0, [SP,#0x24+var_8]
0x857b0 BL              sub_8A950
0x857b4 LDR             R2, =unk_1401FFA
0x857b6 LDRB            R3, [R2,#(byte_1401FFB - 0x1401FFA)]
0x857b8 LSLS            R0, R0, #0x18
0x857ba LSLS            R3, R3, #0x18
0x857bc LSRS            R0, R0, #0x18
0x857be ASRS            R1, R3, #0x18
0x857c0 CMP             R0, R1
0x857c2 BCS             loc_857C8
0x857c4 MOVS            R6, #0
0x857c6 B               loc_857E4
0x857c8 MOVS            R3, #(byte_1401FFC - 0x1401FFA)
0x857ca LDRSB           R3, [R2,R3]; byte_1401FFC
0x857cc ADDS            R1, R1, R3
0x857ce CMP             R0, R1
0x857d0 BCS             loc_857D6
0x857d2 MOVS            R6, #1
0x857d4 B               loc_857E4
0x857d6 MOVS            R3, #(byte_1401FFD - 0x1401FFA)
0x857d8 LDRSB           R3, [R2,R3]; byte_1401FFD
0x857da ADDS            R3, R1, R3
0x857dc CMP             R0, R3
0x857de BCC             loc_857E2
0x857e0 B               loc_85962
0x857e2 MOVS            R6, #2
0x857e4 LDR             R3, =(sub_6C7D4+1)
0x857e6 LDR             R0, =0x2710
0x857e8 BL              sub_8A950
0x857ec LDR             R3, =dword_1501D90
0x857ee LSLS            R0, R0, #0x18
0x857f0 LDR             R2, [R3]
0x857f2 LDR             R3, =0x1AE8
0x857f4 LSRS            R0, R0, #0x18
0x857f6 MOV             R12, R0
0x857f8 LDR             R1, =unk_140201E
0x857fa LDRB            R0, [R2,R3]
0x857fc LDR             R2, =unk_1402014
0x857fe MOVS            R4, #0
0x85800 MOVS            R5, #0
0x85802 LSLS            R3, R5, #0x18
0x85804 LSRS            R7, R3, #0x18
0x85806 LSLS            R3, R0, #0x18
0x85808 ASRS            R3, R3, #0x18
0x8580a CMP             R3, #8
0x8580c BEQ             loc_8582A
0x8580e CMP             R3, #0x12
0x85810 BEQ             loc_8582A
0x85812 CMP             R3, #0x1B
0x85814 BEQ             loc_8582A
0x85816 CMP             R3, #0x23 ; '#'
0x85818 BEQ             loc_8582A
0x8581a CMP             R3, #0x25 ; '%'
0x8581c BEQ             loc_8582A
0x8581e CMP             R3, #0x26 ; '&'
0x85820 BEQ             loc_8582A
0x85822 CMP             R3, #0x27 ; '''
0x85824 BEQ             loc_8582A
0x85826 CMP             R3, #0x28 ; '('
0x85828 BNE             loc_8582E
0x8582a LDRB            R3, [R1]
0x8582c B               loc_85830
0x8582e LDRB            R3, [R2]
0x85830 ADDS            R3, R4, R3
0x85832 LSLS            R3, R3, #0x18
0x85834 LSRS            R4, R3, #0x18
0x85836 CMP             R4, R12
0x85838 BCS             loc_8583C
0x8583a B               loc_85956
0x8583c LDR             R3, =unk_1401FFA
0x8583e LSLS            R0, R6, #1
0x85840 ADDS            R3, R6, R3
0x85842 LDRB            R1, [R3,#4]
0x85844 LDRB            R2, [R3,#5]
0x85846 ADDS            R0, R0, R6
0x85848 LDR             R3, =byte_1402002
0x8584a LSLS            R0, R0, #1
0x8584c ADDS            R0, R0, R3
0x8584e LDRB            R3, [R0,R7]
0x85850 ADDS            R0, R0, R7
0x85852 LDRB            R0, [R0,#1]
0x85854 LDR             R6, [SP,#0x24+var_10]
0x85856 STR             R0, [SP,#0x24+var_24]
0x85858 LDR             R0, =byte_1537CD9
0x8585a LDRB            R4, [R0,R6]
0x8585c LSLS            R0, R4, #2
0x8585e LDR             R5, =unk_1538860
0x85860 ADDS            R0, R0, R4
0x85862 LSLS            R0, R0, #5
0x85864 LDR             R0, [R0,R5]
0x85866 LDRB            R0, [R0]
0x85868 ADDS            R1, #1
0x8586a ADDS            R3, #1
0x8586c STR             R0, [SP,#0x24+var_20]
0x8586e LSLS            R1, R1, #0x18
0x85870 MOVS            R0, #5
0x85872 LSLS            R3, R3, #0x18
0x85874 LSRS            R3, R3, #0x18
0x85876 STR             R0, [SP,#0x24+var_1C]
0x85878 LSRS            R1, R1, #0x18
0x8587a ADD             R0, SP, #0x24+var_4
0x8587c LDR             R4, =(sub_35F0C+1)
0x8587e BL              sub_8A952
0x85882 LDR             R3, [SP,#0x24+var_4]
0x85884 LSLS            R2, R3, #0x18
0x85886 LSLS            R3, R3, #0x10
0x85888 LSRS            R5, R3, #0x18
0x8588a LSRS            R6, R2, #0x18
0x8588c CMP             R5, #0
0x8588e BEQ             loc_85962
0x85890 LDR             R7, =byte_15386AD
0x85892 LDRB            R3, [R7]
0x85894 LDR             R0, =word_1534DE8
0x85896 LSLS            R3, R3, #4
0x85898 ADDS            R3, R3, R0
0x8589a MOVS            R2, #0
0x8589c STR             R0, [SP,#0x24+var_14]
0x8589e MOVS            R1, R5
0x858a0 STRB            R2, [R3,#1]
0x858a2 STRB            R6, [R3,#4]
0x858a4 STRB            R5, [R3,#5]
0x858a6 MOVS            R0, R6
0x858a8 LDR             R3, =(sub_2D284+1)
0x858aa BL              sub_8A950
0x858ae STR             R0, [SP,#0x24+var_18]
0x858b0 MOVS            R1, R5
0x858b2 MOVS            R0, R6
0x858b4 LDR             R3, =(sub_2D3B8+1)
0x858b6 LDRB            R4, [R7]
0x858b8 BL              sub_8A950
0x858bc LDR             R1, [SP,#0x24+var_14]
0x858be LSLS            R4, R4, #4
0x858c0 ADDS            R4, R4, R1
0x858c2 STRB            R0, [R4,#2]
0x858c4 LDR             R2, [SP,#0x24+var_18]
0x858c6 CMP             R2, #0xFF
0x858c8 BEQ             loc_858D2
0x858ca LDRB            R3, [R7]
0x858cc LSLS            R3, R3, #4
0x858ce ADDS            R3, R3, R1
0x858d0 STRB            R2, [R3,#3]
0x858d2 LDRB            R1, [R7]
0x858d4 LDR             R0, [SP,#0x24+var_14]
0x858d6 LSLS            R1, R1, #4
0x858d8 MOVS            R3, #1
0x858da STRB            R3, [R1,R0]
0x858dc LDR             R6, [SP,#0x24+var_10]
0x858de LSLS            R2, R6, #2
0x858e0 LDR             R3, =unk_1538F9C
0x858e2 ADDS            R2, R2, R6
0x858e4 LSLS            R2, R2, #7
0x858e6 ADDS            R2, R2, R3
0x858e8 LDRH            R3, [R2,#2]
0x858ea SUBS            R3, #0xE4
0x858ec LSLS            R3, R3, #0x10
0x858ee LSRS            R3, R3, #0x10
0x858f0 LDR             R4, =(sub_6C7D4+1)
0x858f2 LDRH            R5, [R2,#0x10]
0x858f4 ADDS            R6, R1, R0
0x858f6 CMP             R3, #1
0x858f8 BHI             loc_85908
0x858fa MOVS            R0, #0x28 ; '('
0x858fc BL              sub_8A952
0x85900 MOVS            R3, R5
0x85902 ADDS            R3, #0x64 ; 'd'
0x85904 ADDS            R0, R0, R3
0x85906 B               loc_85912
0x85908 MOVS            R0, #0x28 ; '('
0x8590a BL              sub_8A952
0x8590e ADDS            R0, R5, R0
0x85910 SUBS            R0, #0x14
0x85912 STRH            R0, [R6,#8]
0x85914 LDR             R0, [SP,#0x24+var_10]
0x85916 LSLS            R3, R0, #2
0x85918 LDR             R2, =unk_1538F9C
0x8591a ADDS            R3, R3, R0
0x8591c LSLS            R3, R3, #7
0x8591e LDR             R6, =byte_15386AD
0x85920 ADDS            R3, R3, R2
0x85922 LDRH            R4, [R3,#0x12]
0x85924 MOVS            R0, #0x28 ; '('
0x85926 LDR             R3, =(sub_6C7D4+1)
0x85928 LDRB            R5, [R6]
0x8592a BL              sub_8A950
0x8592e LDR             R3, =word_1534DE8
0x85930 ADDS            R4, R4, R0
0x85932 LSLS            R5, R5, #4
0x85934 ADDS            R5, R5, R3
0x85936 SUBS            R4, #0x14
0x85938 STRH            R4, [R5,#0xA]
0x8593a LDR             R3, =(sub_2C240+1)
0x8593c LDRB            R0, [R6]
0x8593e BL              sub_8A950
0x85942 LDRB            R3, [R6]
0x85944 ADDS            R3, #1
0x85946 LSLS            R3, R3, #0x18
0x85948 LSRS            R3, R3, #0x18
0x8594a STRB            R3, [R6]
0x8594c CMP             R3, #0x77 ; 'w'
0x8594e BLS             loc_85962
0x85950 MOVS            R3, #0
0x85952 STRB            R3, [R6]
0x85954 B               loc_85962
0x85956 ADDS            R5, #1
0x85958 ADDS            R1, #2
0x8595a ADDS            R2, #2
0x8595c CMP             R5, #5
0x8595e BEQ             loc_85962
0x85960 B               loc_85802
0x85962 ADD             SP, SP, #0x24 ; '$'
0x85964 POP             {R4-R7}
0x85966 POP             {R0}
0x85968 BX              R0