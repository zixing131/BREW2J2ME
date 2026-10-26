0x1188 PUSH            {R4,LR}
0x118a MOVS            R3, #0
0x118c MOVS            R1, #2
0x118e LDR             R2, =0xFFFFFF
0x1190 LDR             R4, =unk_140341C
0x1192 MOVS            R0, #0
0x1194 BL              sub_1402
0x1198 LDR             R0, =0x1F7
0x119a MOVS            R1, #0
0x119c MOVS            R2, #0
0x119e BL              sub_10A0
0x11a2 LDR             R3, =0x6C61D
0x11a4 BL              sub_1400
0x11a8 LDR             R3, =0x6BBD1
0x11aa BL              sub_1400
0x11ae LDR             R3, =0x6C5F1
0x11b0 BL              sub_1400
0x11b4 BL              sub_114C
0x11b8 POP             {R4}
0x11ba POP             {R0}
0x11bc BX              R0