0x30b18 PUSH            {R4,LR}
0x30b1a LDR             R2, =byte_1533BC8
0x30b1c LDRB            R3, [R2]
0x30b1e SUB             SP, SP, #4
0x30b20 CMP             R3, #0
0x30b22 BEQ             loc_30B40
0x30b24 LDR             R3, =byte_1501CC0
0x30b26 LDRB            R3, [R3,#(byte_1501CC1 - 0x1501CC0)]
0x30b28 LSLS            R3, R3, #0x18
0x30b2a ASRS            R3, R3, #0x18
0x30b2c CMP             R3, #2
0x30b2e BEQ             loc_30B40
0x30b30 MOVS            R3, #0
0x30b32 LDRB            R1, [R2,#(byte_1533BCD - 0x1533BC8)]
0x30b34 LDR             R0, =unk_1535E60
0x30b36 STR             R3, [SP,#4+var_4]
0x30b38 MOVS            R2, #1
0x30b3a LDR             R4, =(sub_6C6DC+1)
0x30b3c BL              sub_66A78
0x30b40 ADD             SP, SP, #4
0x30b42 POP             {R4}
0x30b44 POP             {R0}
0x30b46 BX              R0