0x667c4 PUSH            {LR}
0x667c6 LDR             R3, =dword_1501DD4
0x667c8 LDR             R3, [R3]
0x667ca CMP             R3, #1
0x667cc BEQ             loc_667D0
0x667ce B               loc_6696E
0x667d0 LDR             R3, =dword_1501C5C
0x667d2 LDR             R2, [R3]
0x667d4 CMP             R2, #0
0x667d6 BNE             loc_667F6
0x667d8 LDR             R3, =dword_1501D90
0x667da LDR             R2, [R3]
0x667dc LDR             R3, =0x1AED
0x667de LDRSB           R3, [R2,R3]
0x667e0 CMP             R3, #7
0x667e2 BNE             loc_667F0
0x667e4 LDR             R3, =word_1402C5A
0x667e6 MOVS            R2, #(word_1402C5A - 0x1402C5A)
0x667e8 LDRSH           R3, [R3,R2]; word_1402C5A
0x667ea CMP             R3, #0
0x667ec BLE             loc_667F0
0x667ee B               loc_6696E
0x667f0 BL              loc_5617C
0x667f4 B               loc_6696E
0x667f6 CMP             R2, #0x11
0x667f8 BNE             loc_66800
0x667fa BL              sub_63848
0x667fe B               loc_6696E
0x66800 CMP             R2, #0x12
0x66802 BNE             loc_6680A
0x66804 BL              sub_62730
0x66808 B               loc_6696E
0x6680a CMP             R2, #0xB
0x6680c BNE             loc_66814
0x6680e BL              sub_63A2C
0x66812 B               loc_6696E
0x66814 CMP             R2, #0xD
0x66816 BNE             loc_6681E
0x66818 BL              sub_3FBD8
0x6681c B               loc_6696E
0x6681e CMP             R2, #0xE
0x66820 BNE             loc_66828
0x66822 BL              sub_645BC
0x66826 B               loc_6696E
0x66828 CMP             R2, #0x10
0x6682a BNE             loc_66832
0x6682c BL              sub_34D28
0x66830 B               loc_6696E
0x66832 CMP             R2, #0xF
0x66834 BNE             loc_6683C
0x66836 BL              sub_63BF0
0x6683a B               loc_6696E
0x6683c CMP             R2, #1
0x6683e BNE             loc_66846
0x66840 BL              sub_65F68
0x66844 B               loc_6696E
0x66846 CMP             R2, #0x14
0x66848 BNE             loc_66850
0x6684a BL              sub_4F350
0x6684e B               loc_6696E
0x66850 CMP             R2, #0x13
0x66852 BNE             loc_6685A
0x66854 BL              sub_34214
0x66858 B               loc_6696E
0x6685a CMP             R2, #0x15
0x6685c BNE             loc_66864
0x6685e BL              sub_4F3CC
0x66862 B               loc_6696E
0x66864 CMP             R2, #2
0x66866 BNE             loc_6686E
0x66868 BL              sub_59840
0x6686c B               loc_6696E
0x6686e CMP             R2, #3
0x66870 BNE             loc_66878
0x66872 BL              sub_5B584
0x66876 B               loc_6696E
0x66878 CMP             R2, #4
0x6687a BNE             loc_66882
0x6687c BL              sub_60D2C
0x66880 B               loc_6696E
0x66882 CMP             R2, #5
0x66884 BNE             loc_6688C
0x66886 BL              sub_5C23C
0x6688a B               loc_6696E
0x6688c CMP             R2, #6
0x6688e BNE             loc_66896
0x66890 BL              sub_50804
0x66894 B               loc_6696E
0x66896 CMP             R2, #7
0x66898 BNE             loc_668A0
0x6689a BL              sub_4F484
0x6689e B               loc_6696E
0x668a0 CMP             R2, #8
0x668a2 BNE             loc_668AA
0x668a4 BL              sub_550C8
0x668a8 B               loc_6696E
0x668aa CMP             R2, #9
0x668ac BEQ             loc_6696E
0x668ae CMP             R2, #0xA
0x668b0 BNE             loc_668B8
0x668b2 BL              loc_648B4
0x668b6 B               loc_6696E
0x668b8 CMP             R2, #0x16
0x668ba BNE             loc_668C2
0x668bc BL              sub_50E10
0x668c0 B               loc_6696E
0x668c2 CMP             R2, #0x17
0x668c4 BNE             loc_668CC
0x668c6 BL              sub_50418
0x668ca B               loc_6696E
0x668cc CMP             R2, #0x18
0x668ce BNE             loc_668D6
0x668d0 BL              sub_50094
0x668d4 B               loc_6696E
0x668d6 CMP             R2, #0x19
0x668d8 BNE             loc_668E0
0x668da BL              sub_54D18
0x668de B               loc_6696E
0x668e0 CMP             R2, #0x1A
0x668e2 BNE             loc_668EA
0x668e4 BL              sub_50C98
0x668e8 B               loc_6696E
0x668ea CMP             R2, #0x1C
0x668ec BNE             loc_668F4
0x668ee BL              sub_50F10
0x668f2 B               loc_6696E
0x668f4 CMP             R2, #0x1D
0x668f6 BNE             loc_668FE
0x668f8 BL              sub_4FAAC
0x668fc B               loc_6696E
0x668fe CMP             R2, #0x1E
0x66900 BNE             loc_66908
0x66902 BL              sub_4F5C0
0x66906 B               loc_6696E
0x66908 CMP             R2, #0x1F
0x6690a BNE             loc_66912
0x6690c BL              sub_52608
0x66910 B               loc_6696E
0x66912 CMP             R2, #0x20 ; ' '
0x66914 BNE             loc_6691C
0x66916 BL              sub_52334
0x6691a B               loc_6696E
0x6691c CMP             R2, #0x21 ; '!'
0x6691e BNE             loc_66926
0x66920 BL              sub_51D34
0x66924 B               loc_6696E
0x66926 CMP             R2, #0x22 ; '"'
0x66928 BNE             loc_66930
0x6692a BL              sub_51780
0x6692e B               loc_6696E
0x66930 CMP             R2, #0x23 ; '#'
0x66932 BNE             loc_6693A
0x66934 BL              sub_51338
0x66938 B               loc_6696E
0x6693a CMP             R2, #0x24 ; '$'
0x6693c BNE             loc_66944
0x6693e BL              sub_547E8
0x66942 B               loc_6696E
0x66944 CMP             R2, #0x25 ; '%'
0x66946 BNE             loc_6694E
0x66948 BL              sub_542E4
0x6694c B               loc_6696E
0x6694e CMP             R2, #0x26 ; '&'
0x66950 BNE             loc_66958
0x66952 BL              sub_541BC
0x66956 B               loc_6696E
0x66958 CMP             R2, #0x27 ; '''
0x6695a BNE             loc_66962
0x6695c BL              loc_52BD0
0x66960 B               loc_6696E
0x66962 MOVS            R3, #0x3F0
0x66966 CMP             R2, R3
0x66968 BNE             loc_6696E
0x6696a BL              sub_4F45C
0x6696e POP             {R0}
0x66970 BX              R0