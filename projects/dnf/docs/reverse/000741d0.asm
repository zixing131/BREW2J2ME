0x741d0 PUSH            {LR}
0x741d2 LDR             R3, =unk_1536D74
0x741d4 LDR             R3, [R3,#(dword_1536D84 - 0x1536D74)]
0x741d6 CMP             R3, #0
0x741d8 BEQ             loc_74216
0x741da LDR             R3, =dword_1501D90
0x741dc LDR             R3, [R3]
0x741de LDR             R1, [R3,#0x10]
0x741e0 MOVS            R3, R1
0x741e2 ADDS            R3, #0x40 ; '@'
0x741e4 LDRB            R0, [R3]
0x741e6 LDR             R2, =byte_1537B14
0x741e8 LDRH            R3, [R1,#0x3A]
0x741ea CMP             R0, #1
0x741ec BNE             loc_741FC
0x741ee ADDS            R3, #0x23 ; '#'
0x741f0 STRH            R3, [R2,#(word_1537B1C - 0x1537B14)]
0x741f2 LDRH            R3, [R1,#0x3C]
0x741f4 SUBS            R3, #0xA
0x741f6 STRH            R3, [R2,#(word_1537B1E - 0x1537B14)]
0x741f8 STRB            R0, [R2,#(byte_1537B20 - 0x1537B14)]
0x741fa B               loc_7420A
0x741fc SUBS            R3, #0x23 ; '#'
0x741fe STRH            R3, [R2,#(word_1537B1C - 0x1537B14)]
0x74200 LDRH            R3, [R1,#0x3C]
0x74202 SUBS            R3, #0xA
0x74204 STRH            R3, [R2,#(word_1537B1E - 0x1537B14)]
0x74206 MOVS            R3, #0
0x74208 STRB            R3, [R2,#(byte_1537B20 - 0x1537B14)]
0x7420a LDR             R0, =unk_1536D74
0x7420c LDR             R1, =byte_1537B14
0x7420e MOVS            R2, #0
0x74210 LDR             R3, =(sub_6E16C+1)
0x74212 BL              sub_75958
0x74216 POP             {R0}
0x74218 BX              R0