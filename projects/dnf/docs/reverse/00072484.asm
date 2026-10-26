0x72484 PUSH            {R4-R7,LR}
0x72486 SUB             SP, SP, #0x28
0x72488 STR             R1, [SP,#0x28+var_1C]
0x7248a MOVS            R1, R2
0x7248c SUBS            R1, #0x20 ; ' '
0x7248e STR             R0, [SP,#0x28+var_18]
0x72490 MOVS            R4, R2
0x72492 STR             R3, [SP,#0x28+var_20]
0x72494 CMP             R1, #0x5E ; '^'
0x72496 BHI             loc_724C6
0x72498 LDR             R4, =unk_1536CBC
0x7249a ADD             R2, SP, #0x28+var_4
0x7249c LDR             R3, =0x8B249
0x7249e MOVS            R0, R4
0x724a0 BL              sub_75958
0x724a4 LSLS            R1, R0, #0x10
0x724a6 ASRS            R1, R1, #0x10
0x724a8 LDR             R3, =0x8B231
0x724aa MOVS            R0, R4
0x724ac BL              sub_75958
0x724b0 LDR             R1, [SP,#0x28+var_20]
0x724b2 MOVS            R2, R0
0x724b4 STR             R1, [SP,#0x28+var_24]
0x724b6 LDR             R0, [SP,#0x28+var_18]
0x724b8 LDR             R3, [SP,#0x28+var_4]
0x724ba LDR             R1, [SP,#0x28+var_1C]
0x724bc STR             R4, [SP,#0x28+var_28]
0x724be BL              sub_72368
0x724c2 MOVS            R0, R4
0x724c4 B               loc_726A0
0x724c6 LDR             R2, =0xFFFF5400
0x724c8 LDR             R3, =0x2B9F
0x724ca ADDS            R7, R4, R2
0x724cc CMP             R7, R3
0x724ce BHI             loc_72500
0x724d0 MOVS            R4, #0x24C
0x724d4 MOVS            R1, R4
0x724d6 LDR             R5, =0x8C065
0x724d8 MOVS            R0, R7
0x724da BL              sub_7595C
0x724de MULS            R4, R0
0x724e0 SUBS            R4, R7, R4
0x724e2 MOVS            R6, R0
0x724e4 MOVS            R1, #0x1C
0x724e6 MOVS            R0, R4
0x724e8 BL              sub_7595C
0x724ec LSLS            R3, R0, #3
0x724ee SUBS            R3, R3, R0
0x724f0 LSLS            R3, R3, #2
0x724f2 SUBS            R4, R4, R3
0x724f4 MOVS            R3, R4
0x724f6 MOVS            R7, R0
0x724f8 STR             R4, [SP,#0x28+var_14]
0x724fa ADDS            R3, #1
0x724fc BNE             loc_725B2
0x724fe B               loc_72596
0x72500 LDR             R1, =0xFFFFCED0
0x72502 ADDS            R3, R4, R1
0x72504 CMP             R3, #0x1E
0x72506 BHI             loc_7250E
0x72508 LDR             R3, =dword_9C8A4
0x7250a ADDS            R3, R4, R3
0x7250c B               loc_72532
0x7250e LDR             R2, =0xFFFFCEB1
0x72510 ADDS            R0, R4, R2
0x72512 CMP             R0, #0x14
0x72514 BLS             loc_72546
0x72516 LDR             R1, =0xFFFFEF00
0x72518 ADDS            R3, R4, R1
0x7251a CMP             R3, #0x12
0x7251c BHI             loc_7253E
0x7251e LDR             R2, =a112141718191a1; "112141718191A1B1C1E1F1G1H1I1J1K1L1M1N1"
0x72520 LSLS            R3, R4, #1
0x72522 ADDS            R3, R3, R2
0x72524 LDR             R2, =0xFFFFDE00
0x72526 ADDS            R3, R3, R2
0x72528 LDR             R1, =dword_9C8A4
0x7252a MOVS            R2, #0
0x7252c LDRSH           R3, [R3,R2]
0x7252e ADDS            R3, R3, R1
0x72530 LDR             R1, =0xFFFFCED0
0x72532 ADDS            R3, R3, R1
0x72534 MOVS            R7, #1
0x72536 MOVS            R6, #0
0x72538 LDRSB           R6, [R3,R6]
0x7253a NEGS            R7, R7
0x7253c B               loc_726AE
0x7253e LDR             R2, =0xFFFFEE9F
0x72540 ADDS            R0, R4, R2
0x72542 CMP             R0, #0x14
0x72544 BHI             loc_7254E
0x72546 MOVS            R6, #1
0x72548 MOVS            R7, R0
0x7254a NEGS            R6, R6
0x7254c B               loc_726AE
0x7254e LDR             R3, =dword_15369C8
0x72550 LDR             R2, [R3]
0x72552 MOVS            R1, #0
0x72554 LDRH            R3, [R2]
0x72556 CMP             R3, R4
0x72558 BEQ             loc_72564
0x7255a ADDS            R1, #1
0x7255c ADDS            R2, #2
0x7255e CMP             R1, #0xCC
0x72560 BEQ             loc_72592
0x72562 B               loc_72554
0x72564 CMP             R1, #0
0x72566 BLT             loc_72592
0x72568 LDR             R4, =unk_1536B60
0x7256a ADD             R2, SP, #0x28+var_4
0x7256c LDR             R3, =0x8B249
0x7256e MOVS            R0, R4
0x72570 BL              sub_75958
0x72574 LSLS            R1, R0, #0x10
0x72576 ASRS            R1, R1, #0x10
0x72578 LDR             R3, =0x8B231
0x7257a MOVS            R0, R4
0x7257c BL              sub_75958
0x72580 LDR             R1, [SP,#0x28+var_20]
0x72582 MOVS            R2, R0
0x72584 STR             R1, [SP,#0x28+var_24]
0x72586 LDR             R3, [SP,#0x28+var_4]
0x72588 LDR             R0, [SP,#0x28+var_18]
0x7258a LDR             R1, [SP,#0x28+var_1C]
0x7258c STR             R4, [SP,#0x28+var_28]
0x7258e BL              sub_72368
0x72592 LDR             R0, =unk_1536B60
0x72594 B               loc_726A0
0x72596 ADDS            R2, R6, #1
0x72598 BEQ             loc_725A6
0x7259a MOVS            R3, #1
0x7259c STR             R3, [SP,#0x28+var_10]
0x7259e NEGS            R3, R3
0x725a0 STR             R3, [SP,#0x28+var_8]
0x725a2 STR             R3, [SP,#0x28+var_C]
0x725a4 B               loc_725F4
0x725a6 ADDS            R1, R7, #1
0x725a8 BNE             loc_725AC
0x725aa B               loc_726B6
0x725ac MOVS            R2, #0
0x725ae STR             R2, [SP,#0x28+var_C]
0x725b0 B               loc_726BC
0x725b2 LDR             R3, [SP,#0x28+var_14]
0x725b4 CMP             R3, #0
0x725b6 BNE             loc_725CA
0x725b8 LDR             R3, =0x9C8EA
0x725ba LDRB            R3, [R3,R0]
0x725bc STR             R3, [SP,#0x28+var_10]
0x725be CMP             R6, #0
0x725c0 BEQ             loc_725E4
0x725c2 CMP             R6, #0xF
0x725c4 BEQ             loc_725E4
0x725c6 MOVS            R1, #1
0x725c8 B               loc_725E6
0x725ca LDR             R3, =0x9C8FF
0x725cc LDRB            R3, [R3,R0]
0x725ce STR             R3, [SP,#0x28+var_10]
0x725d0 CMP             R6, #0
0x725d2 BEQ             loc_725DE
0x725d4 CMP             R6, #0xF
0x725d6 BEQ             loc_725DE
0x725d8 MOVS            R2, #3
0x725da STR             R2, [SP,#0x28+var_C]
0x725dc B               loc_725E8
0x725de MOVS            R3, #2
0x725e0 STR             R3, [SP,#0x28+var_C]
0x725e2 B               loc_725E8
0x725e4 MOVS            R1, #0
0x725e6 STR             R1, [SP,#0x28+var_C]
0x725e8 LDR             R3, =dword_9C914
0x725ea LDR             R2, [SP,#0x28+var_10]
0x725ec LDRB            R3, [R3,R7]
0x725ee STR             R3, [SP,#0x28+var_8]
0x725f0 CMP             R2, #0
0x725f2 BLT             loc_7262A
0x725f4 LDR             R5, =unk_15377C8
0x725f6 ADD             R3, SP, #0x28+var_4
0x725f8 STR             R3, [SP,#0x28+var_28]
0x725fa MOVS            R1, #0
0x725fc LDR             R2, [SP,#0x28+var_10]
0x725fe MOVS            R3, R6
0x72600 LDR             R4, =0x8B2B9
0x72602 MOVS            R0, R5
0x72604 BL              sub_7595A
0x72608 LSLS            R3, R0, #0x10
0x7260a ASRS            R3, R3, #0x10
0x7260c MOVS            R1, #0
0x7260e LDR             R2, [SP,#0x28+var_10]
0x72610 MOVS            R0, R5
0x72612 LDR             R4, =0x8B285
0x72614 BL              sub_7595A
0x72618 LDR             R1, [SP,#0x28+var_20]
0x7261a MOVS            R2, R0
0x7261c STR             R1, [SP,#0x28+var_24]
0x7261e LDR             R3, [SP,#0x28+var_4]
0x72620 LDR             R0, [SP,#0x28+var_18]
0x72622 LDR             R1, [SP,#0x28+var_1C]
0x72624 STR             R5, [SP,#0x28+var_28]
0x72626 BL              sub_72368
0x7262a LDR             R2, [SP,#0x28+var_C]
0x7262c CMP             R2, #0
0x7262e BLT             loc_72664
0x72630 LDR             R5, =unk_15377C8
0x72632 ADD             R3, SP, #0x28+var_4
0x72634 STR             R3, [SP,#0x28+var_28]
0x72636 MOVS            R1, #1
0x72638 MOVS            R3, R7
0x7263a LDR             R4, =0x8B2B9
0x7263c MOVS            R0, R5
0x7263e BL              sub_7595A
0x72642 LSLS            R3, R0, #0x10
0x72644 ASRS            R3, R3, #0x10
0x72646 MOVS            R1, #1
0x72648 LDR             R2, [SP,#0x28+var_C]
0x7264a MOVS            R0, R5
0x7264c LDR             R4, =0x8B285
0x7264e BL              sub_7595A
0x72652 LDR             R1, [SP,#0x28+var_20]
0x72654 MOVS            R2, R0
0x72656 STR             R1, [SP,#0x28+var_24]
0x72658 LDR             R3, [SP,#0x28+var_4]
0x7265a LDR             R0, [SP,#0x28+var_18]
0x7265c LDR             R1, [SP,#0x28+var_1C]
0x7265e STR             R5, [SP,#0x28+var_28]
0x72660 BL              sub_72368
0x72664 LDR             R2, [SP,#0x28+var_8]
0x72666 CMP             R2, #0
0x72668 BLT             loc_7269E
0x7266a LDR             R5, =unk_15377C8
0x7266c ADD             R3, SP, #0x28+var_4
0x7266e STR             R3, [SP,#0x28+var_28]
0x72670 MOVS            R1, #2
0x72672 LDR             R3, [SP,#0x28+var_14]
0x72674 LDR             R4, =0x8B2B9
0x72676 MOVS            R0, R5
0x72678 BL              sub_7595A
0x7267c LSLS            R3, R0, #0x10
0x7267e ASRS            R3, R3, #0x10
0x72680 MOVS            R1, #2
0x72682 LDR             R2, [SP,#0x28+var_8]
0x72684 MOVS            R0, R5
0x72686 LDR             R4, =0x8B285
0x72688 BL              sub_7595A
0x7268c LDR             R1, [SP,#0x28+var_20]
0x7268e MOVS            R2, R0
0x72690 STR             R1, [SP,#0x28+var_24]
0x72692 LDR             R3, [SP,#0x28+var_4]
0x72694 LDR             R0, [SP,#0x28+var_18]
0x72696 LDR             R1, [SP,#0x28+var_1C]
0x72698 STR             R5, [SP,#0x28+var_28]
0x7269a BL              sub_72368
0x7269e LDR             R0, =unk_15377C8
0x726a0 LDR             R3, =0x8B171
0x726a2 BL              sub_75958
0x726a6 ADD             SP, SP, #0x28 ; '('
0x726a8 POP             {R4-R7}
0x726aa POP             {R1}
0x726ac BX              R1
0x726ae MOVS            R2, #1
0x726b0 NEGS            R2, R2
0x726b2 STR             R2, [SP,#0x28+var_14]
0x726b4 B               loc_72596
0x726b6 MOVS            R3, #1
0x726b8 NEGS            R3, R3
0x726ba STR             R3, [SP,#0x28+var_C]
0x726bc MOVS            R1, #1
0x726be NEGS            R1, R1
0x726c0 STR             R1, [SP,#0x28+var_8]
0x726c2 B               loc_7262A