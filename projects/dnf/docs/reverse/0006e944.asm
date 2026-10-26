0x6e944 PUSH            {R4-R7,LR}
0x6e946 LSLS            R1, R1, #0x10
0x6e948 LDR             R3, =0x7556
0x6e94a LSLS            R2, R2, #0x18
0x6e94c LSRS            R1, R1, #0x10
0x6e94e MOVS            R5, R0
0x6e950 LSRS            R6, R2, #0x18
0x6e952 CMP             R1, R3
0x6e954 BNE             loc_6E95A
0x6e956 LDR             R1, =0x75D8
0x6e958 B               loc_6E980
0x6e95a LDR             R3, =0x756F
0x6e95c CMP             R1, R3
0x6e95e BNE             loc_6E964
0x6e960 LDR             R1, =0x75D9
0x6e962 B               loc_6E980
0x6e964 LDR             R3, =0x7583
0x6e966 CMP             R1, R3
0x6e968 BNE             loc_6E96E
0x6e96a LDR             R1, =0x75E0
0x6e96c B               loc_6E980
0x6e96e LDR             R3, =0x7557
0x6e970 CMP             R1, R3
0x6e972 BNE             loc_6E978
0x6e974 LDR             R1, =0x75E3
0x6e976 B               loc_6E980
0x6e978 LDR             R3, =0x756E
0x6e97a CMP             R1, R3
0x6e97c BNE             loc_6E980
0x6e97e LDR             R1, =0x75DD
0x6e980 MOVS            R3, #0x328
0x6e984 LDR             R3, [R5,R3]
0x6e986 CMP             R3, #0
0x6e988 BNE             loc_6E990
0x6e98a MOVS            R0, R5
0x6e98c BL              sub_6DE68
0x6e990 MOVS            R4, #0x32C
0x6e994 LDR             R3, [R5,R4]
0x6e996 CMP             R3, #0
0x6e998 BNE             loc_6EA22
0x6e99a LDRB            R3, [R5,#1]
0x6e99c LSLS            R0, R3, #1
0x6e99e ADDS            R0, R0, R3
0x6e9a0 LSLS            R0, R0, #3
0x6e9a2 STRB            R6, [R5,#2]
0x6e9a4 LDR             R3, =unk_14032EC
0x6e9a6 ADDS            R0, #2
0x6e9a8 BL              sub_6EACE
0x6e9ac MOVS            R3, #0x334
0x6e9b0 STR             R0, [R5,R4]
0x6e9b2 STR             R0, [R5,R3]
0x6e9b4 LDRB            R3, [R5,#1]
0x6e9b6 LSLS            R2, R3, #1
0x6e9b8 ADDS            R2, R2, R3
0x6e9ba LSLS            R2, R2, #3
0x6e9bc LDR             R3, =unk_140329C
0x6e9be MOVS            R1, #0
0x6e9c0 BL              sub_6EACE
0x6e9c4 LSLS            R3, R6, #2
0x6e9c6 ADDS            R3, R3, R6
0x6e9c8 LSLS            R3, R3, #2
0x6e9ca ADDS            R3, #4
0x6e9cc ADDS            R4, R5, R3
0x6e9ce MOVS            R7, #0
0x6e9d0 MOVS            R6, #0
0x6e9d2 B               loc_6EA1C
0x6e9d4 LDRH            R2, [R4]
0x6e9d6 LDR             R3, =0x7556
0x6e9d8 CMP             R2, R3
0x6e9da BNE             loc_6E9E0
0x6e9dc ADDS            R3, #0x86
0x6e9de B               loc_6EA06
0x6e9e0 LDR             R3, =0x756F
0x6e9e2 CMP             R2, R3
0x6e9e4 BNE             loc_6E9EA
0x6e9e6 ADDS            R3, #0x6E ; 'n'
0x6e9e8 B               loc_6EA06
0x6e9ea LDR             R3, =0x7557
0x6e9ec CMP             R2, R3
0x6e9ee BNE             loc_6E9F4
0x6e9f0 ADDS            R3, #0x8C
0x6e9f2 B               loc_6EA06
0x6e9f4 LDR             R3, =0x756E
0x6e9f6 CMP             R2, R3
0x6e9f8 BNE             loc_6E9FE
0x6e9fa ADDS            R3, #0x77 ; 'w'
0x6e9fc B               loc_6EA06
0x6e9fe LDR             R3, =(off_88F0+1)
0x6ea00 CMP             R2, R3
0x6ea02 BNE             loc_6EA08
0x6ea04 LDR             R3, =0x75E6
0x6ea06 STRH            R3, [R4]
0x6ea08 MOVS            R3, #0x334
0x6ea0c LDR             R1, [R5,R3]
0x6ea0e LDRH            R0, [R4]
0x6ea10 ADDS            R1, R6, R1
0x6ea12 BL              sub_6E440
0x6ea16 ADDS            R7, #1
0x6ea18 ADDS            R4, #2
0x6ea1a ADDS            R6, #0x18
0x6ea1c LDRB            R3, [R5,#1]
0x6ea1e CMP             R7, R3
0x6ea20 BLT             loc_6E9D4
0x6ea22 POP             {R4-R7}
0x6ea24 POP             {R0}
0x6ea26 BX              R0