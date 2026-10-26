0x2b864 PUSH            {R4,LR}
0x2b866 LSLS            R4, R0, #0x18
0x2b868 LSRS            R4, R4, #0x18
0x2b86a MOVS            R0, #0
0x2b86c BL              sub_2B750
0x2b870 MOVS            R0, R4
0x2b872 LDR             R3, =0x85BC1
0x2b874 BL              sub_2BCB6
0x2b878 BL              sub_28CBC
0x2b87c LDR             R3, =0x62B01
0x2b87e BL              sub_2BCB6
0x2b882 BL              sub_2B6B4
0x2b886 LDR             R3, =0x831F9
0x2b888 BL              sub_2BCB6
0x2b88c CMP             R0, #0
0x2b88e BNE             loc_2B8BA
0x2b890 LDR             R3, =0x88441
0x2b892 BL              sub_2BCB6
0x2b896 LDR             R3, =(sub_1F300+1)
0x2b898 BL              sub_2BCB6
0x2b89c LSLS            R0, R0, #0x18
0x2b89e ASRS            R0, R0, #0x18
0x2b8a0 CMP             R0, #0
0x2b8a2 BLT             loc_2B8BA
0x2b8a4 LDR             R3, =byte_150D160
0x2b8a6 LDR             R2, [R3,#(dword_150D168 - 0x150D160)]
0x2b8a8 LSLS            R3, R0, #4
0x2b8aa ADDS            R3, R3, R2
0x2b8ac LDRH            R0, [R3,#6]
0x2b8ae LDR             R3, =(sub_20B9C+1)
0x2b8b0 BL              sub_2BCB6
0x2b8b4 LDR             R3, =(sub_22420+1)
0x2b8b6 BL              sub_2BCB6
0x2b8ba POP             {R4}
0x2b8bc POP             {R0}
0x2b8be BX              R0