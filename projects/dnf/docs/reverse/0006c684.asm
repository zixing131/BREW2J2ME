0x6c684 PUSH            {LR}
0x6c686 ADDS            R1, #1
0x6c688 CMP             R1, #0xA; switch 11 cases
0x6c68a BHI             def_6C692; jumptable 0006C692 default case, cases 1,3,5-8
0x6c68c LDR             R2, =jpt_6C692
0x6c68e LSLS            R3, R1, #2
0x6c690 LDR             R3, [R3,R2]
0x6c692 MOV             PC, R3; switch jump
0x6c694 LDR             R1, =byte_1535E40; jumptable 0006C692 case 4
0x6c696 LDR             R3, [R1,#(dword_1535E44 - 0x1535E40)]
0x6c698 CMP             R3, #0
0x6c69a BEQ             def_6C692; jumptable 0006C692 default case, cases 1,3,5-8
0x6c69c LDRB            R3, [R1,#(byte_1535E41 - 0x1535E40)]
0x6c69e CMP             R3, #0
0x6c6a0 BNE             loc_6C6B4
0x6c6a2 LDRB            R3, [R1]
0x6c6a4 MOVS            R2, #1
0x6c6a6 BICS            R3, R2
0x6c6a8 STRB            R3, [R1]
0x6c6aa BL              sub_6C428
0x6c6ae BL              sub_6C3F4
0x6c6b2 B               loc_6C6B8
0x6c6b4 MOVS            R3, #0
0x6c6b6 STRB            R3, [R1,#(byte_1535E42 - 0x1535E40)]
0x6c6b8 LDR             R2, =byte_1533BC8
0x6c6ba MOVS            R3, #0
0x6c6bc STRB            R3, [R2,#(byte_1533BC9 - 0x1533BC8)]
0x6c6be B               def_6C692; jumptable 0006C692 default case, cases 1,3,5-8
0x6c6c0 LDR             R3, =byte_1535E40; jumptable 0006C692 cases 2,10
0x6c6c2 LDRB            R3, [R3,#(byte_1535E41 - 0x1535E40)]
0x6c6c4 CMP             R3, #0
0x6c6c6 BNE             def_6C692; jumptable 0006C692 default case, cases 1,3,5-8
0x6c6c8 BL              sub_6C428; jumptable 0006C692 cases 0,9
0x6c6cc POP             {R0}; jumptable 0006C692 default case, cases 1,3,5-8
0x6c6ce BX              R0