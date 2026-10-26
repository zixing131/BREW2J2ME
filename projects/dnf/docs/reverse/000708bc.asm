0x708bc PUSH            {R4-R7,LR}
0x708be LDR             R2, =byte_15000B8
0x708c0 LDR             R6, =unk_1536348
0x708c2 MOVS            R3, #0
0x708c4 SUB             SP, SP, #8
0x708c6 MOVS            R7, #0
0x708c8 STRB            R3, [R2]
0x708ca B               loc_70912
0x708cc LDR             R4, [R6]
0x708ce CMP             R4, #0
0x708d0 BEQ             loc_7090E
0x708d2 MOVS            R5, #0x23C
0x708d6 LDR             R0, [R4,R5]
0x708d8 CMP             R0, #0
0x708da BEQ             loc_708E6
0x708dc LDR             R3, =unk_14032FC
0x708de BL              sub_71334
0x708e2 MOVS            R3, #0
0x708e4 STR             R3, [R4,R5]
0x708e6 MOVS            R5, #0x238
0x708ea LDR             R0, [R4,R5]
0x708ec CMP             R0, #0
0x708ee BEQ             loc_708FA
0x708f0 LDR             R3, =unk_14032FC
0x708f2 BL              sub_71334
0x708f6 MOVS            R3, #0
0x708f8 STR             R3, [R4,R5]
0x708fa LDR             R0, [R6]
0x708fc CMP             R0, #0
0x708fe BEQ             loc_7090A
0x70900 LDR             R3, =unk_14032FC
0x70902 BL              sub_71334
0x70906 MOVS            R3, #0
0x70908 STR             R3, [R6]
0x7090a MOVS            R3, #0
0x7090c STR             R3, [R6]
0x7090e ADDS            R7, #1
0x70910 ADDS            R6, #4
0x70912 LDR             R3, =unk_15364FC
0x70914 LDRB            R3, [R3,#(byte_15364FD - 0x15364FC)]
0x70916 CMP             R7, R3
0x70918 BCC             loc_708CC
0x7091a LDR             R4, =unk_1535F68
0x7091c LDR             R0, [R4]
0x7091e CMP             R0, #0
0x70920 BEQ             loc_7093E
0x70922 STR             R0, [R4,#4]
0x70924 LDR             R3, =(sub_6E284+1)
0x70926 BL              sub_71334
0x7092a LDR             R0, [R4]
0x7092c CMP             R0, #0
0x7092e BEQ             loc_7093A
0x70930 LDR             R3, =unk_14032FC
0x70932 BL              sub_71334
0x70936 MOVS            R3, #0
0x70938 STR             R3, [R4]
0x7093a MOVS            R3, #0
0x7093c STR             R3, [R4]
0x7093e LDR             R3, =unk_1536350
0x70940 ADDS            R4, #0x14
0x70942 CMP             R4, R3
0x70944 BNE             loc_7091C
0x70946 LDR             R4, =unk_15364E8
0x70948 LDR             R0, [R4]
0x7094a CMP             R0, #0
0x7094c BEQ             loc_70968
0x7094e LDR             R3, =(sub_6E284+1)
0x70950 BL              sub_71334
0x70954 LDR             R0, [R4]
0x70956 CMP             R0, #0
0x70958 BEQ             loc_70964
0x7095a LDR             R3, =unk_14032FC
0x7095c BL              sub_71334
0x70960 MOVS            R3, #0
0x70962 STR             R3, [R4]
0x70964 MOVS            R3, #0
0x70966 STR             R3, [R4]
0x70968 LDR             R3, =unk_15364FC
0x7096a ADDS            R4, #4
0x7096c CMP             R4, R3
0x7096e BNE             loc_70948
0x70970 LDR             R4, =dword_1535F54
0x70972 LDR             R0, [R4]
0x70974 CMP             R0, #0
0x70976 BEQ             loc_70982
0x70978 LDR             R3, =unk_14032FC
0x7097a BL              sub_71334
0x7097e MOVS            R3, #0
0x70980 STR             R3, [R4]
0x70982 LDR             R4, =dword_1535F34
0x70984 LDR             R0, [R4]
0x70986 CMP             R0, #0
0x70988 BEQ             loc_70994
0x7098a LDR             R3, =unk_14032FC
0x7098c BL              sub_71334
0x70990 MOVS            R3, #0
0x70992 STR             R3, [R4]
0x70994 MOVS            R4, #0
0x70996 B               loc_709A4
0x70998 LSLS            R0, R4, #0x18
0x7099a LSRS            R0, R0, #0x18
0x7099c LDR             R3, =0x73CD5
0x7099e BL              sub_71334
0x709a2 ADDS            R4, #1
0x709a4 LDR             R3, =dword_15364D8
0x709a6 LDR             R3, [R3]
0x709a8 CMP             R4, R3
0x709aa BCC             loc_70998
0x709ac LDR             R3, =(sub_67BC8+1)
0x709ae LDR             R0, =unk_1535F3C
0x709b0 BL              sub_71334
0x709b4 LDR             R3, =(sub_2A0E4+1)
0x709b6 BL              sub_71334
0x709ba LDR             R2, =byte_15000BA
0x709bc MOVS            R3, #0
0x709be STRB            R3, [R2]
0x709c0 MOVS            R0, #0
0x709c2 LDR             R3, =0x721F1
0x709c4 BL              sub_71334
0x709c8 LDR             R4, =(sub_62B00+1)
0x709ca BL              sub_71336
0x709ce LDR             R3, =byte_1536345
0x709d0 LDRB            R3, [R3]
0x709d2 CMP             R3, #4; switch 5 cases
0x709d4 BLS             loc_709D8
0x709d6 B               def_709E2; jumptable 000709E2 default case
0x709d8 LDR             R2, =jpt_709E2
0x709da LSLS            R3, R3, #2
0x709dc MOVS            R6, R4
0x709de LDR             R3, [R3,R2]
0x709e0 LDR             R4, =byte_1536760
0x709e2 MOV             PC, R3; switch jump
0x709e4 LDR             R3, =(sub_39388+1); jumptable 000709E2 case 0
0x709e6 BL              sub_71334
0x709ea LDR             R3, =(sub_4EA44+1)
0x709ec BL              sub_71334
0x709f0 LDR             R3, =byte_15000BB
0x709f2 MOVS            R1, #0
0x709f4 STRB            R1, [R3]
0x709f6 MOVS            R3, #5
0x709f8 STRB            R3, [R4]
0x709fa LDR             R1, =dword_1501D90
0x709fc LDR             R3, =byte_1500071
0x709fe LDR             R0, [R1]
0x70a00 LDRB            R2, [R3]
0x70a02 LDR             R3, =0x1AE8
0x70a04 STRB            R2, [R0,R3]
0x70a06 LDR             R3, =byte_1500072
0x70a08 LDR             R0, [R1]
0x70a0a LDRB            R2, [R3]
0x70a0c LDR             R3, =0x1AE9
0x70a0e STRB            R2, [R0,R3]
0x70a10 LDR             R3, =byte_1500073
0x70a12 LDR             R0, [R1]
0x70a14 LDRB            R2, [R3]
0x70a16 LDR             R3, =0x1AEA
0x70a18 STRB            R2, [R0,R3]
0x70a1a LDR             R3, =byte_1500074
0x70a1c LDR             R1, [R1]
0x70a1e LDRB            R2, [R3]
0x70a20 LDR             R3, =0x1AED
0x70a22 LDR             R7, =byte_150C714
0x70a24 STRB            R2, [R1,R3]
0x70a26 LDRB            R3, [R7]
0x70a28 LDR             R6, =(sub_62B00+1)
0x70a2a LDR             R5, =(sub_1404+1)
0x70a2c CMP             R3, #2
0x70a2e BNE             loc_70AB6
0x70a30 LDR             R3, =dword_150D88C
0x70a32 MOVS            R2, R3
0x70a34 ADDS            R2, #0x81
0x70a36 MOVS            R4, #0
0x70a38 STRB            R4, [R2]
0x70a3a ADDS            R3, #0x82
0x70a3c MOVS            R2, #1
0x70a3e STRB            R2, [R3]
0x70a40 MOVS            R4, #1
0x70a42 LDR             R3, =byte_15340C0
0x70a44 NEGS            R4, R4
0x70a46 MOVS            R0, #0
0x70a48 STRB            R4, [R3]
0x70a4a LDR             R3, =(sub_2B750+1)
0x70a4c BL              sub_71334
0x70a50 BL              sub_7133A
0x70a54 LDR             R3, =(sub_65658+1)
0x70a56 BL              sub_71334
0x70a5a BL              sub_7133A
0x70a5e STRB            R4, [R7]
0x70a60 LDR             R3, =(sub_6C498+1)
0x70a62 BL              sub_71334
0x70a66 MOVS            R1, #0xD
0x70a68 MOVS            R2, #0
0x70a6a MOVS            R0, #1
0x70a6c MOVS            R3, #0
0x70a6e BL              sub_71338
0x70a72 MOVS            R0, #1
0x70a74 LDR             R3, =0x7575D
0x70a76 BL              sub_71334
0x70a7a MOVS            R0, #9
0x70a7c LDR             R3, =0x83B0D
0x70a7e BL              sub_71334
0x70a82 LDR             R1, =word_15332A0
0x70a84 MOVS            R4, #0
0x70a86 MOVS            R0, #0
0x70a88 B               loc_70AA4
0x70a8a MOVS            R3, #(dword_1533444 - 0x15332A0)
0x70a8e LDR             R3, [R1,R3]; dword_1533444
0x70a90 CMP             R3, #0
0x70a92 BLE             loc_70AA0
0x70a94 MOVS            R3, #(dword_1533448 - 0x15332A0)
0x70a98 LDR             R3, [R1,R3]; dword_1533448
0x70a9a MOVS            R2, #0
0x70a9c ADDS            R3, R3, R0
0x70a9e STRB            R2, [R3,#8]
0x70aa0 ADDS            R4, #1
0x70aa2 ADDS            R0, #0xC
0x70aa4 MOVS            R3, #(byte_1533440 - 0x15332A0)
0x70aa8 LDRB            R3, [R1,R3]; byte_1533440
0x70aaa CMP             R4, R3
0x70aac BCC             loc_70A8A
0x70aae LDR             R3, =(sub_62B00+1)
0x70ab0 BL              sub_71334
0x70ab4 B               loc_70DBC
0x70ab6 BL              sub_7133A
0x70aba MOVS            R0, #0
0x70abc LDR             R3, =(sub_2B864+1)
0x70abe BL              sub_71334
0x70ac2 MOVS            R2, #0
0x70ac4 MOVS            R0, #1
0x70ac6 MOVS            R1, #0
0x70ac8 MOVS            R3, #0
0x70aca BL              sub_71338
0x70ace BL              sub_7133A
0x70ad2 LDR             R3, =word_15364E2
0x70ad4 MOVS            R0, #6
0x70ad6 MOVS            R2, #(word_15364E2 - 0x15364E2)
0x70ad8 LDRSH           R1, [R3,R2]; word_15364E2
0x70ada LDR             R4, =(sub_21440+1)
0x70adc MOVS            R3, #0
0x70ade MOVS            R2, #1
0x70ae0 BL              sub_71336
0x70ae4 LDR             R3, =byte_1402C5C
0x70ae6 LSLS            R0, R0, #0x18
0x70ae8 LSRS            R0, R0, #0x18
0x70aea STRB            R0, [R3]
0x70aec CMP             R0, #0xFF
0x70aee BEQ             loc_70B02
0x70af0 LDR             R3, =dword_1501BF8
0x70af2 MOVS            R4, #0
0x70af4 STR             R4, [R3]
0x70af6 MOVS            R0, #1
0x70af8 MOVS            R1, #0x13
0x70afa MOVS            R2, #0
0x70afc MOVS            R3, #0
0x70afe BL              sub_71338
0x70b02 LDR             R4, =(sub_62B00+1)
0x70b04 BL              sub_71336
0x70b08 BL              sub_71336
0x70b0c B               loc_70DBC
0x70b0e LDR             R3, =(sub_39388+1); jumptable 000709E2 case 1
0x70b10 BL              sub_71334
0x70b14 LDR             R3, =(sub_4EA44+1)
0x70b16 BL              sub_71334
0x70b1a BL              sub_7133A
0x70b1e LDR             R3, =byte_15000BB
0x70b20 MOVS            R1, #0
0x70b22 STRB            R1, [R3]
0x70b24 MOVS            R3, #5
0x70b26 STRB            R3, [R4]
0x70b28 LDR             R5, =dword_1501D90
0x70b2a LDR             R3, =word_1535F38
0x70b2c LDR             R2, [R5]
0x70b2e LDRH            R3, [R3]
0x70b30 LDR             R4, =0x1AE8
0x70b32 STRB            R3, [R2,R4]
0x70b34 LDR             R3, =word_15364E0
0x70b36 LDR             R1, [R5]
0x70b38 LDRH            R2, [R3]
0x70b3a LDR             R3, =0x1AE9
0x70b3c STRB            R2, [R1,R3]
0x70b3e LDR             R3, =word_1536764
0x70b40 LDR             R1, [R5]
0x70b42 LDRH            R2, [R3]
0x70b44 LDR             R3, =0x1AEA
0x70b46 STRB            R2, [R1,R3]
0x70b48 LDR             R3, =word_1536762
0x70b4a LDR             R1, [R5]
0x70b4c LDRH            R2, [R3]
0x70b4e LDR             R3, =0x1AED
0x70b50 LDR             R7, =word_15364E2
0x70b52 STRB            R2, [R1,R3]
0x70b54 LDRH            R3, [R7]
0x70b56 CMP             R3, #5
0x70b58 BEQ             loc_70B60
0x70b5a CMP             R3, #7
0x70b5c BEQ             loc_70B60
0x70b5e B               loc_70CC0
0x70b60 LDR             R3, =(sub_28BE4+1)
0x70b62 BL              sub_71334
0x70b66 LDR             R3, =(sub_658C0+1)
0x70b68 BL              sub_71334
0x70b6c BL              sub_7133A
0x70b70 MOVS            R0, #0
0x70b72 LDR             R3, =(sub_2B864+1)
0x70b74 BL              sub_71334
0x70b78 LDR             R4, =(sub_1404+1)
0x70b7a MOVS            R2, #0
0x70b7c STR             R4, [SP,#8+var_4]
0x70b7e MOVS            R0, #1
0x70b80 MOVS            R1, #0
0x70b82 MOVS            R3, #0
0x70b84 BL              sub_71336
0x70b88 LDR             R3, [R5]
0x70b8a LDR             R0, [R3,#0x10]
0x70b8c LDR             R3, =word_15364DE
0x70b8e MOVS            R2, #(word_15364DE - 0x15364DE)
0x70b90 LDRSH           R1, [R3,R2]; word_15364DE
0x70b92 LDR             R3, =word_15364DC
0x70b94 MOVS            R4, #(word_15364DC - 0x15364DC)
0x70b96 LDRSH           R2, [R3,R4]; word_15364DC
0x70b98 MOVS            R3, #0
0x70b9a LDR             R4, =0x76139
0x70b9c BL              sub_71336
0x70ba0 BL              sub_7133A
0x70ba4 MOVS            R2, #(word_15364E2 - 0x15364E2)
0x70ba6 LDRSH           R1, [R7,R2]; word_15364E2
0x70ba8 MOVS            R3, #0
0x70baa MOVS            R0, #6
0x70bac MOVS            R2, #1
0x70bae LDR             R4, =(sub_21440+1)
0x70bb0 BL              sub_71336
0x70bb4 LDR             R3, =byte_1402C5C
0x70bb6 LSLS            R0, R0, #0x18
0x70bb8 LSRS            R0, R0, #0x18
0x70bba STRB            R0, [R3]
0x70bbc CMP             R0, #0xFF
0x70bbe BNE             loc_70BC2
0x70bc0 B               def_709E2; jumptable 000709E2 default case
0x70bc2 LDR             R3, =dword_1501BF8
0x70bc4 MOVS            R4, #0
0x70bc6 STR             R4, [R3]
0x70bc8 MOVS            R0, #1
0x70bca MOVS            R1, #0x13
0x70bcc MOVS            R2, #0
0x70bce MOVS            R3, #0
0x70bd0 LDR             R4, [SP,#8+var_4]
0x70bd2 BL              sub_71336
0x70bd6 B               def_709E2; jumptable 000709E2 default case
0x70cc0 CMP             R3, #0xB
0x70cc2 BNE             loc_70D2C
0x70cc4 LDR             R3, =(sub_28BE4+1)
0x70cc6 BL              sub_71334
0x70cca LDR             R3, =(sub_658C0+1)
0x70ccc BL              sub_71334
0x70cd0 BL              sub_7133A
0x70cd4 MOVS            R0, #0
0x70cd6 LDR             R3, =(sub_2B864+1)
0x70cd8 BL              sub_71334
0x70cdc MOVS            R2, #0
0x70cde MOVS            R0, #1
0x70ce0 MOVS            R1, #0
0x70ce2 MOVS            R3, #0
0x70ce4 LDR             R4, =(sub_1404+1)
0x70ce6 BL              sub_71336
0x70cea BL              sub_7133A
0x70cee LDR             R3, [R5]
0x70cf0 LDR             R0, [R3,#0x10]
0x70cf2 LDR             R3, =word_15364DE
0x70cf4 MOVS            R2, #(word_15364DE - 0x15364DE)
0x70cf6 LDRSH           R1, [R3,R2]; word_15364DE
0x70cf8 LDR             R3, =word_15364DC
0x70cfa MOVS            R4, #(word_15364DC - 0x15364DC)
0x70cfc LDRSH           R2, [R3,R4]; word_15364DC
0x70cfe MOVS            R3, #0
0x70d00 LDR             R4, =0x76139
0x70d02 BL              sub_71336
0x70d06 LDR             R3, =(sub_39578+1)
0x70d08 BL              sub_71334
0x70d0c BL              sub_7133A
0x70d10 LDRH            R3, [R7]
0x70d12 CMP             R3, #0xB
0x70d14 BNE             loc_70D24
0x70d16 LDR             R3, [R5]
0x70d18 LDR             R2, [R3,#0x10]
0x70d1a MOVS            R3, #1
0x70d1c STRB            R3, [R2]
0x70d1e LDR             R3, =(sub_23118+1)
0x70d20 BL              sub_71334
0x70d24 BL              sub_7133A
0x70d28 LDR             R3, =(sub_2BCC0+1)
0x70d2a B               loc_71114
0x70d2c LDR             R1, =byte_150C714
0x70d2e STR             R1, [SP,#8+var_8]
0x70d30 LDRB            R3, [R1]
0x70d32 CMP             R3, #2
0x70d34 BNE             loc_70DC0
0x70d36 BL              sub_7133A
0x70d3a LDR             R3, =dword_150D88C
0x70d3c MOVS            R2, R3
0x70d3e ADDS            R2, #0x81
0x70d40 MOVS            R4, #0
0x70d42 STRB            R4, [R2]
0x70d44 ADDS            R3, #0x82
0x70d46 MOVS            R2, #1
0x70d48 STRB            R2, [R3]
0x70d4a MOVS            R4, #1
0x70d4c LDR             R3, =byte_15340C0
0x70d4e NEGS            R4, R4
0x70d50 MOVS            R0, #0
0x70d52 STRB            R4, [R3]
0x70d54 LDR             R3, =(sub_2B750+1)
0x70d56 BL              sub_71334
0x70d5a BL              sub_7133A
0x70d5e LDR             R3, =(sub_65658+1)
0x70d60 BL              sub_71334
0x70d64 BL              sub_7133A
0x70d68 LDR             R1, [SP,#8+var_8]
0x70d6a LDR             R3, =(sub_6C498+1)
0x70d6c STRB            R4, [R1]
0x70d6e BL              sub_71334
0x70d72 MOVS            R1, #0xD
0x70d74 MOVS            R2, #0
0x70d76 MOVS            R0, #1
0x70d78 MOVS            R3, #0
0x70d7a LDR             R4, =(sub_1404+1)
0x70d7c BL              sub_71336
0x70d80 MOVS            R0, #1
0x70d82 LDR             R3, =0x7575D
0x70d84 BL              sub_71334
0x70d88 MOVS            R0, #9
0x70d8a LDR             R3, =0x83B0D
0x70d8c BL              sub_71334
0x70d90 LDR             R1, =word_15332A0
0x70d92 MOVS            R4, #0
0x70d94 MOVS            R0, #0
0x70d96 B               loc_70DB2
0x70d98 MOVS            R3, #(dword_1533444 - 0x15332A0)
0x70d9c LDR             R3, [R1,R3]; dword_1533444
0x70d9e CMP             R3, #0
0x70da0 BLE             loc_70DAE
0x70da2 MOVS            R3, #(dword_1533448 - 0x15332A0)
0x70da6 LDR             R3, [R1,R3]; dword_1533448
0x70da8 MOVS            R2, #0
0x70daa ADDS            R3, R3, R0
0x70dac STRB            R2, [R3,#8]
0x70dae ADDS            R4, #1
0x70db0 ADDS            R0, #0xC
0x70db2 MOVS            R3, #(byte_1533440 - 0x15332A0)
0x70db6 LDRB            R3, [R1,R3]; byte_1533440
0x70db8 CMP             R4, R3
0x70dba BCC             loc_70D98
0x70dbc LDR             R3, =(sub_62B00+1)
0x70dbe B               loc_71114
0x70dc0 BL              sub_7133A
0x70dc4 LDR             R3, [R5]
0x70dc6 LDRB            R1, [R3,R4]
0x70dc8 CMP             R1, #0
0x70dca BEQ             loc_70DD0
0x70dcc CMP             R1, #0x14
0x70dce BNE             loc_70DEA
0x70dd0 LDR             R3, =(sub_28BE4+1)
0x70dd2 BL              sub_71334
0x70dd6 BL              sub_7133A
0x70dda LDR             R3, =(sub_2B864+1)
0x70ddc MOVS            R0, #0
0x70dde BL              sub_71334
0x70de2 BL              sub_7133A
0x70de6 LDR             R3, =(sub_39578+1)
0x70de8 B               loc_70E6A
0x70dea LDRH            R2, [R7]
0x70dec MOVS            R3, R2
0x70dee SUBS            R3, #0x13
0x70df0 LSLS            R3, R3, #0x10
0x70df2 LSRS            R3, R3, #0x10
0x70df4 CMP             R3, #1
0x70df6 BLS             loc_70E08
0x70df8 CMP             R2, #0x23 ; '#'
0x70dfa BEQ             loc_70E08
0x70dfc CMP             R2, #0x24 ; '$'
0x70dfe BEQ             loc_70E08
0x70e00 CMP             R2, #0x2A ; '*'
0x70e02 BEQ             loc_70E08
0x70e04 CMP             R2, #0x2E ; '.'
0x70e06 BNE             loc_70E1E
0x70e08 LDR             R3, =(sub_658C0+1)
0x70e0a BL              sub_71334
0x70e0e LDR             R3, =(sub_62B00+1)
0x70e10 BL              sub_71334
0x70e14 MOVS            R0, #0
0x70e16 LDR             R3, =(sub_2B864+1)
0x70e18 BL              sub_71334
0x70e1c B               loc_70EA8
0x70e1e CMP             R2, #0x1A
0x70e20 BNE             loc_70E70
0x70e22 LDR             R3, =(sub_658C0+1)
0x70e24 BL              sub_71334
0x70e28 BL              sub_7133A
0x70e2c MOVS            R0, #0
0x70e2e LDR             R3, =(sub_2B864+1)
0x70e30 BL              sub_71334
0x70e34 LDR             R2, =byte_153407C
0x70e36 MOVS            R3, #1
0x70e38 STRB            R3, [R2,#(byte_153407D - 0x153407C)]
0x70e3a MOVS            R3, #0
0x70e3c STRB            R3, [R2,#(byte_153407E - 0x153407C)]
0x70e3e MOVS            R0, #0x82
0x70e40 LDR             R3, =(sub_1F2F0+1)
0x70e42 BL              sub_71334
0x70e46 LSLS            R0, R0, #0x18
0x70e48 ASRS            R0, R0, #0x18
0x70e4a CMP             R0, #1
0x70e4c BNE             loc_70E62
0x70e4e MOVS            R0, #0x82
0x70e50 LDR             R3, =(sub_1F6AC+1)
0x70e52 BL              sub_71334
0x70e56 CMP             R0, #0
0x70e58 BNE             loc_70E62
0x70e5a MOVS            R0, #0x82
0x70e5c LDR             R3, =(sub_3505C+1)
0x70e5e BL              sub_71334
0x70e62 LDR             R3, =(sub_62B00+1)
0x70e64 BL              sub_71334
0x70e68 LDR             R3, =0x761A5
0x70e6a BL              sub_71334
0x70e6e B               loc_70EA8
0x70e70 MOVS            R3, R2
0x70e72 SUBS            R3, #0x1E
0x70e74 LSLS            R3, R3, #0x10
0x70e76 LSRS            R3, R3, #0x10
0x70e78 LDR             R5, =(sub_2B864+1)
0x70e7a LDR             R4, =(sub_658C0+1)
0x70e7c CMP             R3, #1
0x70e7e BHI             loc_70E94
0x70e80 BL              sub_71336
0x70e84 BL              sub_7133A
0x70e88 MOVS            R0, #0
0x70e8a BL              sub_71338
0x70e8e BL              sub_7133A
0x70e92 B               loc_70E68
0x70e94 LDR             R3, =(sub_28BE4+1)
0x70e96 BL              sub_71334
0x70e9a BL              sub_71336
0x70e9e BL              sub_7133A
0x70ea2 MOVS            R0, #0
0x70ea4 BL              sub_71338
0x70ea8 LDR             R5, =(sub_62B00+1)
0x70eaa BL              sub_71338
0x70eae MOVS            R0, #1
0x70eb0 MOVS            R1, #0
0x70eb2 MOVS            R2, #0
0x70eb4 MOVS            R3, #0
0x70eb6 LDR             R6, =(sub_1404+1)
0x70eb8 BL              sub_7133A
0x70ebc LDR             R3, =dword_1501D90
0x70ebe LDR             R3, [R3]
0x70ec0 LDR             R0, [R3,#0x10]
0x70ec2 LDR             R3, =word_15364DE
0x70ec4 MOVS            R4, #(word_15364DE - 0x15364DE)
0x70ec6 LDRSH           R1, [R3,R4]; word_15364DE
0x70ec8 LDR             R3, =word_15364DC
0x70eca MOVS            R4, #(word_15364DC - 0x15364DC)
0x70ecc LDRSH           R2, [R3,R4]; word_15364DC
0x70ece MOVS            R3, #0
0x70ed0 LDR             R4, =0x76139
0x70ed2 BL              sub_71336
0x70ed6 BL              sub_71338
0x70eda LDR             R3, =word_15364E2
0x70edc MOVS            R0, #6
0x70ede MOVS            R2, #(word_15364E2 - 0x15364E2)
0x70ee0 LDRSH           R1, [R3,R2]; word_15364E2
0x70ee2 LDR             R4, =(sub_21440+1)
0x70ee4 MOVS            R3, #0
0x70ee6 MOVS            R2, #1
0x70ee8 BL              sub_71336
0x70eec LDR             R3, =byte_1402C5C
0x70eee LSLS            R0, R0, #0x18
0x70ef0 LSRS            R0, R0, #0x18
0x70ef2 STRB            R0, [R3]
0x70ef4 CMP             R0, #0xFF
0x70ef6 BNE             loc_70EFA
0x70ef8 B               def_709E2; jumptable 000709E2 default case
0x70efa LDR             R2, =dword_1501BF8
0x70efc MOVS            R3, #0
0x70efe STR             R3, [R2]
0x70f00 MOVS            R0, #1
0x70f02 MOVS            R1, #0x13
0x70f04 MOVS            R2, #0
0x70f06 BL              sub_7133A
0x70f0a B               def_709E2; jumptable 000709E2 default case
0x70f0c BL              sub_7133A; jumptable 000709E2 case 2
0x70f10 LDR             R4, =word_1535F3A
0x70f12 LDRH            R3, [R4]
0x70f14 CMP             R3, #1
0x70f16 BNE             loc_70F1C
0x70f18 LDR             R3, =0x3E7
0x70f1a STRH            R3, [R4]
0x70f1c BL              sub_7133A
0x70f20 BL              sub_7133A
0x70f24 LDR             R2, =byte_1536760
0x70f26 LDRB            R3, [R2]
0x70f28 CMP             R3, #6
0x70f2a BEQ             loc_70F30
0x70f2c MOVS            R3, #5
0x70f2e STRB            R3, [R2]
0x70f30 LDR             R3, =byte_15000B8
0x70f32 MOVS            R2, #1
0x70f34 STRB            R2, [R3]
0x70f36 BL              sub_7133A
0x70f3a LDRH            R0, [R4]
0x70f3c BL              sub_70560
0x70f40 B               loc_70FE0
0x70f42 LDR             R3, =(sub_39388+1); jumptable 000709E2 case 3
0x70f44 BL              sub_71334
0x70f48 LDR             R3, =(sub_4EA44+1)
0x70f4a BL              sub_71334
0x70f4e LDR             R2, =byte_15000BB
0x70f50 MOVS            R3, #0
0x70f52 STRB            R3, [R2]
0x70f54 BL              sub_7133A
0x70f58 MOVS            R3, #5
0x70f5a STRB            R3, [R4]
0x70f5c LDR             R5, =dword_1501D90
0x70f5e LDR             R3, =word_1535F38
0x70f60 LDR             R1, [R5]
0x70f62 LDRH            R2, [R3]
0x70f64 LDR             R3, =0x1AE8
0x70f66 STRB            R2, [R1,R3]
0x70f68 LDR             R3, =word_15364E0
0x70f6a LDR             R1, [R5]
0x70f6c LDRH            R2, [R3]
0x70f6e LDR             R3, =0x1AE9
0x70f70 STRB            R2, [R1,R3]
0x70f72 LDR             R3, =word_1536764
0x70f74 LDR             R1, [R5]
0x70f76 LDRH            R2, [R3]
0x70f78 LDR             R3, =0x1AEA
0x70f7a STRB            R2, [R1,R3]
0x70f7c LDR             R3, =word_1536762
0x70f7e LDR             R1, [R5]
0x70f80 LDRH            R2, [R3]
0x70f82 LDR             R3, =0x1AED
0x70f84 STRB            R2, [R1,R3]
0x70f86 LDR             R3, =(sub_2A0E4+1)
0x70f88 BL              sub_71334
0x70f8c LDR             R3, =(sub_28BE4+1)
0x70f8e BL              sub_71334
0x70f92 LDR             R3, =(sub_658C0+1)
0x70f94 BL              sub_71334
0x70f98 BL              sub_7133A
0x70f9c LDR             R3, =(sub_2B864+1)
0x70f9e MOVS            R0, #0
0x70fa0 BL              sub_71334
0x70fa4 LDR             R4, =word_1535F3A
0x70fa6 MOVS            R3, #(word_1535F3A - 0x1535F3A)
0x70fa8 LDRSH           R0, [R4,R3]; word_1535F3A
0x70faa LDR             R3, =(sub_4572C+1)
0x70fac BL              sub_71334
0x70fb0 BL              sub_7133A
0x70fb4 LDRH            R2, [R4]
0x70fb6 LDR             R3, =0x1CF
0x70fb8 CMP             R2, R3
0x70fba BNE             loc_70FC2
0x70fbc LDR             R3, =(sub_346D0+1)
0x70fbe BL              sub_71334
0x70fc2 LDR             R3, [R5]
0x70fc4 LDR             R0, [R3,#0x10]
0x70fc6 LDR             R3, =word_15364DE
0x70fc8 MOVS            R4, #(word_15364DE - 0x15364DE)
0x70fca LDRSH           R1, [R3,R4]; word_15364DE
0x70fcc LDR             R3, =word_15364DC
0x70fce MOVS            R4, #(word_15364DC - 0x15364DC)
0x70fd0 LDRSH           R2, [R3,R4]; word_15364DC
0x70fd2 MOVS            R3, #0
0x70fd4 LDR             R4, =0x76139
0x70fd6 BL              sub_71336
0x70fda LDR             R3, =(sub_39578+1)
0x70fdc BL              sub_71334
0x70fe0 BL              sub_7133A
0x70fe4 B               def_709E2; jumptable 000709E2 default case
0x710ac LDR             R3, =(sub_39388+1); jumptable 000709E2 case 4
0x710ae BL              sub_71334
0x710b2 BL              sub_7133A
0x710b6 LDR             R3, =(sub_4EA44+1)
0x710b8 BL              sub_71334
0x710bc LDR             R2, =byte_15000BB
0x710be MOVS            R3, #0
0x710c0 STRB            R3, [R2]
0x710c2 BL              sub_7133A
0x710c6 MOVS            R3, #5
0x710c8 STRB            R3, [R4]
0x710ca LDR             R1, =dword_1501D90
0x710cc LDR             R3, =word_1535F38
0x710ce LDR             R0, [R1]
0x710d0 LDRH            R2, [R3]
0x710d2 LDR             R3, =0x1AE8
0x710d4 STRB            R2, [R0,R3]
0x710d6 LDR             R3, =word_15364E0
0x710d8 LDR             R0, [R1]
0x710da LDRH            R2, [R3]
0x710dc LDR             R3, =0x1AE9
0x710de STRB            R2, [R0,R3]
0x710e0 LDR             R3, =word_1536764
0x710e2 LDR             R0, [R1]
0x710e4 LDRH            R2, [R3]
0x710e6 LDR             R3, =0x1AEA
0x710e8 STRB            R2, [R0,R3]
0x710ea LDR             R3, =word_1536762
0x710ec LDR             R1, [R1]
0x710ee LDRH            R2, [R3]
0x710f0 LDR             R3, =0x1AED
0x710f2 STRB            R2, [R1,R3]
0x710f4 BL              sub_7133A
0x710f8 MOVS            R0, #0
0x710fa LDR             R3, =(sub_2B864+1)
0x710fc BL              sub_71334
0x71100 MOVS            R3, #0
0x71102 MOVS            R0, #1
0x71104 MOVS            R1, #0
0x71106 MOVS            R2, #0
0x71108 LDR             R4, =(sub_1404+1)
0x7110a BL              sub_71336
0x7110e BL              sub_7133A
0x71112 LDR             R3, =(sub_39578+1)
0x71114 BL              sub_71334
0x71118 LDR             R2, =dword_15377C4; jumptable 000709E2 default case
0x7111a MOVS            R3, #0xA
0x7111c STR             R3, [R2]
0x7111e LDR             R3, =(sub_62B00+1)
0x71120 BL              sub_71334
0x71124 LDR             R2, =byte_150006F
0x71126 MOVS            R3, #0
0x71128 STRB            R3, [R2]
0x7112a LDR             R3, =(sub_6BBD0+1)
0x7112c BL              sub_71334
0x71130 ADD             SP, SP, #8
0x71132 POP             {R4-R7}
0x71134 POP             {R0}
0x71136 BX              R0