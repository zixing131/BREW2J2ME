0x658c0 PUSH            {LR}
0x658c2 LDR             R3, =0x74115
0x658c4 BL              sub_66A76
0x658c8 LDR             R3, =0x740F5
0x658ca BL              sub_66A76
0x658ce LDR             R3, =0x740D5
0x658d0 BL              sub_66A76
0x658d4 LDR             R3, =0x740B5
0x658d6 BL              sub_66A76
0x658da LDR             R3, =0x74095
0x658dc BL              sub_66A76
0x658e0 LDR             R3, =0x74075
0x658e2 BL              sub_66A76
0x658e6 LDR             R3, =0x74055
0x658e8 BL              sub_66A76
0x658ec BL              sub_62B00
0x658f0 LDR             R3, =0x73FFD
0x658f2 BL              sub_66A76
0x658f6 LDR             R1, =unk_1537BE0
0x658f8 MOVS            R0, #3
0x658fa LDR             R3, =0x84BD1
0x658fc BL              sub_66A76
0x65900 BL              sub_39FF4
0x65904 BL              sub_39BF4
0x65908 BL              sub_39544
0x6590c LDR             R1, =unk_150D80C
0x6590e LDR             R3, =(sub_2791C+1)
0x65910 MOVS            R0, #0xC
0x65912 BL              sub_66A76
0x65916 BL              sub_62B00
0x6591a LDR             R1, =dword_15340A8
0x6591c LDR             R3, [R1]
0x6591e CMP             R3, #0
0x65920 BNE             loc_65930
0x65922 LDR             R3, [R1,#(dword_15340AC - 0x15340A8)]
0x65924 CMP             R3, #0
0x65926 BNE             loc_65930
0x65928 LDR             R0, =0xA49E
0x6592a LDR             R3, =0x6E441
0x6592c BL              sub_66A76
0x65930 BL              sub_62B00
0x65934 LDR             R3, =dword_1501D90
0x65936 LDR             R2, [R3]
0x65938 LDR             R3, =0x1AE8
0x6593a MOVS            R0, #0xA
0x6593c LDRB            R1, [R2,R3]
0x6593e LDR             R3, =(sub_27648+1)
0x65940 BL              sub_66A76
0x65944 LDR             R0, =unk_1534700
0x65946 LDR             R1, =0xA028
0x65948 MOVS            R2, #0
0x6594a LDR             R3, =0x6EA61
0x6594c BL              sub_66A76
0x65950 POP             {R0}
0x65952 BX              R0