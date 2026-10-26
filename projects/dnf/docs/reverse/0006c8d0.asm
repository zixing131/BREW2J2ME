0x6c8d0 PUSH            {R4,R5,LR}
0x6c8d2 LDRB            R3, [R1]
0x6c8d4 MOVS            R4, R0
0x6c8d6 MOVS            R0, R1
0x6c8d8 CMP             R3, #0
0x6c8da BEQ             loc_6C968
0x6c8dc LDRB            R3, [R1,#2]
0x6c8de ADDS            R3, #1
0x6c8e0 LSLS            R3, R3, #0x18
0x6c8e2 LDRB            R2, [R1,#3]
0x6c8e4 LSRS            R3, R3, #0x18
0x6c8e6 STRB            R3, [R1,#2]
0x6c8e8 CMP             R2, R3
0x6c8ea BCS             loc_6C968
0x6c8ec LDRB            R5, [R1,#5]
0x6c8ee LDRB            R1, [R1,#4]
0x6c8f0 LSLS            R3, R1, #3
0x6c8f2 ADDS            R3, R3, R1
0x6c8f4 LDR             R2, [R4,#0x18]
0x6c8f6 LSLS            R1, R3, #2
0x6c8f8 ADDS            R2, R1, R2
0x6c8fa LDRB            R3, [R2,#2]
0x6c8fc SUBS            R3, #1
0x6c8fe CMP             R5, R3
0x6c900 BLT             loc_6C94C
0x6c902 LDRB            R3, [R0,#7]
0x6c904 MOVS            R2, #0
0x6c906 STRB            R2, [R0,#5]
0x6c908 STRB            R2, [R0,#2]
0x6c90a CMP             R3, #0xFF
0x6c90c BNE             loc_6C92C
0x6c90e LDR             R3, [R4,#0x18]
0x6c910 LDRB            R1, [R1,R3]
0x6c912 CMP             R1, #0xFF
0x6c914 BNE             loc_6C91E
0x6c916 MOVS            R3, #1
0x6c918 STRB            R2, [R0]
0x6c91a STRB            R3, [R0,#1]
0x6c91c B               loc_6C968
0x6c91e STRB            R1, [R0,#4]
0x6c920 LSLS            R3, R1, #3
0x6c922 LDR             R2, [R4,#0x18]
0x6c924 ADDS            R3, R3, R1
0x6c926 LSLS            R3, R3, #2
0x6c928 ADDS            R3, R3, R2
0x6c92a B               loc_6C940
0x6c92c STRB            R3, [R0,#4]
0x6c92e MOVS            R3, #1
0x6c930 NEGS            R3, R3
0x6c932 LDRB            R2, [R0,#4]
0x6c934 STRB            R3, [R0,#7]
0x6c936 LSLS            R3, R2, #3
0x6c938 LDR             R1, [R4,#0x18]
0x6c93a ADDS            R3, R3, R2
0x6c93c LSLS            R3, R3, #2
0x6c93e ADDS            R3, R3, R1
0x6c940 LDR             R3, [R3,#0x20]
0x6c942 LDRB            R3, [R3]
0x6c944 STRB            R3, [R0,#3]
0x6c946 MOVS            R3, #1
0x6c948 STRB            R3, [R0]
0x6c94a B               loc_6C968
0x6c94c ADDS            R2, R5, #1
0x6c94e LSLS            R2, R2, #0x18
0x6c950 LSRS            R2, R2, #0x18
0x6c952 MOVS            R3, #0
0x6c954 STRB            R3, [R0,#2]
0x6c956 STRB            R2, [R0,#5]
0x6c958 LDR             R3, [R4,#0x18]
0x6c95a ADDS            R3, R1, R3
0x6c95c LDR             R1, [R3,#0x20]
0x6c95e LSLS            R3, R2, #4
0x6c960 ADDS            R3, R3, R2
0x6c962 LSLS            R3, R3, #2
0x6c964 LDRB            R3, [R3,R1]
0x6c966 STRB            R3, [R0,#3]
0x6c968 POP             {R4,R5}
0x6c96a POP             {R0}
0x6c96c BX              R0