0x6f48c PUSH            {R4-R7,LR}
0x6f48e LDR             R3, =dword_1536348
0x6f490 LSLS            R0, R0, #2
0x6f492 LDR             R5, [R0,R3]
0x6f494 LDR             R3, =0x266
0x6f496 LDRB            R3, [R5,R3]
0x6f498 SUB             SP, SP, #0x2C
0x6f49a CMP             R3, #1
0x6f49c BNE             loc_6F4C8
0x6f49e LDR             R3, =0x262
0x6f4a0 LDR             R2, =dword_153653C
0x6f4a2 LDRSB           R1, [R5,R3]
0x6f4a4 MOVS            R3, #0x264
0x6f4a8 LDRH            R3, [R5,R3]
0x6f4aa LDR             R2, [R2]
0x6f4ac SUBS            R2, R2, R3
0x6f4ae MULS            R1, R2
0x6f4b0 MOVS            R0, #0x240
0x6f4b4 LDRH            R3, [R5,R0]
0x6f4b6 ADDS            R3, R3, R1
0x6f4b8 STRH            R3, [R5,R0]
0x6f4ba LDR             R3, =0x263
0x6f4bc LDRSB           R3, [R5,R3]
0x6f4be MULS            R2, R3
0x6f4c0 LDR             R1, =0x242
0x6f4c2 LDRH            R3, [R5,R1]
0x6f4c4 ADDS            R3, R3, R2
0x6f4c6 STRH            R3, [R5,R1]
0x6f4c8 MOVS            R3, #0x250
0x6f4cc LDRB            R3, [R5,R3]
0x6f4ce CMP             R3, #1
0x6f4d0 BNE             loc_6F4D4
0x6f4d2 B               loc_6F85E
0x6f4d4 LDR             R3, =0x25D
0x6f4d6 LDRB            R3, [R5,R3]
0x6f4d8 CMP             R3, #1
0x6f4da BEQ             loc_6F4DE
0x6f4dc B               loc_6F778
0x6f4de ADD             R4, SP, #0x2C+var_8
0x6f4e0 LDR             R3, =(sub_2CD18+1)
0x6f4e2 MOVS            R0, R4
0x6f4e4 BL              sub_71334
0x6f4e8 LDRH            R3, [R5,#0x10]
0x6f4ea CMP             R3, #1
0x6f4ec BEQ             loc_6F4F2
0x6f4ee CMP             R3, #3
0x6f4f0 BNE             loc_6F5CC
0x6f4f2 LDRH            R3, [R5,#0xE]
0x6f4f4 CMP             R3, #0
0x6f4f6 BEQ             loc_6F570
0x6f4f8 LDR             R3, =dword_1501C04
0x6f4fa MOVS            R2, #0xA0
0x6f4fc LDR             R0, =(sub_6B158+1)
0x6f4fe LDR             R3, [R3]
0x6f500 LSLS            R2, R2, #1
0x6f502 LDR             R6, =unk_1535F5C
0x6f504 LDR             R1, =dword_1501BF0
0x6f506 MOV             R12, R0
0x6f508 CMP             R3, R2
0x6f50a BNE             loc_6F53C
0x6f50c LDR             R0, =0x26F
0x6f50e LDRB            R2, [R5,R0]
0x6f510 LSLS            R3, R2, #2
0x6f512 ADDS            R3, R3, R2
0x6f514 LSLS            R3, R3, #2
0x6f516 ADDS            R3, R3, R6
0x6f518 LDR             R2, [R3,#0xC]
0x6f51a STR             R2, [R3,#0x10]
0x6f51c LDRB            R2, [R5,R0]
0x6f51e LSLS            R3, R2, #2
0x6f520 ADDS            R3, R3, R2
0x6f522 LSLS            R3, R3, #2
0x6f524 ADDS            R3, R3, R6
0x6f526 LDR             R3, [R3,#0x10]
0x6f528 LDR             R1, [R1]
0x6f52a STR             R3, [SP,#0x2C+var_2C]
0x6f52c LDRH            R3, [R5,#0x12]
0x6f52e SUBS            R1, #0x3F ; '?'
0x6f530 STR             R3, [SP,#0x2C+var_28]
0x6f532 MOVS            R0, #0x28 ; '('
0x6f534 MOVS            R3, #0
0x6f536 STR             R3, [SP,#0x2C+var_24]
0x6f538 STR             R4, [SP,#0x2C+var_20]
0x6f53a B               loc_6F56A
0x6f53c LDR             R0, =0x26F
0x6f53e LDRB            R2, [R5,R0]
0x6f540 LSLS            R3, R2, #2
0x6f542 ADDS            R3, R3, R2
0x6f544 LSLS            R3, R3, #2
0x6f546 ADDS            R3, R3, R6
0x6f548 LDR             R2, [R3,#0xC]
0x6f54a STR             R2, [R3,#0x10]
0x6f54c LDRB            R2, [R5,R0]
0x6f54e LSLS            R3, R2, #2
0x6f550 ADDS            R3, R3, R2
0x6f552 LSLS            R3, R3, #2
0x6f554 ADDS            R3, R3, R6
0x6f556 LDR             R3, [R3,#0x10]
0x6f558 LDR             R1, [R1]
0x6f55a STR             R3, [SP,#0x2C+var_2C]
0x6f55c LDRH            R3, [R5,#0x12]
0x6f55e STR             R3, [SP,#0x2C+var_28]
0x6f560 MOVS            R3, #0
0x6f562 STR             R3, [SP,#0x2C+var_24]
0x6f564 STR             R4, [SP,#0x2C+var_20]
0x6f566 SUBS            R1, #0x3F ; '?'
0x6f568 MOVS            R0, #0
0x6f56a MOVS            R2, #0
0x6f56c BL              sub_7133C
0x6f570 LDR             R6, =unk_1536750
0x6f572 LDR             R7, =dword_1501C30
0x6f574 LDR             R4, =(sub_6C9BC+1)
0x6f576 MOVS            R0, R7
0x6f578 MOVS            R1, R6
0x6f57a MOVS            R2, #0x3D ; '='
0x6f57c MOVS            R3, #1
0x6f57e STR             R4, [SP,#0x2C+var_10]
0x6f580 BL              sub_71336
0x6f584 LDR             R3, =dword_1501C14
0x6f586 LDR             R3, [R3]
0x6f588 ADDS            R3, #0x27 ; '''
0x6f58a LSLS            R3, R3, #0x10
0x6f58c LSRS            R3, R3, #0x10
0x6f58e STR             R3, [SP,#0x2C+var_C]
0x6f590 LDR             R3, =dword_1501BF0
0x6f592 LDR             R1, [R3]
0x6f594 LDRB            R3, [R6,#(byte_153675C - 0x1536750)]
0x6f596 STR             R3, [SP,#0x2C+var_2C]
0x6f598 MOVS            R3, #0
0x6f59a STR             R3, [SP,#0x2C+var_28]
0x6f59c STR             R3, [SP,#0x2C+var_24]
0x6f59e STR             R3, [SP,#0x2C+var_20]
0x6f5a0 STR             R3, [SP,#0x2C+var_1C]
0x6f5a2 STR             R3, [SP,#0x2C+var_18]
0x6f5a4 SUBS            R1, #0x51 ; 'Q'
0x6f5a6 MOVS            R3, R6
0x6f5a8 LDR             R0, [SP,#0x2C+var_C]
0x6f5aa MOVS            R2, R7
0x6f5ac LDR             R4, =(sub_6B350+1)
0x6f5ae BL              sub_71336
0x6f5b2 LDRH            R3, [R5,#0x10]
0x6f5b4 CMP             R3, #3
0x6f5b6 BNE             loc_6F5C0
0x6f5b8 MOVS            R0, R7
0x6f5ba MOVS            R1, R6
0x6f5bc MOVS            R2, #0x3F ; '?'
0x6f5be B               loc_6F5C6
0x6f5c0 MOVS            R0, R7
0x6f5c2 MOVS            R1, R6
0x6f5c4 MOVS            R2, #0x3E ; '>'
0x6f5c6 LDR             R4, [SP,#0x2C+var_10]
0x6f5c8 MOVS            R3, #1
0x6f5ca B               loc_6F6BA
0x6f5cc CMP             R3, #2
0x6f5ce BEQ             loc_6F5DA
0x6f5d0 CMP             R3, #4
0x6f5d2 BEQ             loc_6F5DA
0x6f5d4 MOVS            R0, #0
0x6f5d6 STR             R0, [SP,#0x2C+var_C]
0x6f5d8 B               loc_6F6E4
0x6f5da LDRH            R3, [R5,#0xE]
0x6f5dc CMP             R3, #0
0x6f5de BEQ             loc_6F660
0x6f5e0 LDR             R2, =dword_1501C04
0x6f5e2 MOVS            R3, #0xA0
0x6f5e4 LDR             R7, [R2]
0x6f5e6 LDR             R2, =(sub_6B158+1)
0x6f5e8 LSLS            R3, R3, #1
0x6f5ea LDR             R6, =unk_1535F5C
0x6f5ec LDR             R1, =dword_1501BF0
0x6f5ee MOV             R12, R2
0x6f5f0 CMP             R7, R3
0x6f5f2 BNE             loc_6F628
0x6f5f4 LDR             R4, =0x26F
0x6f5f6 LDRB            R2, [R5,R4]
0x6f5f8 LSLS            R3, R2, #2
0x6f5fa ADDS            R3, R3, R2
0x6f5fc LSLS            R3, R3, #2
0x6f5fe ADDS            R3, R3, R6
0x6f600 LDR             R2, [R3,#0xC]
0x6f602 STR             R2, [R3,#0x10]
0x6f604 LDRB            R2, [R5,R4]
0x6f606 LSLS            R3, R2, #2
0x6f608 ADDS            R3, R3, R2
0x6f60a LSLS            R3, R3, #2
0x6f60c ADDS            R3, R3, R6
0x6f60e LDR             R3, [R3,#0x10]
0x6f610 LDR             R1, [R1]
0x6f612 STR             R3, [SP,#0x2C+var_2C]
0x6f614 LDRH            R3, [R5,#0x12]
0x6f616 MOVS            R0, R7
0x6f618 STR             R3, [SP,#0x2C+var_28]
0x6f61a MOVS            R3, #1
0x6f61c STR             R3, [SP,#0x2C+var_24]
0x6f61e SUBS            R0, #0x28 ; '('
0x6f620 ADD             R3, SP, #0x2C+var_8
0x6f622 SUBS            R1, #0x3F ; '?'
0x6f624 STR             R3, [SP,#0x2C+var_20]
0x6f626 B               loc_6F658
0x6f628 LDR             R0, =0x26F
0x6f62a LDRB            R2, [R5,R0]
0x6f62c LSLS            R3, R2, #2
0x6f62e ADDS            R3, R3, R2
0x6f630 LSLS            R3, R3, #2
0x6f632 ADDS            R3, R3, R6
0x6f634 LDR             R2, [R3,#0xC]
0x6f636 STR             R2, [R3,#0x10]
0x6f638 LDRB            R2, [R5,R0]
0x6f63a LSLS            R3, R2, #2
0x6f63c ADDS            R3, R3, R2
0x6f63e LSLS            R3, R3, #2
0x6f640 ADDS            R3, R3, R6
0x6f642 LDR             R3, [R3,#0x10]
0x6f644 LDR             R1, [R1]
0x6f646 STR             R3, [SP,#0x2C+var_2C]
0x6f648 LDRH            R3, [R5,#0x12]
0x6f64a ADD             R4, SP, #0x2C+var_8
0x6f64c STR             R3, [SP,#0x2C+var_28]
0x6f64e MOVS            R3, #1
0x6f650 STR             R3, [SP,#0x2C+var_24]
0x6f652 STR             R4, [SP,#0x2C+var_20]
0x6f654 SUBS            R1, #0x3F ; '?'
0x6f656 MOVS            R0, R7
0x6f658 MOVS            R2, #0
0x6f65a MOVS            R3, #0
0x6f65c BL              sub_7133C
0x6f660 LDR             R6, =unk_1536750
0x6f662 LDR             R7, =dword_1501C30
0x6f664 LDR             R4, =(sub_6C9BC+1)
0x6f666 MOVS            R0, R7
0x6f668 MOVS            R1, R6
0x6f66a MOVS            R2, #0x3D ; '='
0x6f66c MOVS            R3, #1
0x6f66e STR             R4, [SP,#0x2C+var_14]
0x6f670 BL              sub_71336
0x6f674 LDR             R3, =dword_1501C14
0x6f676 LDR             R3, [R3]
0x6f678 SUBS            R3, #0x76 ; 'v'
0x6f67a LSLS            R3, R3, #0x10
0x6f67c LSRS            R3, R3, #0x10
0x6f67e STR             R3, [SP,#0x2C+var_C]
0x6f680 LDR             R3, =dword_1501BF0
0x6f682 LDR             R1, [R3]
0x6f684 LDRB            R3, [R6,#(byte_153675C - 0x1536750)]
0x6f686 STR             R3, [SP,#0x2C+var_2C]
0x6f688 MOVS            R3, #0
0x6f68a STR             R3, [SP,#0x2C+var_28]
0x6f68c STR             R3, [SP,#0x2C+var_24]
0x6f68e STR             R3, [SP,#0x2C+var_20]
0x6f690 STR             R3, [SP,#0x2C+var_1C]
0x6f692 STR             R3, [SP,#0x2C+var_18]
0x6f694 SUBS            R1, #0x51 ; 'Q'
0x6f696 MOVS            R3, R6
0x6f698 LDR             R0, [SP,#0x2C+var_C]
0x6f69a MOVS            R2, R7
0x6f69c LDR             R4, =(sub_6B350+1)
0x6f69e BL              sub_71336
0x6f6a2 LDRH            R3, [R5,#0x10]
0x6f6a4 CMP             R3, #4
0x6f6a6 BNE             loc_6F6B0
0x6f6a8 MOVS            R0, R7
0x6f6aa MOVS            R1, R6
0x6f6ac MOVS            R2, #0x40 ; '@'
0x6f6ae B               loc_6F6B6
0x6f6b0 MOVS            R0, R7
0x6f6b2 MOVS            R1, R6
0x6f6b4 MOVS            R2, #0x3E ; '>'
0x6f6b6 LDR             R4, [SP,#0x2C+var_14]
0x6f6b8 MOVS            R3, #1
0x6f6ba BL              sub_71336
0x6f6be LDR             R3, =dword_1501C14
0x6f6c0 LDR             R0, [R3]
0x6f6c2 LDR             R3, =dword_1501BF0
0x6f6c4 LDR             R1, [R3]
0x6f6c6 LDR             R3, =unk_1536750
0x6f6c8 LDRB            R4, [R3,#(byte_153675C - 0x1536750)]
0x6f6ca STR             R4, [SP,#0x2C+var_2C]
0x6f6cc MOVS            R4, #0
0x6f6ce STR             R4, [SP,#0x2C+var_28]
0x6f6d0 STR             R4, [SP,#0x2C+var_24]
0x6f6d2 STR             R4, [SP,#0x2C+var_20]
0x6f6d4 STR             R4, [SP,#0x2C+var_1C]
0x6f6d6 STR             R4, [SP,#0x2C+var_18]
0x6f6d8 SUBS            R0, #0x78 ; 'x'
0x6f6da SUBS            R1, #0x3F ; '?'
0x6f6dc LDR             R2, =dword_1501C30
0x6f6de LDR             R4, =(sub_6B350+1)
0x6f6e0 BL              sub_71336
0x6f6e4 MOVS            R3, #0x25C
0x6f6e8 LDRB            R3, [R5,R3]
0x6f6ea CMP             R3, #1
0x6f6ec BNE             loc_6F6FA
0x6f6ee LDR             R2, =byte_1536760
0x6f6f0 LDRB            R3, [R2]
0x6f6f2 CMP             R3, #1
0x6f6f4 BNE             loc_6F6FA
0x6f6f6 MOVS            R3, #4
0x6f6f8 STRB            R3, [R2]
0x6f6fa MOVS            R3, #0x238
0x6f6fe LDR             R2, [R5,R3]
0x6f700 CMP             R2, #0
0x6f702 BEQ             loc_6F71A
0x6f704 LDR             R3, =dword_1501BF0
0x6f706 LDR             R0, [SP,#0x2C+var_C]
0x6f708 LDR             R1, [R3]
0x6f70a LDR             R3, =0xFFFFFF00
0x6f70c ADDS            R0, #0x27 ; '''
0x6f70e STR             R3, [SP,#0x2C+var_2C]
0x6f710 SUBS            R1, #0x4F ; 'O'
0x6f712 MOVS            R3, #1
0x6f714 LDR             R4, =(sub_6770C+1)
0x6f716 BL              sub_71336
0x6f71a MOVS            R3, #0x23C
0x6f71e LDR             R4, [R5,R3]
0x6f720 CMP             R4, #0
0x6f722 BNE             loc_6F726
0x6f724 B               loc_6F85E
0x6f726 LDR             R3, =0x25E
0x6f728 LDRB            R3, [R5,R3]
0x6f72a LDR             R1, =dword_1501BF0
0x6f72c LDR             R0, =dword_1501C14
0x6f72e LDR             R6, =(sub_695C4+1)
0x6f730 CMP             R3, #1
0x6f732 BNE             loc_6F760
0x6f734 MOVS            R3, #0x11
0x6f736 LDR             R0, [R0]
0x6f738 LDR             R1, [R1]
0x6f73a STR             R3, [SP,#0x2C+var_2C]
0x6f73c MOVS            R3, #0
0x6f73e STR             R3, [SP,#0x2C+var_28]
0x6f740 LDR             R3, =0x25F
0x6f742 LDRB            R2, [R5,R3]
0x6f744 MOVS            R3, #0x260
0x6f748 LDRB            R3, [R5,R3]
0x6f74a LSLS            R2, R2, #8
0x6f74c LSLS            R3, R3, #0x10
0x6f74e ADDS            R2, R2, R3
0x6f750 LDR             R3, =0x261
0x6f752 LDRB            R3, [R5,R3]
0x6f754 LSLS            R3, R3, #0x18
0x6f756 ADDS            R2, R2, R3
0x6f758 SUBS            R0, #0x6E ; 'n'
0x6f75a SUBS            R1, #0x35 ; '5'
0x6f75c STR             R2, [SP,#0x2C+var_24]
0x6f75e B               loc_6F774
0x6f760 MOVS            R3, #0x11
0x6f762 LDR             R0, [R0]
0x6f764 LDR             R1, [R1]
0x6f766 STR             R3, [SP,#0x2C+var_2C]
0x6f768 MOVS            R3, #0
0x6f76a STR             R3, [SP,#0x2C+var_28]
0x6f76c LDR             R3, =0xFFFFFF00
0x6f76e STR             R3, [SP,#0x2C+var_24]
0x6f770 SUBS            R0, #0x6E ; 'n'
0x6f772 SUBS            R1, #0x35 ; '5'
0x6f774 MOVS            R2, #0xDC
0x6f776 B               loc_6F858
0x6f778 MOVS            R3, #0x23C
0x6f77c LDR             R4, [R5,R3]
0x6f77e LDR             R3, =0x25E
0x6f780 LDRB            R3, [R5,R3]
0x6f782 LDR             R6, =(sub_695C4+1)
0x6f784 LDR             R2, =word_1534730
0x6f786 LDR             R1, =word_15346FC
0x6f788 CMP             R3, #1
0x6f78a BNE             loc_6F834
0x6f78c MOVS            R3, #(word_1534730 - 0x1534730)
0x6f78e LDRSH           R0, [R2,R3]; word_1534730
0x6f790 MOVS            R3, #0x240
0x6f794 LDRH            R3, [R5,R3]
0x6f796 ADDS            R0, R0, R3
0x6f798 LDR             R3, =0x242
0x6f79a MOVS            R2, #(word_15346FC - 0x15346FC)
0x6f79c LDRSH           R1, [R1,R2]; word_15346FC
0x6f79e LDRH            R3, [R5,R3]
0x6f7a0 ADDS            R1, R1, R3
0x6f7a2 MOVS            R3, #0x11
0x6f7a4 STR             R3, [SP,#0x2C+var_2C]
0x6f7a6 MOVS            R3, #0
0x6f7a8 STR             R3, [SP,#0x2C+var_28]
0x6f7aa LDR             R3, =0x25F
0x6f7ac LDRB            R2, [R5,R3]
0x6f7ae MOVS            R3, #0x260
0x6f7b2 LDRB            R3, [R5,R3]
0x6f7b4 LSLS            R2, R2, #8
0x6f7b6 LSLS            R3, R3, #0x10
0x6f7b8 ADDS            R2, R2, R3
0x6f7ba LDR             R3, =0x261
0x6f7bc LDRB            R3, [R5,R3]
0x6f7be LSLS            R3, R3, #0x18
0x6f7c0 ADDS            R2, R2, R3
0x6f7c2 STR             R2, [SP,#0x2C+var_24]
0x6f7c4 B               loc_6F856
0x6f834 MOVS            R3, #(word_1534730 - 0x1534730)
0x6f836 LDRSH           R0, [R2,R3]; word_1534730
0x6f838 MOVS            R3, #0x240
0x6f83c LDRH            R3, [R5,R3]
0x6f83e ADDS            R0, R0, R3
0x6f840 LDR             R3, =0x242
0x6f842 MOVS            R2, #(word_15346FC - 0x15346FC)
0x6f844 LDRSH           R1, [R1,R2]; word_15346FC
0x6f846 LDRH            R3, [R5,R3]
0x6f848 ADDS            R1, R1, R3
0x6f84a MOVS            R3, #0x11
0x6f84c STR             R3, [SP,#0x2C+var_2C]
0x6f84e MOVS            R3, #0
0x6f850 STR             R3, [SP,#0x2C+var_28]
0x6f852 LDR             R3, =0xFFFFFF00
0x6f854 STR             R3, [SP,#0x2C+var_24]
0x6f856 MOVS            R2, #0xC8
0x6f858 MOVS            R3, R4
0x6f85a BL              sub_7133A
0x6f85e ADD             SP, SP, #0x2C ; ','
0x6f860 POP             {R4-R7}
0x6f862 POP             {R0}
0x6f864 BX              R0