0x844d0 PUSH            {R4-R7,LR}
0x844d2 SUB             SP, SP, #0x7C
0x844d4 MOV             R4, SP
0x844d6 LSLS            R2, R0, #0x10
0x844d8 ADDS            R4, #0x4E ; 'N'
0x844da LSRS            R2, R2, #0x10
0x844dc LDR             R1, =aDBd; "%d.bd"
0x844de LDR             R3, =unk_14032CC
0x844e0 MOVS            R0, R4
0x844e2 BL              sub_8A950
0x844e6 MOVS            R0, R4
0x844e8 LDR             R3, =(sub_6CBE0+1)
0x844ea BL              sub_8A950
0x844ee STR             R0, [SP,#0x7C+var_58]
0x844f0 CMP             R0, #0
0x844f2 BNE             loc_844F6
0x844f4 B               loc_84A30
0x844f6 MOV             R0, SP
0x844f8 LDR             R6, =unk_140327C
0x844fa LDR             R1, [SP,#0x7C+var_58]
0x844fc MOVS            R2, #2
0x844fe ADDS            R0, #0x7A ; 'z'
0x84500 BL              sub_8A956
0x84504 LDR             R1, [SP,#0x7C+var_58]
0x84506 MOVS            R2, #4
0x84508 ADDS            R1, #2
0x8450a ADD             R0, SP, #0x7C+var_10
0x8450c BL              sub_8A956
0x84510 LDR             R1, [SP,#0x7C+var_58]
0x84512 MOVS            R2, #4
0x84514 ADDS            R1, #6
0x84516 ADD             R0, SP, #0x7C+var_C
0x84518 BL              sub_8A956
0x8451c LDR             R0, [SP,#0x7C+var_10]
0x8451e LDR             R3, =unk_14032EC
0x84520 ADDS            R0, #2
0x84522 BL              sub_8A950
0x84526 STR             R0, [SP,#0x7C+var_54]
0x84528 LDR             R0, [SP,#0x7C+var_58]
0x8452a MOVS            R1, #6
0x8452c LDR             R3, [SP,#0x7C+var_C]
0x8452e LDR             R2, [SP,#0x7C+var_10]
0x84530 STR             R1, [SP,#0x7C+var_7C]
0x84532 LDR             R4, =(sub_692B4+1)
0x84534 LDR             R1, [SP,#0x7C+var_54]
0x84536 ADDS            R0, #0xA
0x84538 BL              sub_8A952
0x8453c LDR             R1, [SP,#0x7C+var_54]
0x8453e MOVS            R2, #2
0x84540 ADD             R0, SP, #0x7C+var_4
0x84542 BL              sub_8A956
0x84546 LDR             R4, [SP,#0x7C+var_54]
0x84548 MOV             R0, SP
0x8454a ADDS            R4, #2
0x8454c MOVS            R1, R4
0x8454e ADDS            R0, #0x76 ; 'v'
0x84550 MOVS            R2, #2
0x84552 BL              sub_8A956
0x84556 LDR             R7, =dword_1538860
0x84558 ADDS            R4, #2
0x8455a MOVS            R0, #0
0x8455c STR             R4, [SP,#0x7C+var_44]
0x8455e STR             R0, [SP,#0x7C+var_50]
0x84560 B               loc_84A0A
0x84580 MOV             R3, SP
0x84582 ADDS            R3, #0x76 ; 'v'
0x84584 MOVS            R0, #0
0x84586 LDRSH           R1, [R3,R0]
0x84588 MOVS            R3, #0xC2
0x8458a LDR             R0, [SP,#0x7C+var_50]
0x8458c LSLS            R3, R3, #1
0x8458e LDR             R2, [R2,R3]; dword_1533424
0x84590 LSLS            R3, R0, #3
0x84592 LDRH            R3, [R3,R2]
0x84594 SUBS            R3, #1
0x84596 MOVS            R6, R3
0x84598 MULS            R6, R1
0x8459a LDR             R1, [SP,#0x7C+var_44]
0x8459c LDR             R3, =unk_140327C
0x8459e ADDS            R6, R1, R6
0x845a0 MOVS            R1, R6
0x845a2 MOVS            R2, #1
0x845a4 STR             R3, [SP,#0x7C+var_5C]
0x845a6 LDR             R0, [R7]
0x845a8 BL              sub_8A950
0x845ac LDR             R0, [R7]
0x845ae ADDS            R4, R6, #1
0x845b0 MOVS            R1, R4
0x845b2 MOVS            R2, #1
0x845b4 LDR             R3, [SP,#0x7C+var_5C]
0x845b6 ADDS            R0, #1
0x845b8 BL              sub_8A950
0x845bc LDR             R0, [R7]
0x845be ADDS            R4, #1
0x845c0 MOVS            R1, R4
0x845c2 MOVS            R2, #1
0x845c4 LDR             R3, [SP,#0x7C+var_5C]
0x845c6 ADDS            R0, #2
0x845c8 BL              sub_8A950
0x845cc LDR             R0, [R7]
0x845ce ADDS            R4, #1
0x845d0 MOVS            R1, R4
0x845d2 MOVS            R2, #0x18
0x845d4 LDR             R3, [SP,#0x7C+var_5C]
0x845d6 ADDS            R0, #0x3C ; '<'
0x845d8 BL              sub_8A950
0x845dc LDR             R0, [R7]
0x845de MOVS            R1, R6
0x845e0 ADDS            R1, #0x1B
0x845e2 MOVS            R2, #1
0x845e4 LDR             R3, [SP,#0x7C+var_5C]
0x845e6 ADDS            R0, #3
0x845e8 BL              sub_8A950
0x845ec LDR             R0, [R7]
0x845ee MOVS            R1, R6
0x845f0 ADDS            R1, #0x1C
0x845f2 MOVS            R2, #1
0x845f4 LDR             R3, [SP,#0x7C+var_5C]
0x845f6 ADDS            R0, #4
0x845f8 BL              sub_8A950
0x845fc LDR             R0, [R7]
0x845fe MOVS            R1, R6
0x84600 ADDS            R1, #0x1D
0x84602 MOVS            R2, #1
0x84604 LDR             R3, [SP,#0x7C+var_5C]
0x84606 ADDS            R0, #6
0x84608 BL              sub_8A950
0x8460c LDR             R0, [R7]
0x8460e MOVS            R1, R6
0x84610 ADDS            R1, #0x1E
0x84612 MOVS            R2, #1
0x84614 LDR             R3, [SP,#0x7C+var_5C]
0x84616 ADDS            R0, #7
0x84618 BL              sub_8A950
0x8461c LDR             R0, [R7]
0x8461e MOVS            R1, R6
0x84620 ADDS            R1, #0x1F
0x84622 MOVS            R2, #1
0x84624 LDR             R3, [SP,#0x7C+var_5C]
0x84626 ADDS            R0, #8
0x84628 BL              sub_8A950
0x8462c LDR             R0, [R7]
0x8462e MOVS            R1, R6
0x84630 ADDS            R1, #0x20 ; ' '
0x84632 MOVS            R2, #1
0x84634 LDR             R3, [SP,#0x7C+var_5C]
0x84636 ADDS            R0, #9
0x84638 BL              sub_8A950
0x8463c LDR             R0, [R7]
0x8463e MOVS            R1, R6
0x84640 ADDS            R1, #0x21 ; '!'
0x84642 MOVS            R2, #1
0x84644 LDR             R3, [SP,#0x7C+var_5C]
0x84646 ADDS            R0, #0xA
0x84648 BL              sub_8A950
0x8464c LDR             R0, [R7]
0x8464e MOVS            R1, R6
0x84650 ADDS            R1, #0x22 ; '"'
0x84652 MOVS            R2, #1
0x84654 LDR             R3, [SP,#0x7C+var_5C]
0x84656 ADDS            R0, #0xB
0x84658 BL              sub_8A950
0x8465c LDR             R0, [R7]
0x8465e MOVS            R1, R6
0x84660 ADDS            R1, #0x23 ; '#'
0x84662 MOVS            R2, #1
0x84664 LDR             R3, [SP,#0x7C+var_5C]
0x84666 ADDS            R0, #0xC
0x84668 BL              sub_8A950
0x8466c LDR             R0, [R7]
0x8466e MOVS            R1, R6
0x84670 ADDS            R1, #0x24 ; '$'
0x84672 MOVS            R2, #1
0x84674 LDR             R3, [SP,#0x7C+var_5C]
0x84676 ADDS            R0, #0xD
0x84678 BL              sub_8A950
0x8467c LDR             R0, [R7]
0x8467e MOVS            R1, R6
0x84680 ADDS            R1, #0x25 ; '%'
0x84682 MOVS            R2, #1
0x84684 LDR             R3, [SP,#0x7C+var_5C]
0x84686 ADDS            R0, #0xE
0x84688 BL              sub_8A950
0x8468c LDR             R0, [R7]
0x8468e MOVS            R1, R6
0x84690 ADDS            R1, #0x26 ; '&'
0x84692 MOVS            R2, #1
0x84694 LDR             R3, [SP,#0x7C+var_5C]
0x84696 ADDS            R0, #0xF
0x84698 BL              sub_8A950
0x8469c LDR             R0, [R7]
0x8469e MOVS            R1, R6
0x846a0 ADDS            R1, #0x27 ; '''
0x846a2 MOVS            R2, #1
0x846a4 LDR             R3, [SP,#0x7C+var_5C]
0x846a6 ADDS            R0, #0x10
0x846a8 BL              sub_8A950
0x846ac LDR             R0, [R7]
0x846ae MOVS            R1, R6
0x846b0 ADDS            R1, #0x28 ; '('
0x846b2 MOVS            R2, #1
0x846b4 LDR             R3, [SP,#0x7C+var_5C]
0x846b6 ADDS            R0, #0x11
0x846b8 BL              sub_8A950
0x846bc LDR             R0, [R7]
0x846be MOVS            R1, R6
0x846c0 ADDS            R1, #0x29 ; ')'
0x846c2 MOVS            R2, #1
0x846c4 LDR             R3, [SP,#0x7C+var_5C]
0x846c6 ADDS            R0, #0x12
0x846c8 BL              sub_8A950
0x846cc LDR             R0, [R7]
0x846ce MOVS            R1, R6
0x846d0 ADDS            R1, #0x2A ; '*'
0x846d2 MOVS            R2, #1
0x846d4 LDR             R3, [SP,#0x7C+var_5C]
0x846d6 ADDS            R0, #0x13
0x846d8 BL              sub_8A950
0x846dc LDR             R0, [R7]
0x846de MOVS            R1, R6
0x846e0 ADDS            R1, #0x2B ; '+'
0x846e2 MOVS            R2, #1
0x846e4 LDR             R3, [SP,#0x7C+var_5C]
0x846e6 ADDS            R0, #0x14
0x846e8 BL              sub_8A950
0x846ec LDR             R0, [R7]
0x846ee MOVS            R1, R6
0x846f0 ADDS            R1, #0x2C ; ','
0x846f2 MOVS            R2, #1
0x846f4 LDR             R3, [SP,#0x7C+var_5C]
0x846f6 ADDS            R0, #0x15
0x846f8 BL              sub_8A950
0x846fc LDR             R0, [R7]
0x846fe MOVS            R1, R6
0x84700 ADDS            R1, #0x2D ; '-'
0x84702 MOVS            R2, #1
0x84704 LDR             R3, [SP,#0x7C+var_5C]
0x84706 ADDS            R0, #0x16
0x84708 BL              sub_8A950
0x8470c LDR             R0, [R7]
0x8470e MOVS            R1, R6
0x84710 ADDS            R1, #0x2E ; '.'
0x84712 MOVS            R2, #1
0x84714 LDR             R3, [SP,#0x7C+var_5C]
0x84716 ADDS            R0, #0x17
0x84718 BL              sub_8A950
0x8471c LDR             R0, [R7]
0x8471e MOVS            R1, R6
0x84720 ADDS            R1, #0x2F ; '/'
0x84722 MOVS            R2, #1
0x84724 LDR             R3, [SP,#0x7C+var_5C]
0x84726 ADDS            R0, #0x18
0x84728 BL              sub_8A950
0x8472c LDR             R0, [R7]
0x8472e MOVS            R1, R6
0x84730 ADDS            R1, #0x30 ; '0'
0x84732 MOVS            R2, #1
0x84734 LDR             R3, [SP,#0x7C+var_5C]
0x84736 ADDS            R0, #0x19
0x84738 BL              sub_8A950
0x8473c LDR             R0, [R7]
0x8473e MOVS            R1, R6
0x84740 ADDS            R1, #0x31 ; '1'
0x84742 MOVS            R2, #1
0x84744 LDR             R3, [SP,#0x7C+var_5C]
0x84746 ADDS            R0, #0x1A
0x84748 BL              sub_8A950
0x8474c LDR             R0, [R7]
0x8474e MOVS            R1, R6
0x84750 ADDS            R1, #0x32 ; '2'
0x84752 MOVS            R2, #4
0x84754 LDR             R3, [SP,#0x7C+var_5C]
0x84756 ADDS            R0, #0x1C
0x84758 BL              sub_8A950
0x8475c LDR             R0, [R7]
0x8475e MOVS            R1, R6
0x84760 ADDS            R1, #0x36 ; '6'
0x84762 MOVS            R2, #2
0x84764 LDR             R3, [SP,#0x7C+var_5C]
0x84766 ADDS            R0, #0x20 ; ' '
0x84768 BL              sub_8A950
0x8476c LDR             R0, [R7]
0x8476e MOVS            R1, R6
0x84770 ADDS            R1, #0x38 ; '8'
0x84772 MOVS            R2, #2
0x84774 LDR             R3, [SP,#0x7C+var_5C]
0x84776 ADDS            R0, #0x22 ; '"'
0x84778 BL              sub_8A950
0x8477c LDR             R0, [R7]
0x8477e MOVS            R1, R6
0x84780 ADDS            R1, #0x3A ; ':'
0x84782 MOVS            R2, #2
0x84784 LDR             R3, [SP,#0x7C+var_5C]
0x84786 ADDS            R0, #0x24 ; '$'
0x84788 BL              sub_8A950
0x8478c LDR             R0, [R7]
0x8478e MOVS            R1, R6
0x84790 ADDS            R1, #0x3C ; '<'
0x84792 MOVS            R2, #1
0x84794 LDR             R3, [SP,#0x7C+var_5C]
0x84796 ADDS            R0, #0x26 ; '&'
0x84798 BL              sub_8A950
0x8479c LDR             R0, [R7]
0x8479e MOVS            R1, R6
0x847a0 ADDS            R1, #0x3D ; '='
0x847a2 MOVS            R2, #2
0x847a4 LDR             R3, [SP,#0x7C+var_5C]
0x847a6 ADDS            R0, #0x28 ; '('
0x847a8 BL              sub_8A950
0x847ac LDR             R0, [R7]
0x847ae MOVS            R1, R6
0x847b0 ADDS            R1, #0x3F ; '?'
0x847b2 MOVS            R2, #1
0x847b4 LDR             R3, [SP,#0x7C+var_5C]
0x847b6 ADDS            R0, #0x2A ; '*'
0x847b8 BL              sub_8A950
0x847bc LDR             R0, [R7]
0x847be MOVS            R1, R6
0x847c0 ADDS            R1, #0x40 ; '@'
0x847c2 MOVS            R2, #1
0x847c4 LDR             R3, [SP,#0x7C+var_5C]
0x847c6 ADDS            R0, #0x2C ; ','
0x847c8 BL              sub_8A950
0x847cc LDR             R0, [R7]
0x847ce MOVS            R1, R6
0x847d0 ADDS            R1, #0x41 ; 'A'
0x847d2 MOVS            R2, #1
0x847d4 LDR             R3, [SP,#0x7C+var_5C]
0x847d6 ADDS            R0, #0x2D ; '-'
0x847d8 BL              sub_8A950
0x847dc LDR             R0, [R7]
0x847de MOVS            R1, R6
0x847e0 ADDS            R1, #0x42 ; 'B'
0x847e2 MOVS            R2, #2
0x847e4 LDR             R3, [SP,#0x7C+var_5C]
0x847e6 ADDS            R0, #0x32 ; '2'
0x847e8 BL              sub_8A950
0x847ec LDR             R0, [R7]
0x847ee MOVS            R1, R6
0x847f0 ADDS            R1, #0x44 ; 'D'
0x847f2 MOVS            R2, #1
0x847f4 LDR             R3, [SP,#0x7C+var_5C]
0x847f6 ADDS            R0, #0x2E ; '.'
0x847f8 BL              sub_8A950
0x847fc LDR             R0, [R7]
0x847fe MOVS            R1, R6
0x84800 ADDS            R1, #0x45 ; 'E'
0x84802 MOVS            R2, #1
0x84804 LDR             R3, [SP,#0x7C+var_5C]
0x84806 ADDS            R0, #0x2F ; '/'
0x84808 BL              sub_8A950
0x8480c LDR             R0, [R7]
0x8480e MOVS            R1, R6
0x84810 ADDS            R1, #0x46 ; 'F'
0x84812 MOVS            R2, #1
0x84814 LDR             R3, [SP,#0x7C+var_5C]
0x84816 ADDS            R0, #0x34 ; '4'
0x84818 BL              sub_8A950
0x8481c LDR             R0, [R7]
0x8481e MOVS            R1, R6
0x84820 ADDS            R1, #0x47 ; 'G'
0x84822 MOVS            R2, #2
0x84824 LDR             R3, [SP,#0x7C+var_5C]
0x84826 ADDS            R0, #0x36 ; '6'
0x84828 BL              sub_8A950
0x8482c LDR             R0, [R7]
0x8482e MOVS            R1, R6
0x84830 ADDS            R1, #0x49 ; 'I'
0x84832 MOVS            R2, #1
0x84834 LDR             R3, [SP,#0x7C+var_5C]
0x84836 ADDS            R0, #0x38 ; '8'
0x84838 BL              sub_8A950
0x8483c LDR             R0, [R7]
0x8483e MOVS            R1, R6
0x84840 ADDS            R1, #0x4A ; 'J'
0x84842 MOVS            R2, #1
0x84844 LDR             R3, [SP,#0x7C+var_5C]
0x84846 ADDS            R0, #0x39 ; '9'
0x84848 BL              sub_8A950
0x8484c LDR             R0, [R7]
0x8484e MOVS            R1, R6
0x84850 ADDS            R1, #0x4B ; 'K'
0x84852 MOVS            R2, #1
0x84854 LDR             R3, [SP,#0x7C+var_5C]
0x84856 ADDS            R0, #0x3A ; ':'
0x84858 BL              sub_8A950
0x8485c LDR             R0, [R7]
0x8485e MOVS            R1, R6
0x84860 ADDS            R1, #0x4C ; 'L'
0x84862 MOVS            R2, #1
0x84864 LDR             R3, [SP,#0x7C+var_5C]
0x84866 ADDS            R0, #0x1B
0x84868 BL              sub_8A950
0x8486c LDR             R0, [R7]
0x8486e MOVS            R1, R6
0x84870 ADDS            R1, #0x4D ; 'M'
0x84872 ADDS            R0, #0x3B ; ';'
0x84874 MOVS            R2, #1
0x84876 LDR             R3, [SP,#0x7C+var_5C]
0x84878 BL              sub_8A950
0x8487c ADDS            R6, #0x4E ; 'N'
0x8487e MOVS            R0, #0
0x84880 STR             R6, [SP,#0x7C+var_40]
0x84882 STR             R6, [SP,#0x7C+var_3C]
0x84884 STR             R0, [SP,#0x7C+var_34]
0x84886 LDR             R1, [SP,#0x7C+var_34]
0x84888 LSLS            R1, R1, #4
0x8488a MOVS            R4, R1
0x8488c LDR             R0, [R7]
0x8488e ADDS            R4, #0x54 ; 'T'
0x84890 LDR             R6, =unk_140327C
0x84892 STR             R1, [SP,#0x7C+var_60]
0x84894 ADDS            R0, R4, R0
0x84896 LDR             R1, [SP,#0x7C+var_3C]
0x84898 MOVS            R2, #1
0x8489a BL              sub_8A956
0x8489e LDR             R0, [R7]
0x848a0 LDR             R1, [SP,#0x7C+var_3C]
0x848a2 ADDS            R0, R4, R0
0x848a4 ADDS            R1, #1
0x848a6 MOVS            R2, #1
0x848a8 ADDS            R0, #1
0x848aa BL              sub_8A956
0x848ae LDR             R0, [SP,#0x7C+var_60]
0x848b0 LDR             R3, [R7]
0x848b2 LDR             R1, [SP,#0x7C+var_3C]
0x848b4 ADDS            R0, #0x60 ; '`'
0x848b6 ADDS            R0, R0, R3
0x848b8 ADDS            R1, #2
0x848ba MOVS            R2, #4
0x848bc BL              sub_8A956
0x848c0 LDR             R0, [R7]
0x848c2 LDR             R1, [SP,#0x7C+var_3C]
0x848c4 ADDS            R0, R4, R0
0x848c6 ADDS            R1, #6
0x848c8 MOVS            R2, #1
0x848ca ADDS            R0, #2
0x848cc BL              sub_8A956
0x848d0 LDR             R3, [R7]
0x848d2 LDR             R1, [SP,#0x7C+var_3C]
0x848d4 ADDS            R4, R4, R3
0x848d6 ADDS            R4, #3
0x848d8 ADDS            R1, #7
0x848da MOVS            R0, R4
0x848dc MOVS            R2, #1
0x848de BL              sub_8A956
0x848e2 LDR             R4, [SP,#0x7C+var_60]
0x848e4 LDR             R0, [R7]
0x848e6 LDR             R1, [SP,#0x7C+var_3C]
0x848e8 ADDS            R4, #0x58 ; 'X'
0x848ea ADDS            R0, R4, R0
0x848ec ADDS            R1, #8
0x848ee MOVS            R2, #1
0x848f0 BL              sub_8A956
0x848f4 LDR             R0, [R7]
0x848f6 LDR             R1, [SP,#0x7C+var_3C]
0x848f8 ADDS            R0, R4, R0
0x848fa ADDS            R1, #9
0x848fc MOVS            R2, #2
0x848fe ADDS            R0, #2
0x84900 BL              sub_8A956
0x84904 LDR             R3, [R7]
0x84906 LDR             R1, [SP,#0x7C+var_3C]
0x84908 ADDS            R4, R4, R3
0x8490a ADDS            R4, #1
0x8490c ADDS            R1, #0xB
0x8490e MOVS            R2, #1
0x84910 MOVS            R0, R4
0x84912 BL              sub_8A956
0x84916 LDR             R2, [SP,#0x7C+var_60]
0x84918 LDR             R0, [R7]
0x8491a LDR             R1, [SP,#0x7C+var_3C]
0x8491c ADDS            R2, #0x5C ; '\'
0x8491e STR             R2, [SP,#0x7C+var_64]
0x84920 ADDS            R0, R2, R0
0x84922 ADDS            R1, #0xC
0x84924 MOVS            R2, #1
0x84926 BL              sub_8A956
0x8492a LDR             R3, [SP,#0x7C+var_64]
0x8492c LDR             R0, [R7]
0x8492e LDR             R1, [SP,#0x7C+var_3C]
0x84930 ADDS            R0, R3, R0
0x84932 ADDS            R1, #0xD
0x84934 MOVS            R2, #1
0x84936 ADDS            R0, #1
0x84938 BL              sub_8A956
0x8493c LDR             R0, [SP,#0x7C+var_64]
0x8493e LDR             R3, [R7]
0x84940 LDR             R1, [SP,#0x7C+var_3C]
0x84942 ADDS            R3, R0, R3
0x84944 STR             R3, [SP,#0x7C+var_68]
0x84946 ADDS            R3, #2
0x84948 ADDS            R1, #0xE
0x8494a MOVS            R2, #1
0x8494c STR             R3, [SP,#0x7C+var_6C]
0x8494e MOVS            R0, R3
0x84950 BL              sub_8A956
0x84954 LDR             R1, [SP,#0x7C+var_3C]
0x84956 LDR             R2, [SP,#0x7C+var_34]
0x84958 ADDS            R1, #0xF
0x8495a ADDS            R2, #1
0x8495c STR             R1, [SP,#0x7C+var_3C]
0x8495e STR             R2, [SP,#0x7C+var_34]
0x84960 CMP             R2, #3
0x84962 BNE             loc_84886
0x84964 LDR             R3, [SP,#0x7C+var_40]
0x84966 MOVS            R0, #0
0x84968 ADDS            R3, #0x2D ; '-'
0x8496a STR             R3, [SP,#0x7C+var_48]
0x8496c STR             R0, [SP,#0x7C+var_38]
0x8496e MOVS            R5, R3
0x84970 LDR             R1, [SP,#0x7C+var_38]
0x84972 LSLS            R1, R1, #3
0x84974 MOVS            R4, R1
0x84976 LDR             R0, [R7]
0x84978 ADDS            R4, #0x84
0x8497a LDR             R6, =unk_140327C
0x8497c STR             R1, [SP,#0x7C+var_70]
0x8497e ADDS            R0, R4, R0
0x84980 MOVS            R1, R5
0x84982 MOVS            R2, #1
0x84984 BL              sub_8A956
0x84988 LDR             R3, [R7]
0x8498a ADDS            R4, R4, R3
0x8498c ADDS            R4, #2
0x8498e ADDS            R1, R5, #1
0x84990 MOVS            R0, R4
0x84992 B               loc_84998
0x84998 MOVS            R2, #2
0x8499a BL              sub_8A956
0x8499e LDR             R4, [SP,#0x7C+var_70]
0x849a0 LDR             R0, [R7]
0x849a2 ADDS            R4, #0x88
0x849a4 ADDS            R1, R5, #3
0x849a6 ADDS            R0, R4, R0
0x849a8 MOVS            R2, #1
0x849aa BL              sub_8A956
0x849ae LDR             R3, [R7]
0x849b0 ADDS            R4, R4, R3
0x849b2 MOVS            R2, R4
0x849b4 ADDS            R2, #1
0x849b6 STR             R2, [SP,#0x7C+var_78]
0x849b8 ADDS            R1, R5, #4
0x849ba MOVS            R0, R2
0x849bc MOVS            R2, #1
0x849be BL              sub_8A956
0x849c2 LDR             R3, [SP,#0x7C+var_38]
0x849c4 ADDS            R3, #1
0x849c6 ADDS            R5, #5
0x849c8 STR             R3, [SP,#0x7C+var_38]
0x849ca CMP             R3, #2
0x849cc BNE             loc_84970
0x849ce LDR             R6, [SP,#0x7C+var_48]
0x849d0 MOVS            R0, #0
0x849d2 STR             R0, [SP,#0x7C+var_4C]
0x849d4 ADDS            R6, #0xA
0x849d6 MOVS            R5, #0x94
0x849d8 LDR             R0, [R7]
0x849da MOVS            R1, R6
0x849dc ADDS            R0, R5, R0
0x849de MOVS            R2, #2
0x849e0 LDR             R4, =unk_140327C
0x849e2 BL              sub_8A952
0x849e6 LDR             R0, [R7]
0x849e8 ADDS            R0, R5, R0
0x849ea ADDS            R1, R6, #2
0x849ec ADDS            R0, #2
0x849ee MOVS            R2, #2
0x849f0 BL              sub_8A952
0x849f4 LDR             R1, [SP,#0x7C+var_4C]
0x849f6 ADDS            R1, #1
0x849f8 ADDS            R6, #4
0x849fa STR             R1, [SP,#0x7C+var_4C]
0x849fc ADDS            R5, #4
0x849fe CMP             R1, #3
0x84a00 BNE             loc_849D8
0x84a02 LDR             R2, [SP,#0x7C+var_50]
0x84a04 ADDS            R2, #1
0x84a06 STR             R2, [SP,#0x7C+var_50]
0x84a08 ADDS            R7, #0xA0
0x84a0a LDR             R2, =word_15332A0
0x84a0c MOVS            R3, #(byte_153341C - 0x15332A0)
0x84a10 LDRB            R3, [R2,R3]; byte_153341C
0x84a12 LDR             R0, [SP,#0x7C+var_50]
0x84a14 CMP             R0, R3
0x84a16 BGE             loc_84A1A
0x84a18 B               loc_84580
0x84a1a LDR             R1, [SP,#0x7C+var_54]
0x84a1c CMP             R1, #0
0x84a1e BEQ             loc_84A28
0x84a20 MOVS            R0, R1
0x84a22 LDR             R3, =unk_14032FC
0x84a24 BL              sub_8A950
0x84a28 LDR             R0, [SP,#0x7C+var_58]
0x84a2a LDR             R3, =unk_14032FC
0x84a2c BL              sub_8A950
0x84a30 ADD             SP, SP, #0x7C ; '|'
0x84a32 POP             {R4-R7}
0x84a34 POP             {R0}
0x84a36 BX              R0