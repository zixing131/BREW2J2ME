0x66fd4 PUSH            {R4-R7,LR}
0x66fd6 SUB             SP, SP, #8
0x66fd8 STR             R0, [SP,#8+var_4]
0x66fda MOVS            R6, R1
0x66fdc STR             R2, [SP,#8+var_8]
0x66fde LDR             R5, =dword_1535BE0
0x66fe0 CMP             R1, #0
0x66fe2 BEQ             loc_67018
0x66fe4 MOVS            R0, R5
0x66fe6 MOVS            R2, #0x1C
0x66fe8 LDR             R7, =unk_140327C
0x66fea BL              sub_67BC6
0x66fee LDR             R1, [R6]
0x66ff0 CMP             R1, #0
0x66ff2 BEQ             loc_67002
0x66ff4 MOVS            R4, R5
0x66ff6 SUBS            R4, #0x18
0x66ff8 MOVS            R0, R4
0x66ffa MOVS            R2, #0x10
0x66ffc BL              sub_67BC6
0x67000 STR             R4, [R5]
0x67002 LDR             R1, [R6,#4]
0x67004 CMP             R1, #0
0x67006 BEQ             loc_67024
0x67008 MOVS            R4, R5
0x6700a SUBS            R4, #8
0x6700c MOVS            R0, R4
0x6700e MOVS            R2, #8
0x67010 BL              sub_67BC6
0x67014 STR             R4, [R4,#(dword_1535BE4 - 0x1535BD8)]
0x67016 B               loc_67024
0x67018 MOVS            R0, R5
0x6701a MOVS            R1, #0
0x6701c MOVS            R2, #0x1C
0x6701e LDR             R3, =unk_140329C
0x67020 BL              sub_67BBE
0x67024 LDR             R0, [SP,#8+var_4]
0x67026 LDR             R2, [SP,#8+var_8]
0x67028 LDR             R1, =dword_1535BE0
0x6702a BL              sub_66B88
0x6702e ADD             SP, SP, #8
0x67030 POP             {R4-R7}
0x67032 POP             {R0}
0x67034 BX              R0