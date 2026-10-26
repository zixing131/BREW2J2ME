0x6e440 PUSH            {R4-R7,LR}
0x6e442 SUB             SP, SP, #0x9C
0x6e444 MOV             R3, SP
0x6e446 MOV             R4, SP
0x6e448 LSLS            R2, R0, #0x10
0x6e44a ADDS            R3, #0x9B
0x6e44c ADDS            R4, #0x6E ; 'n'
0x6e44e MOVS            R7, R1
0x6e450 MOVS            R1, #0
0x6e452 STRB            R1, [R3]
0x6e454 LSRS            R2, R2, #0x10
0x6e456 STR             R1, [SP,#0x9C+var_10]
0x6e458 LDR             R3, =unk_14032CC
0x6e45a LDR             R1, =aDDat; "%d.dat"
0x6e45c MOVS            R0, R4
0x6e45e BL              sub_6EACE
0x6e462 MOVS            R0, R4
0x6e464 BL              sub_6CBE0
0x6e468 STR             R0, [SP,#0x9C+var_84]
0x6e46a CMP             R0, #0
0x6e46c BNE             loc_6E470
0x6e46e B               loc_6E92E
0x6e470 LDR             R5, =unk_140327C
0x6e472 LDR             R1, [SP,#0x9C+var_84]
0x6e474 MOVS            R2, #2
0x6e476 ADD             R0, SP, #0x9C+var_4
0x6e478 BL              sub_6EAD2
0x6e47c LDR             R1, [SP,#0x9C+var_84]
0x6e47e MOVS            R2, #4
0x6e480 ADDS            R1, #2
0x6e482 ADD             R0, SP, #0x9C+var_8
0x6e484 BL              sub_6EAD2
0x6e488 LDR             R1, [SP,#0x9C+var_84]
0x6e48a MOVS            R2, #4
0x6e48c ADDS            R1, #6
0x6e48e ADD             R0, SP, #0x9C+var_C
0x6e490 BL              sub_6EAD2
0x6e494 LDR             R6, =unk_14032EC
0x6e496 LDR             R0, [SP,#0x9C+var_8]
0x6e498 BL              sub_6EAD4
0x6e49c STR             R0, [SP,#0x9C+var_80]
0x6e49e LDR             R0, [SP,#0x9C+var_84]
0x6e4a0 MOVS            R1, #6
0x6e4a2 LDR             R3, [SP,#0x9C+var_C]
0x6e4a4 LDR             R2, [SP,#0x9C+var_8]
0x6e4a6 STR             R1, [SP,#0x9C+var_9C]
0x6e4a8 LDR             R4, =(sub_692B4+1)
0x6e4aa LDR             R1, [SP,#0x9C+var_80]
0x6e4ac ADDS            R0, #0xA
0x6e4ae BL              sub_6EAD0
0x6e4b2 MOVS            R0, R7
0x6e4b4 LDR             R1, [SP,#0x9C+var_80]
0x6e4b6 MOVS            R2, #1
0x6e4b8 ADDS            R0, #9
0x6e4ba BL              sub_6EAD2
0x6e4be LDR             R4, [SP,#0x9C+var_80]
0x6e4c0 MOVS            R0, R7
0x6e4c2 ADDS            R4, #1
0x6e4c4 MOVS            R1, R4
0x6e4c6 MOVS            R2, #1
0x6e4c8 ADDS            R0, #0xA
0x6e4ca BL              sub_6EAD2
0x6e4ce ADDS            R4, #1
0x6e4d0 MOVS            R0, R7
0x6e4d2 MOVS            R1, R4
0x6e4d4 MOVS            R2, #1
0x6e4d6 ADDS            R0, #0xC
0x6e4d8 BL              sub_6EAD2
0x6e4dc ADDS            R4, #1
0x6e4de MOVS            R0, R7
0x6e4e0 MOVS            R1, R4
0x6e4e2 MOVS            R2, #1
0x6e4e4 ADDS            R0, #0xB
0x6e4e6 BL              sub_6EAD2
0x6e4ea ADDS            R4, #1
0x6e4ec MOVS            R0, R7
0x6e4ee MOVS            R1, R4
0x6e4f0 MOVS            R2, #1
0x6e4f2 ADDS            R4, #1
0x6e4f4 ADDS            R0, #8
0x6e4f6 BL              sub_6EAD2
0x6e4fa STR             R4, [SP,#0x9C+var_7C]
0x6e4fc LDRB            R0, [R7,#9]
0x6e4fe LSLS            R0, R0, #3
0x6e500 ADDS            R0, #2
0x6e502 BL              sub_6EAD4
0x6e506 LDRB            R2, [R7,#9]
0x6e508 MOVS            R1, #0
0x6e50a LSLS            R2, R2, #3
0x6e50c LDR             R4, =unk_140329C
0x6e50e STR             R0, [R7]
0x6e510 STR             R0, [R7,#0x10]
0x6e512 BL              sub_6EAD0
0x6e516 LDRB            R0, [R7,#8]
0x6e518 LSLS            R0, R0, #4
0x6e51a ADDS            R0, #2
0x6e51c BL              sub_6EAD4
0x6e520 LDRB            R2, [R7,#8]
0x6e522 STR             R0, [R7,#4]
0x6e524 STR             R0, [R7,#0x14]
0x6e526 LSLS            R2, R2, #4
0x6e528 MOVS            R1, #0
0x6e52a BL              sub_6EAD0
0x6e52e MOVS            R6, #0
0x6e530 B               loc_6E578
0x6e532 LDRB            R0, [R7,#0xA]
0x6e534 LSLS            R0, R0, #1
0x6e536 LDR             R3, =unk_14032EC
0x6e538 ADDS            R0, #2
0x6e53a LDR             R4, [R7,#0x10]
0x6e53c BL              sub_6EACE
0x6e540 LSLS            R5, R6, #3
0x6e542 LDR             R3, [R7,#0x10]
0x6e544 ADDS            R4, R5, R4
0x6e546 STR             R0, [R4]
0x6e548 ADDS            R3, R5, R3
0x6e54a LDR             R0, [R3]
0x6e54c STR             R0, [R3,#4]
0x6e54e LDRB            R2, [R7,#0xA]
0x6e550 MOVS            R1, #0
0x6e552 LSLS            R2, R2, #1
0x6e554 LDR             R3, =unk_140329C
0x6e556 BL              sub_6EACE
0x6e55a LDR             R3, [R7,#0x10]
0x6e55c ADDS            R3, R3, R5
0x6e55e LDR             R0, [R3,#4]
0x6e560 LDRB            R2, [R7,#0xA]
0x6e562 LDR             R1, [SP,#0x9C+var_7C]
0x6e564 LDR             R3, =(sub_66D3C+1)
0x6e566 BL              sub_6EACE
0x6e56a LDRB            R2, [R7,#0xA]
0x6e56c LDR             R1, [SP,#0x9C+var_7C]
0x6e56e LSLS            R3, R2, #1
0x6e570 ADDS            R3, R3, R2
0x6e572 ADDS            R1, R1, R3
0x6e574 STR             R1, [SP,#0x9C+var_7C]
0x6e576 ADDS            R6, #1
0x6e578 LDRB            R3, [R7,#9]
0x6e57a CMP             R6, R3
0x6e57c BLT             loc_6E532
0x6e57e MOVS            R2, #0
0x6e580 STR             R2, [SP,#0x9C+var_54]
0x6e582 B               loc_6E90E
0x6e584 LDR             R3, [SP,#0x9C+var_54]
0x6e586 LDR             R0, [R7,#0x14]
0x6e588 LSLS            R3, R3, #4
0x6e58a STR             R3, [SP,#0x9C+var_94]
0x6e58c ADDS            R0, R3, R0
0x6e58e LDR             R3, =unk_140327C
0x6e590 LDR             R1, [SP,#0x9C+var_7C]
0x6e592 MOVS            R2, #1
0x6e594 STR             R3, [SP,#0x9C+var_98]
0x6e596 ADDS            R0, #4
0x6e598 BL              sub_6EACE
0x6e59c LDR             R1, [SP,#0x9C+var_94]
0x6e59e LDR             R4, [SP,#0x9C+var_7C]
0x6e5a0 LDR             R0, [R7,#0x14]
0x6e5a2 ADDS            R4, #1
0x6e5a4 ADDS            R0, R1, R0
0x6e5a6 MOV             R5, SP
0x6e5a8 ADDS            R5, #0x9B
0x6e5aa MOVS            R1, R4
0x6e5ac MOVS            R2, #1
0x6e5ae LDR             R3, [SP,#0x9C+var_98]
0x6e5b0 MOVS            R6, #0
0x6e5b2 ADDS            R0, #6
0x6e5b4 BL              sub_6EACE
0x6e5b8 ADDS            R4, #1
0x6e5ba STRB            R6, [R5]
0x6e5bc MOVS            R1, R4
0x6e5be MOVS            R0, R5
0x6e5c0 MOVS            R2, #1
0x6e5c2 LDR             R3, [SP,#0x9C+var_98]
0x6e5c4 BL              sub_6EACE
0x6e5c8 MOVS            R3, #0
0x6e5ca LDRSB           R3, [R5,R3]
0x6e5cc LDR             R2, [R7,#0x14]
0x6e5ce LDR             R1, [SP,#0x9C+var_94]
0x6e5d0 ADDS            R4, #1
0x6e5d2 STRH            R3, [R2,R1]
0x6e5d4 STRB            R6, [R5]
0x6e5d6 MOVS            R1, R4
0x6e5d8 MOVS            R0, R5
0x6e5da MOVS            R2, #1
0x6e5dc LDR             R3, [SP,#0x9C+var_98]
0x6e5de ADDS            R4, #1
0x6e5e0 BL              sub_6EACE
0x6e5e4 STR             R4, [SP,#0x9C+var_7C]
0x6e5e6 LDR             R1, [SP,#0x9C+var_94]
0x6e5e8 LDR             R4, [R7,#0x14]
0x6e5ea MOVS            R3, #0
0x6e5ec LDRSB           R3, [R5,R3]
0x6e5ee ADDS            R4, R4, R1
0x6e5f0 LDRH            R2, [R4,#4]
0x6e5f2 STRH            R3, [R4,#2]
0x6e5f4 LDRH            R3, [R4,#6]
0x6e5f6 MOVS            R5, R3
0x6e5f8 MULS            R5, R2
0x6e5fa LDR             R3, =unk_14032EC
0x6e5fc ADDS            R0, R5, #2
0x6e5fe BL              sub_6EACE
0x6e602 LDR             R2, [SP,#0x9C+var_94]
0x6e604 LDR             R3, [R7,#0x14]
0x6e606 STR             R0, [R4,#8]
0x6e608 ADDS            R3, R2, R3
0x6e60a LDR             R0, [R3,#8]
0x6e60c MOVS            R1, #0
0x6e60e STR             R0, [R3,#0xC]
0x6e610 MOVS            R2, R5
0x6e612 LDR             R3, =unk_140329C
0x6e614 BL              sub_6EACE
0x6e618 LDRB            R3, [R7,#0xC]
0x6e61a CMP             R3, #0xC
0x6e61c BNE             loc_6E638
0x6e61e LDR             R1, [SP,#0x9C+var_94]
0x6e620 LDR             R3, [R7,#0x14]
0x6e622 ADDS            R3, R3, R1
0x6e624 LDR             R0, [R3,#0xC]
0x6e626 LDR             R1, [SP,#0x9C+var_7C]
0x6e628 MOVS            R2, R5
0x6e62a LDR             R3, [SP,#0x9C+var_98]
0x6e62c BL              sub_6EACE
0x6e630 LDR             R1, [SP,#0x9C+var_7C]
0x6e632 ADDS            R1, R1, R5
0x6e634 STR             R1, [SP,#0x9C+var_7C]
0x6e636 B               loc_6E908
0x6e638 CMP             R3, #0xB
0x6e63a BNE             loc_6E6FC
0x6e63c MOVS            R3, #1
0x6e63e MOVS            R2, R5
0x6e640 ANDS            R2, R3
0x6e642 STR             R2, [SP,#0x9C+var_90]
0x6e644 BNE             loc_6E64A
0x6e646 MOVS            R2, R5
0x6e648 B               loc_6E64C
0x6e64a ADDS            R2, R5, #1
0x6e64c LSRS            R3, R2, #0x1F
0x6e64e ADDS            R3, R3, R2
0x6e650 ASRS            R3, R3, #1
0x6e652 STR             R3, [SP,#0x9C+var_60]
0x6e654 LDR             R1, [SP,#0x9C+var_94]
0x6e656 LDR             R3, [R7,#0x14]
0x6e658 ADDS            R3, R3, R1
0x6e65a LDR             R3, [R3,#0xC]
0x6e65c STR             R3, [SP,#0x9C+var_74]
0x6e65e LDR             R3, =0x80000001
0x6e660 ANDS            R5, R3
0x6e662 CMP             R5, #0
0x6e664 BGE             loc_6E670
0x6e666 MOVS            R3, #2
0x6e668 SUBS            R5, #1
0x6e66a NEGS            R3, R3
0x6e66c ORRS            R5, R3
0x6e66e ADDS            R5, #1
0x6e670 MOVS            R2, #0
0x6e672 STR             R2, [SP,#0x9C+var_78]
0x6e674 B               loc_6E6F2
0x6e676 LDR             R1, [SP,#0x9C+var_7C]
0x6e678 MOVS            R2, #1
0x6e67a LDR             R3, =unk_140327C
0x6e67c ADD             R0, SP, #0x9C+var_10
0x6e67e BL              sub_6EACE
0x6e682 LDR             R2, [SP,#0x9C+var_10]
0x6e684 MOVS            R1, #0xF
0x6e686 ASRS            R3, R2, #4
0x6e688 ANDS            R3, R1
0x6e68a STR             R3, [SP,#0x9C+var_50]
0x6e68c LDR             R3, [SP,#0x9C+var_60]
0x6e68e ANDS            R2, R1
0x6e690 LDR             R1, [SP,#0x9C+var_78]
0x6e692 SUBS            R3, #1
0x6e694 ADD             R0, SP, #0x9C+var_50
0x6e696 STR             R2, [SP,#0x9C+var_4C]
0x6e698 CMP             R1, R3
0x6e69a BNE             loc_6E6C6
0x6e69c MOVS            R4, #0
0x6e69e MOVS            R6, R0
0x6e6a0 LDR             R2, [SP,#0x9C+var_90]
0x6e6a2 CMP             R2, #0
0x6e6a4 BEQ             loc_6E6AA
0x6e6a6 CMP             R4, R5
0x6e6a8 BGE             loc_6E6E6
0x6e6aa MOVS            R1, R6
0x6e6ac LDR             R3, =unk_140327C
0x6e6ae LDR             R0, [SP,#0x9C+var_74]
0x6e6b0 MOVS            R2, #1
0x6e6b2 BL              sub_6EACE
0x6e6b6 LDR             R3, [SP,#0x9C+var_74]
0x6e6b8 ADDS            R4, #1
0x6e6ba ADDS            R3, #1
0x6e6bc STR             R3, [SP,#0x9C+var_74]
0x6e6be ADDS            R6, #4
0x6e6c0 CMP             R4, #2
0x6e6c2 BEQ             loc_6E6E6
0x6e6c4 B               loc_6E6A0
0x6e6c6 LDR             R4, [SP,#0x9C+var_74]
0x6e6c8 MOVS            R6, R0
0x6e6ca MOVS            R0, R4
0x6e6cc MOVS            R1, R6
0x6e6ce LDR             R3, =unk_140327C
0x6e6d0 MOVS            R2, #1
0x6e6d2 BL              sub_6EACE
0x6e6d6 ADDS            R6, #4
0x6e6d8 ADD             R3, SP, #0x9C+var_48
0x6e6da ADDS            R4, #1
0x6e6dc CMP             R6, R3
0x6e6de BNE             loc_6E6CA
0x6e6e0 LDR             R1, [SP,#0x9C+var_74]
0x6e6e2 ADDS            R1, #2
0x6e6e4 STR             R1, [SP,#0x9C+var_74]
0x6e6e6 LDR             R2, [SP,#0x9C+var_7C]
0x6e6e8 LDR             R3, [SP,#0x9C+var_78]
0x6e6ea ADDS            R2, #1
0x6e6ec ADDS            R3, #1
0x6e6ee STR             R2, [SP,#0x9C+var_7C]
0x6e6f0 STR             R3, [SP,#0x9C+var_78]
0x6e6f2 LDR             R1, [SP,#0x9C+var_78]
0x6e6f4 LDR             R2, [SP,#0x9C+var_60]
0x6e6f6 CMP             R1, R2
0x6e6f8 BLT             loc_6E676
0x6e6fa B               loc_6E908
0x6e6fc CMP             R3, #0xA
0x6e6fe BEQ             loc_6E702
0x6e700 B               loc_6E80A
0x6e702 MOVS            R3, #3
0x6e704 MOVS            R1, R5
0x6e706 ANDS            R1, R3
0x6e708 STR             R1, [SP,#0x9C+var_8C]
0x6e70a BNE             loc_6E710
0x6e70c MOVS            R3, R5
0x6e70e B               loc_6E728
0x6e710 LDR             R3, =0x80000003
0x6e712 MOVS            R2, R5
0x6e714 ANDS            R2, R3
0x6e716 CMP             R2, #0
0x6e718 BGE             loc_6E724
0x6e71a MOVS            R3, #4
0x6e71c SUBS            R2, #1
0x6e71e NEGS            R3, R3
0x6e720 ORRS            R2, R3
0x6e722 ADDS            R2, #1
0x6e724 SUBS            R3, R5, R2
0x6e726 ADDS            R3, #4
0x6e728 CMP             R3, #0
0x6e72a BGE             loc_6E72E
0x6e72c ADDS            R3, #3
0x6e72e ASRS            R3, R3, #2
0x6e730 STR             R3, [SP,#0x9C+var_64]
0x6e732 LDR             R2, [SP,#0x9C+var_94]
0x6e734 LDR             R3, [R7,#0x14]
0x6e736 ADDS            R3, R3, R2
0x6e738 LDR             R3, [R3,#0xC]
0x6e73a STR             R3, [SP,#0x9C+var_70]
0x6e73c LDR             R3, =0x80000003
0x6e73e MOVS            R6, R5
0x6e740 ANDS            R6, R3
0x6e742 CMP             R6, #0
0x6e744 BGE             loc_6E750
0x6e746 MOVS            R3, #4
0x6e748 SUBS            R6, #1
0x6e74a NEGS            R3, R3
0x6e74c ORRS            R6, R3
0x6e74e ADDS            R6, #1
0x6e750 MOVS            R3, #0
0x6e752 B               loc_6E7FE
0x6e754 LDR             R1, [SP,#0x9C+var_7C]
0x6e756 MOVS            R2, #1
0x6e758 LDR             R3, =unk_140327C
0x6e75a ADD             R0, SP, #0x9C+var_10
0x6e75c BL              sub_6EACE
0x6e760 LDR             R1, [SP,#0x9C+var_10]
0x6e762 MOVS            R2, #3
0x6e764 ASRS            R3, R1, #6
0x6e766 ANDS            R3, R2
0x6e768 STR             R3, [SP,#0x9C+var_50]
0x6e76a ASRS            R3, R1, #4
0x6e76c ANDS            R3, R2
0x6e76e STR             R3, [SP,#0x9C+var_4C]
0x6e770 ASRS            R3, R1, #2
0x6e772 ANDS            R3, R2
0x6e774 ANDS            R1, R2
0x6e776 STR             R3, [SP,#0x9C+var_48]
0x6e778 LDR             R3, [SP,#0x9C+var_64]
0x6e77a STR             R1, [SP,#0x9C+var_44]
0x6e77c LDR             R1, [SP,#0x9C+var_5C]
0x6e77e SUBS            R3, #1
0x6e780 ADD             R0, SP, #0x9C+var_50
0x6e782 CMP             R1, R3
0x6e784 BNE             loc_6E7D4
0x6e786 MOVS            R4, #0
0x6e788 MOVS            R5, R0
0x6e78a LDR             R2, [SP,#0x9C+var_8C]
0x6e78c CMP             R2, #0
0x6e78e BEQ             loc_6E794
0x6e790 CMP             R4, R6
0x6e792 BGE             loc_6E7F4
0x6e794 MOVS            R1, R5
0x6e796 LDR             R3, =unk_140327C
0x6e798 LDR             R0, [SP,#0x9C+var_70]
0x6e79a MOVS            R2, #1
0x6e79c BL              sub_6EACE
0x6e7a0 LDR             R3, [SP,#0x9C+var_70]
0x6e7a2 ADDS            R4, #1
0x6e7a4 ADDS            R3, #1
0x6e7a6 STR             R3, [SP,#0x9C+var_70]
0x6e7a8 ADDS            R5, #4
0x6e7aa CMP             R4, #4
0x6e7ac BEQ             loc_6E7F4
0x6e7ae B               loc_6E78A
0x6e7d4 LDR             R4, [SP,#0x9C+var_70]
0x6e7d6 MOVS            R5, R0
0x6e7d8 MOVS            R0, R4
0x6e7da MOVS            R1, R5
0x6e7dc LDR             R3, =unk_140327C
0x6e7de MOVS            R2, #1
0x6e7e0 BL              sub_6EACE
0x6e7e4 ADDS            R5, #4
0x6e7e6 ADD             R3, SP, #0x9C+var_40
0x6e7e8 ADDS            R4, #1
0x6e7ea CMP             R5, R3
0x6e7ec BNE             loc_6E7D8
0x6e7ee LDR             R1, [SP,#0x9C+var_70]
0x6e7f0 ADDS            R1, #4
0x6e7f2 STR             R1, [SP,#0x9C+var_70]
0x6e7f4 LDR             R2, [SP,#0x9C+var_7C]
0x6e7f6 LDR             R3, [SP,#0x9C+var_5C]
0x6e7f8 ADDS            R2, #1
0x6e7fa STR             R2, [SP,#0x9C+var_7C]
0x6e7fc ADDS            R3, #1
0x6e7fe STR             R3, [SP,#0x9C+var_5C]
0x6e800 LDR             R1, [SP,#0x9C+var_5C]
0x6e802 LDR             R2, [SP,#0x9C+var_64]
0x6e804 CMP             R1, R2
0x6e806 BLT             loc_6E754
0x6e808 B               loc_6E908
0x6e80a CMP             R3, #9
0x6e80c BNE             loc_6E908
0x6e80e MOVS            R3, #7
0x6e810 MOVS            R1, R5
0x6e812 ANDS            R1, R3
0x6e814 STR             R1, [SP,#0x9C+var_88]
0x6e816 BNE             loc_6E81C
0x6e818 MOVS            R3, R5
0x6e81a B               loc_6E834
0x6e81c LDR             R3, =0x80000007
0x6e81e MOVS            R2, R5
0x6e820 ANDS            R2, R3
0x6e822 CMP             R2, #0
0x6e824 BGE             loc_6E830
0x6e826 MOVS            R3, #8
0x6e828 SUBS            R2, #1
0x6e82a NEGS            R3, R3
0x6e82c ORRS            R2, R3
0x6e82e ADDS            R2, #1
0x6e830 SUBS            R3, R5, R2
0x6e832 ADDS            R3, #8
0x6e834 CMP             R3, #0
0x6e836 BGE             loc_6E83A
0x6e838 ADDS            R3, #7
0x6e83a ASRS            R3, R3, #3
0x6e83c STR             R3, [SP,#0x9C+var_68]
0x6e83e LDR             R2, [SP,#0x9C+var_94]
0x6e840 LDR             R3, [R7,#0x14]
0x6e842 ADDS            R3, R3, R2
0x6e844 LDR             R3, [R3,#0xC]
0x6e846 STR             R3, [SP,#0x9C+var_6C]
0x6e848 LDR             R3, =0x80000007
0x6e84a MOVS            R6, R5
0x6e84c ANDS            R6, R3
0x6e84e CMP             R6, #0
0x6e850 BGE             loc_6E85C
0x6e852 MOVS            R3, #8
0x6e854 SUBS            R6, #1
0x6e856 NEGS            R3, R3
0x6e858 ORRS            R6, R3
0x6e85a ADDS            R6, #1
0x6e85c MOVS            R3, #0
0x6e85e B               loc_6E8FE
0x6e860 LDR             R1, [SP,#0x9C+var_7C]
0x6e862 MOVS            R2, #1
0x6e864 LDR             R3, =unk_140327C
0x6e866 ADD             R0, SP, #0x9C+var_10
0x6e868 BL              sub_6EACE
0x6e86c LDR             R2, [SP,#0x9C+var_10]
0x6e86e MOVS            R1, #1
0x6e870 ASRS            R3, R2, #7
0x6e872 ANDS            R3, R1
0x6e874 STR             R3, [SP,#0x9C+var_50]
0x6e876 ASRS            R3, R2, #6
0x6e878 ANDS            R3, R1
0x6e87a STR             R3, [SP,#0x9C+var_4C]
0x6e87c ASRS            R3, R2, #5
0x6e87e ANDS            R3, R1
0x6e880 STR             R3, [SP,#0x9C+var_48]
0x6e882 ASRS            R3, R2, #4
0x6e884 ANDS            R3, R1
0x6e886 STR             R3, [SP,#0x9C+var_44]
0x6e888 ASRS            R3, R2, #3
0x6e88a ANDS            R3, R1
0x6e88c STR             R3, [SP,#0x9C+var_40]
0x6e88e ASRS            R3, R2, #2
0x6e890 ANDS            R3, R1
0x6e892 STR             R3, [SP,#0x9C+var_3C]
0x6e894 ASRS            R3, R2, #1
0x6e896 ANDS            R3, R1
0x6e898 STR             R3, [SP,#0x9C+var_38]
0x6e89a LDR             R3, [SP,#0x9C+var_68]
0x6e89c ANDS            R2, R1
0x6e89e LDR             R1, [SP,#0x9C+var_58]
0x6e8a0 SUBS            R3, #1
0x6e8a2 ADD             R0, SP, #0x9C+var_50
0x6e8a4 STR             R2, [SP,#0x9C+var_34]
0x6e8a6 CMP             R1, R3
0x6e8a8 BNE             loc_6E8D4
0x6e8aa MOVS            R4, #0
0x6e8ac MOVS            R5, R0
0x6e8ae LDR             R2, [SP,#0x9C+var_88]
0x6e8b0 CMP             R2, #0
0x6e8b2 BEQ             loc_6E8B8
0x6e8b4 CMP             R4, R6
0x6e8b6 BGE             loc_6E8F4
0x6e8b8 MOVS            R1, R5
0x6e8ba LDR             R3, =unk_140327C
0x6e8bc LDR             R0, [SP,#0x9C+var_6C]
0x6e8be MOVS            R2, #1
0x6e8c0 BL              sub_6EACE
0x6e8c4 LDR             R3, [SP,#0x9C+var_6C]
0x6e8c6 ADDS            R4, #1
0x6e8c8 ADDS            R3, #1
0x6e8ca STR             R3, [SP,#0x9C+var_6C]
0x6e8cc ADDS            R5, #4
0x6e8ce CMP             R4, #8
0x6e8d0 BEQ             loc_6E8F4
0x6e8d2 B               loc_6E8AE
0x6e8d4 LDR             R4, [SP,#0x9C+var_6C]
0x6e8d6 MOVS            R5, R0
0x6e8d8 MOVS            R0, R4
0x6e8da MOVS            R1, R5
0x6e8dc LDR             R3, =unk_140327C
0x6e8de MOVS            R2, #1
0x6e8e0 BL              sub_6EACE
0x6e8e4 ADDS            R5, #4
0x6e8e6 ADD             R3, SP, #0x9C+var_30
0x6e8e8 ADDS            R4, #1
0x6e8ea CMP             R5, R3
0x6e8ec BNE             loc_6E8D8
0x6e8ee LDR             R1, [SP,#0x9C+var_6C]
0x6e8f0 ADDS            R1, #8
0x6e8f2 STR             R1, [SP,#0x9C+var_6C]
0x6e8f4 LDR             R2, [SP,#0x9C+var_7C]
0x6e8f6 LDR             R3, [SP,#0x9C+var_58]
0x6e8f8 ADDS            R2, #1
0x6e8fa STR             R2, [SP,#0x9C+var_7C]
0x6e8fc ADDS            R3, #1
0x6e8fe STR             R3, [SP,#0x9C+var_58]
0x6e900 LDR             R1, [SP,#0x9C+var_58]
0x6e902 LDR             R2, [SP,#0x9C+var_68]
0x6e904 CMP             R1, R2
0x6e906 BLT             loc_6E860
0x6e908 LDR             R3, [SP,#0x9C+var_54]
0x6e90a ADDS            R3, #1
0x6e90c STR             R3, [SP,#0x9C+var_54]
0x6e90e LDRB            R3, [R7,#8]
0x6e910 LDR             R1, [SP,#0x9C+var_54]
0x6e912 CMP             R1, R3
0x6e914 BGE             loc_6E918
0x6e916 B               loc_6E584
0x6e918 LDR             R2, [SP,#0x9C+var_80]
0x6e91a CMP             R2, #0
0x6e91c BEQ             loc_6E926
0x6e91e MOVS            R0, R2
0x6e920 LDR             R3, =unk_14032FC
0x6e922 BL              sub_6EACE
0x6e926 LDR             R0, [SP,#0x9C+var_84]
0x6e928 LDR             R3, =unk_14032FC
0x6e92a BL              sub_6EACE
0x6e92e ADD             SP, SP, #0x9C
0x6e930 POP             {R4-R7}
0x6e932 POP             {R0}
0x6e934 BX              R0