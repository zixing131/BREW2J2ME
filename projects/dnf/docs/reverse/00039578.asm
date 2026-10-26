0x39578 PUSH            {R4,LR}
0x3957a LDR             R3, =byte_1501CC0
0x3957c LDRB            R3, [R3,#(byte_1501CC1 - 0x1501CC0)]
0x3957e LSLS            R3, R3, #0x18
0x39580 ASRS            R3, R3, #0x18
0x39582 CMP             R3, #1
0x39584 BEQ             loc_395EE
0x39586 LDR             R4, =unk_1535E9C
0x39588 LDR             R3, [R4,#(dword_1535EA0 - 0x1535E9C)]
0x3958a CMP             R3, #0
0x3958c BNE             loc_395EA
0x3958e MOVS            R2, #0xC
0x39590 LDR             R3, =unk_140329C
0x39592 MOVS            R0, R4
0x39594 MOVS            R1, #0
0x39596 BL              sub_66A76
0x3959a LDR             R3, =dword_1501D90
0x3959c LDR             R2, [R3]
0x3959e LDR             R3, =0x1AE8
0x395a0 LDR             R2, [R2,R3]
0x395a2 LDR             R3, =0xFFFF00
0x395a4 ANDS            R2, R3
0x395a6 MOVS            R3, #0x10400
0x395aa CMP             R2, R3
0x395ac BEQ             loc_395B4
0x395ae LDR             R3, =0x10500
0x395b0 CMP             R2, R3
0x395b2 BNE             loc_395B8
0x395b4 MOVS            R0, #0xE
0x395b6 B               loc_395C0
0x395b8 LDR             R3, =0x14F00
0x395ba CMP             R2, R3
0x395bc BNE             loc_395C4
0x395be MOVS            R0, #0xF
0x395c0 MOVS            R1, R4
0x395c2 B               loc_395E4
0x395c4 MOVS            R3, #0x10000
0x395c8 CMP             R2, R3
0x395ca BEQ             loc_395E0
0x395cc LDR             R3, =0x10100
0x395ce CMP             R2, R3
0x395d0 BEQ             loc_395E0
0x395d2 MOVS            R3, #0x10200
0x395d6 CMP             R2, R3
0x395d8 BEQ             loc_395E0
0x395da LDR             R3, =0x10300
0x395dc CMP             R2, R3
0x395de BNE             loc_395EE
0x395e0 LDR             R1, =unk_1535E9C
0x395e2 MOVS            R0, #0xD
0x395e4 LDR             R3, =0x6C2B5
0x395e6 BL              sub_66A76
0x395ea BL              sub_30AF4
0x395ee POP             {R4}
0x395f0 POP             {R0}
0x395f2 BX              R0