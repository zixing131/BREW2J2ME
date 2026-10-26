0x6c6dc PUSH            {R4-R7,LR}
0x6c6de LSLS            R3, R3, #0x18
0x6c6e0 SUB             SP, SP, #4
0x6c6e2 LSRS            R3, R3, #0x18
0x6c6e4 STR             R3, [SP,#4+var_4]
0x6c6e6 LDR             R3, =byte_1501CC0
0x6c6e8 MOVS            R4, R1
0x6c6ea LDR             R1, [SP,#4+arg_0]
0x6c6ec LDRB            R3, [R3]
0x6c6ee LSLS            R3, R3, #0x18
0x6c6f0 ASRS            R3, R3, #0x18
0x6c6f2 LSLS            R2, R2, #0x18
0x6c6f4 LSLS            R1, R1, #0x18
0x6c6f6 LSRS            R6, R2, #0x18
0x6c6f8 LSRS            R7, R1, #0x18
0x6c6fa CMP             R3, #0
0x6c6fc BEQ             loc_6C75E
0x6c6fe LDR             R3, [R0,#4]
0x6c700 CMP             R3, #0
0x6c702 BEQ             loc_6C75E
0x6c704 LDR             R3, [R0,#8]
0x6c706 LSLS            R2, R4, #4
0x6c708 ADDS            R5, R2, R3
0x6c70a CMP             R5, #0
0x6c70c BEQ             loc_6C75E
0x6c70e LDR             R2, =byte_1535E40
0x6c710 LDRB            R3, [R2]
0x6c712 LSLS            R1, R3, #0x1F
0x6c714 BPL             loc_6C726
0x6c716 CMP             R6, #0
0x6c718 BNE             loc_6C722
0x6c71a LDR             R2, [R2,#(dword_1535E44 - 0x1535E40)]
0x6c71c LDR             R3, [R5]
0x6c71e CMP             R2, R3
0x6c720 BEQ             loc_6C75E
0x6c722 BL              sub_6C428
0x6c726 LDR             R4, =dword_1535E44
0x6c728 LDR             R3, =unk_140327C
0x6c72a MOVS            R0, R4
0x6c72c MOVS            R1, R5
0x6c72e MOVS            R2, #0x10
0x6c730 BL              sub_6C778
0x6c734 LDRB            R3, [R5,#8]
0x6c736 SUBS            R4, #4
0x6c738 STRB            R3, [R4,#(byte_1535E41 - 0x1535E40)]
0x6c73a LDR             R3, [SP,#4+var_4]
0x6c73c CMP             R3, #0
0x6c73e BEQ             loc_6C74C
0x6c740 CMP             R7, #0
0x6c742 BEQ             loc_6C74A
0x6c744 MOVS            R3, #1
0x6c746 STRB            R3, [R4,#(byte_1535E41 - 0x1535E40)]
0x6c748 B               loc_6C74C
0x6c74a STRB            R7, [R4,#(byte_1535E41 - 0x1535E40)]
0x6c74c LDR             R1, =byte_1535E40
0x6c74e LDRB            R3, [R1]
0x6c750 MOVS            R2, #0x20 ; ' '
0x6c752 ORRS            R3, R2
0x6c754 STRB            R3, [R1]
0x6c756 MOVS            R3, #0
0x6c758 STRB            R3, [R1,#(byte_1535E42 - 0x1535E40)]
0x6c75a BL              sub_6C5F0
0x6c75e ADD             SP, SP, #4
0x6c760 POP             {R4-R7}
0x6c762 POP             {R0}
0x6c764 BX              R0