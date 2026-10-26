0x73fcc PUSH            {R4,LR}
0x73fce LDR             R3, =unk_153773C
0x73fd0 LDR             R4, =(sub_6EA60+1)
0x73fd2 CMP             R0, #0x64 ; 'd'
0x73fd4 BLS             loc_73FDA
0x73fd6 LDR             R2, =0xB34C
0x73fd8 B               loc_73FDC
0x73fda LDR             R2, =0x2327
0x73fdc ADDS            R1, R0, R2
0x73fde MOVS            R0, R3
0x73fe0 MOVS            R2, #0
0x73fe2 BL              sub_7595A
0x73fe6 POP             {R4}
0x73fe8 POP             {R0}
0x73fea BX              R0