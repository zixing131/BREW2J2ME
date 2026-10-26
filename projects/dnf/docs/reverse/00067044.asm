0x67044 PUSH            {R4-R6,LR}
0x67046 MOVS            R5, R1
0x67048 LDR             R1, [R1]
0x6704a MOVS            R6, R3
0x6704c MOVS            R4, R2
0x6704e LDR             R3, =unk_140327C
0x67050 CMP             R1, #0
0x67052 BNE             loc_67056
0x67054 LDR             R1, =dword_1535B98
0x67056 MOVS            R0, R4
0x67058 MOVS            R2, #0x10
0x6705a BL              sub_67BBE
0x6705e STR             R4, [R5]
0x67060 CMP             R6, #0
0x67062 BEQ             loc_67070
0x67064 MOVS            R0, R4
0x67066 MOVS            R1, R6
0x67068 LDR             R2, [SP,#arg_0]
0x6706a BL              sub_66FD4
0x6706e B               loc_6707A
0x67070 MOVS            R0, R4
0x67072 MOVS            R1, #0
0x67074 MOVS            R2, #0
0x67076 BL              sub_66B88
0x6707a MOVS            R0, R4
0x6707c MOVS            R5, #0
0x6707e BL              sub_66D20
0x67082 CMP             R0, #1
0x67084 BNE             loc_67088
0x67086 MOVS            R5, #1
0x67088 MOVS            R0, R5
0x6708a MOVS            R3, #1
0x6708c EORS            R0, R3
0x6708e LSLS            R0, R0, #0x18
0x67090 LSRS            R0, R0, #0x18
0x67092 POP             {R4-R6}
0x67094 POP             {R1}
0x67096 BX              R1