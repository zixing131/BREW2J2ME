0x63434 PUSH            {R4-R6,LR}
0x63436 LDR             R2, =byte_153407C
0x63438 MOVS            R3, #1
0x6343a NEGS            R3, R3
0x6343c STRB            R3, [R2,#(byte_153407D - 0x153407C)]
0x6343e LDR             R3, =byte_15340F5
0x63440 MOVS            R4, #0
0x63442 STRB            R4, [R3]
0x63444 STRB            R4, [R2,#(byte_153407E - 0x153407C)]
0x63446 BL              sub_30ADC
0x6344a LDR             R3, =byte_153406D
0x6344c STRB            R4, [R3]
0x6344e LDR             R3, =byte_1534058
0x63450 STRB            R4, [R3]
0x63452 LDR             R3, =dword_1501C58
0x63454 STR             R4, [R3]
0x63456 LDR             R3, =byte_150D770
0x63458 LDRB            R3, [R3]
0x6345a CMP             R3, #1
0x6345c BNE             loc_63462
0x6345e BL              sub_2F6A0
0x63462 LDR             R3, =byte_150007C
0x63464 STRB            R4, [R3]
0x63466 LDR             R3, =byte_1500089
0x63468 STRB            R4, [R3]
0x6346a BL              sub_2C7E8
0x6346e MOVS            R0, #0
0x63470 LDR             R3, =0x721F1
0x63472 BL              sub_66A76
0x63476 BL              sub_62B00
0x6347a MOVS            R0, #1
0x6347c LDR             R3, =0x7575D
0x6347e BL              sub_66A76
0x63482 LDR             R0, =dword_1501D90
0x63484 LDR             R3, =0x1AED
0x63486 LDR             R1, [R0]
0x63488 LDRB            R3, [R1,R3]
0x6348a LSLS            R3, R3, #0x18
0x6348c ASRS            R3, R3, #0x18
0x6348e CMP             R3, #2
0x63490 BNE             loc_6349E
0x63492 LDR             R3, =0x1AE8
0x63494 STRB            R4, [R1,R3]
0x63496 LDR             R2, [R0]
0x63498 ADDS            R3, #1
0x6349a STRB            R4, [R2,R3]
0x6349c B               loc_634AE
0x6349e CMP             R3, #3
0x634a0 BNE             loc_634B8
0x634a2 LDR             R3, =0x1AE8
0x634a4 STRB            R4, [R1,R3]
0x634a6 LDR             R1, [R0]
0x634a8 MOVS            R2, #4
0x634aa ADDS            R3, #1
0x634ac STRB            R2, [R1,R3]
0x634ae LDR             R1, [R0]
0x634b0 MOVS            R2, #1
0x634b2 ADDS            R3, #1
0x634b4 STRB            R2, [R1,R3]
0x634b6 B               loc_6358A
0x634b8 CMP             R3, #4
0x634ba BEQ             loc_634D0
0x634bc CMP             R3, #5
0x634be BNE             loc_634CC
0x634c0 LDR             R3, =0x1AE8
0x634c2 MOVS            R2, #0x14
0x634c4 STRB            R2, [R1,R3]
0x634c6 LDR             R1, [R0]
0x634c8 MOVS            R2, #0x4F ; 'O'
0x634ca B               loc_634AA
0x634cc CMP             R3, #6
0x634ce BNE             loc_634DA
0x634d0 LDR             R3, =0x1AE8
0x634d2 STRB            R4, [R1,R3]
0x634d4 LDR             R1, [R0]
0x634d6 MOVS            R2, #5
0x634d8 B               loc_634AA
0x634da CMP             R3, #7
0x634dc BNE             loc_6358A
0x634de LDR             R3, =0x1AE8
0x634e0 STRB            R4, [R1,R3]
0x634e2 LDR             R1, [R0]
0x634e4 MOVS            R2, #5
0x634e6 ADDS            R3, #1
0x634e8 STRB            R2, [R1,R3]
0x634ea LDR             R1, [R0]
0x634ec MOVS            R2, #1
0x634ee ADDS            R3, #1
0x634f0 STRB            R2, [R1,R3]
0x634f2 MOVS            R0, #0xD
0x634f4 MOVS            R1, #0x1E
0x634f6 LDR             R4, =0x807F1
0x634f8 BL              sub_66A78
0x634fc LSLS            R0, R0, #0x10
0x634fe LSRS            R0, R0, #0x10
0x63500 CMP             R0, #0
0x63502 BEQ             loc_63512
0x63504 LSLS            R2, R0, #0x10
0x63506 ASRS            R2, R2, #0x10
0x63508 MOVS            R0, #0xD
0x6350a MOVS            R1, #0x1E
0x6350c LDR             R3, =0x81255
0x6350e BL              sub_66A76
0x63512 MOVS            R0, #0xD
0x63514 MOVS            R1, #0x1F
0x63516 BL              sub_66A78
0x6351a LSLS            R0, R0, #0x10
0x6351c LSRS            R0, R0, #0x10
0x6351e CMP             R0, #0
0x63520 BEQ             loc_63530
0x63522 LSLS            R2, R0, #0x10
0x63524 ASRS            R2, R2, #0x10
0x63526 MOVS            R0, #0xD
0x63528 MOVS            R1, #0x1F
0x6352a LDR             R3, =0x81255
0x6352c BL              sub_66A76
0x63530 MOVS            R0, #0xE
0x63532 MOVS            R1, #0x14
0x63534 BL              sub_66A78
0x63538 LSLS            R0, R0, #0x10
0x6353a LSRS            R0, R0, #0x10
0x6353c CMP             R0, #0
0x6353e BEQ             loc_6354E
0x63540 LSLS            R2, R0, #0x10
0x63542 ASRS            R2, R2, #0x10
0x63544 MOVS            R0, #0xE
0x63546 MOVS            R1, #0x14
0x63548 LDR             R3, =0x81255
0x6354a BL              sub_66A76
0x6354e MOVS            R0, #0xE
0x63550 MOVS            R1, #0x15
0x63552 BL              sub_66A78
0x63556 LSLS            R0, R0, #0x10
0x63558 LSRS            R0, R0, #0x10
0x6355a CMP             R0, #0
0x6355c BEQ             loc_6356C
0x6355e LSLS            R2, R0, #0x10
0x63560 ASRS            R2, R2, #0x10
0x63562 MOVS            R0, #0xE
0x63564 MOVS            R1, #0x15
0x63566 LDR             R3, =0x81255
0x63568 BL              sub_66A76
0x6356c MOVS            R0, #0xF
0x6356e MOVS            R1, #1
0x63570 BL              sub_66A78
0x63574 LSLS            R0, R0, #0x10
0x63576 LSRS            R0, R0, #0x10
0x63578 CMP             R0, #0
0x6357a BEQ             loc_6358A
0x6357c LSLS            R2, R0, #0x10
0x6357e ASRS            R2, R2, #0x10
0x63580 MOVS            R0, #0xF
0x63582 MOVS            R1, #1
0x63584 LDR             R3, =0x81255
0x63586 BL              sub_66A76
0x6358a LDR             R3, =0x79891
0x6358c BL              sub_66A76
0x63590 BL              sub_2EE98
0x63594 LDR             R3, =(sub_6C428+1)
0x63596 BL              sub_66A76
0x6359a LDR             R3, =0x6C499
0x6359c BL              sub_66A76
0x635a0 BL              sub_4E9C8
0x635a4 LDR             R3, =0x67BC9
0x635a6 LDR             R0, =dword_1534D70
0x635a8 BL              sub_66A76
0x635ac BL              sub_2E2CC
0x635b0 BL              sub_36694
0x635b4 LDR             R4, =dword_1501D90
0x635b6 MOVS            R0, #0
0x635b8 MOVS            R1, #0
0x635ba LDR             R3, [R4]
0x635bc LDR             R3, [R3,#0x10]
0x635be ADDS            R3, R1, R3
0x635c0 ADDS            R3, #0x74 ; 't'
0x635c2 MOVS            R2, #0
0x635c4 STRB            R2, [R3]
0x635c6 LDR             R3, [R4]
0x635c8 LDR             R3, [R3,#0x10]
0x635ca MOVS            R5, #0x92
0x635cc ADDS            R3, R1, R3
0x635ce LSLS            R5, R5, #2
0x635d0 ADDS            R3, R3, R5
0x635d2 ADDS            R0, #1
0x635d4 STRB            R2, [R3]
0x635d6 ADDS            R1, #0x24 ; '$'
0x635d8 CMP             R0, #0xD
0x635da BNE             loc_635BA
0x635dc LDR             R4, =byte_1537CD9
0x635de LDR             R0, =byte_153AD9C
0x635e0 MOVS            R1, #0
0x635e2 B               loc_635E8
0x635e4 MOVS            R3, #0
0x635e6 STRB            R3, [R4,R2]
0x635e8 LSLS            R3, R1, #0x18
0x635ea LSRS            R2, R3, #0x18
0x635ec LDRB            R3, [R0]
0x635ee ADDS            R1, #1
0x635f0 CMP             R3, R2
0x635f2 BHI             loc_635E4
0x635f4 LDR             R3, =byte_1534DA8
0x635f6 MOVS            R4, #0
0x635f8 STRB            R4, [R3]
0x635fa ADDS            R2, R3, #1
0x635fc STRB            R4, [R3,#(byte_1534DB8 - 0x1534DA8)]
0x635fe ADDS            R3, #0x30 ; '0'
0x63600 STRB            R4, [R2,#(byte_1534DC8 - 0x1534DA9)]
0x63602 STRB            R4, [R3]
0x63604 LDR             R3, =0x75191
0x63606 BL              sub_66A76
0x6360a LDR             R5, =dword_1501D90
0x6360c LDR             R3, =byte_150006F
0x6360e STRB            R4, [R3]
0x63610 LDR             R3, [R5]
0x63612 LDR             R2, [R3,#0x10]
0x63614 LDR             R3, =0x19E3
0x63616 STRB            R4, [R2,R3]
0x63618 LDR             R3, [R5]
0x6361a LDR             R2, [R3,#0x10]
0x6361c LDR             R3, =dword_19E4
0x6361e STRB            R4, [R2,R3]
0x63620 LDR             R3, [R5]
0x63622 LDR             R2, [R3,#0x10]
0x63624 LDR             R3, =(dword_19E4+1)
0x63626 STRB            R4, [R2,R3]
0x63628 LDR             R3, [R5]
0x6362a LDR             R2, [R3,#0x10]
0x6362c LDR             R3, =0x19E6
0x6362e STRH            R4, [R2,R3]
0x63630 ADDS            R3, #2
0x63632 STRH            R4, [R2,R3]
0x63634 LDR             R3, =0x809AD
0x63636 BL              sub_66A76
0x6363a MOVS            R0, #0
0x6363c MOVS            R1, #0
0x6363e BL              sub_2FB10
0x63642 LSLS            R0, R0, #0x18
0x63644 ASRS            R0, R0, #0x18
0x63646 MOVS            R6, #0
0x63648 CMP             R0, #0
0x6364a BLE             loc_6365C
0x6364c LDR             R3, =byte_150C714
0x6364e LSLS            R0, R0, #0x10
0x63650 STRB            R6, [R3]
0x63652 LSRS            R0, R0, #0x10
0x63654 LDR             R3, =0x70561
0x63656 BL              sub_66A76
0x6365a B               loc_636E8
0x6365c MOVS            R1, #0
0x6365e MOVS            R2, #0
0x63660 MOVS            R0, #1
0x63662 MOVS            R3, #0
0x63664 LDR             R4, =(sub_1404+1)
0x63666 BL              sub_66A78
0x6366a LDR             R3, =(sub_14AC+1)
0x6366c MOVS            R0, #0
0x6366e BL              sub_66A76
0x63672 BL              sub_39578
0x63676 LDR             R2, [R5]
0x63678 LDR             R1, =0x1AED
0x6367a LDRB            R3, [R2,R1]
0x6367c LSLS            R3, R3, #0x18
0x6367e ASRS            R3, R3, #0x18
0x63680 CMP             R3, #2
0x63682 BNE             loc_63690
0x63684 STRB            R6, [R2,R1]
0x63686 LDR             R3, [R5]
0x63688 LDR             R0, [R3,#0x10]
0x6368a MOVS            R1, #0x32 ; '2'
0x6368c MOVS            R2, #0xFA
0x6368e B               loc_636E0
0x63690 CMP             R3, #3
0x63692 BNE             loc_6369E
0x63694 STRB            R6, [R2,R1]
0x63696 LDR             R3, [R5]
0x63698 LDR             R1, =0x316
0x6369a LDR             R0, [R3,#0x10]
0x6369c B               loc_636AA
0x6369e CMP             R3, #4
0x636a0 BNE             loc_636AE
0x636a2 STRB            R6, [R2,R1]
0x636a4 LDR             R3, [R5]
0x636a6 LDR             R1, =0x389
0x636a8 LDR             R0, [R3,#0x10]
0x636aa MOVS            R2, #0xFA
0x636ac B               loc_636CE
0x636ae CMP             R3, #5
0x636b0 BNE             loc_636BE
0x636b2 STRB            R6, [R2,R1]
0x636b4 LDR             R3, [R5]
0x636b6 LDR             R0, [R3,#0x10]
0x636b8 MOVS            R1, #0x32 ; '2'
0x636ba MOVS            R2, #0xC3
0x636bc B               loc_636E0
0x636be CMP             R3, #6
0x636c0 BNE             loc_636D2
0x636c2 STRB            R6, [R2,R1]
0x636c4 LDR             R3, [R5]
0x636c6 MOVS            R1, #0xFF
0x636c8 LDR             R0, [R3,#0x10]
0x636ca LSLS            R1, R1, #1
0x636cc MOVS            R2, #0xDC
0x636ce MOVS            R3, #1
0x636d0 B               loc_636E2
0x636d2 CMP             R3, #7
0x636d4 BNE             loc_636E8
0x636d6 STRB            R6, [R2,R1]
0x636d8 LDR             R3, [R5]
0x636da LDR             R0, [R3,#0x10]
0x636dc MOVS            R1, #0x32 ; '2'
0x636de MOVS            R2, #0xDC
0x636e0 MOVS            R3, #0
0x636e2 LDR             R4, =0x76139
0x636e4 BL              sub_66A78
0x636e8 LDR             R4, =dword_1501D90
0x636ea LDR             R3, [R4]
0x636ec LDR             R0, [R3,#0x10]
0x636ee LDR             R3, =0x19B8
0x636f0 LDR             R1, [R0,R3]
0x636f2 LDR             R3, =0x76665
0x636f4 BL              sub_66A76
0x636f8 LDR             R3, [R4]
0x636fa LDR             R0, [R3,#0x10]
0x636fc LDR             R3, =0x766B1
0x636fe LDR             R1, [R0,#0xC]
0x63700 BL              sub_66A76
0x63704 LDR             R3, [R4]
0x63706 LDR             R0, [R3,#0x10]
0x63708 MOVS            R1, #0
0x6370a ADDS            R0, #0x44 ; 'D'
0x6370c MOVS            R2, #1
0x6370e LDR             R3, =0x76145
0x63710 BL              sub_66A76
0x63714 POP             {R4-R6}
0x63716 POP             {R0}
0x63718 BX              R0