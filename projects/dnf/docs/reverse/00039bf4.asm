0x39bf4 PUSH            {R4,LR}
0x39bf6 LDR             R4, =unk_1535E60
0x39bf8 LDR             R3, [R4,#(dword_1535E64 - 0x1535E60)]
0x39bfa CMP             R3, #0
0x39bfc BNE             loc_39C14
0x39bfe MOVS            R1, #0
0x39c00 LDR             R3, =unk_140329C
0x39c02 MOVS            R0, R4
0x39c04 MOVS            R2, #0xC
0x39c06 BL              sub_66A76
0x39c0a MOVS            R0, #0
0x39c0c MOVS            R1, R4
0x39c0e LDR             R3, =0x6C2B5
0x39c10 BL              sub_66A76
0x39c14 POP             {R4}
0x39c16 POP             {R0}
0x39c18 BX              R0