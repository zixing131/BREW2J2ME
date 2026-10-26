0x7e3ec PUSH            {R4-R7,LR}
0x7e3ee LDR             R4, =dword_1501D90
0x7e3f0 LDR             R5, =0x1AE8
0x7e3f2 LDR             R3, [R4]
0x7e3f4 LDR             R2, =0xFFFFFF
0x7e3f6 LDR             R3, [R3,R5]
0x7e3f8 ANDS            R3, R2
0x7e3fa LDR             R2, =0x4290B
0x7e3fc LSLS            R0, R0, #0x18
0x7e3fe LSRS            R6, R0, #0x18
0x7e400 CMP             R3, R2
0x7e402 BNE             loc_7E416
0x7e404 MOVS            R2, #0
0x7e406 CMP             R6, #8
0x7e408 BLS             loc_7E40C
0x7e40a MOVS            R2, #1
0x7e40c MOVS            R3, #1
0x7e40e EORS            R3, R2
0x7e410 LSLS            R3, R3, #0x18
0x7e412 LSRS            R0, R3, #0x18
0x7e414 B               loc_7E67C
0x7e416 MOVS            R0, #0x65 ; 'e'
0x7e418 LDR             R3, =(sub_1F2F0+1)
0x7e41a BL              sub_80706
0x7e41e LSLS            R0, R0, #0x18
0x7e420 ASRS            R0, R0, #0x18
0x7e422 CMP             R0, #1
0x7e424 BNE             loc_7E444
0x7e426 MOVS            R0, #0x65 ; 'e'
0x7e428 LDR             R3, =(sub_1F6AC+1)
0x7e42a BL              sub_80706
0x7e42e CMP             R0, #0
0x7e430 BNE             loc_7E444
0x7e432 LDR             R2, [R4]
0x7e434 LDRSB           R3, [R2,R5]
0x7e436 CMP             R3, #0x15
0x7e438 BNE             loc_7E444
0x7e43a LDR             R3, =0x1AEC
0x7e43c LDRSB           R3, [R2,R3]
0x7e43e CMP             R3, #2
0x7e440 BLE             loc_7E444
0x7e442 B               loc_7E67A
0x7e444 MOVS            R0, #0x78 ; 'x'
0x7e446 LDR             R3, =(sub_1F2F0+1)
0x7e448 BL              sub_80706
0x7e44c LSLS            R0, R0, #0x18
0x7e44e ASRS            R0, R0, #0x18
0x7e450 CMP             R0, #1
0x7e452 BNE             loc_7E476
0x7e454 MOVS            R0, #0x78 ; 'x'
0x7e456 LDR             R3, =(sub_1F6AC+1)
0x7e458 BL              sub_80706
0x7e45c CMP             R0, #0
0x7e45e BNE             loc_7E476
0x7e460 LDR             R3, =dword_1501D90
0x7e462 LDR             R2, [R3]
0x7e464 LDR             R3, =0x1AE8
0x7e466 LDRSB           R3, [R2,R3]
0x7e468 CMP             R3, #0x16
0x7e46a BNE             loc_7E476
0x7e46c LDR             R3, =0x1AEC
0x7e46e LDRSB           R3, [R2,R3]
0x7e470 CMP             R3, #2
0x7e472 BLE             loc_7E476
0x7e474 B               loc_7E67A
0x7e476 MOVS            R0, #0xA4
0x7e478 LDR             R3, =(sub_1F2F0+1)
0x7e47a BL              sub_80706
0x7e47e LSLS            R0, R0, #0x18
0x7e480 ASRS            R0, R0, #0x18
0x7e482 CMP             R0, #1
0x7e484 BNE             loc_7E4A8
0x7e486 MOVS            R0, #0xA4
0x7e488 LDR             R3, =(sub_1F6AC+1)
0x7e48a BL              sub_80706
0x7e48e CMP             R0, #0
0x7e490 BNE             loc_7E4A8
0x7e492 LDR             R3, =dword_1501D90
0x7e494 LDR             R2, [R3]
0x7e496 LDR             R3, =0x1AE8
0x7e498 LDRSB           R3, [R2,R3]
0x7e49a CMP             R3, #0x1A
0x7e49c BNE             loc_7E4A8
0x7e49e LDR             R3, =0x1AEC
0x7e4a0 LDRSB           R3, [R2,R3]
0x7e4a2 CMP             R3, #2
0x7e4a4 BLE             loc_7E4A8
0x7e4a6 B               loc_7E67A
0x7e4a8 LDR             R3, =dword_1501D90
0x7e4aa LDR             R0, [R3]
0x7e4ac MOVS            R3, #0x68 ; 'h'
0x7e4ae MULS            R3, R6
0x7e4b0 LDR             R1, [R0,#0x10]
0x7e4b2 LDR             R4, =0x1468
0x7e4b4 ADDS            R3, R3, R1
0x7e4b6 ADDS            R2, R3, R4
0x7e4b8 LDRB            R7, [R2]
0x7e4ba LDR             R2, =0x146C
0x7e4bc ADDS            R3, R3, R2
0x7e4be LDRH            R5, [R3]
0x7e4c0 SUBS            R3, R6, #5
0x7e4c2 LSLS            R3, R3, #0x18
0x7e4c4 LSRS            R3, R3, #0x18
0x7e4c6 CMP             R3, #1
0x7e4c8 BHI             loc_7E4CC
0x7e4ca B               loc_7E67A
0x7e4cc MOVS            R3, R7
0x7e4ce SUBS            R3, #0x25 ; '%'
0x7e4d0 LSLS            R3, R3, #0x18
0x7e4d2 LSRS            R3, R3, #0x18
0x7e4d4 MOVS            R2, R7
0x7e4d6 CMP             R3, #2
0x7e4d8 BHI             loc_7E4E8
0x7e4da LDR             R3, =dword_19E4
0x7e4dc LDRB            R3, [R1,R3]
0x7e4de CMP             R3, #0
0x7e4e0 BNE             loc_7E4E8
0x7e4e2 MOVS            R0, #3
0x7e4e4 MOVS            R1, #0xA
0x7e4e6 B               loc_7E508
0x7e4e8 MOVS            R3, R2
0x7e4ea SUBS            R3, #0x14
0x7e4ec LSLS            R3, R3, #0x18
0x7e4ee LSRS            R3, R3, #0x18
0x7e4f0 CMP             R3, #1
0x7e4f2 BLS             loc_7E4FC
0x7e4f4 LSLS            R3, R7, #0x18
0x7e4f6 ASRS            R3, R3, #0x18
0x7e4f8 CMP             R3, #0x18
0x7e4fa BNE             loc_7E512
0x7e4fc LDR             R3, =0x19E3
0x7e4fe LDRB            R3, [R1,R3]
0x7e500 CMP             R3, #0
0x7e502 BNE             loc_7E524
0x7e504 MOVS            R0, #3
0x7e506 MOVS            R1, #0xE
0x7e508 LDR             R3, =(sub_2D328+1)
0x7e50a BL              sub_80706
0x7e50e MOVS            R0, #0
0x7e510 B               loc_7E67C
0x7e512 CMP             R3, #0x1A
0x7e514 BNE             loc_7E524
0x7e516 LDR             R3, =0x1710
0x7e518 LDRB            R3, [R0,R3]
0x7e51a CMP             R3, #3
0x7e51c BEQ             loc_7E524
0x7e51e MOVS            R0, #3
0x7e520 MOVS            R1, #0xB
0x7e522 B               loc_7E508
0x7e524 MOVS            R3, #0x68 ; 'h'
0x7e526 MULS            R3, R6
0x7e528 MOVS            R4, #0x14A0
0x7e52c ADDS            R3, R3, R4
0x7e52e ADDS            R4, R1, R3
0x7e530 MOVS            R0, R6
0x7e532 BL              sub_7E0B4
0x7e536 LDRB            R3, [R4,#9]
0x7e538 CMP             R3, #0
0x7e53a BEQ             loc_7E556
0x7e53c LDR             R3, =0x807F1
0x7e53e MOVS            R0, #0xB
0x7e540 MOVS            R1, #0x2D ; '-'
0x7e542 BL              sub_80706
0x7e546 LDRB            R3, [R4,#9]
0x7e548 LSLS            R0, R0, #0x10
0x7e54a LSRS            R0, R0, #0x10
0x7e54c CMP             R3, R0
0x7e54e BLS             loc_7E556
0x7e550 MOVS            R0, #3
0x7e552 MOVS            R1, #2
0x7e554 B               loc_7E508
0x7e556 LDRH            R2, [R4,#4]
0x7e558 CMP             R2, #0
0x7e55a BEQ             loc_7E56A
0x7e55c LSLS            R3, R5, #0x10
0x7e55e ASRS            R3, R3, #0x10
0x7e560 CMP             R3, R2
0x7e562 BGE             loc_7E56A
0x7e564 MOVS            R0, #3
0x7e566 MOVS            R1, #5
0x7e568 B               loc_7E508
0x7e56a LDR             R5, =dword_1501D90
0x7e56c LDR             R3, [R5]
0x7e56e LDR             R1, [R3,#0x10]
0x7e570 MOVS            R3, #0x68 ; 'h'
0x7e572 MULS            R3, R6
0x7e574 LDR             R2, =0x1468
0x7e576 ADDS            R3, R3, R1
0x7e578 ADDS            R3, R3, R2
0x7e57a LDRB            R3, [R3]
0x7e57c LSLS            R3, R3, #0x18
0x7e57e ASRS            R3, R3, #0x18
0x7e580 CMP             R3, #0xE
0x7e582 BNE             loc_7E5CE
0x7e584 LDR             R3, =(sub_241EC+1)
0x7e586 MOVS            R0, #0x44 ; 'D'
0x7e588 BL              sub_80706
0x7e58c LDR             R3, [R5]
0x7e58e LDRH            R1, [R4,#2]
0x7e590 CMP             R0, #0
0x7e592 BEQ             loc_7E5BA
0x7e594 LDR             R3, [R3,#0x10]
0x7e596 LDR             R2, =0x19B4
0x7e598 LDR             R3, [R3,R2]
0x7e59a CMP             R3, R1
0x7e59c BGE             loc_7E5A4
0x7e59e MOVS            R0, #3
0x7e5a0 MOVS            R1, #4
0x7e5a2 B               loc_7E508
0x7e5a4 LDR             R3, =(sub_2E6A4+1)
0x7e5a6 BL              sub_80706
0x7e5aa CMP             R0, #0
0x7e5ac BEQ             loc_7E5E8
0x7e5ae LDR             R3, [R5]
0x7e5b0 LDRH            R1, [R4,#2]
0x7e5b2 LDR             R0, [R3,#0x10]
0x7e5b4 BL              sub_76940
0x7e5b8 B               loc_7E5E8
0x7e5ba LDR             R2, [R3,#0x10]
0x7e5bc LDR             R3, [R2,#8]
0x7e5be CMP             R3, R1
0x7e5c0 BLT             loc_7E5D6
0x7e5c2 SUBS            R3, R3, R1
0x7e5c4 STR             R3, [R2,#8]
0x7e5c6 CMP             R3, #0
0x7e5c8 BGE             loc_7E5E8
0x7e5ca STR             R0, [R2,#8]
0x7e5cc B               loc_7E5E8
0x7e5ce LDR             R2, [R1,#8]
0x7e5d0 LDRH            R3, [R4,#2]
0x7e5d2 CMP             R2, R3
0x7e5d4 BGE             loc_7E5DC
0x7e5d6 MOVS            R0, #3
0x7e5d8 MOVS            R1, #3
0x7e5da B               loc_7E508
0x7e5dc SUBS            R3, R2, R3
0x7e5de STR             R3, [R1,#8]
0x7e5e0 CMP             R3, #0
0x7e5e2 BGE             loc_7E5E8
0x7e5e4 MOVS            R3, #0
0x7e5e6 STR             R3, [R1,#8]
0x7e5e8 LDRB            R2, [R4,#9]
0x7e5ea CMP             R2, #0
0x7e5ec BEQ             loc_7E5F8
0x7e5ee MOVS            R0, #0xB
0x7e5f0 MOVS            R1, #0x2D ; '-'
0x7e5f2 LDR             R3, =0x81255
0x7e5f4 BL              sub_80706
0x7e5f8 LDRH            R3, [R4,#4]
0x7e5fa CMP             R3, #0
0x7e5fc BEQ             loc_7E612
0x7e5fe LDR             R3, =dword_1501D90
0x7e600 LDR             R3, [R3]
0x7e602 LDR             R2, [R3,#0x10]
0x7e604 MOVS            R3, #0x68 ; 'h'
0x7e606 MULS            R3, R6
0x7e608 ADDS            R3, R3, R2
0x7e60a LDR             R2, =0x146C
0x7e60c ADDS            R3, R3, R2
0x7e60e MOVS            R2, #0
0x7e610 STRH            R2, [R3]
0x7e612 LSLS            R3, R7, #0x18
0x7e614 ASRS            R3, R3, #0x18
0x7e616 CMP             R3, #0xE
0x7e618 BEQ             loc_7E622
0x7e61a CMP             R3, #0x21 ; '!'
0x7e61c BEQ             loc_7E622
0x7e61e CMP             R3, #0x23 ; '#'
0x7e620 BNE             loc_7E67A
0x7e622 LDR             R1, =dword_1501D90
0x7e624 LDR             R3, [R1]
0x7e626 LDR             R2, [R3,#0x10]
0x7e628 LDR             R3, =dword_19E4
0x7e62a LDRB            R3, [R2,R3]
0x7e62c CMP             R3, #1
0x7e62e BNE             loc_7E67A
0x7e630 LDRB            R3, [R4,#0x18]
0x7e632 CMP             R3, #0x91
0x7e634 BNE             loc_7E644
0x7e636 MOVS            R3, #0x68 ; 'h'
0x7e638 MULS            R3, R6
0x7e63a ADDS            R3, R3, R2
0x7e63c LDR             R2, =0x146C
0x7e63e ADDS            R3, R3, R2
0x7e640 LDRH            R2, [R4,#0x1E]
0x7e642 STRH            R2, [R3]
0x7e644 ADDS            R3, R4, #1
0x7e646 LDRB            R3, [R3,#0x1F]
0x7e648 CMP             R3, #0x91
0x7e64a BNE             loc_7E65E
0x7e64c LDR             R3, [R1]
0x7e64e LDR             R2, [R3,#0x10]
0x7e650 MOVS            R3, #0x68 ; 'h'
0x7e652 MULS            R3, R6
0x7e654 ADDS            R3, R3, R2
0x7e656 LDR             R2, =0x146C
0x7e658 ADDS            R3, R3, R2
0x7e65a LDRH            R2, [R4,#0x26]
0x7e65c STRH            R2, [R3]
0x7e65e MOVS            R3, R4
0x7e660 ADDS            R3, #0x28 ; '('
0x7e662 LDRB            R3, [R3]
0x7e664 CMP             R3, #0x91
0x7e666 BNE             loc_7E67A
0x7e668 LDR             R3, [R1]
0x7e66a LDR             R2, [R3,#0x10]
0x7e66c MOVS            R3, #0x68 ; 'h'
0x7e66e MULS            R3, R6
0x7e670 ADDS            R3, R3, R2
0x7e672 LDR             R2, =0x146C
0x7e674 ADDS            R3, R3, R2
0x7e676 LDRH            R2, [R4,#0x2E]
0x7e678 STRH            R2, [R3]
0x7e67a MOVS            R0, #1
0x7e67c POP             {R4-R7}
0x7e67e POP             {R1}
0x7e680 BX              R1