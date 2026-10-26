0x70560 PUSH            {R4-R7,LR}
0x70562 SUB             SP, SP, #0x58
0x70564 MOV             R3, SP
0x70566 MOVS            R5, #0
0x70568 ADDS            R3, #0x56 ; 'V'
0x7056a LSLS            R2, R0, #0x10
0x7056c STRH            R5, [R3]
0x7056e LDR             R3, =word_15364E2
0x70570 LSRS            R2, R2, #0x10
0x70572 MOV             R0, SP
0x70574 STRH            R2, [R3]
0x70576 LDR             R1, =aDAni; "%d.ani"
0x70578 LDR             R3, =unk_14032CC
0x7057a STR             R5, [SP,#0x58+var_8]
0x7057c STR             R5, [SP,#0x58+var_C]
0x7057e ADDS            R0, #0x2E ; '.'
0x70580 BL              sub_71334
0x70584 BL              sub_702BC
0x70588 LDR             R3, =byte_15000BD
0x7058a MOVS            R4, #0
0x7058c STRB            R4, [R3]
0x7058e LDR             R3, =byte_15000BC
0x70590 STRB            R4, [R3]
0x70592 LDR             R3, =dword_1501C04
0x70594 LDR             R1, [R3]
0x70596 CMP             R1, #0xF0
0x70598 BNE             loc_705A8
0x7059a LDR             R3, =word_1534730
0x7059c LDR             R2, =word_15346FC
0x7059e STRH            R5, [R3]
0x705a0 LDRH            R3, [R2]
0x705a2 SUBS            R3, #0x28 ; '('
0x705a4 STRH            R3, [R2]
0x705a6 B               loc_705C0
0x705a8 MOVS            R3, #0x140
0x705ac LDR             R2, =word_1534730
0x705ae LDR             R0, =word_15346FC
0x705b0 CMP             R1, R3
0x705b2 BNE             loc_705BC
0x705b4 LDRH            R3, [R2]
0x705b6 SUBS            R3, #0x28 ; '('
0x705b8 STRH            R3, [R2]
0x705ba B               loc_705BE
0x705bc STRH            R5, [R2]
0x705be STRH            R5, [R0]
0x705c0 LDR             R3, =byte_15000B8
0x705c2 LDRB            R3, [R3]
0x705c4 CMP             R3, #0
0x705c6 BNE             loc_705EC
0x705c8 LDR             R3, =dword_1501D90
0x705ca LDR             R2, [R3]
0x705cc LDR             R3, =0x1AE8
0x705ce LDR             R1, =byte_1500071
0x705d0 LDRB            R3, [R2,R3]
0x705d2 STRB            R3, [R1]
0x705d4 LDR             R3, =0x1AE9
0x705d6 LDR             R1, =byte_1500072
0x705d8 LDRB            R3, [R2,R3]
0x705da STRB            R3, [R1]
0x705dc LDR             R3, =0x1AEA
0x705de LDR             R1, =byte_1500073
0x705e0 LDRB            R3, [R2,R3]
0x705e2 STRB            R3, [R1]
0x705e4 LDR             R3, =0x1AED
0x705e6 LDR             R1, =byte_1500074
0x705e8 LDRB            R3, [R2,R3]
0x705ea STRB            R3, [R1]
0x705ec LDR             R3, =(sub_4EA44+1)
0x705ee BL              sub_71334
0x705f2 LDR             R3, =0x85ACD
0x705f4 BL              sub_71334
0x705f8 LDR             R3, =(sub_36694+1)
0x705fa BL              sub_71334
0x705fe LDR             R3, =(sub_2A0E4+1)
0x70600 BL              sub_71334
0x70604 MOV             R0, SP
0x70606 ADDS            R0, #0x2E ; '.'
0x70608 LDR             R3, =(sub_6CBE0+1)
0x7060a BL              sub_71334
0x7060e STR             R0, [SP,#0x58+var_30]
0x70610 CMP             R0, #0
0x70612 BNE             loc_70616
0x70614 B               loc_707EE
0x70616 MOV             R0, SP
0x70618 LDR             R5, =unk_140327C
0x7061a LDR             R1, [SP,#0x58+var_30]
0x7061c MOVS            R2, #2
0x7061e ADDS            R0, #0x56 ; 'V'
0x70620 BL              sub_71338
0x70624 LDR             R1, [SP,#0x58+var_30]
0x70626 MOVS            R2, #4
0x70628 ADDS            R1, #2
0x7062a ADD             R0, SP, #0x58+var_8
0x7062c BL              sub_71338
0x70630 LDR             R1, [SP,#0x58+var_30]
0x70632 MOVS            R2, #4
0x70634 ADDS            R1, #6
0x70636 ADD             R0, SP, #0x58+var_C
0x70638 BL              sub_71338
0x7063c LDR             R0, [SP,#0x58+var_8]
0x7063e LDR             R3, =unk_14032EC
0x70640 ADDS            R0, #2
0x70642 BL              sub_71334
0x70646 MOVS            R7, R0
0x70648 LDR             R0, [SP,#0x58+var_30]
0x7064a MOVS            R1, #6
0x7064c LDR             R2, [SP,#0x58+var_8]
0x7064e LDR             R3, [SP,#0x58+var_C]
0x70650 STR             R1, [SP,#0x58+var_58]
0x70652 LDR             R4, =(sub_692B4+1)
0x70654 MOVS            R1, R7
0x70656 ADDS            R0, #0xA
0x70658 BL              sub_71336
0x7065c MOVS            R0, R7
0x7065e BL              sub_70544
0x70662 MOVS            R0, R7
0x70664 BL              sub_704E8
0x70668 MOVS            R0, R7
0x7066a BL              sub_704AC
0x7066e MOVS            R0, R7
0x70670 BL              sub_70470
0x70674 LDR             R3, =word_1536764
0x70676 LDR             R0, =byte_1536345
0x70678 MOVS            R2, #0
0x7067a MOVS            R1, #0
0x7067c STRB            R1, [R0]
0x7067e STRH            R2, [R3]
0x70680 STR             R3, [SP,#0x58+var_34]
0x70682 LDR             R3, =word_1535F38
0x70684 STRH            R2, [R3]
0x70686 STR             R3, [SP,#0x58+var_38]
0x70688 LDR             R3, =word_1536762
0x7068a STRH            R2, [R3]
0x7068c STR             R3, [SP,#0x58+var_3C]
0x7068e LDR             R3, =word_15364DE
0x70690 STRH            R2, [R3]
0x70692 STR             R3, [SP,#0x58+var_40]
0x70694 LDR             R3, =word_15364DC
0x70696 STRH            R2, [R3]
0x70698 STR             R3, [SP,#0x58+var_44]
0x7069a LDR             R3, =word_1535F3A
0x7069c STRH            R2, [R3]
0x7069e STR             R3, [SP,#0x58+var_48]
0x706a0 LDR             R3, =word_15364E4
0x706a2 STRH            R2, [R3]
0x706a4 STR             R3, [SP,#0x58+var_4C]
0x706a6 LDR             R3, =word_1536346
0x706a8 LDR             R6, =word_15364E0
0x706aa STRH            R2, [R3]
0x706ac STR             R3, [SP,#0x58+var_50]
0x706ae LDR             R3, =word_15364E6
0x706b0 LDR             R4, =unk_15364FC
0x706b2 STRH            R2, [R6]
0x706b4 STRH            R2, [R3]
0x706b6 STR             R3, [SP,#0x58+var_54]
0x706b8 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x706ba LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x706bc ADDS            R1, R7, R1
0x706be ADDS            R1, R1, R3
0x706c0 MOVS            R2, #1
0x706c2 BL              sub_71338
0x706c6 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x706c8 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x706ca ADDS            R1, R7, R1
0x706cc ADDS            R1, R1, R3
0x706ce ADDS            R1, #1
0x706d0 MOVS            R2, #2
0x706d2 MOVS            R0, R6
0x706d4 BL              sub_71338
0x706d8 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x706da LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x706dc ADDS            R1, R7, R1
0x706de ADDS            R1, R1, R3
0x706e0 ADDS            R1, #3
0x706e2 MOVS            R2, #2
0x706e4 LDR             R0, [SP,#0x58+var_34]
0x706e6 BL              sub_71338
0x706ea LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x706ec LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x706ee ADDS            R1, R7, R1
0x706f0 ADDS            R1, R1, R3
0x706f2 ADDS            R1, #5
0x706f4 MOVS            R2, #2
0x706f6 LDR             R0, [SP,#0x58+var_38]
0x706f8 BL              sub_71338
0x706fc LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x706fe LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x70700 ADDS            R1, R7, R1
0x70702 ADDS            R1, R1, R3
0x70704 ADDS            R1, #7
0x70706 MOVS            R2, #2
0x70708 LDR             R0, [SP,#0x58+var_3C]
0x7070a BL              sub_71338
0x7070e LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x70710 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x70712 ADDS            R1, R7, R1
0x70714 ADDS            R1, R1, R3
0x70716 ADDS            R1, #9
0x70718 MOVS            R2, #2
0x7071a LDR             R0, [SP,#0x58+var_40]
0x7071c BL              sub_71338
0x70720 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x70722 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x70724 ADDS            R1, R7, R1
0x70726 ADDS            R1, R1, R3
0x70728 ADDS            R1, #0xB
0x7072a MOVS            R2, #2
0x7072c LDR             R0, [SP,#0x58+var_44]
0x7072e BL              sub_71338
0x70732 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x70734 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x70736 ADDS            R1, R7, R1
0x70738 ADDS            R1, R1, R3
0x7073a ADDS            R1, #0xD
0x7073c MOVS            R2, #2
0x7073e LDR             R0, [SP,#0x58+var_48]
0x70740 BL              sub_71338
0x70744 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x70746 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x70748 ADDS            R1, R7, R1
0x7074a ADDS            R1, R1, R3
0x7074c ADDS            R1, #0xF
0x7074e MOVS            R2, #2
0x70750 LDR             R0, [SP,#0x58+var_4C]
0x70752 BL              sub_71338
0x70756 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x70758 LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x7075a ADDS            R1, R7, R1
0x7075c ADDS            R1, R1, R3
0x7075e ADDS            R1, #0x11
0x70760 MOVS            R2, #2
0x70762 LDR             R0, [SP,#0x58+var_50]
0x70764 BL              sub_71338
0x70768 LDRH            R1, [R4,#(word_1536506 - 0x15364FC)]
0x7076a LDRH            R3, [R4,#(word_1536502 - 0x15364FC)]
0x7076c ADDS            R1, R7, R1
0x7076e ADDS            R1, R1, R3
0x70770 ADDS            R1, #0x13
0x70772 LDR             R0, [SP,#0x58+var_54]
0x70774 MOVS            R2, #2
0x70776 BL              sub_71338
0x7077a LDR             R0, [SP,#0x58+var_30]
0x7077c LDR             R4, =unk_14032FC
0x7077e BL              sub_71336
0x70782 CMP             R7, #0
0x70784 BEQ             loc_7078C
0x70786 MOVS            R0, R7
0x70788 BL              sub_71336
0x7078c MOVS            R1, #0x12
0x7078e MOVS            R2, #0
0x70790 MOVS            R0, #1
0x70792 MOVS            R3, #0
0x70794 LDR             R4, =(sub_1404+1)
0x70796 BL              sub_71336
0x7079a LDR             R3, =(sub_6BBF4+1)
0x7079c BL              sub_71334
0x707a0 LDR             R2, =byte_1535DD0
0x707a2 MOVS            R3, #1
0x707a4 STRB            R3, [R2]
0x707a6 LDR             R3, =dword_1501D90
0x707a8 LDR             R3, [R3]
0x707aa LDR             R0, [R3,#0x10]
0x707ac MOVS            R1, #0
0x707ae ADDS            R0, #0x44 ; 'D'
0x707b0 MOVS            R2, #1
0x707b2 LDR             R3, =0x76145
0x707b4 BL              sub_71334
0x707b8 LDR             R3, =dword_1501C04
0x707ba LDR             R2, [R3]
0x707bc LDR             R3, =dword_1501BF0
0x707be MOVS            R1, #0
0x707c0 LDR             R3, [R3]
0x707c2 MOVS            R0, #0
0x707c4 STR             R1, [SP,#0x58+var_58]
0x707c6 LDR             R4, =(sub_6A854+1)
0x707c8 BL              sub_71336
0x707cc BL              sub_703D8
0x707d0 BL              sub_6FD98
0x707d4 LDR             R3, =0x71199
0x707d6 BL              sub_71334
0x707da LDR             R5, =unk_15358E0
0x707dc MOVS            R3, #1
0x707de LDR             R0, =dword_1501C30
0x707e0 MOVS            R1, R5
0x707e2 MOVS            R2, #0x44 ; 'D'
0x707e4 LDR             R4, =(sub_6C9BC+1)
0x707e6 BL              sub_71336
0x707ea MOVS            R3, #0x44 ; 'D'
0x707ec STRB            R3, [R5,#(byte_15358E6 - 0x15358E0)]
0x707ee ADD             SP, SP, #0x58 ; 'X'
0x707f0 POP             {R4-R7}
0x707f2 POP             {R0}
0x707f4 BX              R0