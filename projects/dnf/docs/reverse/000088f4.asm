0x88f4 PUSH            {R4-R7,LR}
0x88f6 LDR             R4, =0xFFFFFB8C
0x88f8 LDR             R0, =0x44A
0x88fa ADD             SP, R4
0x88fc MOVS            R5, #0x8D
0x88fe LDR             R3, =sub_8CA1C
0x8900 MOVS            R1, #0
0x8902 MOVS            R2, #0x1E
0x8904 ADD             R0, SP
0x8906 LSLS            R5, R5, #3
0x8908 BL              sub_F0C0
0x890c ADD             R5, SP
0x890e LDR             R4, =unk_140329C
0x8910 MOVS            R1, #0
0x8912 LDR             R2, =0x41C
0x8914 ADD             R0, SP, #0x474+var_448
0x8916 BL              sub_F0C2
0x891a MOVS            R1, #0
0x891c MOVS            R2, #0xC
0x891e MOVS            R0, R5
0x8920 BL              sub_F0C2
0x8924 LDR             R4, =aDnfsmDat; "DnFSm.dat"
0x8926 MOVS            R1, R5
0x8928 MOVS            R0, R4
0x892a MOVS            R2, #1
0x892c LDR             R3, =unk_140350C
0x892e BL              sub_F0C0
0x8932 CMP             R0, #0
0x8934 BEQ             loc_893A
0x8936 BL              sub_9242
0x893a MOVS            R1, #1
0x893c MOVS            R0, R4
0x893e MOVS            R2, #1
0x8940 LDR             R3, =unk_14034CC
0x8942 BL              sub_F0C0
0x8946 MOVS            R2, #0x470
0x894a ADD             R2, SP
0x894c MOVS            R4, R0
0x894e LDR             R0, [R2]
0x8950 LDR             R3, =unk_14032EC
0x8952 ADDS            R0, #2
0x8954 BL              sub_F0C0
0x8958 MOVS            R3, #0x470
0x895c MOVS            R7, R0
0x895e ADD             R3, SP
0x8960 LDR             R2, [R3]
0x8962 MOVS            R0, R4
0x8964 LDR             R3, =unk_14034DC
0x8966 MOVS            R1, R7
0x8968 BL              sub_F0C0
0x896c MOVS            R0, R4
0x896e LDR             R3, =unk_14034FC
0x8970 BL              sub_F0C0
0x8974 CMP             R7, #0
0x8976 BNE             loc_897C
0x8978 BL              sub_9242
0x897c LDR             R0, =aDnfopt; "DnfOpt"
0x897e BL              sub_88E0
0x8982 LDR             R0, =aDnfslot_0; "DnfSlot"
0x8984 BL              sub_88E0
0x8988 LDR             R0, =aDnfhero0; "DnfHero0"
0x898a BL              sub_88E0
0x898e LDR             R0, =aDnfhero1; "DnfHero1"
0x8990 BL              sub_88E0
0x8994 LDR             R0, =aDnfhero2; "DnfHero2"
0x8996 BL              sub_88E0
0x899a LDR             R0, =aDnfhero3; "DnfHero3"
0x899c BL              sub_88E0
0x89a0 LDR             R0, =aDnfquest0; "DnfQuest0"
0x89a2 BL              sub_88E0
0x89a6 LDR             R0, =aDnfquest1; "DnfQuest1"
0x89a8 BL              sub_88E0
0x89ac LDR             R0, =aDnfquest2; "DnfQuest2"
0x89ae BL              sub_88E0
0x89b2 LDR             R0, =aDnfquest3; "DnfQuest3"
0x89b4 BL              sub_88E0
0x89b8 LDR             R0, =aDnfnetEtInfo; "DnfNet_ET_info"
0x89ba BL              sub_88E0
0x89be LDR             R0, =aDnfnetCp; "DnfNet_CP"
0x89c0 BL              sub_88E0
0x89c4 LDR             R0, =aDnfnetRk1; "DnfNet_RK_1"
0x89c6 BL              sub_88E0
0x89ca LDR             R0, =aDnfnetRk2; "DnfNet_RK_2"
0x89cc BL              sub_88E0
0x89d0 LDR             R0, =aDnfnetRk3; "DnfNet_RK_3"
0x89d2 BL              sub_88E0
0x89d6 LDR             R0, =aDnfnetRk4; "DnfNet_RK_4"
0x89d8 BL              sub_88E0
0x89dc LDR             R0, =aDnflocalRk1; "DnfLocal_RK_1"
0x89de BL              sub_88E0
0x89e2 LDR             R0, =aDnflocalRk2; "DnfLocal_RK_2"
0x89e4 BL              sub_88E0
0x89e8 LDR             R0, =aDnflocalRk3; "DnfLocal_RK_3"
0x89ea BL              sub_88E0
0x89ee LDR             R0, =aDnflocalRk4; "DnfLocal_RK_4"
0x89f0 BL              sub_88E0
0x89f4 LDR             R0, =a46000Act; "46000.act"
0x89f6 BL              sub_88E0
0x89fa LDR             R0, =a46000Fra; "46000.fra"
0x89fc BL              sub_88E0
0x8a00 LDR             R0, =a46000Dat; "46000.dat"
0x8a02 BL              sub_88E0
0x8a06 MOVS            R2, #0
0x8a08 STR             R2, [SP,#0x474+var_450]
0x8a0a LDR             R4, =0x44A
0x8a0c ADD             R4, SP
0x8a0e LDR             R6, =unk_140329C
0x8a10 MOVS            R1, #0
0x8a12 MOVS            R2, #0x1E
0x8a14 MOVS            R0, R4
0x8a16 BL              sub_F0C6
0x8a1a LDR             R3, [SP,#0x474+var_450]
0x8a1c LDR             R2, =0xB3B1
0x8a1e ADDS            R2, R3, R2
0x8a20 LDR             R5, =unk_14032CC
0x8a22 STR             R2, [SP,#0x474+var_44C]
0x8a24 LDR             R1, =aDAct; "%d.act"
0x8a26 MOVS            R0, R4
0x8a28 BL              sub_F0C4
0x8a2c MOVS            R0, R4
0x8a2e BL              sub_88E0
0x8a32 MOVS            R1, #0
0x8a34 MOVS            R2, #0x1E
0x8a36 MOVS            R0, R4
0x8a38 BL              sub_F0C6
0x8a3c LDR             R1, =aDFra; "%d.fra"
0x8a3e LDR             R2, [SP,#0x474+var_44C]
0x8a40 MOVS            R0, R4
0x8a42 BL              sub_F0C4
0x8a46 MOVS            R0, R4
0x8a48 BL              sub_88E0
0x8a4c MOVS            R1, #0
0x8a4e MOVS            R2, #0x1E
0x8a50 MOVS            R0, R4
0x8a52 BL              sub_F0C6
0x8a56 LDR             R1, =aDDat; "%d.dat"
0x8a58 LDR             R2, [SP,#0x474+var_44C]
0x8a5a MOVS            R0, R4
0x8a5c BL              sub_F0C4
0x8a60 MOVS            R0, R4
0x8a62 BL              sub_88E0
0x8a66 MOVS            R1, #0
0x8a68 MOVS            R2, #0x1E
0x8a6a MOVS            R0, R4
0x8a6c BL              sub_F0C6
0x8a70 LDR             R1, =aDDg; "%d.dg"
0x8a72 LDR             R2, [SP,#0x474+var_44C]
0x8a74 MOVS            R0, R4
0x8a76 BL              sub_F0C4
0x8a7a MOVS            R0, R4
0x8a7c BL              sub_88E0
0x8a80 LDR             R3, [SP,#0x474+var_450]
0x8a82 ADDS            R3, #1
0x8a84 STR             R3, [SP,#0x474+var_450]
0x8a86 CMP             R3, #0x3C ; '<'
0x8a88 BNE             loc_8A0A
0x8a8a LDR             R4, =unk_140327C
0x8a8c MOVS            R1, R7
0x8a8e MOVS            R2, #4
0x8a90 ADD             R0, SP, #0x474+var_448
0x8a92 BL              sub_F0C2
0x8a96 ADDS            R1, R7, #4
0x8a98 MOVS            R2, #4
0x8a9a ADD             R0, SP, #0x474+var_444
0x8a9c BL              sub_F0C2
0x8aa0 MOVS            R1, R7
0x8aa2 ADDS            R1, #8
0x8aa4 MOVS            R2, #4
0x8aa6 ADD             R0, SP, #0x474+var_440
0x8aa8 BL              sub_F0C2
0x8aac MOVS            R1, R7
0x8aae ADDS            R1, #0xC
0x8ab0 MOVS            R2, #4
0x8ab2 ADD             R0, SP, #0x474+var_43C
0x8ab4 BL              sub_F0C2
0x8ab8 MOVS            R1, R7
0x8aba ADDS            R1, #0x10
0x8abc MOVS            R2, #4
0x8abe ADD             R0, SP, #0x474+var_438
0x8ac0 BL              sub_F0C2
0x8ac4 MOVS            R1, R7
0x8ac6 ADDS            R1, #0x14
0x8ac8 MOVS            R2, #4
0x8aca ADD             R0, SP, #0x474+var_434
0x8acc BL              sub_F0C2
0x8ad0 MOVS            R1, R7
0x8ad2 ADDS            R1, #0x18
0x8ad4 MOVS            R2, #4
0x8ad6 ADD             R0, SP, #0x474+var_430
0x8ad8 BL              sub_F0C2
0x8adc MOVS            R1, R7
0x8ade ADDS            R1, #0x1C
0x8ae0 MOVS            R2, #4
0x8ae2 ADD             R0, SP, #0x474+var_42C
0x8ae4 BL              sub_F0C2
0x8ae8 MOVS            R1, R7
0x8aea ADDS            R1, #0x20 ; ' '
0x8aec MOVS            R2, #4
0x8aee ADD             R0, SP, #0x474+var_428
0x8af0 BL              sub_F0C2
0x8af4 MOVS            R1, R7
0x8af6 ADDS            R1, #0x24 ; '$'
0x8af8 MOVS            R2, #4
0x8afa ADD             R0, SP, #0x474+var_424
0x8afc BL              sub_F0C2
0x8b00 MOVS            R1, R7
0x8b02 ADDS            R1, #0x28 ; '('
0x8b04 MOVS            R2, #4
0x8b06 ADD             R0, SP, #0x474+var_420
0x8b08 BL              sub_F0C2
0x8b0c MOVS            R1, R7
0x8b0e ADDS            R1, #0x2C ; ','
0x8b10 MOVS            R2, #4
0x8b12 ADD             R0, SP, #0x474+var_41C
0x8b14 BL              sub_F0C2
0x8b18 MOVS            R1, R7
0x8b1a ADDS            R1, #0x30 ; '0'
0x8b1c MOVS            R2, #4
0x8b1e ADD             R0, SP, #0x474+var_418
0x8b20 BL              sub_F0C2
0x8b24 MOVS            R1, R7
0x8b26 ADDS            R1, #0x34 ; '4'
0x8b28 MOVS            R2, #4
0x8b2a ADD             R0, SP, #0x474+var_414
0x8b2c BL              sub_F0C2
0x8b30 MOVS            R1, R7
0x8b32 ADDS            R1, #0x38 ; '8'
0x8b34 MOVS            R2, #4
0x8b36 ADD             R0, SP, #0x474+var_410
0x8b38 BL              sub_F0C2
0x8b3c MOVS            R1, R7
0x8b3e ADDS            R1, #0x3C ; '<'
0x8b40 MOVS            R2, #4
0x8b42 ADD             R0, SP, #0x474+var_40C
0x8b44 BL              sub_F0C2
0x8b48 MOVS            R1, R7
0x8b4a ADDS            R1, #0x40 ; '@'
0x8b4c MOVS            R2, #4
0x8b4e ADD             R0, SP, #0x474+var_408
0x8b50 BL              sub_F0C2
0x8b54 MOVS            R1, R7
0x8b56 ADDS            R1, #0x44 ; 'D'
0x8b58 MOVS            R2, #4
0x8b5a ADD             R0, SP, #0x474+var_404
0x8b5c BL              sub_F0C2
0x8b60 MOVS            R1, R7
0x8b62 ADDS            R1, #0x48 ; 'H'
0x8b64 MOVS            R2, #4
0x8b66 ADD             R0, SP, #0x474+var_400
0x8b68 BL              sub_F0C2
0x8b6c MOVS            R1, R7
0x8b6e ADDS            R1, #0x4C ; 'L'
0x8b70 MOVS            R2, #4
0x8b72 ADD             R0, SP, #0x474+var_3FC
0x8b74 BL              sub_F0C2
0x8b78 MOVS            R1, R7
0x8b7a ADDS            R1, #0x50 ; 'P'
0x8b7c MOVS            R2, #4
0x8b7e ADD             R0, SP, #0x474+var_3F8
0x8b80 BL              sub_F0C2
0x8b84 MOVS            R1, R7
0x8b86 ADDS            R1, #0x54 ; 'T'
0x8b88 MOVS            R2, #4
0x8b8a ADD             R0, SP, #0x474+var_3F4
0x8b8c BL              sub_F0C2
0x8b90 MOVS            R1, R7
0x8b92 ADDS            R1, #0x58 ; 'X'
0x8b94 ADD             R0, SP, #0x474+var_3F0
0x8b96 MOVS            R2, #4
0x8b98 BL              sub_F0C2
0x8b9c MOVS            R5, R7
0x8b9e ADDS            R5, #0x5C ; '\'
0x8ba0 ADD             R6, SP, #0x474+var_3EC
0x8ba2 LDR             R4, =unk_140327C
0x8ba4 MOVS            R1, R5
0x8ba6 MOVS            R0, R6
0x8ba8 MOVS            R2, #4
0x8baa BL              sub_F0C2
0x8bae MOVS            R0, R6
0x8bb0 ADDS            R1, R5, #4
0x8bb2 MOVS            R2, #4
0x8bb4 ADDS            R0, #0xF0
0x8bb6 BL              sub_F0C2
0x8bba MOVS            R2, #0x1E0
0x8bbe MOVS            R1, R5
0x8bc0 ADDS            R0, R6, R2
0x8bc2 ADDS            R1, #8
0x8bc4 MOVS            R2, #4
0x8bc6 BL              sub_F0C2
0x8bca MOVS            R3, #0x2D0
0x8bce MOVS            R1, R5
0x8bd0 ADDS            R0, R6, R3
0x8bd2 ADDS            R1, #0xC
0x8bd4 MOVS            R2, #4
0x8bd6 BL              sub_F0C2
0x8bda ADDS            R6, #4
0x8bdc ADD             R3, SP, #0x474+var_2FC
0x8bde ADDS            R5, #0x10
0x8be0 CMP             R6, R3
0x8be2 BNE             loc_8BA2
0x8be4 LDR             R3, [SP,#0x474+var_448]
0x8be6 CMP             R3, #0
0x8be8 BNE             loc_8C94
0x8bea LDR             R6, =0x41C
0x8bec B               loc_8CBC
0x8c94 MOVS            R1, #8
0x8c96 MOVS            R2, #1
0x8c98 LDR             R3, =unk_14034CC
0x8c9a LDR             R0, =aDnfopt; "DnfOpt"
0x8c9c BL              sub_F0C0
0x8ca0 LDR             R2, =0x41C
0x8ca2 MOVS            R4, R0
0x8ca4 ADDS            R1, R7, R2
0x8ca6 LDR             R3, =unk_14034EC
0x8ca8 LDR             R2, [SP,#0x474+var_448]
0x8caa BL              sub_F0C0
0x8cae LDR             R3, =unk_14034FC
0x8cb0 MOVS            R0, R4
0x8cb2 BL              sub_F0C0
0x8cb6 LDR             R3, [SP,#0x474+var_448]
0x8cb8 LDR             R2, =0x41C
0x8cba ADDS            R6, R3, R2
0x8cbc LDR             R3, [SP,#0x474+var_444]
0x8cbe CMP             R3, #0
0x8cc0 BEQ             loc_8CE6
0x8cc2 MOVS            R1, #8
0x8cc4 MOVS            R2, #1
0x8cc6 LDR             R3, =unk_14034CC
0x8cc8 LDR             R0, =aDnfslot_0; "DnfSlot"
0x8cca BL              sub_F0C0
0x8cce ADDS            R1, R7, R6
0x8cd0 MOVS            R4, R0
0x8cd2 LDR             R2, [SP,#0x474+var_444]
0x8cd4 LDR             R3, =unk_14034EC
0x8cd6 BL              sub_F0C0
0x8cda LDR             R3, =unk_14034FC
0x8cdc MOVS            R0, R4
0x8cde BL              sub_F0C0
0x8ce2 LDR             R3, [SP,#0x474+var_444]
0x8ce4 ADDS            R6, R6, R3
0x8ce6 LDR             R3, [SP,#0x474+var_440]
0x8ce8 CMP             R3, #0
0x8cea BEQ             loc_8D10
0x8cec MOVS            R1, #8
0x8cee MOVS            R2, #1
0x8cf0 LDR             R3, =unk_14034CC
0x8cf2 LDR             R0, =aDnfhero0; "DnfHero0"
0x8cf4 BL              sub_F0C0
0x8cf8 ADDS            R1, R7, R6
0x8cfa MOVS            R4, R0
0x8cfc LDR             R2, [SP,#0x474+var_440]
0x8cfe LDR             R3, =unk_14034EC
0x8d00 BL              sub_F0C0
0x8d04 LDR             R3, =unk_14034FC
0x8d06 MOVS            R0, R4
0x8d08 BL              sub_F0C0
0x8d0c LDR             R3, [SP,#0x474+var_440]
0x8d0e ADDS            R6, R6, R3
0x8d10 LDR             R3, [SP,#0x474+var_43C]
0x8d12 CMP             R3, #0
0x8d14 BEQ             loc_8D3A
0x8d16 MOVS            R1, #8
0x8d18 MOVS            R2, #1
0x8d1a LDR             R3, =unk_14034CC
0x8d1c LDR             R0, =aDnfhero1; "DnfHero1"
0x8d1e BL              sub_F0C0
0x8d22 ADDS            R1, R7, R6
0x8d24 MOVS            R4, R0
0x8d26 LDR             R2, [SP,#0x474+var_43C]
0x8d28 LDR             R3, =unk_14034EC
0x8d2a BL              sub_F0C0
0x8d2e LDR             R3, =unk_14034FC
0x8d30 MOVS            R0, R4
0x8d32 BL              sub_F0C0
0x8d36 LDR             R3, [SP,#0x474+var_43C]
0x8d38 ADDS            R6, R6, R3
0x8d3a LDR             R3, [SP,#0x474+var_438]
0x8d3c CMP             R3, #0
0x8d3e BEQ             loc_8D64
0x8d40 MOVS            R1, #8
0x8d42 MOVS            R2, #1
0x8d44 LDR             R3, =unk_14034CC
0x8d46 LDR             R0, =aDnfhero2; "DnfHero2"
0x8d48 BL              sub_F0C0
0x8d4c ADDS            R1, R7, R6
0x8d4e MOVS            R4, R0
0x8d50 LDR             R2, [SP,#0x474+var_438]
0x8d52 LDR             R3, =unk_14034EC
0x8d54 BL              sub_F0C0
0x8d58 LDR             R3, =unk_14034FC
0x8d5a MOVS            R0, R4
0x8d5c BL              sub_F0C0
0x8d60 LDR             R3, [SP,#0x474+var_438]
0x8d62 ADDS            R6, R6, R3
0x8d64 LDR             R3, [SP,#0x474+var_434]
0x8d66 CMP             R3, #0
0x8d68 BEQ             loc_8D8E
0x8d6a MOVS            R1, #8
0x8d6c MOVS            R2, #1
0x8d6e LDR             R3, =unk_14034CC
0x8d70 LDR             R0, =aDnfhero3; "DnfHero3"
0x8d72 BL              sub_F0C0
0x8d76 ADDS            R1, R7, R6
0x8d78 MOVS            R4, R0
0x8d7a LDR             R2, [SP,#0x474+var_434]
0x8d7c LDR             R3, =unk_14034EC
0x8d7e BL              sub_F0C0
0x8d82 LDR             R3, =unk_14034FC
0x8d84 MOVS            R0, R4
0x8d86 BL              sub_F0C0
0x8d8a LDR             R3, [SP,#0x474+var_434]
0x8d8c ADDS            R6, R6, R3
0x8d8e LDR             R3, [SP,#0x474+var_430]
0x8d90 CMP             R3, #0
0x8d92 BEQ             loc_8DB8
0x8d94 MOVS            R1, #8
0x8d96 MOVS            R2, #1
0x8d98 LDR             R3, =unk_14034CC
0x8d9a LDR             R0, =aDnfquest0; "DnfQuest0"
0x8d9c BL              sub_F0C0
0x8da0 ADDS            R1, R7, R6
0x8da2 MOVS            R4, R0
0x8da4 LDR             R2, [SP,#0x474+var_430]
0x8da6 LDR             R3, =unk_14034EC
0x8da8 BL              sub_F0C0
0x8dac LDR             R3, =unk_14034FC
0x8dae MOVS            R0, R4
0x8db0 BL              sub_F0C0
0x8db4 LDR             R3, [SP,#0x474+var_430]
0x8db6 ADDS            R6, R6, R3
0x8db8 LDR             R3, [SP,#0x474+var_42C]
0x8dba CMP             R3, #0
0x8dbc BEQ             loc_8DE2
0x8dbe MOVS            R1, #8
0x8dc0 MOVS            R2, #1
0x8dc2 LDR             R3, =unk_14034CC
0x8dc4 LDR             R0, =aDnfquest1; "DnfQuest1"
0x8dc6 BL              sub_F0C0
0x8dca ADDS            R1, R7, R6
0x8dcc MOVS            R4, R0
0x8dce LDR             R2, [SP,#0x474+var_42C]
0x8dd0 LDR             R3, =unk_14034EC
0x8dd2 BL              sub_F0C0
0x8dd6 LDR             R3, =unk_14034FC
0x8dd8 MOVS            R0, R4
0x8dda BL              sub_F0C0
0x8dde LDR             R3, [SP,#0x474+var_42C]
0x8de0 ADDS            R6, R6, R3
0x8de2 LDR             R3, [SP,#0x474+var_428]
0x8de4 CMP             R3, #0
0x8de6 BEQ             loc_8E0C
0x8de8 MOVS            R1, #8
0x8dea MOVS            R2, #1
0x8dec LDR             R3, =unk_14034CC
0x8dee LDR             R0, =aDnfquest2; "DnfQuest2"
0x8df0 BL              sub_F0C0
0x8df4 ADDS            R1, R7, R6
0x8df6 MOVS            R4, R0
0x8df8 LDR             R2, [SP,#0x474+var_428]
0x8dfa LDR             R3, =unk_14034EC
0x8dfc BL              sub_F0C0
0x8e00 LDR             R3, =unk_14034FC
0x8e02 MOVS            R0, R4
0x8e04 BL              sub_F0C0
0x8e08 LDR             R3, [SP,#0x474+var_428]
0x8e0a ADDS            R6, R6, R3
0x8e0c LDR             R3, [SP,#0x474+var_424]
0x8e0e CMP             R3, #0
0x8e10 BEQ             loc_8E36
0x8e12 MOVS            R1, #8
0x8e14 MOVS            R2, #1
0x8e16 LDR             R3, =unk_14034CC
0x8e18 LDR             R0, =aDnfquest3; "DnfQuest3"
0x8e1a BL              sub_F0C0
0x8e1e ADDS            R1, R7, R6
0x8e20 MOVS            R4, R0
0x8e22 LDR             R2, [SP,#0x474+var_424]
0x8e24 LDR             R3, =unk_14034EC
0x8e26 BL              sub_F0C0
0x8e2a LDR             R3, =unk_14034FC
0x8e2c MOVS            R0, R4
0x8e2e BL              sub_F0C0
0x8e32 LDR             R3, [SP,#0x474+var_424]
0x8e34 ADDS            R6, R6, R3
0x8e36 LDR             R3, [SP,#0x474+var_420]
0x8e38 CMP             R3, #0
0x8e3a BEQ             loc_8E60
0x8e3c MOVS            R1, #8
0x8e3e MOVS            R2, #1
0x8e40 LDR             R3, =unk_14034CC
0x8e42 LDR             R0, =aDnfnetEtInfo; "DnfNet_ET_info"
0x8e44 BL              sub_F0C0
0x8e48 ADDS            R1, R7, R6
0x8e4a MOVS            R4, R0
0x8e4c LDR             R2, [SP,#0x474+var_420]
0x8e4e LDR             R3, =unk_14034EC
0x8e50 BL              sub_F0C0
0x8e54 LDR             R3, =unk_14034FC
0x8e56 MOVS            R0, R4
0x8e58 BL              sub_F0C0
0x8e5c LDR             R3, [SP,#0x474+var_420]
0x8e5e ADDS            R6, R6, R3
0x8e60 LDR             R3, [SP,#0x474+var_41C]
0x8e62 CMP             R3, #0
0x8e64 BEQ             loc_8E8A
0x8e66 MOVS            R1, #8
0x8e68 MOVS            R2, #1
0x8e6a LDR             R3, =unk_14034CC
0x8e6c LDR             R0, =aDnfnetCp; "DnfNet_CP"
0x8e6e BL              sub_F0C0
0x8e72 ADDS            R1, R7, R6
0x8e74 MOVS            R4, R0
0x8e76 LDR             R2, [SP,#0x474+var_41C]
0x8e78 LDR             R3, =unk_14034EC
0x8e7a BL              sub_F0C0
0x8e7e LDR             R3, =unk_14034FC
0x8e80 MOVS            R0, R4
0x8e82 BL              sub_F0C0
0x8e86 LDR             R3, [SP,#0x474+var_41C]
0x8e88 ADDS            R6, R6, R3
0x8e8a LDR             R3, [SP,#0x474+var_418]
0x8e8c CMP             R3, #0
0x8e8e BEQ             loc_8EB4
0x8e90 MOVS            R1, #8
0x8e92 MOVS            R2, #1
0x8e94 LDR             R3, =unk_14034CC
0x8e96 LDR             R0, =aDnfnetRk1; "DnfNet_RK_1"
0x8e98 BL              sub_F0C0
0x8e9c ADDS            R1, R7, R6
0x8e9e MOVS            R4, R0
0x8ea0 LDR             R2, [SP,#0x474+var_418]
0x8ea2 LDR             R3, =unk_14034EC
0x8ea4 BL              sub_F0C0
0x8ea8 LDR             R3, =unk_14034FC
0x8eaa MOVS            R0, R4
0x8eac BL              sub_F0C0
0x8eb0 LDR             R3, [SP,#0x474+var_418]
0x8eb2 ADDS            R6, R6, R3
0x8eb4 LDR             R3, [SP,#0x474+var_414]
0x8eb6 CMP             R3, #0
0x8eb8 BEQ             loc_8EDE
0x8eba MOVS            R1, #8
0x8ebc MOVS            R2, #1
0x8ebe LDR             R3, =unk_14034CC
0x8ec0 LDR             R0, =aDnfnetRk2; "DnfNet_RK_2"
0x8ec2 BL              sub_F0C0
0x8ec6 ADDS            R1, R7, R6
0x8ec8 MOVS            R4, R0
0x8eca LDR             R2, [SP,#0x474+var_414]
0x8ecc LDR             R3, =unk_14034EC
0x8ece BL              sub_F0C0
0x8ed2 LDR             R3, =unk_14034FC
0x8ed4 MOVS            R0, R4
0x8ed6 BL              sub_F0C0
0x8eda LDR             R3, [SP,#0x474+var_414]
0x8edc ADDS            R6, R6, R3
0x8ede LDR             R3, [SP,#0x474+var_410]
0x8ee0 CMP             R3, #0
0x8ee2 BEQ             loc_8F08
0x8ee4 MOVS            R1, #8
0x8ee6 MOVS            R2, #1
0x8ee8 LDR             R3, =unk_14034CC
0x8eea LDR             R0, =aDnfnetRk3; "DnfNet_RK_3"
0x8eec BL              sub_F0C0
0x8ef0 ADDS            R1, R7, R6
0x8ef2 MOVS            R4, R0
0x8ef4 LDR             R2, [SP,#0x474+var_410]
0x8ef6 LDR             R3, =unk_14034EC
0x8ef8 BL              sub_F0C0
0x8efc LDR             R3, =unk_14034FC
0x8efe MOVS            R0, R4
0x8f00 BL              sub_F0C0
0x8f04 LDR             R3, [SP,#0x474+var_410]
0x8f06 ADDS            R6, R6, R3
0x8f08 LDR             R3, [SP,#0x474+var_40C]
0x8f0a CMP             R3, #0
0x8f0c BEQ             loc_8F32
0x8f0e MOVS            R1, #8
0x8f10 MOVS            R2, #1
0x8f12 LDR             R3, =unk_14034CC
0x8f14 LDR             R0, =aDnfnetRk4; "DnfNet_RK_4"
0x8f16 BL              sub_F0C0
0x8f1a ADDS            R1, R7, R6
0x8f1c MOVS            R4, R0
0x8f1e LDR             R2, [SP,#0x474+var_40C]
0x8f20 LDR             R3, =unk_14034EC
0x8f22 BL              sub_F0C0
0x8f26 LDR             R3, =unk_14034FC
0x8f28 MOVS            R0, R4
0x8f2a BL              sub_F0C0
0x8f2e LDR             R3, [SP,#0x474+var_40C]
0x8f30 ADDS            R6, R6, R3
0x8f32 LDR             R3, [SP,#0x474+var_408]
0x8f34 CMP             R3, #0
0x8f36 BEQ             loc_8F5C
0x8f38 MOVS            R1, #8
0x8f3a MOVS            R2, #1
0x8f3c LDR             R3, =unk_14034CC
0x8f3e LDR             R0, =aDnflocalRk1; "DnfLocal_RK_1"
0x8f40 BL              sub_F0C0
0x8f44 ADDS            R1, R7, R6
0x8f46 MOVS            R4, R0
0x8f48 LDR             R2, [SP,#0x474+var_408]
0x8f4a LDR             R3, =unk_14034EC
0x8f4c BL              sub_F0C0
0x8f50 LDR             R3, =unk_14034FC
0x8f52 MOVS            R0, R4
0x8f54 BL              sub_F0C0
0x8f58 LDR             R3, [SP,#0x474+var_408]
0x8f5a ADDS            R6, R6, R3
0x8f5c LDR             R3, [SP,#0x474+var_404]
0x8f5e CMP             R3, #0
0x8f60 BEQ             loc_8F86
0x8f62 MOVS            R1, #8
0x8f64 MOVS            R2, #1
0x8f66 LDR             R3, =unk_14034CC
0x8f68 LDR             R0, =aDnflocalRk2; "DnfLocal_RK_2"
0x8f6a BL              sub_F0C0
0x8f6e ADDS            R1, R7, R6
0x8f70 MOVS            R4, R0
0x8f72 LDR             R2, [SP,#0x474+var_404]
0x8f74 LDR             R3, =unk_14034EC
0x8f76 BL              sub_F0C0
0x8f7a LDR             R3, =unk_14034FC
0x8f7c MOVS            R0, R4
0x8f7e BL              sub_F0C0
0x8f82 LDR             R3, [SP,#0x474+var_404]
0x8f84 ADDS            R6, R6, R3
0x8f86 LDR             R3, [SP,#0x474+var_400]
0x8f88 CMP             R3, #0
0x8f8a BEQ             loc_8FB0
0x8f8c MOVS            R1, #8
0x8f8e MOVS            R2, #1
0x8f90 LDR             R3, =unk_14034CC
0x8f92 LDR             R0, =aDnflocalRk3; "DnfLocal_RK_3"
0x8f94 BL              sub_F0C0
0x8f98 ADDS            R1, R7, R6
0x8f9a MOVS            R4, R0
0x8f9c LDR             R2, [SP,#0x474+var_400]
0x8f9e LDR             R3, =unk_14034EC
0x8fa0 BL              sub_F0C0
0x8fa4 LDR             R3, =unk_14034FC
0x8fa6 MOVS            R0, R4
0x8fa8 BL              sub_F0C0
0x8fac LDR             R3, [SP,#0x474+var_400]
0x8fae ADDS            R6, R6, R3
0x8fb0 LDR             R3, [SP,#0x474+var_3FC]
0x8fb2 CMP             R3, #0
0x8fb4 BEQ             loc_8FDA
0x8fb6 MOVS            R1, #8
0x8fb8 MOVS            R2, #1
0x8fba LDR             R3, =unk_14034CC
0x8fbc LDR             R0, =aDnflocalRk4; "DnfLocal_RK_4"
0x8fbe BL              sub_F0C0
0x8fc2 ADDS            R1, R7, R6
0x8fc4 MOVS            R4, R0
0x8fc6 LDR             R2, [SP,#0x474+var_3FC]
0x8fc8 LDR             R3, =unk_14034EC
0x8fca BL              sub_F0C0
0x8fce LDR             R3, =unk_14034FC
0x8fd0 MOVS            R0, R4
0x8fd2 BL              sub_F0C0
0x8fd6 LDR             R3, [SP,#0x474+var_3FC]
0x8fd8 ADDS            R6, R6, R3
0x8fda LDR             R3, [SP,#0x474+var_3F8]
0x8fdc CMP             R3, #0
0x8fde BEQ             loc_9004
0x8fe0 MOVS            R1, #8
0x8fe2 MOVS            R2, #1
0x8fe4 LDR             R3, =unk_14034CC
0x8fe6 LDR             R0, =a46000Act; "46000.act"
0x8fe8 BL              sub_F0C0
0x8fec ADDS            R1, R7, R6
0x8fee MOVS            R4, R0
0x8ff0 LDR             R2, [SP,#0x474+var_3F8]
0x8ff2 LDR             R3, =unk_14034EC
0x8ff4 BL              sub_F0C0
0x8ff8 LDR             R3, =unk_14034FC
0x8ffa MOVS            R0, R4
0x8ffc BL              sub_F0C0
0x9000 LDR             R3, [SP,#0x474+var_3F8]
0x9002 ADDS            R6, R6, R3
0x9004 LDR             R3, [SP,#0x474+var_3F4]
0x9006 CMP             R3, #0
0x9008 BEQ             loc_9098
0x900a MOVS            R1, #8
0x900c MOVS            R2, #1
0x900e LDR             R3, =unk_14034CC
0x9010 LDR             R0, =a46000Fra; "46000.fra"
0x9012 BL              sub_F0C0
0x9016 ADDS            R1, R7, R6
0x9018 MOVS            R4, R0
0x901a LDR             R2, [SP,#0x474+var_3F4]
0x901c LDR             R3, =unk_14034EC
0x901e BL              sub_F0C0
0x9022 LDR             R3, =unk_14034FC
0x9024 MOVS            R0, R4
0x9026 BL              sub_F0C0
0x902a LDR             R3, [SP,#0x474+var_3F4]
0x902c ADDS            R6, R6, R3
0x902e B               loc_9098
0x9098 LDR             R3, [SP,#0x474+var_3F0]
0x909a CMP             R3, #0
0x909c BEQ             loc_90C2
0x909e MOVS            R1, #8
0x90a0 MOVS            R2, #1
0x90a2 LDR             R3, =unk_14034CC
0x90a4 LDR             R0, =a46000Dat; "46000.dat"
0x90a6 BL              sub_F0C0
0x90aa ADDS            R1, R7, R6
0x90ac MOVS            R4, R0
0x90ae LDR             R2, [SP,#0x474+var_3F0]
0x90b0 LDR             R3, =unk_14034EC
0x90b2 BL              sub_F0C0
0x90b6 LDR             R3, =unk_14034FC
0x90b8 MOVS            R0, R4
0x90ba BL              sub_F0C0
0x90be LDR             R3, [SP,#0x474+var_3F0]
0x90c0 ADDS            R6, R6, R3
0x90c2 MOVS            R3, #0
0x90c4 STR             R3, [SP,#0x474+var_45C]
0x90c6 MOVS            R3, #0xD6
0x90c8 MOV             R2, SP
0x90ca LSLS            R3, R3, #2
0x90cc ADDS            R2, #0x88
0x90ce ADD             R3, SP
0x90d0 STR             R2, [SP,#0x474+var_458]
0x90d2 STR             R3, [SP,#0x474+var_454]
0x90d4 LDR             R3, =unk_140329C
0x90d6 LDR             R0, =0x44A
0x90d8 MOVS            R1, #0
0x90da MOVS            R2, #0x1E
0x90dc STR             R3, [SP,#0x474+var_464]
0x90de ADD             R0, SP
0x90e0 BL              sub_F0C0
0x90e4 LDR             R2, [SP,#0x474+var_45C]
0x90e6 LDR             R3, =0xB3B1
0x90e8 ADDS            R3, R2, R3
0x90ea MOVS            R2, R3
0x90ec STR             R3, [SP,#0x474+var_460]
0x90ee LDR             R0, =0x44A
0x90f0 LDR             R3, =unk_14032CC
0x90f2 LDR             R1, =aDAct; "%d.act"
0x90f4 STR             R3, [SP,#0x474+var_468]
0x90f6 ADD             R0, SP
0x90f8 BL              sub_F0C0
0x90fc LDR             R2, [SP,#0x474+var_458]
0x90fe LDR             R3, [R2]
0x9100 CMP             R3, #0
0x9102 BNE             loc_9106
0x9104 B               loc_9220
0x9106 LDR             R3, =unk_14034CC
0x9108 LDR             R0, =0x44A
0x910a MOVS            R1, #8
0x910c MOVS            R2, #1
0x910e STR             R3, [SP,#0x474+var_46C]
0x9110 ADD             R0, SP
0x9112 BL              sub_F0C0
0x9116 LDR             R3, [SP,#0x474+var_458]
0x9118 LDR             R2, [R3]
0x911a LDR             R3, =unk_14034EC
0x911c ADDS            R1, R7, R6
0x911e STR             R3, [SP,#0x474+var_470]
0x9120 MOVS            R4, R0
0x9122 BL              sub_F0C0
0x9126 LDR             R2, =unk_14034FC
0x9128 MOVS            R0, R4
0x912a STR             R2, [SP,#0x474+var_474]
0x912c BL              sub_F0BE
0x9130 LDR             R2, [SP,#0x474+var_458]
0x9132 LDR             R0, =0x44A
0x9134 LDR             R3, [R2]
0x9136 MOVS            R1, #0
0x9138 MOVS            R2, #0x1E
0x913a ADDS            R6, R6, R3
0x913c ADD             R0, SP
0x913e LDR             R3, [SP,#0x474+var_464]
0x9140 BL              sub_F0C0
0x9144 LDR             R0, =0x44A
0x9146 LDR             R3, [SP,#0x474+var_468]
0x9148 LDR             R1, =aDFra; "%d.fra"
0x914a ADD             R0, SP
0x914c LDR             R2, [SP,#0x474+var_460]
0x914e BL              sub_F0C0
0x9152 LDR             R5, [SP,#0x474+var_458]
0x9154 ADDS            R5, #0xF0
0x9156 LDR             R3, [R5]
0x9158 CMP             R3, #0
0x915a BEQ             loc_9182
0x915c LDR             R0, =0x44A
0x915e MOVS            R1, #8
0x9160 MOVS            R2, #1
0x9162 LDR             R3, [SP,#0x474+var_46C]
0x9164 ADD             R0, SP
0x9166 BL              sub_F0C0
0x916a ADDS            R1, R7, R6
0x916c LDR             R3, [SP,#0x474+var_470]
0x916e MOVS            R4, R0
0x9170 LDR             R2, [R5]
0x9172 BL              sub_F0C0
0x9176 MOVS            R0, R4
0x9178 LDR             R2, [SP,#0x474+var_474]
0x917a BL              sub_F0BE
0x917e LDR             R3, [R5]
0x9180 ADDS            R6, R6, R3
0x9182 LDR             R0, =0x44A
0x9184 MOVS            R1, #0
0x9186 MOVS            R2, #0x1E
0x9188 LDR             R3, [SP,#0x474+var_464]
0x918a ADD             R0, SP
0x918c BL              sub_F0C0
0x9190 LDR             R0, =0x44A
0x9192 LDR             R2, [SP,#0x474+var_460]
0x9194 LDR             R3, [SP,#0x474+var_468]
0x9196 LDR             R1, =aDDat; "%d.dat"
0x9198 ADD             R0, SP
0x919a BL              sub_F0C0
0x919e LDR             R2, [SP,#0x474+var_458]
0x91a0 MOVS            R3, #0x1E0
0x91a4 ADDS            R5, R2, R3
0x91a6 LDR             R3, [R5]
0x91a8 CMP             R3, #0
0x91aa BEQ             loc_91D2
0x91ac LDR             R0, =0x44A
0x91ae MOVS            R1, #8
0x91b0 MOVS            R2, #1
0x91b2 LDR             R3, [SP,#0x474+var_46C]
0x91b4 ADD             R0, SP
0x91b6 BL              sub_F0C0
0x91ba ADDS            R1, R7, R6
0x91bc LDR             R3, [SP,#0x474+var_470]
0x91be MOVS            R4, R0
0x91c0 LDR             R2, [R5]
0x91c2 BL              sub_F0C0
0x91c6 MOVS            R0, R4
0x91c8 LDR             R2, [SP,#0x474+var_474]
0x91ca BL              sub_F0BE
0x91ce LDR             R3, [R5]
0x91d0 ADDS            R6, R6, R3
0x91d2 LDR             R0, =0x44A
0x91d4 MOVS            R1, #0
0x91d6 MOVS            R2, #0x1E
0x91d8 LDR             R3, [SP,#0x474+var_464]
0x91da ADD             R0, SP
0x91dc BL              sub_F0C0
0x91e0 LDR             R0, =0x44A
0x91e2 LDR             R2, [SP,#0x474+var_460]
0x91e4 LDR             R3, [SP,#0x474+var_468]
0x91e6 LDR             R1, =aDDg; "%d.dg"
0x91e8 ADD             R0, SP
0x91ea BL              sub_F0C0
0x91ee LDR             R2, [SP,#0x474+var_454]
0x91f0 LDR             R3, [R2]
0x91f2 CMP             R3, #0
0x91f4 BEQ             loc_9220
0x91f6 LDR             R0, =0x44A
0x91f8 MOVS            R1, #8
0x91fa MOVS            R2, #1
0x91fc LDR             R3, [SP,#0x474+var_46C]
0x91fe ADD             R0, SP
0x9200 BL              sub_F0C0
0x9204 LDR             R3, [SP,#0x474+var_454]
0x9206 ADDS            R1, R7, R6
0x9208 LDR             R2, [R3]
0x920a MOVS            R4, R0
0x920c LDR             R3, [SP,#0x474+var_470]
0x920e BL              sub_F0C0
0x9212 LDR             R2, [SP,#0x474+var_474]
0x9214 MOVS            R0, R4
0x9216 BL              sub_F0BE
0x921a LDR             R2, [SP,#0x474+var_454]
0x921c LDR             R3, [R2]
0x921e ADDS            R6, R6, R3
0x9220 LDR             R3, [SP,#0x474+var_45C]
0x9222 LDR             R2, [SP,#0x474+var_458]
0x9224 ADDS            R3, #1
0x9226 STR             R3, [SP,#0x474+var_45C]
0x9228 ADDS            R2, #4
0x922a LDR             R3, [SP,#0x474+var_454]
0x922c STR             R2, [SP,#0x474+var_458]
0x922e LDR             R2, [SP,#0x474+var_45C]
0x9230 ADDS            R3, #4
0x9232 STR             R3, [SP,#0x474+var_454]
0x9234 CMP             R2, #0x3C ; '<'
0x9236 BEQ             loc_923A
0x9238 B               loc_90D4
0x923a MOVS            R0, R7
0x923c LDR             R3, =unk_14032FC
0x923e BL              sub_F0C0