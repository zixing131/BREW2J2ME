0x6ea60 PUSH            {R4,R5,LR}
0x6ea62 LDR             R3, [R0,#0x10]
0x6ea64 LSLS            R2, R2, #0x18
0x6ea66 MOVS            R4, R0
0x6ea68 LSRS            R5, R2, #0x18
0x6ea6a CMP             R3, #0
0x6ea6c BNE             loc_6EA72
0x6ea6e BL              sub_6D838
0x6ea72 LDR             R3, [R4,#0x14]
0x6ea74 CMP             R3, #0
0x6ea76 BNE             loc_6EA9A
0x6ea78 LDR             R3, =unk_14032EC
0x6ea7a LDR             R0, =0x33A
0x6ea7c BL              sub_6EACE
0x6ea80 MOVS            R2, #0xCE
0x6ea82 MOVS            R1, #0
0x6ea84 LSLS            R2, R2, #2
0x6ea86 STR             R0, [R4,#0x14]
0x6ea88 STR             R0, [R4,#0x1C]
0x6ea8a LDR             R3, =unk_140329C
0x6ea8c BL              sub_6EACE
0x6ea90 LDR             R0, [R4,#0x1C]
0x6ea92 LDRH            R1, [R4,#2]
0x6ea94 MOVS            R2, R5
0x6ea96 BL              sub_6E944
0x6ea9a POP             {R4,R5}
0x6ea9c POP             {R0}
0x6ea9e BX              R0