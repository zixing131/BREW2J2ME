0x676e8 PUSH            {R4,LR}
0x676ea SUB             SP, SP, #8
0x676ec LDR             R4, [SP,#8+arg_0]
0x676ee STR             R4, [SP,#8+var_8]
0x676f0 LDR             R4, [SP,#8+arg_4]
0x676f2 ADDS            R1, #1
0x676f4 STR             R4, [SP,#8+var_4]
0x676f6 LDR             R4, =0x72941
0x676f8 BL              sub_67BC0
0x676fc MOVS            R0, #0
0x676fe ADD             SP, SP, #8
0x67700 POP             {R4}
0x67702 POP             {R1}
0x67704 BX              R1