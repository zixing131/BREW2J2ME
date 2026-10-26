0x8c6dc PUSH            {R0,LR}
0x8c6e0 MOV             R0, LR
0x8c6e4 SUB             R0, R0, #8
0x8c6e8 MOV             R12, R0
0x8c6ec PUSH            {R1-R12}
0x8c6f0 BLX             sub_8CC5C
0x8c6f4 MCR             p15, 0, R0,c7,c5, 0
0x8c6f8 POP             {R1-R12}
0x8c6fc POP             {R0,LR}
0x8c700 POP             {LR}
0x8c704 MOV             PC, R12