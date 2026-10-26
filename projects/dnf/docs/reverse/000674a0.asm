0x674a0 PUSH            {R4-R6,LR}
0x674a2 LDR             R3, =dword_1535ADC
0x674a4 LDR             R3, [R3,#(dword_1535B38 - 0x1535ADC)]
0x674a6 CMP             R3, #0x10
0x674a8 BGT             loc_674B4
0x674aa ASRS            R3, R3, #3
0x674ac CMP             R3, #1
0x674ae BGT             loc_674B4
0x674b0 MOVS            R0, #1
0x674b2 B               loc_67552
0x674b4 LDR             R5, =unk_140348C
0x674b6 MOVS            R1, #0x90
0x674b8 MOVS            R2, #0x20 ; ' '
0x674ba MOVS            R0, #0x20 ; ' '
0x674bc BL              sub_67BC2
0x674c0 LDR             R4, =dword_1535ADC
0x674c2 MOVS            R1, #0xFF
0x674c4 STR             R0, [R4,#(dword_1535B28 - 0x1535ADC)]
0x674c6 MOVS            R2, #0xFF
0x674c8 MOVS            R0, #0xFF
0x674ca BL              sub_67BC2
0x674ce MOVS            R3, #0
0x674d0 STR             R3, [R4,#(dword_1535B30 - 0x1535ADC)]
0x674d2 LDR             R3, =0x67C7D
0x674d4 STR             R0, [R4,#(dword_1535B2C - 0x1535ADC)]
0x674d6 ADDS            R4, #0xFC
0x674d8 STR             R3, [R4,#(dword_1535BFC - 0x1535BD8)]
0x674da LDR             R3, =0x68C31
0x674dc STR             R3, [R4,#(dword_1535C00 - 0x1535BD8)]
0x674de LDR             R3, =0x67C99
0x674e0 STR             R3, [R4,#(dword_1535C04 - 0x1535BD8)]
0x674e2 LDR             R3, =0x68BB5
0x674e4 STR             R3, [R4,#(dword_1535C08 - 0x1535BD8)]
0x674e6 LDR             R3, =0x68A45
0x674e8 STR             R3, [R4,#(dword_1535C0C - 0x1535BD8)]
0x674ea LDR             R3, =0x68981
0x674ec STR             R3, [R4,#(dword_1535C10 - 0x1535BD8)]
0x674ee LDR             R3, =0x68C71
0x674f0 STR             R3, [R4,#(dword_1535C14 - 0x1535BD8)]
0x674f2 LDR             R3, =0x67CB5
0x674f4 STR             R3, [R4,#(dword_1535C18 - 0x1535BD8)]
0x674f6 LDR             R3, =0x67DAD
0x674f8 STR             R3, [R4,#(dword_1535C1C - 0x1535BD8)]
0x674fa LDR             R3, =0x67EA5
0x674fc STR             R3, [R4,#(dword_1535C20 - 0x1535BD8)]
0x674fe LDR             R3, =0x67FA1
0x67500 STR             R3, [R4,#(dword_1535C24 - 0x1535BD8)]
0x67502 LDR             R3, =0x7FFF
0x67504 LDR             R1, =dword_1535A78
0x67506 LDR             R5, =dword_1535C80
0x67508 LDR             R6, =dword_1535A6C
0x6750a CMP             R0, R3
0x6750c BNE             loc_67526
0x6750e LDR             R3, =0x1CE7
0x67510 STR             R3, [R1]
0x67512 LDR             R3, =0x3DEF
0x67514 STR             R3, [R5]
0x67516 LDR             R3, =0x5AD6
0x67518 STR             R3, [R6]
0x6751a LDR             R3, =0x68EFD
0x6751c STR             R3, [R4,#(dword_1535C28 - 0x1535BD8)]
0x6751e LDR             R3, =0x68E09
0x67520 STR             R3, [R4,#(dword_1535C2C - 0x1535BD8)]
0x67522 LDR             R3, =0x69185
0x67524 B               loc_67548
0x67526 LDR             R2, =dword_1535A70
0x67528 LDR             R3, =0xF7DE
0x6752a STR             R3, [R2]
0x6752c LDR             R3, =0xE79C
0x6752e LDR             R2, =dword_1535C78
0x67530 STR             R3, [R2]
0x67532 LDR             R3, =0x39E7
0x67534 STR             R3, [R1]
0x67536 LDR             R3, =0x7BEF
0x67538 STR             R3, [R5]
0x6753a LDR             R3, =0xB5D6
0x6753c STR             R3, [R6]
0x6753e LDR             R3, =0x69039
0x67540 STR             R3, [R4,#(dword_1535C28 - 0x1535BD8)]
0x67542 LDR             R3, =0x68DD5
0x67544 STR             R3, [R4,#(dword_1535C2C - 0x1535BD8)]
0x67546 LDR             R3, =0x690B9
0x67548 LDR             R2, =dword_1535ADC
0x6754a STR             R3, [R4,#(dword_1535C34 - 0x1535BD8)]
0x6754c MOVS            R3, #0x20 ; ' '
0x6754e STR             R3, [R2,#(dword_1535AF4 - 0x1535ADC)]
0x67550 MOVS            R0, #0
0x67552 POP             {R4-R6}
0x67554 POP             {R1}
0x67556 BX              R1