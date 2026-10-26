0x789a0 PUSH            {R4,R5,LR}
0x789a2 LDR             R3, =dword_1501D90
0x789a4 LDR             R2, [R3]
0x789a6 LDR             R3, =0x1AED
0x789a8 LDRSB           R3, [R2,R3]
0x789aa LSLS            R1, R1, #0x18
0x789ac MOVS            R5, R0
0x789ae LSRS            R1, R1, #0x18
0x789b0 LDR             R4, [R2,#0x10]
0x789b2 CMP             R3, #7
0x789b4 BEQ             loc_789CA
0x789b6 CMP             R1, #9
0x789b8 BNE             loc_789CA
0x789ba LDRH            R1, [R0,#2]
0x789bc MOVS            R0, R4
0x789be BL              sub_76664
0x789c2 LDRH            R1, [R5,#2]
0x789c4 MOVS            R0, R4
0x789c6 BL              sub_766B0
0x789ca POP             {R4,R5}
0x789cc POP             {R0}
0x789ce BX              R0