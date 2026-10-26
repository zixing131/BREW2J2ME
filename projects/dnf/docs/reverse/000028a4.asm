0x28a4 PUSH            {R4-R7,LR}
0x28a6 SUB             SP, SP, #0x80
0x28a8 ADD             R4, SP, #0x80+var_8
0x28aa MOVS            R0, R4
0x28ac LDR             R3, =0x2CD19
0x28ae BL              sub_6D00
0x28b2 LDR             R3, =0x6A821
0x28b4 MOVS            R0, #0
0x28b6 BL              sub_6D00
0x28ba MOVS            R5, #0
0x28bc MOVS            R3, #1
0x28be STRB            R3, [R4]
0x28c0 B               loc_28EC
0x28c2 LDR             R3, =dword_1501BFC
0x28c4 LDR             R1, [R3]
0x28c6 LDR             R3, =unk_1501EB0
0x28c8 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x28ca MOVS            R3, #0x334
0x28ce LDR             R3, [R2,R3]
0x28d0 STR             R3, [SP,#0x80+var_80]
0x28d2 MOVS            R3, #0xB
0x28d4 STR             R3, [SP,#0x80+var_7C]
0x28d6 MOVS            R3, #0
0x28d8 STR             R0, [SP,#0x80+var_74]
0x28da SUBS            R1, #0x5A ; 'Z'
0x28dc MOVS            R0, R5
0x28de STR             R3, [SP,#0x80+var_78]
0x28e0 STR             R3, [SP,#0x80+var_70]
0x28e2 MOVS            R2, #0
0x28e4 LDR             R4, =0x6ADB9
0x28e6 BL              sub_6D02
0x28ea ADDS            R5, #0x28 ; '('
0x28ec LDR             R3, =dword_1501C04
0x28ee LDR             R3, [R3]
0x28f0 ADD             R0, SP, #0x80+var_8
0x28f2 CMP             R5, R3
0x28f4 BLT             loc_28C2
0x28f6 MOVS            R7, #0
0x28f8 STRB            R7, [R0]
0x28fa LDR             R0, =dword_1501BF8
0x28fc LDR             R3, =0x80000001
0x28fe LDR             R2, [R0]
0x2900 ANDS            R2, R3
0x2902 STR             R0, [SP,#0x80+var_38]
0x2904 CMP             R2, #0
0x2906 BGE             loc_2912
0x2908 MOVS            R3, #2
0x290a SUBS            R2, #1
0x290c NEGS            R3, R3
0x290e ORRS            R2, R3
0x2910 ADDS            R2, #1
0x2912 CMP             R2, #0
0x2914 BGT             loc_291A
0x2916 BL              sub_1BB4
0x291a LDR             R3, =dword_1501DA0
0x291c LDR             R3, [R3]
0x291e CMP             R3, #0
0x2920 BNE             loc_2960
0x2922 LDR             R5, =dword_1501BFC
0x2924 LDR             R6, =dword_1501C14
0x2926 LDR             R1, [R5]
0x2928 LDR             R2, =unk_1501EB0
0x292a LDR             R0, [R6]
0x292c STR             R2, [SP,#0x80+var_3C]
0x292e ADDS            R1, #0x1E
0x2930 LDR             R3, =unk_1501EA0
0x2932 STR             R7, [SP,#0x80+var_80]
0x2934 STR             R7, [SP,#0x80+var_7C]
0x2936 STR             R7, [SP,#0x80+var_78]
0x2938 STR             R7, [SP,#0x80+var_74]
0x293a STR             R7, [SP,#0x80+var_70]
0x293c STR             R7, [SP,#0x80+var_6C]
0x293e LDR             R4, =0x6B351
0x2940 BL              sub_6D02
0x2944 LDR             R1, [R5]
0x2946 LDR             R0, [R6]
0x2948 SUBS            R1, #0x37 ; '7'
0x294a LDR             R3, =unk_1501E2C
0x294c STR             R7, [SP,#0x80+var_80]
0x294e STR             R7, [SP,#0x80+var_7C]
0x2950 STR             R7, [SP,#0x80+var_78]
0x2952 STR             R7, [SP,#0x80+var_74]
0x2954 STR             R7, [SP,#0x80+var_70]
0x2956 STR             R7, [SP,#0x80+var_6C]
0x2958 LDR             R2, [SP,#0x80+var_3C]
0x295a BL              sub_6D02
0x295e B               loc_29E4
0x2960 CMP             R3, #3
0x2962 BNE             loc_29E4
0x2964 LDR             R3, [SP,#0x80+var_38]
0x2966 MOVS            R1, #3
0x2968 LDR             R0, [R3]
0x296a LDR             R3, =0x8C1C1
0x296c BL              sub_6D00
0x2970 CMP             R0, #0
0x2972 BNE             loc_298C
0x2974 LDR             R5, =unk_1501EB0
0x2976 LDR             R1, =byte_1501E18
0x2978 MOVS            R0, R5
0x297a MOVS            R2, #0
0x297c LDR             R4, =0x6E16D
0x297e BL              sub_6D02
0x2982 LDR             R1, =byte_1501F3C
0x2984 MOVS            R0, R5
0x2986 MOVS            R2, #0
0x2988 BL              sub_6D02
0x298c LDR             R5, =dword_1501BFC
0x298e LDR             R4, =unk_1501EB0
0x2990 LDR             R1, [R5]
0x2992 LDR             R6, =dword_1501C14
0x2994 MOVS            R2, R4
0x2996 LDR             R0, [R6]
0x2998 ADDS            R1, #0x1E
0x299a STR             R4, [SP,#0x80+var_40]
0x299c LDR             R3, =byte_1501E18
0x299e LDR             R4, =0x6B351
0x29a0 STR             R7, [SP,#0x80+var_80]
0x29a2 STR             R7, [SP,#0x80+var_7C]
0x29a4 STR             R7, [SP,#0x80+var_78]
0x29a6 STR             R7, [SP,#0x80+var_74]
0x29a8 STR             R7, [SP,#0x80+var_70]
0x29aa STR             R7, [SP,#0x80+var_6C]
0x29ac BL              sub_6D02
0x29b0 LDR             R1, [R5]
0x29b2 LDR             R0, [R6]
0x29b4 SUBS            R1, #0x37 ; '7'
0x29b6 LDR             R3, =byte_1501F3C
0x29b8 STR             R7, [SP,#0x80+var_80]
0x29ba STR             R7, [SP,#0x80+var_7C]
0x29bc STR             R7, [SP,#0x80+var_78]
0x29be STR             R7, [SP,#0x80+var_74]
0x29c0 STR             R7, [SP,#0x80+var_70]
0x29c2 STR             R7, [SP,#0x80+var_6C]
0x29c4 LDR             R2, [SP,#0x80+var_40]
0x29c6 BL              sub_6D02
0x29ca LDR             R1, [SP,#0x80+var_38]
0x29cc LDR             R0, [R1]
0x29ce CMP             R0, #5
0x29d0 BLE             loc_29DC
0x29d2 CMP             R0, #0x14
0x29d4 BGT             loc_29DC
0x29d6 MOVS            R0, #0
0x29d8 MOVS            R1, #1
0x29da B               loc_29E0
0x29dc MOVS            R0, #0
0x29de MOVS            R1, #0
0x29e0 BL              sub_2220
0x29e4 LDR             R3, =dword_1501DA0
0x29e6 LDR             R3, [R3]
0x29e8 CMP             R3, #1
0x29ea BLS             loc_29EE
0x29ec B               loc_2CE4
0x29ee MOVS            R0, #1
0x29f0 MOVS            R1, #0
0x29f2 BL              sub_2220
0x29f6 LDR             R5, =byte_1501E15
0x29f8 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x29fa LDRSB           R3, [R5,R3]; byte_1501E15
0x29fc CMP             R3, #0
0x29fe BLE             loc_2A32
0x2a00 LDR             R3, =dword_1501C14
0x2a02 LDR             R0, [R3]
0x2a04 LDR             R3, =dword_1501BFC
0x2a06 LDR             R1, [R3]
0x2a08 LDR             R3, =unk_1501EB0
0x2a0a LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2a0c MOVS            R3, #0x334
0x2a10 LDR             R3, [R2,R3]
0x2a12 STR             R3, [SP,#0x80+var_80]
0x2a14 MOVS            R3, #0xF
0x2a16 STR             R3, [SP,#0x80+var_7C]
0x2a18 MOVS            R3, #0
0x2a1a STR             R3, [SP,#0x80+var_78]
0x2a1c ADD             R3, SP, #0x80+var_8
0x2a1e STR             R3, [SP,#0x80+var_74]
0x2a20 MOVS            R3, #1
0x2a22 STR             R3, [SP,#0x80+var_70]
0x2a24 SUBS            R0, #0x2C ; ','
0x2a26 SUBS            R1, #8
0x2a28 MOVS            R2, #0
0x2a2a MOVS            R3, #0
0x2a2c LDR             R4, =0x6ADB9
0x2a2e BL              sub_6D02
0x2a32 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2a34 LDRSB           R3, [R5,R3]; byte_1501E15
0x2a36 CMP             R3, #2
0x2a38 BGT             loc_2A68
0x2a3a LDR             R3, =dword_1501C14
0x2a3c LDR             R0, [R3]
0x2a3e LDR             R3, =dword_1501BFC
0x2a40 LDR             R1, [R3]
0x2a42 LDR             R3, =unk_1501EB0
0x2a44 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2a46 MOVS            R3, #0x334
0x2a4a LDR             R3, [R2,R3]
0x2a4c STR             R3, [SP,#0x80+var_80]
0x2a4e MOVS            R3, #0xF
0x2a50 MOVS            R2, #0
0x2a52 STR             R3, [SP,#0x80+var_7C]
0x2a54 ADD             R3, SP, #0x80+var_8
0x2a56 STR             R3, [SP,#0x80+var_74]
0x2a58 ADDS            R0, #0x2C ; ','
0x2a5a SUBS            R1, #8
0x2a5c STR             R2, [SP,#0x80+var_78]
0x2a5e STR             R2, [SP,#0x80+var_70]
0x2a60 MOVS            R3, #0
0x2a62 LDR             R4, =0x6ADB9
0x2a64 BL              sub_6D02
0x2a68 MOV             R0, SP
0x2a6a MOVS            R2, #0x1E
0x2a6c LDR             R3, =unk_140329C
0x2a6e ADDS            R0, #0x5A ; 'Z'
0x2a70 MOVS            R1, #0
0x2a72 BL              sub_6D00
0x2a76 MOVS            R0, #(byte_1501E15 - 0x1501E15)
0x2a78 LDRSB           R0, [R5,R0]; byte_1501E15
0x2a7a LSLS            R3, R0, #1
0x2a7c LDR             R2, =unk_1501C8C
0x2a7e ADDS            R3, R3, R0
0x2a80 LSLS            R3, R3, #2
0x2a82 ADDS            R3, R3, R2
0x2a84 LDRB            R4, [R3,#1]
0x2a86 LDR             R2, =dword_1501BFC
0x2a88 LDR             R3, =0x676E9
0x2a8a STR             R2, [SP,#0x80+var_60]
0x2a8c LDR             R7, =dword_1501C14
0x2a8e STR             R3, [SP,#0x80+var_64]
0x2a90 CMP             R4, #0xFF
0x2a92 BNE             loc_2AAA
0x2a94 MOVS            R3, #0
0x2a96 LDR             R1, [R2]
0x2a98 LDR             R0, [R7]
0x2a9a STR             R3, [SP,#0x80+var_80]
0x2a9c LDR             R3, =0xFFFFFF00
0x2a9e LDR             R2, =dword_8CDEC
0x2aa0 LDR             R4, [SP,#0x80+var_64]
0x2aa2 STR             R3, [SP,#0x80+var_7C]
0x2aa4 ADDS            R1, #0x46 ; 'F'
0x2aa6 MOVS            R3, #1
0x2aa8 B               loc_2CDE
0x2aaa LDR             R2, =unk_1501C8C
0x2aac LSLS            R3, R0, #1
0x2aae ADDS            R3, R3, R0
0x2ab0 STR             R2, [SP,#0x80+var_44]
0x2ab2 LSLS            R3, R3, #2
0x2ab4 ADDS            R3, R3, R2
0x2ab6 MOVS            R2, #2
0x2ab8 LDRSB           R2, [R3,R2]
0x2aba LDR             R0, =off_140014C
0x2abc LSLS            R3, R4, #0x18
0x2abe ASRS            R3, R3, #0x16
0x2ac0 LDR             R4, =unk_14032CC
0x2ac2 LDR             R3, [R3,R0]
0x2ac4 MOV             R0, SP
0x2ac6 LDR             R1, =aDS; "%d  %s"
0x2ac8 STR             R4, [SP,#0x80+var_48]
0x2aca ADDS            R0, #0x5A ; 'Z'
0x2acc BL              sub_6D02
0x2ad0 MOV             R0, SP
0x2ad2 LDR             R3, =0x676B5
0x2ad4 ADDS            R0, #0x5A ; 'Z'
0x2ad6 BL              sub_6D00
0x2ada LDR             R2, [SP,#0x80+var_60]
0x2adc LDR             R3, =unk_1501EB0
0x2ade LDR             R1, [R2]
0x2ae0 ADDS            R0, #0x14
0x2ae2 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2ae4 MOVS            R3, #0xCD
0x2ae6 LSLS            R0, R0, #0x18
0x2ae8 LSLS            R3, R3, #2
0x2aea LDR             R3, [R2,R3]
0x2aec ASRS            R0, R0, #0x18
0x2aee LSRS            R5, R0, #0x1F
0x2af0 ADDS            R5, R5, R0
0x2af2 LDR             R0, [R7]
0x2af4 STR             R3, [SP,#0x80+var_80]
0x2af6 MOVS            R3, #0x15
0x2af8 ASRS            R5, R5, #1
0x2afa MOVS            R6, #0
0x2afc STR             R3, [SP,#0x80+var_7C]
0x2afe ADD             R3, SP, #0x80+var_8
0x2b00 SUBS            R0, R0, R5
0x2b02 ADDS            R1, #0x3D ; '='
0x2b04 STR             R3, [SP,#0x80+var_74]
0x2b06 MOVS            R2, #0
0x2b08 MOVS            R3, #0
0x2b0a LDR             R4, =0x6ADB9
0x2b0c STR             R6, [SP,#0x80+var_78]
0x2b0e STR             R6, [SP,#0x80+var_70]
0x2b10 BL              sub_6D02
0x2b14 LDR             R3, [SP,#0x80+var_60]
0x2b16 LDR             R0, [R7]
0x2b18 LDR             R1, [R3]
0x2b1a LDR             R3, =0xFFFFFF00
0x2b1c SUBS            R0, R0, R5
0x2b1e MOV             R2, SP
0x2b20 ADDS            R1, #0x3C ; '<'
0x2b22 STR             R3, [SP,#0x80+var_7C]
0x2b24 ADDS            R2, #0x5A ; 'Z'
0x2b26 MOVS            R3, #0
0x2b28 LDR             R4, [SP,#0x80+var_64]
0x2b2a ADDS            R0, #0x14
0x2b2c STR             R6, [SP,#0x80+var_80]
0x2b2e BL              sub_6D02
0x2b32 LDR             R3, =byte_1501E15
0x2b34 LDRB            R2, [R3]
0x2b36 LSLS            R2, R2, #0x18
0x2b38 ASRS            R2, R2, #0x18
0x2b3a LSLS            R3, R2, #1
0x2b3c ADDS            R3, R3, R2
0x2b3e LDR             R0, [SP,#0x80+var_44]
0x2b40 LSLS            R3, R3, #2
0x2b42 ADDS            R3, R3, R0
0x2b44 LDR             R4, [R3,#8]
0x2b46 MOVS            R1, #0xE1
0x2b48 LDR             R5, =0x8BFE9
0x2b4a LSLS            R1, R1, #4
0x2b4c MOVS            R0, R4
0x2b4e BL              sub_6D04
0x2b52 MOVS            R1, #0x3C ; '<'
0x2b54 STR             R0, [SP,#0x80+var_34]
0x2b56 MOVS            R0, R4
0x2b58 BL              sub_6D04
0x2b5c LDR             R5, =0x8C0F9
0x2b5e MOVS            R1, #0x3C ; '<'
0x2b60 BL              sub_6D04
0x2b64 MOVS            R1, #0x3C ; '<'
0x2b66 STR             R0, [SP,#0x80+var_30]
0x2b68 MOVS            R0, R4
0x2b6a BL              sub_6D04
0x2b6e STR             R0, [SP,#0x80+var_2C]
0x2b70 MOV             R0, SP
0x2b72 MOVS            R1, #0
0x2b74 MOVS            R2, #0x1E
0x2b76 ADDS            R0, #0x5A ; 'Z'
0x2b78 LDR             R3, =unk_140329C
0x2b7a BL              sub_6D00
0x2b7e LDR             R1, =0x8C1C1
0x2b80 LDR             R2, [SP,#0x80+var_34]
0x2b82 STR             R1, [SP,#0x80+var_68]
0x2b84 LDR             R7, =0x8C065
0x2b86 CMP             R2, #0x63 ; 'c'
0x2b88 BLE             loc_2C70
0x2b8a MOVS            R0, R2
0x2b8c MOVS            R1, #0x64 ; 'd'
0x2b8e BL              sub_6D08
0x2b92 MOVS            R1, #0xA
0x2b94 MOVS            R5, R0
0x2b96 LDR             R0, [SP,#0x80+var_34]
0x2b98 BL              sub_6D08
0x2b9c LDR             R3, [SP,#0x80+var_68]
0x2b9e MOVS            R1, #0xA
0x2ba0 BL              sub_6D00
0x2ba4 LDR             R2, [SP,#0x80+var_68]
0x2ba6 MOVS            R4, R0
0x2ba8 MOVS            R1, #0xA
0x2baa LDR             R0, [SP,#0x80+var_34]
0x2bac BL              sub_6CFE
0x2bb0 MOVS            R1, #0xA
0x2bb2 STR             R0, [SP,#0x80+var_80]
0x2bb4 LDR             R0, [SP,#0x80+var_30]
0x2bb6 BL              sub_6D08
0x2bba LDR             R3, [SP,#0x80+var_68]
0x2bbc STR             R0, [SP,#0x80+var_7C]
0x2bbe MOVS            R1, #0xA
0x2bc0 LDR             R0, [SP,#0x80+var_30]
0x2bc2 BL              sub_6D00
0x2bc6 MOVS            R1, #0xA
0x2bc8 STR             R0, [SP,#0x80+var_78]
0x2bca LDR             R0, [SP,#0x80+var_2C]
0x2bcc BL              sub_6D08
0x2bd0 LDR             R2, [SP,#0x80+var_68]
0x2bd2 STR             R0, [SP,#0x80+var_74]
0x2bd4 MOVS            R1, #0xA
0x2bd6 LDR             R0, [SP,#0x80+var_2C]
0x2bd8 BL              sub_6CFE
0x2bdc LDR             R6, =aDDDDDDD; "%d%d%d : %d%d : %d%d"
0x2bde STR             R0, [SP,#0x80+var_70]
0x2be0 MOV             R0, SP
0x2be2 MOVS            R3, R4
0x2be4 MOVS            R1, R6
0x2be6 MOVS            R2, R5
0x2be8 LDR             R4, [SP,#0x80+var_48]
0x2bea ADDS            R0, #0x5A ; 'Z'
0x2bec BL              sub_6D02
0x2bf0 B               loc_2CC4
0x2c70 MOVS            R1, #0xA
0x2c72 LDR             R0, [SP,#0x80+var_34]
0x2c74 BL              sub_6D08
0x2c78 LDR             R2, [SP,#0x80+var_68]
0x2c7a MOVS            R5, R0
0x2c7c MOVS            R1, #0xA
0x2c7e LDR             R0, [SP,#0x80+var_34]
0x2c80 BL              sub_6CFE
0x2c84 MOVS            R1, #0xA
0x2c86 MOVS            R4, R0
0x2c88 LDR             R0, [SP,#0x80+var_30]
0x2c8a BL              sub_6D08
0x2c8e LDR             R3, [SP,#0x80+var_68]
0x2c90 STR             R0, [SP,#0x80+var_80]
0x2c92 MOVS            R1, #0xA
0x2c94 LDR             R0, [SP,#0x80+var_30]
0x2c96 BL              sub_6D00
0x2c9a MOVS            R1, #0xA
0x2c9c STR             R0, [SP,#0x80+var_7C]
0x2c9e LDR             R0, [SP,#0x80+var_2C]
0x2ca0 BL              sub_6D08
0x2ca4 MOVS            R1, #0xA
0x2ca6 STR             R0, [SP,#0x80+var_78]
0x2ca8 LDR             R2, [SP,#0x80+var_68]
0x2caa LDR             R0, [SP,#0x80+var_2C]
0x2cac BL              sub_6CFE
0x2cb0 LDR             R6, =aDDDDDD; "%d%d : %d%d : %d%d"
0x2cb2 STR             R0, [SP,#0x80+var_74]
0x2cb4 MOV             R0, SP
0x2cb6 MOVS            R3, R4
0x2cb8 ADDS            R0, #0x5A ; 'Z'
0x2cba MOVS            R1, R6
0x2cbc MOVS            R2, R5
0x2cbe LDR             R4, [SP,#0x80+var_48]
0x2cc0 BL              sub_6D02
0x2cc4 LDR             R3, =dword_1501C14
0x2cc6 LDR             R0, [R3]
0x2cc8 LDR             R3, =dword_1501BFC
0x2cca LDR             R1, [R3]
0x2ccc MOVS            R3, #0
0x2cce STR             R3, [SP,#0x80+var_80]
0x2cd0 LDR             R3, =0xFFFFFF00
0x2cd2 MOV             R2, SP
0x2cd4 LDR             R4, =0x676E9
0x2cd6 STR             R3, [SP,#0x80+var_7C]
0x2cd8 ADDS            R1, #0x4D ; 'M'
0x2cda ADDS            R2, #0x5A ; 'Z'
0x2cdc MOVS            R3, #1
0x2cde BL              sub_6D02
0x2ce2 B               loc_2FAA
0x2ce4 CMP             R3, #2
0x2ce6 BEQ             loc_2CEA
0x2ce8 B               loc_2FAA
0x2cea LDR             R1, =dword_1501BFC
0x2cec LDR             R6, =dword_1501C14
0x2cee LDR             R2, =unk_1501EB0
0x2cf0 STR             R1, [SP,#0x80+var_4C]
0x2cf2 LDR             R1, [R1]
0x2cf4 MOVS            R7, #0
0x2cf6 LDR             R0, [R6]
0x2cf8 SUBS            R1, #0x37 ; '7'
0x2cfa STR             R2, [SP,#0x80+var_50]
0x2cfc LDR             R3, =unk_1501E2C
0x2cfe LDR             R4, =0x6B351
0x2d00 STR             R7, [SP,#0x80+var_80]
0x2d02 STR             R7, [SP,#0x80+var_7C]
0x2d04 STR             R7, [SP,#0x80+var_78]
0x2d06 STR             R7, [SP,#0x80+var_74]
0x2d08 STR             R7, [SP,#0x80+var_70]
0x2d0a STR             R7, [SP,#0x80+var_6C]
0x2d0c BL              sub_6D02
0x2d10 LDR             R3, [SP,#0x80+var_4C]
0x2d12 LDR             R1, [R3]
0x2d14 LDR             R0, [R6]
0x2d16 LDR             R3, =unk_1501EA0
0x2d18 ADDS            R1, #0x1E
0x2d1a STR             R7, [SP,#0x80+var_80]
0x2d1c STR             R7, [SP,#0x80+var_7C]
0x2d1e STR             R7, [SP,#0x80+var_78]
0x2d20 STR             R7, [SP,#0x80+var_74]
0x2d22 STR             R7, [SP,#0x80+var_70]
0x2d24 STR             R7, [SP,#0x80+var_6C]
0x2d26 LDR             R2, [SP,#0x80+var_50]
0x2d28 BL              sub_6D02
0x2d2c LDR             R3, =dword_1501BF8
0x2d2e LDR             R3, [R3]
0x2d30 CMP             R3, #1
0x2d32 BGT             loc_2DCC
0x2d34 LDR             R0, [R6]
0x2d36 MOVS            R3, #0
0x2d38 MOVS            R4, #1
0x2d3a MOVS            R1, #4
0x2d3c MOVS            R2, #1
0x2d3e STR             R4, [SP,#0x80+var_80]
0x2d40 BL              sub_20D8
0x2d44 LDR             R3, =byte_1501ED4
0x2d46 LDRB            R3, [R3]
0x2d48 LSLS            R3, R3, #0x18
0x2d4a ASRS            R3, R3, #0x18
0x2d4c LDR             R5, =byte_1501E15
0x2d4e CMP             R3, #1
0x2d50 BNE             loc_2D60
0x2d52 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2d54 LDRSB           R3, [R5,R3]; byte_1501E15
0x2d56 ADDS            R3, #1
0x2d58 BLE             loc_2E22
0x2d5a LDR             R0, [R6]
0x2d5c SUBS            R0, #0x30 ; '0'
0x2d5e B               loc_2DFA
0x2d60 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2d62 LDRSB           R3, [R5,R3]; byte_1501E15
0x2d64 CMP             R3, #1
0x2d66 BLE             loc_2D94
0x2d68 LDR             R2, [SP,#0x80+var_4C]
0x2d6a LDR             R3, [SP,#0x80+var_50]
0x2d6c LDR             R1, [R2]
0x2d6e LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2d70 MOVS            R3, #0x334
0x2d74 LDR             R3, [R2,R3]
0x2d76 LDR             R0, [R6]
0x2d78 STR             R3, [SP,#0x80+var_80]
0x2d7a MOVS            R3, #0xF
0x2d7c STR             R3, [SP,#0x80+var_7C]
0x2d7e ADD             R3, SP, #0x80+var_8
0x2d80 STR             R3, [SP,#0x80+var_74]
0x2d82 STR             R4, [SP,#0x80+var_70]
0x2d84 SUBS            R0, #0x2C ; ','
0x2d86 SUBS            R1, #8
0x2d88 STR             R7, [SP,#0x80+var_78]
0x2d8a MOVS            R2, #0
0x2d8c MOVS            R3, #0
0x2d8e LDR             R4, =0x6ADB9
0x2d90 BL              sub_6D02
0x2d94 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2d96 LDRSB           R3, [R5,R3]; byte_1501E15
0x2d98 CMP             R3, #3
0x2d9a BLE             loc_2D9E
0x2d9c B               loc_2FAA
0x2d9e LDR             R0, [R6]
0x2da0 ADDS            R0, #0x30 ; '0'
0x2da2 LDR             R3, [SP,#0x80+var_50]
0x2da4 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2da6 MOVS            R3, #0x334
0x2daa LDR             R3, [R2,R3]
0x2dac LDR             R4, [SP,#0x80+var_4C]
0x2dae LDR             R1, [R4]
0x2db0 STR             R3, [SP,#0x80+var_80]
0x2db2 MOVS            R3, #0x10
0x2db4 STR             R3, [SP,#0x80+var_7C]
0x2db6 ADD             R3, SP, #0x80+var_8
0x2db8 STR             R7, [SP,#0x80+var_78]
0x2dba STR             R3, [SP,#0x80+var_74]
0x2dbc STR             R7, [SP,#0x80+var_70]
0x2dbe SUBS            R1, #8
0x2dc0 MOVS            R2, #0
0x2dc2 MOVS            R3, #0
0x2dc4 LDR             R4, =0x6ADB9
0x2dc6 BL              sub_6D02
0x2dca B               loc_2FAA
0x2dcc CMP             R3, #3
0x2dce BGT             loc_2E9C
0x2dd0 LDR             R0, [R6]
0x2dd2 MOVS            R3, #0
0x2dd4 MOVS            R4, #1
0x2dd6 MOVS            R1, #0
0x2dd8 MOVS            R2, #0
0x2dda STR             R4, [SP,#0x80+var_80]
0x2ddc BL              sub_20D8
0x2de0 LDR             R3, =byte_1501ED4
0x2de2 LDRB            R3, [R3]
0x2de4 LSLS            R3, R3, #0x18
0x2de6 ASRS            R3, R3, #0x18
0x2de8 LDR             R5, =byte_1501E15
0x2dea CMP             R3, #1
0x2dec BNE             loc_2E58
0x2dee MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2df0 LDRSB           R3, [R5,R3]; byte_1501E15
0x2df2 ADDS            R3, #1
0x2df4 BLE             loc_2E22
0x2df6 LDR             R0, [R6]
0x2df8 SUBS            R0, #0x2C ; ','
0x2dfa LDR             R2, [SP,#0x80+var_4C]
0x2dfc LDR             R3, [SP,#0x80+var_50]
0x2dfe LDR             R1, [R2]
0x2e00 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2e02 MOVS            R3, #0x334
0x2e06 LDR             R3, [R2,R3]
0x2e08 STR             R3, [SP,#0x80+var_80]
0x2e0a MOVS            R3, #0x10
0x2e0c STR             R3, [SP,#0x80+var_7C]
0x2e0e ADD             R3, SP, #0x80+var_8
0x2e10 STR             R3, [SP,#0x80+var_74]
0x2e12 STR             R4, [SP,#0x80+var_70]
0x2e14 SUBS            R1, #8
0x2e16 STR             R7, [SP,#0x80+var_78]
0x2e18 MOVS            R2, #0
0x2e1a MOVS            R3, #0
0x2e1c LDR             R4, =0x6ADB9
0x2e1e BL              sub_6D02
0x2e22 LDR             R3, =byte_1501E15
0x2e24 LDRB            R3, [R3]
0x2e26 LSLS            R3, R3, #0x18
0x2e28 ASRS            R3, R3, #0x18
0x2e2a CMP             R3, #1
0x2e2c BLE             loc_2E30
0x2e2e B               loc_2FAA
0x2e30 LDR             R3, =dword_1501C14
0x2e32 LDR             R0, [R3]
0x2e34 LDR             R3, =dword_1501BFC
0x2e36 LDR             R1, [R3]
0x2e38 LDR             R3, =unk_1501EB0
0x2e3a LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2e3c MOVS            R3, #0x334
0x2e40 LDR             R3, [R2,R3]
0x2e42 STR             R3, [SP,#0x80+var_80]
0x2e44 MOVS            R3, #0xF
0x2e46 MOVS            R2, #0
0x2e48 STR             R3, [SP,#0x80+var_7C]
0x2e4a ADDS            R0, #0x2C ; ','
0x2e4c ADD             R3, SP, #0x80+var_8
0x2e4e SUBS            R1, #8
0x2e50 STR             R2, [SP,#0x80+var_78]
0x2e52 STR             R3, [SP,#0x80+var_74]
0x2e54 STR             R2, [SP,#0x80+var_70]
0x2e56 B               loc_2DC2
0x2e58 MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2e5a LDRSB           R3, [R5,R3]; byte_1501E15
0x2e5c CMP             R3, #1
0x2e5e BLE             loc_2E8C
0x2e60 LDR             R2, [SP,#0x80+var_4C]
0x2e62 LDR             R3, [SP,#0x80+var_50]
0x2e64 LDR             R1, [R2]
0x2e66 LDR             R2, [R3,#(dword_1501ECC - 0x1501EB0)]
0x2e68 MOVS            R3, #0x334
0x2e6c LDR             R3, [R2,R3]
0x2e6e LDR             R0, [R6]
0x2e70 STR             R3, [SP,#0x80+var_80]
0x2e72 MOVS            R3, #0xF
0x2e74 STR             R3, [SP,#0x80+var_7C]
0x2e76 ADD             R3, SP, #0x80+var_8
0x2e78 STR             R3, [SP,#0x80+var_74]
0x2e7a STR             R4, [SP,#0x80+var_70]
0x2e7c SUBS            R0, #0x2C ; ','
0x2e7e SUBS            R1, #8
0x2e80 STR             R7, [SP,#0x80+var_78]
0x2e82 MOVS            R2, #0
0x2e84 MOVS            R3, #0
0x2e86 LDR             R4, =0x6ADB9
0x2e88 BL              sub_6D02
0x2e8c MOVS            R3, #(byte_1501E15 - 0x1501E15)
0x2e8e LDRSB           R3, [R5,R3]; byte_1501E15
0x2e90 CMP             R3, #3
0x2e92 BLE             loc_2E96
0x2e94 B               loc_2FAA
0x2e96 LDR             R0, [R6]
0x2e98 ADDS            R0, #0x2C ; ','
0x2e9a B               loc_2DA2
0x2e9c CMP             R3, #5
0x2e9e BGT             loc_2F00
0x2ea0 LDR             R3, =byte_1501ED4
0x2ea2 MOVS            R4, #(byte_1501ED4 - 0x1501ED4)
0x2ea4 LDRSB           R4, [R3,R4]; byte_1501ED4
0x2ea6 LDR             R0, [R6]
0x2ea8 CMP             R4, #1
0x2eaa BNE             loc_2ED0
0x2eac MOVS            R1, #3
0x2eae MOVS            R2, #0
0x2eb0 MOVS            R3, #0x19
0x2eb2 STR             R7, [SP,#0x80+var_80]
0x2eb4 BL              sub_20D8
0x2eb8 LDR             R0, [R6]
0x2eba MOVS            R1, #3
0x2ebc ADDS            R0, #0x14
0x2ebe MOVS            R2, #0
0x2ec0 MOVS            R3, #0x14
0x2ec2 STR             R7, [SP,#0x80+var_80]
0x2ec4 BL              sub_20D8
0x2ec8 LDR             R0, [R6]
0x2eca ADDS            R0, #0x28 ; '('
0x2ecc STR             R4, [SP,#0x80+var_80]
0x2ece B               loc_2EF4
0x2ed0 MOVS            R1, #3
0x2ed2 MOVS            R2, #0
0x2ed4 MOVS            R3, #0x19
0x2ed6 STR             R7, [SP,#0x80+var_80]
0x2ed8 BL              sub_20D8
0x2edc LDR             R0, [R6]
0x2ede MOVS            R3, #0x14
0x2ee0 SUBS            R0, #0x14
0x2ee2 MOVS            R1, #3
0x2ee4 MOVS            R2, #0
0x2ee6 STR             R7, [SP,#0x80+var_80]
0x2ee8 BL              sub_20D8
0x2eec LDR             R0, [R6]
0x2eee MOVS            R3, #1
0x2ef0 STR             R3, [SP,#0x80+var_80]
0x2ef2 SUBS            R0, #0x28 ; '('
0x2ef4 MOVS            R1, #0
0x2ef6 MOVS            R2, #0
0x2ef8 MOVS            R3, #5
0x2efa BL              sub_20D8
0x2efe B               loc_2FAA
0x2f00 CMP             R3, #7
0x2f02 BGT             loc_2FAA
0x2f04 LDR             R3, =byte_1501ED4
0x2f06 MOVS            R4, #(byte_1501ED4 - 0x1501ED4)
0x2f08 LDRSB           R4, [R3,R4]; byte_1501ED4
0x2f0a LDR             R0, [R6]
0x2f0c CMP             R4, #1
0x2f0e BNE             loc_2F6C
0x2f10 ADDS            R0, #0x28 ; '('
0x2f12 MOVS            R1, #3
0x2f14 MOVS            R2, #0
0x2f16 MOVS            R3, #0x19
0x2f18 STR             R7, [SP,#0x80+var_80]
0x2f1a BL              sub_20D8
0x2f1e LDR             R0, [R6]
0x2f20 MOVS            R1, #3
0x2f22 ADDS            R0, #0x3C ; '<'
0x2f24 MOVS            R2, #0
0x2f26 MOVS            R3, #0x14
0x2f28 STR             R7, [SP,#0x80+var_80]
0x2f2a BL              sub_20D8
0x2f2e LDR             R0, [R6]
0x2f30 ADDS            R0, #0x50 ; 'P'
0x2f32 STR             R4, [SP,#0x80+var_80]
0x2f34 B               loc_2F92
0x2f6c SUBS            R0, #0x28 ; '('
0x2f6e MOVS            R1, #3
0x2f70 MOVS            R2, #0
0x2f72 MOVS            R3, #0x19
0x2f74 STR             R7, [SP,#0x80+var_80]
0x2f76 BL              sub_20D8
0x2f7a LDR             R0, [R6]
0x2f7c MOVS            R3, #0x14
0x2f7e SUBS            R0, #0x3C ; '<'
0x2f80 MOVS            R1, #3
0x2f82 MOVS            R2, #0
0x2f84 STR             R7, [SP,#0x80+var_80]
0x2f86 BL              sub_20D8
0x2f8a LDR             R0, [R6]
0x2f8c MOVS            R3, #1
0x2f8e STR             R3, [SP,#0x80+var_80]
0x2f90 SUBS            R0, #0x50 ; 'P'
0x2f92 MOVS            R3, #5
0x2f94 MOVS            R1, #0
0x2f96 MOVS            R2, #0
0x2f98 BL              sub_20D8
0x2f9c LDR             R3, =dword_1501BF8
0x2f9e LDR             R3, [R3]
0x2fa0 CMP             R3, #7
0x2fa2 BNE             loc_2FAA
0x2fa4 LDR             R2, =dword_1501DA0
0x2fa6 MOVS            R3, #0
0x2fa8 STR             R3, [R2]
0x2faa LDR             R4, =unk_1501EB0
0x2fac MOVS            R5, #0xCD
0x2fae LDR             R3, [R4,#(dword_1501ECC - 0x1501EB0)]
0x2fb0 LDR             R6, =dword_1501C14
0x2fb2 LSLS            R5, R5, #2
0x2fb4 LDR             R3, [R3,R5]
0x2fb6 LDR             R0, [R6]
0x2fb8 STR             R4, [SP,#0x80+var_54]
0x2fba LDR             R4, =0x6ADB9
0x2fbc MOVS            R7, #0
0x2fbe STR             R3, [SP,#0x80+var_80]
0x2fc0 ADD             R1, SP, #0x80+var_8
0x2fc2 MOVS            R3, #0x16
0x2fc4 SUBS            R0, #0x4C ; 'L'
0x2fc6 STR             R3, [SP,#0x80+var_7C]
0x2fc8 STR             R1, [SP,#0x80+var_74]
0x2fca MOVS            R2, #0
0x2fcc MOVS            R1, #0x14
0x2fce MOVS            R3, #0
0x2fd0 STR             R4, [SP,#0x80+var_58]
0x2fd2 STR             R7, [SP,#0x80+var_78]
0x2fd4 STR             R7, [SP,#0x80+var_70]
0x2fd6 BL              sub_6D02
0x2fda LDR             R1, =dword_1501BF0
0x2fdc STR             R1, [SP,#0x80+var_5C]
0x2fde LDR             R1, [R1]
0x2fe0 LDR             R0, [R6]
0x2fe2 SUBS            R1, #0x16
0x2fe4 LDR             R2, =dword_1501FF0
0x2fe6 MOVS            R3, #0
0x2fe8 LDR             R4, =0x6B235
0x2fea STR             R7, [SP,#0x80+var_80]
0x2fec STR             R7, [SP,#0x80+var_7C]
0x2fee STR             R7, [SP,#0x80+var_78]
0x2ff0 STR             R7, [SP,#0x80+var_74]
0x2ff2 STR             R7, [SP,#0x80+var_70]
0x2ff4 STR             R7, [SP,#0x80+var_6C]
0x2ff6 BL              sub_6D02
0x2ffa LDR             R4, [SP,#0x80+var_54]
0x2ffc LDR             R3, [R4,#(dword_1501ECC - 0x1501EB0)]
0x2ffe LDR             R2, [SP,#0x80+var_5C]
0x3000 LDR             R3, [R3,R5]
0x3002 LDR             R1, [R2]
0x3004 LDR             R0, [R6]
0x3006 ADD             R2, SP, #0x80+var_8
0x3008 STR             R3, [SP,#0x80+var_80]
0x300a MOVS            R3, #0xC
0x300c SUBS            R0, #0x64 ; 'd'
0x300e SUBS            R1, #0x23 ; '#'
0x3010 STR             R3, [SP,#0x80+var_7C]
0x3012 STR             R2, [SP,#0x80+var_74]
0x3014 MOVS            R3, #0
0x3016 MOVS            R2, #0
0x3018 LDR             R4, [SP,#0x80+var_58]
0x301a STR             R7, [SP,#0x80+var_78]
0x301c STR             R7, [SP,#0x80+var_70]
0x301e BL              sub_6D02
0x3022 LDR             R4, [SP,#0x80+var_54]
0x3024 LDR             R3, [R4,#(dword_1501ECC - 0x1501EB0)]
0x3026 LDR             R2, [SP,#0x80+var_5C]
0x3028 LDR             R3, [R3,R5]
0x302a LDR             R1, [R2]
0x302c LDR             R0, [R6]
0x302e ADD             R2, SP, #0x80+var_8
0x3030 STR             R3, [SP,#0x80+var_80]
0x3032 MOVS            R3, #0xD
0x3034 SUBS            R0, #0x13
0x3036 SUBS            R1, #0x23 ; '#'
0x3038 STR             R3, [SP,#0x80+var_7C]
0x303a STR             R2, [SP,#0x80+var_74]
0x303c MOVS            R3, #0
0x303e MOVS            R2, #0
0x3040 LDR             R4, [SP,#0x80+var_58]
0x3042 STR             R7, [SP,#0x80+var_78]
0x3044 STR             R7, [SP,#0x80+var_70]
0x3046 BL              sub_6D02
0x304a LDR             R4, [SP,#0x80+var_54]
0x304c LDR             R3, [R4,#(dword_1501ECC - 0x1501EB0)]
0x304e LDR             R2, [SP,#0x80+var_5C]
0x3050 LDR             R3, [R3,R5]
0x3052 LDR             R1, [R2]
0x3054 LDR             R0, [R6]
0x3056 ADD             R2, SP, #0x80+var_8
0x3058 STR             R3, [SP,#0x80+var_80]
0x305a MOVS            R3, #0xE
0x305c SUBS            R1, #0x24 ; '$'
0x305e STR             R3, [SP,#0x80+var_7C]
0x3060 STR             R2, [SP,#0x80+var_74]
0x3062 MOVS            R3, #0
0x3064 ADDS            R0, #0x41 ; 'A'
0x3066 STR             R7, [SP,#0x80+var_78]
0x3068 STR             R7, [SP,#0x80+var_70]
0x306a MOVS            R2, #0
0x306c LDR             R4, [SP,#0x80+var_58]
0x306e BL              sub_6D02
0x3072 LDR             R3, =dword_1501DA0
0x3074 LDR             R1, [R3]
0x3076 CMP             R1, #1
0x3078 BNE             loc_3080
0x307a BL              sub_2760
0x307e B               loc_3116
0x3080 CMP             R1, #3
0x3082 BNE             loc_3116
0x3084 LDR             R3, =dword_1501BF8
0x3086 LDR             R2, [R3]
0x3088 MOVS            R3, R2
0x308a SUBS            R3, #0xF
0x308c CMP             R3, #1
0x308e BHI             loc_309C
0x3090 LDR             R3, =dword_1501C04
0x3092 LDR             R0, [SP,#0x80+var_5C]
0x3094 LDR             R2, [R3]
0x3096 LDR             R3, [R0]
0x3098 STR             R7, [SP,#0x80+var_80]
0x309a B               loc_30B0
0x309c MOVS            R3, R2
0x309e SUBS            R3, #0x11
0x30a0 CMP             R3, #1
0x30a2 BHI             loc_30BE
0x30a4 LDR             R3, =dword_1501C04
0x30a6 LDR             R1, [SP,#0x80+var_5C]
0x30a8 LDR             R2, [R3]
0x30aa LDR             R3, [R1]
0x30ac STR             R7, [SP,#0x80+var_80]
0x30ae MOVS            R1, #2
0x30b0 STR             R1, [SP,#0x80+var_7C]
0x30b2 MOVS            R0, #0
0x30b4 MOVS            R1, #0
0x30b6 LDR             R4, =0x6A89D
0x30b8 BL              sub_6D02
0x30bc B               loc_3116
0x30be CMP             R2, #0x13
0x30c0 BNE             loc_30D0
0x30c2 LDR             R3, =dword_1501C04
0x30c4 LDR             R4, [SP,#0x80+var_5C]
0x30c6 LDR             R2, [R3]
0x30c8 LDR             R3, [R4]
0x30ca MOVS            R1, #1
0x30cc STR             R7, [SP,#0x80+var_80]
0x30ce B               loc_30B0
0x30d0 CMP             R2, #0x14
0x30d2 BNE             loc_30EA
0x30d4 LDR             R0, [SP,#0x80+var_5C]
0x30d6 LDR             R3, =dword_1501C04
0x30d8 MOVS            R1, #0
0x30da LDR             R2, [R3]
0x30dc LDR             R4, =0x6A855
0x30de LDR             R3, [R0]
0x30e0 STR             R7, [SP,#0x80+var_80]
0x30e2 MOVS            R0, #0
0x30e4 BL              sub_6D02
0x30e8 B               loc_3116
0x30ea CMP             R2, #0x15
0x30ec BNE             loc_3116
0x30ee LDR             R3, =dword_1501C04
0x30f0 LDR             R1, [SP,#0x80+var_5C]
0x30f2 LDR             R2, [R3]
0x30f4 MOVS            R0, #0
0x30f6 LDR             R3, [R1]
0x30f8 LDR             R4, =0x6A855
0x30fa MOVS            R1, #0
0x30fc STR             R7, [SP,#0x80+var_80]
0x30fe BL              sub_6D02
0x3102 BL              sub_1F2C
0x3106 LDR             R3, =0x392F5
0x3108 BL              sub_6D00
0x310c LDR             R3, =dword_1501D90
0x310e LDR             R0, [R3]
0x3110 LDR             R3, =(sub_1700+1)
0x3112 BL              sub_6D00
0x3116 ADD             SP, SP, #0x80
0x3118 POP             {R4-R7}
0x311a POP             {R0}
0x311c BX              R0