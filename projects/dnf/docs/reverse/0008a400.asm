0x8a400 PUSH            {R4-R7,LR}
0x8a402 SUB             SP, SP, #0x10
0x8a404 LSLS            R1, R1, #0x18
0x8a406 STR             R0, [SP,#0x10+var_C]
0x8a408 LSRS            R1, R1, #0x18
0x8a40a MOV             R0, SP
0x8a40c STR             R1, [SP,#0x10+var_10]
0x8a40e LDR             R3, =sub_8C9DC
0x8a410 LDR             R1, =dword_9D0F8
0x8a412 ADDS            R0, #0xD
0x8a414 MOVS            R2, #3
0x8a416 BL              sub_8A950
0x8a41a LDR             R3, =dword_1501DD4
0x8a41c LDR             R3, [R3]
0x8a41e CMP             R3, #1
0x8a420 BNE             loc_8A42C
0x8a422 LDR             R3, =dword_1501C5C
0x8a424 LDR             R3, [R3]
0x8a426 CMP             R3, #0x11
0x8a428 BNE             loc_8A42C
0x8a42a B               loc_8A90E
0x8a42c LDR             R3, =byte_1533C5A
0x8a42e LDRB            R3, [R3]
0x8a430 CMP             R3, #9
0x8a432 BHI             loc_8A436
0x8a434 B               loc_8A90E
0x8a436 LDR             R0, [SP,#0x10+var_10]
0x8a438 LSLS            R3, R0, #2
0x8a43a LDR             R2, =byte_1538F9C
0x8a43c ADDS            R3, R3, R0
0x8a43e LSLS            R3, R3, #7
0x8a440 ADDS            R5, R3, R2
0x8a442 MOVS            R3, R5
0x8a444 ADDS            R3, #0x20 ; ' '
0x8a446 LDRB            R3, [R3,#2]
0x8a448 CMP             R3, #0
0x8a44a BNE             loc_8A44E
0x8a44c B               loc_8A90E
0x8a44e LDR             R3, =(sub_2C4A8+1)
0x8a450 BL              sub_8A950
0x8a454 CMP             R0, #0
0x8a456 BNE             loc_8A45A
0x8a458 B               loc_8A866
0x8a45a MOVS            R3, R5
0x8a45c ADDS            R3, #0x38 ; '8'
0x8a45e MOVS            R6, #0
0x8a460 STRB            R6, [R3]
0x8a462 ADDS            R3, #0x1C
0x8a464 LDRB            R2, [R3]
0x8a466 CMP             R2, #0x13
0x8a468 BEQ             loc_8A46C
0x8a46a B               loc_8A6B6
0x8a46c LDR             R3, =(sub_7D210+1)
0x8a46e LDR             R0, [SP,#0x10+var_10]
0x8a470 BL              sub_8A950
0x8a474 LDR             R3, =dword_150D88C
0x8a476 ADDS            R3, #0x80
0x8a478 LDRB            R3, [R3]
0x8a47a CMP             R3, #0
0x8a47c BNE             loc_8A4A8
0x8a47e LDR             R3, =byte_1537CD9
0x8a480 LDR             R0, [SP,#0x10+var_10]
0x8a482 LDRB            R2, [R3,R0]
0x8a484 LSLS            R3, R2, #2
0x8a486 LDR             R1, =dword_1538860
0x8a488 ADDS            R3, R3, R2
0x8a48a LSLS            R3, R3, #5
0x8a48c LDR             R3, [R3,R1]
0x8a48e LDRB            R3, [R3,#6]
0x8a490 CMP             R3, #2
0x8a492 BHI             loc_8A4A8
0x8a494 MOVS            R0, #1
0x8a496 LDR             R1, [SP,#0x10+var_10]
0x8a498 MOVS            R2, #0
0x8a49a BL              sub_88090
0x8a49e MOVS            R0, #7
0x8a4a0 LDR             R1, [SP,#0x10+var_10]
0x8a4a2 MOVS            R2, #0
0x8a4a4 BL              sub_88090
0x8a4a8 LDR             R1, [SP,#0x10+var_10]
0x8a4aa LSLS            R3, R1, #2
0x8a4ac LDR             R2, =byte_1538F9C
0x8a4ae ADDS            R3, R3, R1
0x8a4b0 LSLS            R3, R3, #7
0x8a4b2 ADDS            R4, R3, R2
0x8a4b4 MOVS            R3, R4
0x8a4b6 ADDS            R3, #0x20 ; ' '
0x8a4b8 MOVS            R7, #0
0x8a4ba STRB            R7, [R3,#2]
0x8a4bc ADDS            R3, #0x30 ; '0'
0x8a4be STRB            R7, [R3]
0x8a4c0 LDR             R5, =dword_1501D90
0x8a4c2 LDR             R6, =0x1AEC
0x8a4c4 LDR             R3, [R5]
0x8a4c6 LDRH            R0, [R4,#2]
0x8a4c8 LDRSB           R1, [R3,R6]
0x8a4ca LDR             R3, =(sub_1FEF4+1)
0x8a4cc BL              sub_8A950
0x8a4d0 LDR             R3, =dword_1501C5C
0x8a4d2 LDR             R3, [R3]
0x8a4d4 CMP             R3, #0x13
0x8a4d6 BEQ             loc_8A508
0x8a4d8 LDR             R3, [R5]
0x8a4da MOVS            R0, #2
0x8a4dc LDRSB           R1, [R3,R6]
0x8a4de MOVS            R3, #2
0x8a4e0 LDRSH           R2, [R4,R3]
0x8a4e2 MOVS            R3, #1
0x8a4e4 LDR             R4, =(sub_21440+1)
0x8a4e6 BL              sub_8A952
0x8a4ea LDR             R3, =byte_1402C5C
0x8a4ec LSLS            R0, R0, #0x18
0x8a4ee LSRS            R0, R0, #0x18
0x8a4f0 STRB            R0, [R3]
0x8a4f2 CMP             R0, #0xFF
0x8a4f4 BEQ             loc_8A508
0x8a4f6 LDR             R3, =dword_1501BF8
0x8a4f8 MOVS            R0, #1
0x8a4fa STR             R7, [R3]
0x8a4fc MOVS            R1, #0x13
0x8a4fe MOVS            R2, #0
0x8a500 MOVS            R3, #0
0x8a502 LDR             R4, =(sub_1404+1)
0x8a504 BL              sub_8A952
0x8a508 LDR             R4, =dword_1501D90
0x8a50a LDR             R5, =0x1AEC
0x8a50c LDR             R3, [R4]
0x8a50e LDR             R0, [SP,#0x10+var_10]
0x8a510 LDRB            R1, [R3,R5]
0x8a512 BL              sub_859CC
0x8a516 LDR             R3, =byte_150D770
0x8a518 LDRB            R3, [R3]
0x8a51a CMP             R3, #0
0x8a51c BNE             loc_8A5FE
0x8a51e LDR             R0, [SP,#0x10+var_10]
0x8a520 LSLS            R2, R0, #2
0x8a522 LDR             R3, =byte_1538F9C
0x8a524 ADDS            R2, R2, R0
0x8a526 LSLS            R2, R2, #7
0x8a528 ADDS            R2, R2, R3
0x8a52a ADDS            R2, #0x30 ; '0'
0x8a52c LDRB            R3, [R2,#2]
0x8a52e CMP             R3, #0
0x8a530 BNE             loc_8A5FE
0x8a532 LDR             R4, [R4]
0x8a534 STR             R4, [SP,#0x10+var_8]
0x8a536 LDRB            R3, [R4,R5]
0x8a538 LSLS            R3, R3, #0x18
0x8a53a ASRS            R4, R3, #0x18
0x8a53c CMP             R4, #5
0x8a53e BGT             loc_8A5FE
0x8a540 LDR             R3, =byte_1537CD9
0x8a542 LDRB            R2, [R3,R0]
0x8a544 LSLS            R3, R2, #2
0x8a546 LDR             R1, =dword_1538860
0x8a548 ADDS            R3, R3, R2
0x8a54a LSLS            R3, R3, #5
0x8a54c LDR             R6, [R3,R1]
0x8a54e LDRB            R5, [R6,#6]
0x8a550 CMP             R5, #2
0x8a552 BHI             loc_8A5FE
0x8a554 MOV             R3, SP
0x8a556 ADDS            R3, #0xD
0x8a558 LDRB            R2, [R3,R5]
0x8a55a LDR             R3, =byte_1500088
0x8a55c LDRB            R3, [R3]
0x8a55e LDRB            R5, [R6]
0x8a560 LSLS            R1, R4, #3
0x8a562 LDR             R7, =0x8C065
0x8a564 CMP             R3, #1
0x8a566 BNE             loc_8A56E
0x8a568 MULS            R5, R2
0x8a56a LDR             R3, =word_1401F16
0x8a56c B               loc_8A572
0x8a56e MULS            R5, R2
0x8a570 LDR             R3, =word_1401E3E
0x8a572 ADDS            R4, R1, R4
0x8a574 LSLS            R4, R4, #2
0x8a576 ADDS            R4, R4, R3
0x8a578 LDRH            R3, [R4,#2]
0x8a57a LDR             R1, =0x2710
0x8a57c MOVS            R0, R5
0x8a57e MULS            R0, R3
0x8a580 BL              sub_8A958
0x8a584 LDRH            R3, [R4,#6]
0x8a586 LDR             R1, [SP,#0x10+var_C]
0x8a588 ADDS            R5, R5, R3
0x8a58a LDR             R3, =0x19C5
0x8a58c LDRB            R2, [R1,R3]
0x8a58e LDRB            R3, [R6]
0x8a590 ADDS            R0, R0, R5
0x8a592 CMP             R2, R3
0x8a594 BLS             loc_8A5A8
0x8a596 SUBS            R3, R2, R3
0x8a598 BPL             loc_8A59C
0x8a59a NEGS            R3, R3
0x8a59c CMP             R3, #0xA
0x8a59e BLE             loc_8A5A8
0x8a5a0 LDR             R3, =0x8C065
0x8a5a2 MOVS            R1, #5
0x8a5a4 BL              sub_8A950
0x8a5a8 LDR             R2, [SP,#0x10+var_8]
0x8a5aa MOVS            R3, #0x90
0x8a5ac LDR             R6, [R2,#0x10]
0x8a5ae LSLS            R3, R3, #3
0x8a5b0 LDRH            R3, [R6,R3]
0x8a5b2 MOVS            R7, R0
0x8a5b4 LDR             R5, =0x8C065
0x8a5b6 MOVS            R0, R3
0x8a5b8 MULS            R0, R7
0x8a5ba MOVS            R1, #0x64 ; 'd'
0x8a5bc BL              sub_8A954
0x8a5c0 LDR             R3, =0x4FC
0x8a5c2 LDRH            R3, [R6,R3]
0x8a5c4 ADDS            R4, R7, R0
0x8a5c6 MOVS            R1, #0x64 ; 'd'
0x8a5c8 MOVS            R0, R3
0x8a5ca MULS            R0, R7
0x8a5cc BL              sub_8A954
0x8a5d0 LDR             R3, =0x546
0x8a5d2 LDRH            R3, [R6,R3]
0x8a5d4 ADDS            R4, R4, R0
0x8a5d6 MOVS            R1, #0x64 ; 'd'
0x8a5d8 MOVS            R0, R3
0x8a5da MULS            R0, R7
0x8a5dc BL              sub_8A954
0x8a5e0 ADDS            R4, R4, R0
0x8a5e2 LDR             R3, =(sub_7CF20+1)
0x8a5e4 LDR             R0, [SP,#0x10+var_C]
0x8a5e6 MOVS            R1, R4
0x8a5e8 BL              sub_8A950
0x8a5ec LDR             R3, =0x19C5
0x8a5ee LDR             R0, [SP,#0x10+var_C]
0x8a5f0 LDRB            R3, [R0,R3]
0x8a5f2 CMP             R3, #0x3B ; ';'
0x8a5f4 BHI             loc_8A5FE
0x8a5f6 LDR             R2, =word_1535568
0x8a5f8 LDR             R3, [R2,#(dword_153558C - 0x1535568)]
0x8a5fa ADDS            R3, R3, R4
0x8a5fc STR             R3, [R2,#(dword_153558C - 0x1535568)]
0x8a5fe LDR             R0, [SP,#0x10+var_10]
0x8a600 BL              sub_830C8
0x8a604 LDR             R3, =(sub_76338+1)
0x8a606 BL              sub_8A950
0x8a60a CMP             R0, #0
0x8a60c BNE             loc_8A610
0x8a60e B               loc_8A866
0x8a610 LDR             R3, =(sub_2C7E8+1)
0x8a612 BL              sub_8A950
0x8a616 LDR             R3, =dword_1501D90
0x8a618 LDR             R2, [R3]
0x8a61a LDR             R3, =0x1AED
0x8a61c LDRSB           R3, [R2,R3]
0x8a61e CMP             R3, #7
0x8a620 BNE             loc_8A62E
0x8a622 LDR             R3, =(sub_2E3BC+1)
0x8a624 BL              sub_8A950
0x8a628 LDR             R3, =(sub_35940+1)
0x8a62a BL              sub_8A950
0x8a62e LDR             R3, =dword_150D88C
0x8a630 ADDS            R3, #0x80
0x8a632 LDRB            R3, [R3]
0x8a634 CMP             R3, #0
0x8a636 BNE             loc_8A644
0x8a638 LDR             R3, =(sub_800E4+1)
0x8a63a BL              sub_8A950
0x8a63e LDR             R3, =(sub_2DF8C+1)
0x8a640 MOVS            R0, #1
0x8a642 B               loc_8A6B0
0x8a644 CMP             R3, #1
0x8a646 BEQ             loc_8A64A
0x8a648 B               loc_8A866
0x8a64a MOVS            R0, #1
0x8a64c LDR             R3, =(sub_7575C+1)
0x8a64e BL              sub_8A950
0x8a652 LDR             R3, =(sub_2EE98+1)
0x8a654 BL              sub_8A950
0x8a658 LDR             R3, =(sub_39388+1)
0x8a65a BL              sub_8A950
0x8a65e LDR             R3, =(sub_6C498+1)
0x8a660 BL              sub_8A950
0x8a664 MOVS            R5, #0
0x8a666 MOVS            R4, #0
0x8a668 MOVS            R0, R4
0x8a66a LDR             R3, =(sub_762F0+1)
0x8a66c BL              sub_8A950
0x8a670 CMP             R0, #0
0x8a672 BNE             loc_8A682
0x8a674 ADDS            R3, R5, #1
0x8a676 LSLS            R3, R3, #0x18
0x8a678 LSRS            R5, R3, #0x18
0x8a67a ASRS            R3, R3, #0x18
0x8a67c ADDS            R4, #1
0x8a67e CMP             R3, #0xC
0x8a680 BNE             loc_8A668
0x8a682 LSLS            R2, R5, #0x18
0x8a684 ASRS            R2, R2, #0x18
0x8a686 LSLS            R3, R2, #2
0x8a688 LDR             R1, =byte_1538F9C
0x8a68a ADDS            R3, R3, R2
0x8a68c LSLS            R3, R3, #7
0x8a68e ADDS            R3, R3, R1
0x8a690 LDRH            R1, [R3,#2]
0x8a692 MOVS            R0, #2
0x8a694 LDR             R3, =(sub_2FB10+1)
0x8a696 BL              sub_8A950
0x8a69a LSLS            R0, R0, #0x18
0x8a69c ASRS            R0, R0, #0x18
0x8a69e CMP             R0, #0
0x8a6a0 BGT             loc_8A6A4
0x8a6a2 B               loc_8A866
0x8a6a4 LDR             R2, =byte_150C714
0x8a6a6 MOVS            R3, #2
0x8a6a8 STRB            R3, [R2]
0x8a6aa LSLS            R0, R0, #0x10
0x8a6ac LDR             R3, =(sub_3592C+1)
0x8a6ae LSRS            R0, R0, #0x10
0x8a6b0 BL              sub_8A950
0x8a6b4 B               loc_8A866
0x8a6b6 LDR             R3, [R5,#0xC]
0x8a6b8 CMP             R3, #0
0x8a6ba BGT             loc_8A704
0x8a6bc LDR             R0, [SP,#0x10+var_10]
0x8a6be MOVS            R1, #0x13
0x8a6c0 MOVS            R2, #1
0x8a6c2 BL              sub_8343C
0x8a6c6 LDR             R3, =byte_1537CD9
0x8a6c8 LDR             R0, [SP,#0x10+var_10]
0x8a6ca LDRB            R2, [R3,R0]
0x8a6cc LSLS            R3, R2, #2
0x8a6ce LDR             R1, =dword_1538860
0x8a6d0 ADDS            R3, R3, R2
0x8a6d2 LSLS            R3, R3, #5
0x8a6d4 LDR             R3, [R3,R1]
0x8a6d6 LDRB            R3, [R3,#6]
0x8a6d8 CMP             R3, #1
0x8a6da BHI             loc_8A6DE
0x8a6dc B               loc_8A866
0x8a6de LDR             R3, =(sub_7FD4C+1)
0x8a6e0 BL              sub_8A950
0x8a6e4 LDR             R3, =(sub_2DF8C+1)
0x8a6e6 MOVS            R0, #0
0x8a6e8 BL              sub_8A950
0x8a6ec LDR             R2, =byte_1535594
0x8a6ee LDRB            R3, [R2]
0x8a6f0 CMP             R3, #0
0x8a6f2 BNE             loc_8A6F6
0x8a6f4 B               loc_8A866
0x8a6f6 MOVS            R3, #1
0x8a6f8 STRB            R3, [R2,#(byte_1535596 - 0x1535594)]
0x8a6fa STRB            R6, [R2]
0x8a6fc LDR             R3, =(sub_2E4A8+1)
0x8a6fe BL              sub_8A950
0x8a702 B               loc_8A866
0x8a704 CMP             R2, #0x14
0x8a706 BNE             loc_8A720
0x8a708 LDR             R0, [SP,#0x10+var_10]
0x8a70a LDR             R3, =(sub_39E24+1)
0x8a70c BL              sub_8A950
0x8a710 CMP             R0, #0
0x8a712 BEQ             loc_8A716
0x8a714 B               loc_8A90E
0x8a716 LDR             R1, [SP,#0x10+var_10]
0x8a718 MOVS            R2, #0
0x8a71a BL              sub_88090
0x8a71e B               loc_8A866
0x8a720 MOVS            R3, R2
0x8a722 SUBS            R3, #0xA
0x8a724 LSLS            R3, R3, #0x18
0x8a726 LSRS            R3, R3, #0x18
0x8a728 CMP             R3, #7
0x8a72a BHI             loc_8A738
0x8a72c LDR             R0, [SP,#0x10+var_10]
0x8a72e MOVS            R1, #0x14
0x8a730 MOVS            R2, #1
0x8a732 BL              sub_8343C
0x8a736 B               loc_8A866
0x8a738 SUBS            R3, R2, #4
0x8a73a LSLS            R3, R3, #0x18
0x8a73c LSRS            R3, R3, #0x18
0x8a73e CMP             R3, #1
0x8a740 BHI             loc_8A81C
0x8a742 MOVS            R1, #6
0x8a744 MOVS            R2, #1
0x8a746 LDR             R0, [SP,#0x10+var_10]
0x8a748 BL              sub_8343C
0x8a74c MOVS            R2, R5
0x8a74e ADDS            R2, #0x3C ; '<'
0x8a750 LDRB            R3, [R2,#2]
0x8a752 MOVS            R1, R5
0x8a754 ADDS            R1, #0x50 ; 'P'
0x8a756 STRB            R3, [R1,#3]
0x8a758 STRB            R6, [R2,#2]
0x8a75a B               loc_8A866
0x8a81c CMP             R2, #0x1A
0x8a81e BNE             loc_8A866
0x8a820 MOVS            R4, R5
0x8a822 ADDS            R4, #0x44 ; 'D'
0x8a824 MOVS            R2, #0
0x8a826 LDRSH           R1, [R4,R2]
0x8a828 LDR             R0, [SP,#0x10+var_10]
0x8a82a MOVS            R3, #2
0x8a82c LDRSH           R2, [R4,R3]
0x8a82e BL              sub_82500
0x8a832 CMP             R0, #0
0x8a834 BEQ             loc_8A83E
0x8a836 LDRH            R3, [R4]
0x8a838 STRH            R3, [R5,#0x10]
0x8a83a LDRH            R3, [R4,#2]
0x8a83c STRH            R3, [R5,#0x12]
0x8a83e MOVS            R1, #0x19
0x8a840 LDR             R0, [SP,#0x10+var_10]
0x8a842 MOVS            R2, #1
0x8a844 BL              sub_8343C
0x8a848 LDR             R3, =dword_1501D90
0x8a84a LDR             R3, [R3]
0x8a84c LDR             R3, [R3,#0x10]
0x8a84e MOVS            R0, #0x3A ; ':'
0x8a850 LDRSH           R2, [R3,R0]
0x8a852 MOVS            R1, #0x10
0x8a854 LDRSH           R3, [R5,R1]
0x8a856 MOVS            R1, R5
0x8a858 ADDS            R1, #0x30 ; '0'
0x8a85a CMP             R2, R3
0x8a85c BLE             loc_8A862
0x8a85e STRB            R6, [R1]
0x8a860 B               loc_8A866
0x8a862 MOVS            R3, #1
0x8a864 STRB            R3, [R1]
0x8a866 LDR             R2, [SP,#0x10+var_10]
0x8a868 LSLS            R3, R2, #2
0x8a86a ADDS            R3, R3, R2
0x8a86c LSLS            R5, R3, #7
0x8a86e MOVS            R0, R5
0x8a870 LDR             R4, =byte_1538F9C
0x8a872 ADDS            R0, #0x50 ; 'P'
0x8a874 ADDS            R0, R0, R4
0x8a876 MOVS            R1, R2
0x8a878 BL              sub_8A338
0x8a87c CMP             R0, #0
0x8a87e BEQ             loc_8A90E
0x8a880 ADDS            R0, R5, R4
0x8a882 MOVS            R3, R0
0x8a884 ADDS            R3, #0x40 ; '@'
0x8a886 LDRB            R3, [R3,#1]
0x8a888 CMP             R3, #1
0x8a88a BNE             loc_8A8BC
0x8a88c BL              sub_81B94
0x8a890 CMP             R0, #0
0x8a892 BEQ             loc_8A89E
0x8a894 LDR             R0, [SP,#0x10+var_C]
0x8a896 LDR             R1, [SP,#0x10+var_10]
0x8a898 BL              sub_89CD4
0x8a89c B               loc_8A8A6
0x8a89e LDR             R0, [SP,#0x10+var_C]
0x8a8a0 LDR             R1, [SP,#0x10+var_10]
0x8a8a2 BL              sub_89FB4
0x8a8a6 LDR             R0, [SP,#0x10+var_10]
0x8a8a8 LSLS            R2, R0, #2
0x8a8aa LDR             R3, =byte_1538F9C
0x8a8ac ADDS            R2, R2, R0
0x8a8ae LSLS            R2, R2, #7
0x8a8b0 ADDS            R2, R2, R3
0x8a8b2 ADDS            R2, #0x1C
0x8a8b4 LDRH            R3, [R2,#2]
0x8a8b6 ADDS            R3, #1
0x8a8b8 STRH            R3, [R2,#2]
0x8a8ba B               loc_8A90E
0x8a8bc CMP             R3, #2
0x8a8be BNE             loc_8A8CA
0x8a8c0 LDR             R0, [SP,#0x10+var_C]
0x8a8c2 LDR             R1, [SP,#0x10+var_10]
0x8a8c4 BL              sub_89F24
0x8a8c8 B               loc_8A90E
0x8a8ca LDR             R3, =byte_1537CD9
0x8a8cc LDR             R0, [SP,#0x10+var_10]
0x8a8ce LDRB            R2, [R3,R0]
0x8a8d0 LSLS            R3, R2, #2
0x8a8d2 LDR             R1, =dword_1538860
0x8a8d4 ADDS            R3, R3, R2
0x8a8d6 LSLS            R3, R3, #5
0x8a8d8 LDR             R4, [R3,R1]
0x8a8da MOVS            R3, R4
0x8a8dc ADDS            R3, #0x2E ; '.'
0x8a8de LDRB            R2, [R3]
0x8a8e0 ADDS            R3, #1
0x8a8e2 LDRB            R3, [R3]
0x8a8e4 LDR             R0, [SP,#0x10+var_C]
0x8a8e6 LDR             R1, [SP,#0x10+var_10]
0x8a8e8 BL              sub_81E1C
0x8a8ec CMP             R0, #0
0x8a8ee BEQ             loc_8A906
0x8a8f0 MOVS            R3, R4
0x8a8f2 ADDS            R3, #0x34 ; '4'
0x8a8f4 LDRB            R0, [R3]
0x8a8f6 BL              sub_830A4
0x8a8fa CMP             R0, #0
0x8a8fc BEQ             loc_8A906
0x8a8fe LDR             R0, [SP,#0x10+var_10]
0x8a900 BL              sub_89E18
0x8a904 B               loc_8A90E
0x8a906 LDR             R0, [SP,#0x10+var_C]
0x8a908 LDR             R1, [SP,#0x10+var_10]
0x8a90a BL              sub_89D84
0x8a90e ADD             SP, SP, #0x10
0x8a910 POP             {R4-R7}
0x8a912 POP             {R0}
0x8a914 BX              R0