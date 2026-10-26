0x28838 PUSH            {R4-R7,LR}
0x2883a SUB             SP, SP, #0x48
0x2883c MOV             R4, SP
0x2883e LSLS            R2, R0, #0x18
0x28840 ADDS            R4, #0x1E
0x28842 LSRS            R2, R2, #0x18
0x28844 LDR             R1, =aDFie; "%d.fie"
0x28846 LDR             R3, =unk_14032CC
0x28848 MOVS            R0, R4
0x2884a BL              sub_2BCB6
0x2884e MOVS            R0, R4
0x28850 LDR             R3, =0x6CBE1
0x28852 BL              sub_2BCB6
0x28856 STR             R0, [SP,#0x48+var_44]
0x28858 CMP             R0, #0
0x2885a BNE             loc_2885E
0x2885c B               loc_28BB4
0x2885e MOV             R0, SP
0x28860 LDR             R6, =unk_140327C
0x28862 LDR             R1, [SP,#0x48+var_44]
0x28864 MOVS            R2, #2
0x28866 ADDS            R0, #0x46 ; 'F'
0x28868 BL              sub_2BCBC
0x2886c LDR             R1, [SP,#0x48+var_44]
0x2886e MOVS            R2, #4
0x28870 ADDS            R1, #2
0x28872 ADD             R0, SP, #0x48+var_C
0x28874 BL              sub_2BCBC
0x28878 LDR             R1, [SP,#0x48+var_44]
0x2887a MOVS            R2, #4
0x2887c ADDS            R1, #6
0x2887e ADD             R0, SP, #0x48+var_8
0x28880 BL              sub_2BCBC
0x28884 LDR             R0, [SP,#0x48+var_C]
0x28886 LDR             R3, =unk_14032EC
0x28888 ADDS            R0, #2
0x2888a BL              sub_2BCB6
0x2888e STR             R0, [SP,#0x48+var_40]
0x28890 LDR             R0, [SP,#0x48+var_44]
0x28892 MOVS            R1, #6
0x28894 LDR             R3, [SP,#0x48+var_8]
0x28896 LDR             R2, [SP,#0x48+var_C]
0x28898 STR             R1, [SP,#0x48+var_48]
0x2889a LDR             R4, =0x692B5
0x2889c LDR             R1, [SP,#0x48+var_40]
0x2889e ADDS            R0, #0xA
0x288a0 BL              sub_2BCB8
0x288a4 LDR             R5, =byte_15332D0
0x288a6 LDR             R1, [SP,#0x48+var_40]
0x288a8 MOVS            R0, R5
0x288aa MOVS            R2, #1
0x288ac BL              sub_2BCBC
0x288b0 LDR             R4, [SP,#0x48+var_40]
0x288b2 ADDS            R4, #1
0x288b4 MOVS            R1, R4
0x288b6 ADDS            R0, R5, #1
0x288b8 MOVS            R2, #1
0x288ba ADDS            R4, #1
0x288bc BL              sub_2BCBC
0x288c0 MOVS            R1, R4
0x288c2 ADDS            R0, R5, #2
0x288c4 MOVS            R2, #1
0x288c6 ADDS            R4, #1
0x288c8 BL              sub_2BCBC
0x288cc MOVS            R1, R4
0x288ce ADDS            R0, R5, #5
0x288d0 MOVS            R2, #1
0x288d2 ADDS            R4, #1
0x288d4 BL              sub_2BCBC
0x288d8 MOVS            R1, R4
0x288da ADDS            R0, R5, #3
0x288dc MOVS            R2, #1
0x288de ADDS            R4, #1
0x288e0 BL              sub_2BCBC
0x288e4 MOVS            R1, R4
0x288e6 ADDS            R0, R5, #4
0x288e8 MOVS            R2, #1
0x288ea ADDS            R4, #1
0x288ec ADDS            R5, #0x24 ; '$'
0x288ee BL              sub_2BCBC
0x288f2 MOVS            R1, R4
0x288f4 MOVS            R0, R5
0x288f6 MOVS            R2, #1
0x288f8 BL              sub_2BCBC
0x288fc ADDS            R4, #1
0x288fe MOVS            R7, #0
0x28900 B               loc_28932
0x28902 MOVS            R3, R5
0x28904 ADDS            R3, #0x36 ; '6'
0x28906 LSLS            R0, R7, #1
0x28908 ADDS            R0, R0, R3
0x2890a MOVS            R1, R4
0x2890c MOVS            R2, #2
0x2890e BL              sub_2BCBC
0x28912 MOVS            R0, R5
0x28914 ADDS            R0, #0x40 ; '@'
0x28916 ADDS            R1, R4, #2
0x28918 ADDS            R0, R7, R0
0x2891a MOVS            R2, #1
0x2891c BL              sub_2BCBC
0x28920 MOVS            R0, R5
0x28922 ADDS            R0, #0x45 ; 'E'
0x28924 ADDS            R0, R7, R0
0x28926 ADDS            R1, R4, #3
0x28928 MOVS            R2, #1
0x2892a BL              sub_2BCBC
0x2892e ADDS            R4, #4
0x28930 ADDS            R7, #1
0x28932 LDR             R5, =word_15332A0
0x28934 MOVS            R3, R5
0x28936 ADDS            R3, #0x54 ; 'T'
0x28938 LDRB            R3, [R3]
0x2893a LDR             R6, =unk_140327C
0x2893c CMP             R7, R3
0x2893e BLT             loc_28902
0x28940 MOVS            R1, R4
0x28942 MOVS            R2, #1
0x28944 ADDS            R4, #1
0x28946 ADDS            R0, R5, #4
0x28948 BL              sub_2BCBC
0x2894c MOVS            R1, R4
0x2894e MOVS            R2, #1
0x28950 ADDS            R4, #1
0x28952 ADDS            R0, R5, #5
0x28954 BL              sub_2BCBC
0x28958 MOVS            R1, R4
0x2895a MOVS            R2, #1
0x2895c ADDS            R4, #1
0x2895e ADDS            R0, R5, #6
0x28960 BL              sub_2BCBC
0x28964 MOVS            R1, R4
0x28966 MOVS            R2, #1
0x28968 ADDS            R0, R5, #7
0x2896a BL              sub_2BCBC
0x2896e ADDS            R4, #1
0x28970 MOVS            R0, R5
0x28972 ADDS            R0, #0x24 ; '$'
0x28974 MOVS            R1, R4
0x28976 MOVS            R2, #1
0x28978 BL              sub_2BCBC
0x2897c ADDS            R7, R4, #1
0x2897e MOVS            R6, #0
0x28980 B               loc_289B4
0x28982 MOVS            R3, R5
0x28984 ADDS            R3, #8
0x28986 LSLS            R0, R6, #1
0x28988 ADDS            R0, R0, R3
0x2898a MOVS            R1, R7
0x2898c LDR             R4, =unk_140327C
0x2898e MOVS            R2, #2
0x28990 BL              sub_2BCB8
0x28994 MOVS            R0, R5
0x28996 ADDS            R0, #0x12
0x28998 ADDS            R1, R7, #2
0x2899a ADDS            R0, R6, R0
0x2899c MOVS            R2, #1
0x2899e BL              sub_2BCB8
0x289a2 MOVS            R0, R5
0x289a4 ADDS            R0, #0x17
0x289a6 ADDS            R0, R6, R0
0x289a8 ADDS            R1, R7, #3
0x289aa MOVS            R2, #1
0x289ac BL              sub_2BCB8
0x289b0 ADDS            R7, #4
0x289b2 ADDS            R6, #1
0x289b4 LDR             R5, =word_15332A0
0x289b6 ADDS            R3, R5, #5
0x289b8 LDRB            R3, [R3,#(byte_15332C4 - 0x15332A5)]
0x289ba CMP             R6, R3
0x289bc BLT             loc_28982
0x289be MOVS            R3, R5
0x289c0 MOVS            R2, #0
0x289c2 ADDS            R3, #0x60 ; '`'
0x289c4 ADDS            R5, #0x83
0x289c6 STR             R2, [SP,#0x48+var_30]
0x289c8 STR             R3, [SP,#0x48+var_38]
0x289ca STR             R5, [SP,#0x48+var_34]
0x289cc MOVS            R1, R7
0x289ce MOVS            R2, #1
0x289d0 LDR             R0, [SP,#0x48+var_38]
0x289d2 LDR             R6, =unk_140327C
0x289d4 BL              sub_2BCBC
0x289d8 LDR             R2, [SP,#0x48+var_38]
0x289da MOVS            R3, #0
0x289dc LDRSB           R3, [R2,R3]
0x289de ADDS            R7, #1
0x289e0 CMP             R3, #0
0x289e2 BGE             loc_289E6
0x289e4 B               loc_28B2A
0x289e6 LDR             R5, =word_15332A0
0x289e8 LDR             R3, [SP,#0x48+var_30]
0x289ea MOVS            R0, R5
0x289ec ADDS            R0, #0x79 ; 'y'
0x289ee ADDS            R0, R3, R0
0x289f0 MOVS            R1, R7
0x289f2 MOVS            R2, #1
0x289f4 BL              sub_2BCBC
0x289f8 LDR             R2, [SP,#0x48+var_30]
0x289fa MOVS            R0, R5
0x289fc ADDS            R4, R7, #1
0x289fe ADDS            R0, #0x7E ; '~'
0x28a00 MOVS            R1, R4
0x28a02 ADDS            R0, R2, R0
0x28a04 MOVS            R2, #1
0x28a06 BL              sub_2BCBC
0x28a0a LDR             R3, [SP,#0x48+var_30]
0x28a0c MOVS            R0, R5
0x28a0e ADDS            R4, #1
0x28a10 ADDS            R0, #0x6F ; 'o'
0x28a12 ADDS            R0, R3, R0
0x28a14 MOVS            R1, R4
0x28a16 MOVS            R2, #1
0x28a18 BL              sub_2BCBC
0x28a1c LDR             R2, [SP,#0x48+var_30]
0x28a1e MOVS            R0, R5
0x28a20 ADDS            R4, #1
0x28a22 ADDS            R0, #0x74 ; 't'
0x28a24 MOVS            R1, R4
0x28a26 ADDS            R0, R2, R0
0x28a28 ADDS            R4, #1
0x28a2a MOVS            R2, #1
0x28a2c BL              sub_2BCBC
0x28a30 LDR             R0, [SP,#0x48+var_34]
0x28a32 MOVS            R1, R4
0x28a34 MOVS            R2, #1
0x28a36 BL              sub_2BCBC
0x28a3a MOVS            R3, R5
0x28a3c ADDS            R7, R4, #1
0x28a3e MOVS            R6, #0
0x28a40 ADDS            R3, #0x88
0x28a42 B               loc_28B20
0x28a44 LDR             R2, [SP,#0x48+var_30]
0x28a46 CMP             R2, #0
0x28a48 BNE             loc_28A6C
0x28a4a MOVS            R1, R7
0x28a4c MOVS            R2, #2
0x28a4e LDR             R4, =unk_140327C
0x28a50 LDR             R0, [SP,#0x48+var_3C]
0x28a52 BL              sub_2BCB8
0x28a56 MOVS            R0, R5
0x28a58 ADDS            R0, #0x92
0x28a5a ADDS            R1, R7, #2
0x28a5c ADDS            R0, R6, R0
0x28a5e MOVS            R2, #1
0x28a60 BL              sub_2BCB8
0x28a64 MOVS            R0, R5
0x28a66 ADDS            R1, R7, #3
0x28a68 ADDS            R0, #0x97
0x28a6a B               loc_28B10
0x28a6c LDR             R3, [SP,#0x48+var_30]
0x28a6e CMP             R3, #1
0x28a70 BNE             loc_28A96
0x28a72 LDR             R0, [SP,#0x48+var_3C]
0x28a74 MOVS            R1, R7
0x28a76 MOVS            R2, #2
0x28a78 LDR             R4, =unk_140327C
0x28a7a ADDS            R0, #0x14
0x28a7c BL              sub_2BCB8
0x28a80 MOVS            R0, R5
0x28a82 ADDS            R0, #0xA6
0x28a84 ADDS            R1, R7, #2
0x28a86 ADDS            R0, R6, R0
0x28a88 MOVS            R2, #1
0x28a8a BL              sub_2BCB8
0x28a8e MOVS            R0, R5
0x28a90 ADDS            R1, R7, #3
0x28a92 ADDS            R0, #0xAB
0x28a94 B               loc_28B10
0x28a96 LDR             R2, [SP,#0x48+var_30]
0x28a98 CMP             R2, #2
0x28a9a BNE             loc_28ABE
0x28a9c LDR             R0, [SP,#0x48+var_3C]
0x28a9e MOVS            R1, R7
0x28aa0 LDR             R4, =unk_140327C
0x28aa2 ADDS            R0, #0x28 ; '('
0x28aa4 BL              sub_2BCB8
0x28aa8 MOVS            R0, R5
0x28aaa ADDS            R0, #0xBA
0x28aac ADDS            R1, R7, #2
0x28aae ADDS            R0, R6, R0
0x28ab0 MOVS            R2, #1
0x28ab2 BL              sub_2BCB8
0x28ab6 MOVS            R0, R5
0x28ab8 ADDS            R1, R7, #3
0x28aba ADDS            R0, #0xBF
0x28abc B               loc_28B10
0x28abe LDR             R3, [SP,#0x48+var_30]
0x28ac0 CMP             R3, #3
0x28ac2 BNE             loc_28AE8
0x28ac4 LDR             R0, [SP,#0x48+var_3C]
0x28ac6 MOVS            R1, R7
0x28ac8 MOVS            R2, #2
0x28aca LDR             R4, =unk_140327C
0x28acc ADDS            R0, #0x3C ; '<'
0x28ace BL              sub_2BCB8
0x28ad2 MOVS            R0, R5
0x28ad4 ADDS            R0, #0xCE
0x28ad6 ADDS            R1, R7, #2
0x28ad8 ADDS            R0, R6, R0
0x28ada MOVS            R2, #1
0x28adc BL              sub_2BCB8
0x28ae0 MOVS            R0, R5
0x28ae2 ADDS            R1, R7, #3
0x28ae4 ADDS            R0, #0xD3
0x28ae6 B               loc_28B10
0x28ae8 LDR             R2, [SP,#0x48+var_30]
0x28aea CMP             R2, #4
0x28aec BNE             loc_28B1A
0x28aee LDR             R0, [SP,#0x48+var_3C]
0x28af0 MOVS            R1, R7
0x28af2 MOVS            R2, #2
0x28af4 LDR             R4, =unk_140327C
0x28af6 ADDS            R0, #0x50 ; 'P'
0x28af8 BL              sub_2BCB8
0x28afc MOVS            R0, R5
0x28afe ADDS            R0, #0xE2
0x28b00 ADDS            R1, R7, #2
0x28b02 ADDS            R0, R6, R0
0x28b04 MOVS            R2, #1
0x28b06 BL              sub_2BCB8
0x28b0a MOVS            R0, R5
0x28b0c ADDS            R1, R7, #3
0x28b0e ADDS            R0, #0xE7
0x28b10 ADDS            R0, R6, R0
0x28b12 MOVS            R2, #1
0x28b14 BL              sub_2BCB8
0x28b18 ADDS            R7, #4
0x28b1a LDR             R3, [SP,#0x48+var_3C]
0x28b1c ADDS            R6, #1
0x28b1e ADDS            R3, #2
0x28b20 LDR             R2, [SP,#0x48+var_34]
0x28b22 STR             R3, [SP,#0x48+var_3C]
0x28b24 LDRB            R3, [R2]
0x28b26 CMP             R6, R3
0x28b28 BLT             loc_28A44
0x28b2a LDR             R3, [SP,#0x48+var_30]
0x28b2c LDR             R2, [SP,#0x48+var_38]
0x28b2e ADDS            R3, #1
0x28b30 STR             R3, [SP,#0x48+var_30]
0x28b32 ADDS            R2, #1
0x28b34 LDR             R3, [SP,#0x48+var_34]
0x28b36 STR             R2, [SP,#0x48+var_38]
0x28b38 LDR             R2, [SP,#0x48+var_30]
0x28b3a ADDS            R3, #1
0x28b3c STR             R3, [SP,#0x48+var_34]
0x28b3e CMP             R2, #5
0x28b40 BEQ             loc_28B44
0x28b42 B               loc_289CC
0x28b44 LDR             R4, =word_15332A0
0x28b46 MOVS            R6, R4
0x28b48 MOVS            R5, R4
0x28b4a ADDS            R6, #0x31 ; '1'
0x28b4c ADDS            R5, #0x32 ; '2'
0x28b4e LDRB            R2, [R6]
0x28b50 LDRB            R3, [R5]
0x28b52 MOVS            R0, R3
0x28b54 MULS            R0, R2
0x28b56 LDR             R3, =unk_14032EC
0x28b58 ADDS            R0, #2
0x28b5a BL              sub_2BCB6
0x28b5e ADDS            R4, #0xFC
0x28b60 STR             R0, [R4,#(dword_15333DC - 0x153339C)]
0x28b62 STR             R0, [R4,#(dword_15333E0 - 0x153339C)]
0x28b64 LDRB            R3, [R5]
0x28b66 LDRB            R2, [R6]
0x28b68 MOVS            R1, #0
0x28b6a MULS            R2, R3
0x28b6c LDR             R3, =unk_140329C
0x28b6e BL              sub_2BCB6
0x28b72 MOVS            R4, #0
0x28b74 B               loc_28B8C
0x28b76 MOVS            R3, R1
0x28b78 ADDS            R3, #0xFC
0x28b7a LDR             R0, [R3,#(dword_15333E0 - 0x153339C)]
0x28b7c MOVS            R1, R7
0x28b7e ADDS            R0, R4, R0
0x28b80 MOVS            R2, #1
0x28b82 LDR             R3, =unk_140327C
0x28b84 BL              sub_2BCB6
0x28b88 ADDS            R7, #1
0x28b8a ADDS            R4, #1
0x28b8c LDR             R1, =word_15332A0
0x28b8e MOVS            R3, R1
0x28b90 ADDS            R3, #0x31 ; '1'
0x28b92 LDRB            R2, [R3]
0x28b94 ADDS            R3, #1
0x28b96 LDRB            R3, [R3]
0x28b98 MULS            R3, R2
0x28b9a CMP             R4, R3
0x28b9c BLT             loc_28B76
0x28b9e LDR             R3, [SP,#0x48+var_40]
0x28ba0 CMP             R3, #0
0x28ba2 BEQ             loc_28BAC
0x28ba4 MOVS            R0, R3
0x28ba6 LDR             R3, =unk_14032FC
0x28ba8 BL              sub_2BCB6
0x28bac LDR             R0, [SP,#0x48+var_44]
0x28bae LDR             R3, =unk_14032FC
0x28bb0 BL              sub_2BCB6
0x28bb4 ADD             SP, SP, #0x48 ; 'H'
0x28bb6 POP             {R4-R7}
0x28bb8 POP             {R0}
0x28bba BX              R0