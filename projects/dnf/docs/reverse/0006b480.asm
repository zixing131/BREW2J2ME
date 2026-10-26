0x6b480 PUSH            {R4-R7,LR}
0x6b482 SUB             SP, SP, #0x12C
0x6b484 STR             R0, [SP,#0x12C+var_118]
0x6b486 MOV             R0, SP
0x6b488 STR             R1, [SP,#0x12C+var_11C]
0x6b48a STR             R2, [SP,#0x12C+var_120]
0x6b48c STR             R3, [SP,#0x12C+var_124]
0x6b48e MOVS            R1, #0
0x6b490 MOVS            R2, #0xFF
0x6b492 LDR             R3, =sub_8CA1C
0x6b494 ADDS            R0, #0x2D ; '-'
0x6b496 LDR             R4, [SP,#0x12C+arg_4]
0x6b498 BL              sub_6BB36
0x6b49c LDR             R3, =0x72755
0x6b49e LDR             R0, [SP,#0x12C+var_124]
0x6b4a0 BL              sub_6BB36
0x6b4a4 MOVS            R3, R0
0x6b4a6 CMP             R4, #0
0x6b4a8 BEQ             loc_6B4CC
0x6b4aa LDR             R0, [SP,#0x12C+var_120]
0x6b4ac CMP             R0, R3
0x6b4ae BLE             loc_6B4B2
0x6b4b0 MOVS            R0, R3
0x6b4b2 CMP             R4, #1
0x6b4b4 BNE             loc_6B4C2
0x6b4b6 LSRS            R3, R0, #0x1F
0x6b4b8 ADDS            R3, R3, R0
0x6b4ba ASRS            R3, R3, #1
0x6b4bc NEGS            R3, R3
0x6b4be STR             R3, [SP,#0x12C+var_110]
0x6b4c0 B               loc_6B4D0
0x6b4c2 CMP             R4, #2
0x6b4c4 BNE             loc_6B4CC
0x6b4c6 NEGS            R0, R0
0x6b4c8 STR             R0, [SP,#0x12C+var_110]
0x6b4ca B               loc_6B4D0
0x6b4cc MOVS            R2, #0
0x6b4ce STR             R2, [SP,#0x12C+var_110]
0x6b4d0 MOVS            R3, #0
0x6b4d2 STR             R3, [SP,#0x12C+var_10C]
0x6b4d4 STR             R3, [SP,#0x12C+var_108]
0x6b4d6 STR             R3, [SP,#0x12C+var_104]
0x6b4d8 B               loc_6B730
0x6b4da LSLS            R3, R2, #0x18
0x6b4dc CMP             R3, #0
0x6b4de BGE             loc_6B536
0x6b4e0 MOV             R4, SP
0x6b4e2 ADDS            R4, #0x2D ; '-'
0x6b4e4 MOVS            R1, #0
0x6b4e6 MOVS            R2, #0xFF
0x6b4e8 LDR             R3, =unk_140329C
0x6b4ea MOVS            R0, R4
0x6b4ec BL              sub_6BB36
0x6b4f0 MOVS            R2, #2
0x6b4f2 LDR             R1, [SP,#0x12C+var_114]
0x6b4f4 LDR             R3, =unk_140327C
0x6b4f6 MOVS            R0, R4
0x6b4f8 BL              sub_6BB36
0x6b4fc LDR             R3, =0x8B171
0x6b4fe LDR             R0, =unk_15377C8
0x6b500 BL              sub_6BB36
0x6b504 LDR             R2, [SP,#0x12C+var_108]
0x6b506 LDR             R3, [SP,#0x12C+var_120]
0x6b508 ADDS            R5, R2, R0
0x6b50a CMP             R5, R3
0x6b50c BLE             loc_6B510
0x6b50e B               loc_6B6A6
0x6b510 LDR             R2, [SP,#0x12C+var_118]
0x6b512 LDR             R3, [SP,#0x12C+var_108]
0x6b514 ADDS            R0, R2, R3
0x6b516 MOVS            R3, #0
0x6b518 LDR             R2, [SP,#0x12C+var_110]
0x6b51a STR             R3, [SP,#0x12C+var_12C]
0x6b51c LDR             R3, [SP,#0x12C+arg_8]
0x6b51e ADDS            R0, R2, R0
0x6b520 STR             R3, [SP,#0x12C+var_128]
0x6b522 MOVS            R2, R4
0x6b524 LDR             R1, [SP,#0x12C+var_11C]
0x6b526 MOVS            R3, #0
0x6b528 LDR             R4, =0x72941
0x6b52a BL              sub_6BB38
0x6b52e LDR             R2, [SP,#0x12C+var_10C]
0x6b530 ADDS            R2, #2
0x6b532 STR             R2, [SP,#0x12C+var_10C]
0x6b534 B               loc_6B72E
0x6b536 CMP             R2, #0x24 ; '$'
0x6b538 BEQ             loc_6B53C
0x6b53a B               loc_6B690
0x6b53c LDR             R2, [SP,#0x12C+var_114]
0x6b53e LDRB            R3, [R2,#1]
0x6b540 CMP             R3, #0x41 ; 'A'
0x6b542 BEQ             loc_6B54A
0x6b544 CMP             R3, #0x61 ; 'a'
0x6b546 BEQ             loc_6B54A
0x6b548 B               loc_6B688
0x6b54a MOV             R0, SP
0x6b54c MOVS            R2, #0xFF
0x6b54e LDR             R3, =unk_140329C
0x6b550 ADDS            R0, #0x2D ; '-'
0x6b552 MOVS            R1, #0
0x6b554 BL              sub_6BB36
0x6b558 LDR             R2, [SP,#0x12C+var_114]
0x6b55a LDRB            R3, [R2,#2]
0x6b55c SUBS            R3, #0x30 ; '0'; switch 10 cases
0x6b55e CMP             R3, #9
0x6b560 BHI             def_6B568; jumptable 0006B568 default case
0x6b562 LDR             R2, =jpt_6B568
0x6b564 LSLS            R3, R3, #2
0x6b566 LDR             R3, [R3,R2]
0x6b568 MOV             PC, R3; switch jump
0x6b56a LDR             R6, =0x80808000; jumptable 0006B568 case 57
0x6b56c B               loc_6B59C
0x6b56e LDR             R6, =0xFFFFFF00; jumptable 0006B568 default case
0x6b570 B               loc_6B59C
0x6b572 LDR             R6, =0xFF018A00; jumptable 0006B568 case 48
0x6b574 B               loc_6B59C
0x6b576 LDR             R6, =0xFF6C0000; jumptable 0006B568 case 49
0x6b578 B               loc_6B59C
0x6b57a MOVS            R6, #0x5E00000; jumptable 0006B568 case 50
0x6b57e B               loc_6B59C
0x6b580 LDR             R6, =0x1EAFF00; jumptable 0006B568 case 51
0x6b582 B               loc_6B59C
0x6b584 LDR             R6, =0x8AFF00; jumptable 0006B568 case 52
0x6b586 B               loc_6B59C
0x6b588 MOVS            R6, #0xFF00; jumptable 0006B568 case 53
0x6b58c B               loc_6B59C
0x6b58e LDR             R6, =0xE466FF00; jumptable 0006B568 case 54
0x6b590 B               loc_6B59C
0x6b592 LDR             R6, =0x59595900; jumptable 0006B568 case 55
0x6b594 B               loc_6B59C
0x6b596 ADDS            R7, #1
0x6b598 B               loc_6B682
0x6b59a LDR             R6, =0xB4C83100; jumptable 0006B568 case 56
0x6b59c MOVS            R7, #4
0x6b59e B               loc_6B678
0x6b5a0 LSLS            R3, R2, #0x18
0x6b5a2 CMP             R3, #0
0x6b5a4 BGE             loc_6B606
0x6b5a6 MOV             R4, SP
0x6b5a8 ADDS            R4, #0x2D ; '-'
0x6b5aa MOVS            R1, #0
0x6b5ac MOVS            R2, #0xFF
0x6b5ae LDR             R3, =unk_140329C
0x6b5b0 MOVS            R0, R4
0x6b5b2 BL              sub_6BB36
0x6b5b6 MOVS            R1, R5
0x6b5b8 MOVS            R2, #2
0x6b5ba LDR             R3, =unk_140327C
0x6b5bc MOVS            R0, R4
0x6b5be BL              sub_6BB36
0x6b5c2 LDR             R3, =0x8B171
0x6b5c4 LDR             R0, =unk_15377C8
0x6b5c6 BL              sub_6BB36
0x6b5ca LDR             R3, [SP,#0x12C+var_108]
0x6b5cc LDR             R2, [SP,#0x12C+var_120]
0x6b5ce ADDS            R5, R3, R0
0x6b5d0 CMP             R5, R2
0x6b5d2 BLE             loc_6B5E8
0x6b5d4 LDR             R3, [SP,#0x12C+var_11C]
0x6b5d6 LDR             R2, [SP,#0x12C+arg_0]
0x6b5d8 ADDS            R3, R3, R2
0x6b5da STR             R3, [SP,#0x12C+var_11C]
0x6b5dc LDR             R3, [SP,#0x12C+var_104]
0x6b5de MOVS            R2, #0
0x6b5e0 ADDS            R3, #1
0x6b5e2 STR             R3, [SP,#0x12C+var_104]
0x6b5e4 STR             R2, [SP,#0x12C+var_108]
0x6b5e6 B               loc_6B678
0x6b5e8 LDR             R3, [SP,#0x12C+var_118]
0x6b5ea LDR             R2, [SP,#0x12C+var_108]
0x6b5ec ADDS            R0, R3, R2
0x6b5ee LDR             R3, [SP,#0x12C+var_110]
0x6b5f0 ADDS            R0, R3, R0
0x6b5f2 MOVS            R3, #0
0x6b5f4 MOVS            R2, R4
0x6b5f6 STR             R3, [SP,#0x12C+var_12C]
0x6b5f8 STR             R6, [SP,#0x12C+var_128]
0x6b5fa LDR             R1, [SP,#0x12C+var_11C]
0x6b5fc LDR             R4, =0x72941
0x6b5fe BL              sub_6BB38
0x6b602 ADDS            R7, #2
0x6b604 B               loc_6B676
0x6b606 CMP             R2, #0x24 ; '$'
0x6b608 BEQ             loc_6B596
0x6b60a MOV             R4, SP
0x6b60c ADDS            R4, #0x2D ; '-'
0x6b60e MOVS            R1, #0
0x6b610 MOVS            R2, #0xFF
0x6b612 LDR             R3, =unk_140329C
0x6b614 MOVS            R0, R4
0x6b616 BL              sub_6BB36
0x6b61a MOVS            R2, #1
0x6b61c LDR             R3, =unk_140327C
0x6b61e MOVS            R0, R4
0x6b620 MOVS            R1, R5
0x6b622 BL              sub_6BB36
0x6b626 LDRB            R3, [R5]
0x6b628 SUBS            R3, #0x20 ; ' '
0x6b62a LDR             R2, =0x8B171
0x6b62c CMP             R3, #0x5E ; '^'
0x6b62e BHI             loc_6B634
0x6b630 LDR             R0, =unk_1536CBC
0x6b632 B               loc_6B636
0x6b634 LDR             R0, =unk_1536B60
0x6b636 BL              sub_6BB34
0x6b63a LDR             R2, [SP,#0x12C+var_108]
0x6b63c LDR             R3, [SP,#0x12C+var_120]
0x6b63e ADDS            R5, R2, R0
0x6b640 CMP             R5, R3
0x6b642 BLE             loc_6B658
0x6b644 LDR             R2, [SP,#0x12C+var_11C]
0x6b646 LDR             R3, [SP,#0x12C+arg_0]
0x6b648 ADDS            R2, R2, R3
0x6b64a STR             R2, [SP,#0x12C+var_11C]
0x6b64c LDR             R2, [SP,#0x12C+var_104]
0x6b64e MOVS            R3, #0
0x6b650 ADDS            R2, #1
0x6b652 STR             R2, [SP,#0x12C+var_104]
0x6b654 STR             R3, [SP,#0x12C+var_108]
0x6b656 B               loc_6B678
0x6b658 LDR             R2, [SP,#0x12C+var_118]
0x6b65a LDR             R3, [SP,#0x12C+var_108]
0x6b65c ADDS            R0, R2, R3
0x6b65e LDR             R2, [SP,#0x12C+var_110]
0x6b660 MOVS            R3, #0
0x6b662 ADDS            R0, R2, R0
0x6b664 MOV             R2, SP
0x6b666 STR             R3, [SP,#0x12C+var_12C]
0x6b668 STR             R6, [SP,#0x12C+var_128]
0x6b66a LDR             R1, [SP,#0x12C+var_11C]
0x6b66c ADDS            R2, #0x2D ; '-'
0x6b66e LDR             R4, =0x72941
0x6b670 BL              sub_6BB38
0x6b674 ADDS            R7, #1
0x6b676 STR             R5, [SP,#0x12C+var_108]
0x6b678 LDR             R3, [SP,#0x12C+var_114]
0x6b67a ADDS            R5, R3, R7
0x6b67c LDRB            R2, [R5]
0x6b67e CMP             R2, #0
0x6b680 BNE             loc_6B5A0
0x6b682 LDR             R2, [SP,#0x12C+var_10C]
0x6b684 ADDS            R2, R2, R7
0x6b686 B               loc_6B698
0x6b688 LDR             R3, [SP,#0x12C+var_10C]
0x6b68a ADDS            R3, #1
0x6b68c STR             R3, [SP,#0x12C+var_10C]
0x6b68e B               loc_6B730
0x6b690 CMP             R2, #0xD
0x6b692 BNE             loc_6B69C
0x6b694 LDR             R2, [SP,#0x12C+var_10C]
0x6b696 ADDS            R2, #1
0x6b698 STR             R2, [SP,#0x12C+var_10C]
0x6b69a B               loc_6B730
0x6b69c CMP             R2, #0xA
0x6b69e BNE             loc_6B6BA
0x6b6a0 LDR             R3, [SP,#0x12C+var_10C]
0x6b6a2 ADDS            R3, #1
0x6b6a4 STR             R3, [SP,#0x12C+var_10C]
0x6b6a6 LDR             R2, [SP,#0x12C+var_11C]
0x6b6a8 LDR             R3, [SP,#0x12C+arg_0]
0x6b6aa ADDS            R2, R2, R3
0x6b6ac STR             R2, [SP,#0x12C+var_11C]
0x6b6ae LDR             R2, [SP,#0x12C+var_104]
0x6b6b0 MOVS            R3, #0
0x6b6b2 ADDS            R2, #1
0x6b6b4 STR             R2, [SP,#0x12C+var_104]
0x6b6b6 STR             R3, [SP,#0x12C+var_108]
0x6b6b8 B               loc_6B730
0x6b6ba MOV             R4, SP
0x6b6bc ADDS            R4, #0x2D ; '-'
0x6b6be MOVS            R1, #0
0x6b6c0 MOVS            R2, #0xFF
0x6b6c2 LDR             R3, =unk_140329C
0x6b6c4 MOVS            R0, R4
0x6b6c6 BL              sub_6BB36
0x6b6ca MOVS            R2, #1
0x6b6cc LDR             R3, =unk_140327C
0x6b6ce MOVS            R0, R4
0x6b6d0 LDR             R1, [SP,#0x12C+var_114]
0x6b6d2 BL              sub_6BB36
0x6b6d6 LDR             R2, [SP,#0x12C+var_114]
0x6b6d8 LDRB            R3, [R2]
0x6b6da SUBS            R3, #0x20 ; ' '
0x6b6dc LDR             R2, =0x8B171
0x6b6de CMP             R3, #0x5E ; '^'
0x6b6e0 BHI             loc_6B6E6
0x6b6e2 LDR             R0, =unk_1536CBC
0x6b6e4 B               loc_6B6E8
0x6b6e6 LDR             R0, =unk_1536B60
0x6b6e8 BL              sub_6BB34
0x6b6ec LDR             R3, [SP,#0x12C+var_108]
0x6b6ee LDR             R2, [SP,#0x12C+var_120]
0x6b6f0 ADDS            R5, R3, R0
0x6b6f2 CMP             R5, R2
0x6b6f4 BLE             loc_6B70A
0x6b6f6 LDR             R3, [SP,#0x12C+var_11C]
0x6b6f8 LDR             R2, [SP,#0x12C+arg_0]
0x6b6fa ADDS            R3, R3, R2
0x6b6fc STR             R3, [SP,#0x12C+var_11C]
0x6b6fe LDR             R3, [SP,#0x12C+var_104]
0x6b700 MOVS            R2, #0
0x6b702 ADDS            R3, #1
0x6b704 STR             R3, [SP,#0x12C+var_104]
0x6b706 STR             R2, [SP,#0x12C+var_108]
0x6b708 B               loc_6B730
0x6b70a LDR             R3, [SP,#0x12C+var_118]
0x6b70c LDR             R2, [SP,#0x12C+var_108]
0x6b70e ADDS            R0, R3, R2
0x6b710 LDR             R3, [SP,#0x12C+var_110]
0x6b712 LDR             R2, [SP,#0x12C+arg_8]
0x6b714 ADDS            R0, R3, R0
0x6b716 STR             R2, [SP,#0x12C+var_128]
0x6b718 MOVS            R3, #0
0x6b71a MOV             R2, SP
0x6b71c STR             R3, [SP,#0x12C+var_12C]
0x6b71e LDR             R1, [SP,#0x12C+var_11C]
0x6b720 ADDS            R2, #0x2D ; '-'
0x6b722 LDR             R4, =0x72941
0x6b724 BL              sub_6BB38
0x6b728 LDR             R3, [SP,#0x12C+var_10C]
0x6b72a ADDS            R3, #1
0x6b72c STR             R3, [SP,#0x12C+var_10C]
0x6b72e STR             R5, [SP,#0x12C+var_108]
0x6b730 LDR             R2, [SP,#0x12C+var_124]
0x6b732 LDR             R3, [SP,#0x12C+var_10C]
0x6b734 ADDS            R2, R2, R3
0x6b736 STR             R2, [SP,#0x12C+var_114]
0x6b738 LDRB            R2, [R2]
0x6b73a CMP             R2, #0
0x6b73c BEQ             loc_6B740
0x6b73e B               loc_6B4DA
0x6b740 LDR             R0, [SP,#0x12C+var_104]
0x6b742 ADD             SP, SP, #0x12C
0x6b744 ADDS            R0, #1
0x6b746 POP             {R4-R7}
0x6b748 POP             {R1}
0x6b74a BX              R1