0x50418 PUSH            {R4-R7,LR}
0x5041a LDR             R3, =dword_1501D90
0x5041c SUB             SP, SP, #8
0x5041e LDR             R0, [R3]
0x50420 BL              sub_4F154
0x50424 CMP             R0, #0
0x50426 BNE             loc_5042A
0x50428 B               loc_507E4
0x5042a CMP             R0, #0x38 ; '8'
0x5042c BEQ             loc_50488
0x5042e CMP             R0, #0x38 ; '8'
0x50430 BHI             loc_5044E
0x50432 CMP             R0, #0x34 ; '4'
0x50434 BEQ             loc_5049E
0x50436 CMP             R0, #0x34 ; '4'
0x50438 BHI             loc_50442
0x5043a CMP             R0, #0x32 ; '2'
0x5043c BEQ             loc_50440
0x5043e B               loc_507E4
0x50440 B               loc_50488
0x50442 CMP             R0, #0x35 ; '5'
0x50444 BEQ             loc_504E6
0x50446 CMP             R0, #0x36 ; '6'
0x50448 BEQ             loc_5044C
0x5044a B               loc_507E4
0x5044c B               loc_504C0
0x5044e ADDS            R2, R0, #3
0x50450 BEQ             loc_5049E
0x50452 ADDS            R3, R0, #3
0x50454 BHI             loc_50462
0x50456 ADDS            R2, R0, #5
0x50458 BEQ             loc_504E6
0x5045a ADDS            R0, #4
0x5045c BEQ             loc_50460
0x5045e B               loc_507E4
0x50460 B               loc_504C0
0x50462 ADDS            R3, R0, #2
0x50464 BEQ             loc_50488
0x50466 ADDS            R0, #1
0x50468 BEQ             loc_5046C
0x5046a B               loc_507E4
0x5046c B               loc_50488
0x5046e CMP             R3, #2
0x50470 BEQ             loc_50474
0x50472 B               loc_507E4
0x50474 LDR             R0, =dword_1501DA0
0x50476 LDR             R2, [R0]
0x50478 CMP             R2, #0
0x5047a BEQ             loc_5047E
0x5047c B               loc_507E4
0x5047e MOVS            R3, #1
0x50480 STR             R3, [R1]
0x50482 LDR             R3, =byte_1533C0B
0x50484 STRB            R2, [R3]
0x50486 B               loc_507E4
0x50488 LDR             R1, =dword_1501C18
0x5048a LDR             R3, [R1]
0x5048c CMP             R3, #1
0x5048e BNE             loc_5046E
0x50490 MOVS            R3, #2
0x50492 STR             R3, [R1]
0x50494 LDR             R3, =dword_1501DA0
0x50496 MOVS            R2, #0
0x50498 STR             R2, [R3]
0x5049a LDR             R3, =byte_15337C0
0x5049c B               loc_50484
0x5049e LDR             R3, =dword_1501C18
0x504a0 LDR             R3, [R3]
0x504a2 CMP             R3, #1
0x504a4 BEQ             loc_504A8
0x504a6 B               loc_507E4
0x504a8 LDR             R2, =byte_1533C0B
0x504aa LDRB            R3, [R2]
0x504ac SUBS            R3, #1
0x504ae LSLS            R3, R3, #0x18
0x504b0 LSRS            R3, R3, #0x18
0x504b2 STRB            R3, [R2]
0x504b4 LSLS            R3, R3, #0x18
0x504b6 CMP             R3, #0
0x504b8 BLT             loc_504BC
0x504ba B               loc_507E4
0x504bc MOVS            R3, #5
0x504be B               loc_504E2
0x504c0 LDR             R3, =dword_1501C18
0x504c2 LDR             R3, [R3]
0x504c4 CMP             R3, #1
0x504c6 BEQ             loc_504CA
0x504c8 B               loc_507E4
0x504ca LDR             R2, =byte_1533C0B
0x504cc LDRB            R3, [R2]
0x504ce ADDS            R3, #1
0x504d0 LSLS            R3, R3, #0x18
0x504d2 LSRS            R3, R3, #0x18
0x504d4 STRB            R3, [R2]
0x504d6 LSLS            R3, R3, #0x18
0x504d8 ASRS            R3, R3, #0x18
0x504da CMP             R3, #5
0x504dc BGT             loc_504E0
0x504de B               loc_507E4
0x504e0 MOVS            R3, #0
0x504e2 STRB            R3, [R2]
0x504e4 B               loc_507E4
0x504e6 LDR             R7, =dword_1501C18
0x504e8 LDR             R6, [R7]
0x504ea CMP             R6, #1
0x504ec BNE             loc_50530
0x504ee LDR             R4, =byte_150C6BC
0x504f0 MOVS            R3, #(byte_150C6C4 - 0x150C6BC)
0x504f2 LDRSB           R3, [R4,R3]; byte_150C6C4
0x504f4 CMP             R3, #3
0x504f6 BEQ             loc_504FA
0x504f8 B               loc_507E4
0x504fa LDR             R3, =byte_15340F4
0x504fc LDRB            R3, [R3]
0x504fe CMP             R3, #0
0x50500 BNE             loc_50504
0x50502 B               loc_507E4
0x50504 LDR             R3, =byte_1533C0B
0x50506 LDRB            R0, [R3]
0x50508 LSLS            R3, R0, #0x18
0x5050a ASRS            R1, R3, #0x18
0x5050c CMP             R1, #1
0x5050e BGT             loc_50512
0x50510 B               loc_507E4
0x50512 LSLS            R2, R1, #4
0x50514 LDR             R3, =unk_1535928
0x50516 SUBS            R2, R2, R1
0x50518 LSLS            R2, R2, #2
0x5051a ADDS            R2, R2, R3
0x5051c SUBS            R2, #0x78 ; 'x'
0x5051e LDRB            R3, [R2,#1]
0x50520 CMP             R3, #0
0x50522 BNE             loc_50526
0x50524 B               loc_507E4
0x50526 SUBS            R3, R0, #2
0x50528 STRB            R3, [R4,#(byte_150C6CB - 0x150C6BC)]
0x5052a MOVS            R3, #2
0x5052c STR             R3, [R7]
0x5052e B               loc_507E4
0x50530 CMP             R6, #2
0x50532 BEQ             loc_50536
0x50534 B               loc_507E4
0x50536 LDR             R2, =dword_1501DA0
0x50538 LDR             R5, [R2]
0x5053a STR             R2, [SP,#8+var_4]
0x5053c CMP             R5, #0
0x5053e BNE             loc_505E6
0x50540 LDR             R4, =byte_150C6BC
0x50542 LDRB            R3, [R4,#(byte_150C6C4 - 0x150C6BC)]
0x50544 CMP             R3, #0
0x50546 BNE             loc_50572
0x50548 MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x5054a LDRSH           R0, [R4,R3]; word_150C6BE
0x5054c LDR             R3, =(sub_1F5C8+1)
0x5054e BL              sub_66A76
0x50552 CMP             R0, #0
0x50554 BNE             loc_5058A
0x50556 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x50558 LDR             R3, =(sub_222AC+1)
0x5055a BL              sub_66A76
0x5055e CMP             R0, #0
0x50560 BNE             loc_50568
0x50562 LDR             R2, [SP,#8+var_4]
0x50564 STR             R6, [R2]
0x50566 B               loc_507E4
0x50568 LDR             R3, =(sub_22420+1)
0x5056a BL              sub_66A76
0x5056e MOVS            R3, #1
0x50570 B               loc_5067A
0x50572 LSLS            R3, R3, #0x18
0x50574 ASRS            R5, R3, #0x18
0x50576 CMP             R5, #3
0x50578 BEQ             loc_5057C
0x5057a B               loc_507E4
0x5057c MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x5057e LDRSH           R0, [R4,R3]; word_150C6BE
0x50580 LDR             R3, =(sub_1F558+1)
0x50582 BL              sub_66A76
0x50586 CMP             R0, #0
0x50588 BEQ             loc_5059C
0x5058a MOVS            R2, #0
0x5058c MOVS            R0, #1
0x5058e MOVS            R1, #0xB
0x50590 MOVS            R3, #0
0x50592 LDR             R4, =(sub_1404+1)
0x50594 BL              sub_66A78
0x50598 LDR             R2, =dword_1501D7C
0x5059a B               loc_506D4
0x5059c LDR             R3, =byte_15340F4
0x5059e LDRB            R3, [R3]
0x505a0 CMP             R3, #0
0x505a2 BEQ             loc_505C4
0x505a4 LDRB            R3, [R4,#(byte_150C6CB - 0x150C6BC)]
0x505a6 LSLS            R3, R3, #0x18
0x505a8 ASRS            R1, R3, #0x18
0x505aa CMP             R1, #0
0x505ac BLT             loc_505BE
0x505ae LSLS            R2, R1, #4
0x505b0 LDR             R3, =unk_1535928
0x505b2 SUBS            R2, R2, R1
0x505b4 LSLS            R2, R2, #2
0x505b6 ADDS            R2, R2, R3
0x505b8 LDRB            R3, [R2,#1]
0x505ba CMP             R3, #0
0x505bc BNE             loc_505C4
0x505be LDR             R2, [SP,#8+var_4]
0x505c0 STR             R5, [R2]
0x505c2 B               loc_507E4
0x505c4 LDR             R4, =byte_150C6BC
0x505c6 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x505c8 BL              sub_3587C
0x505cc LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x505ce BL              sub_3A264
0x505d2 LDRH            R0, [R4,#(word_150C6BE - 0x150C6BC)]
0x505d4 LDR             R3, =(sub_221BC+1)
0x505d6 BL              sub_66A76
0x505da LDR             R3, =(sub_22420+1)
0x505dc BL              sub_66A76
0x505e0 LDR             R2, =dword_1501DA0
0x505e2 MOVS            R3, #4
0x505e4 B               loc_506D6
0x505e6 CMP             R5, #1
0x505e8 BNE             loc_50652
0x505ea LDR             R3, =byte_150C6BC
0x505ec STR             R3, [SP,#8+var_8]
0x505ee MOVS            R0, #1
0x505f0 MOVS            R2, #(word_150C6BE - 0x150C6BC)
0x505f2 LDRSH           R1, [R3,R2]; word_150C6BE
0x505f4 LDR             R4, =(sub_21440+1)
0x505f6 MOVS            R3, #0
0x505f8 MOVS            R2, #1
0x505fa BL              sub_66A78
0x505fe LDR             R3, =byte_1402C5C
0x50600 LSLS            R0, R0, #0x18
0x50602 LSRS            R0, R0, #0x18
0x50604 STRB            R0, [R3]
0x50606 CMP             R0, #0xFF
0x50608 BNE             loc_5064C
0x5060a LDR             R3, [SP,#8+var_4]
0x5060c MOVS            R6, #0
0x5060e STR             R6, [R3]
0x50610 LDR             R3, =dword_1501DB4
0x50612 STR             R6, [R3]
0x50614 LDR             R3, =dword_1501C80
0x50616 STR             R6, [R3]
0x50618 LDR             R3, =dword_1501C58
0x5061a STR             R5, [R7]
0x5061c STR             R6, [R3]
0x5061e LDR             R2, [SP,#8+var_8]
0x50620 LDRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x50622 LSLS            R0, R3, #0x10
0x50624 CMP             R0, #0
0x50626 BLE             loc_5062A
0x50628 B               loc_507B8
0x5062a LDR             R3, [SP,#8+var_8]
0x5062c MOVS            R2, #(word_150C6BE - 0x150C6BC)
0x5062e LDRSH           R0, [R3,R2]; word_150C6BE
0x50630 LDR             R3, =0x1CF
0x50632 CMP             R0, R3
0x50634 BEQ             loc_50638
0x50636 B               loc_507D6
0x50638 LDR             R4, =byte_153407C
0x5063a STRB            R6, [R4,#(byte_153407D - 0x153407C)]
0x5063c STRB            R6, [R4,#(byte_153407E - 0x153407C)]
0x5063e BL              sub_34F90
0x50642 LDR             R1, =byte_1533780
0x50644 STRB            R5, [R1,#(byte_153378C - 0x1533780)]
0x50646 STR             R6, [R1,#(dword_1533788 - 0x1533780)]
0x50648 STR             R6, [R1,#(dword_1533790 - 0x1533780)]
0x5064a B               loc_5071A
0x5064c LDR             R2, =dword_1501DA0
0x5064e MOVS            R3, #5
0x50650 B               loc_506D6
0x50652 CMP             R5, #2
0x50654 BNE             loc_50672
0x50656 MOVS            R3, #1
0x50658 STR             R3, [R7]
0x5065a LDR             R3, [SP,#8+var_4]
0x5065c MOVS            R2, #0
0x5065e STR             R2, [R3]
0x50660 LDR             R3, =dword_1501DB4
0x50662 STR             R2, [R3]
0x50664 LDR             R3, =dword_1501C80
0x50666 STR             R2, [R3]
0x50668 LDR             R3, =dword_1501C58
0x5066a MOVS            R0, #1
0x5066c MOVS            R1, #0
0x5066e STR             R2, [R3]
0x50670 B               loc_507DC
0x50672 CMP             R5, #3
0x50674 BNE             loc_5067E
0x50676 STR             R6, [R7]
0x50678 MOVS            R3, #0
0x5067a LDR             R2, [SP,#8+var_4]
0x5067c B               loc_506D6
0x5067e CMP             R5, #4
0x50680 BNE             loc_506DA
0x50682 LDR             R5, =byte_150C6BC
0x50684 MOVS            R0, #1
0x50686 MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x50688 LDRSH           R1, [R5,R3]; word_150C6BE
0x5068a MOVS            R2, #1
0x5068c MOVS            R3, #0
0x5068e LDR             R4, =(sub_21440+1)
0x50690 BL              sub_66A78
0x50694 LDR             R3, =byte_1402C5C
0x50696 LSLS            R0, R0, #0x18
0x50698 LSRS            R0, R0, #0x18
0x5069a STRB            R0, [R3]
0x5069c CMP             R0, #0xFF
0x5069e BNE             loc_506D2
0x506a0 MOVS            R3, #1
0x506a2 STR             R3, [R7]
0x506a4 LDR             R3, [SP,#8+var_4]
0x506a6 MOVS            R2, #0
0x506a8 STR             R2, [R3]
0x506aa LDR             R3, =dword_1501DB4
0x506ac STR             R2, [R3]
0x506ae LDR             R3, =dword_1501C80
0x506b0 STR             R2, [R3]
0x506b2 LDR             R3, =dword_1501C58
0x506b4 STR             R2, [R3]
0x506b6 LDRH            R3, [R5,#(word_150C6C6 - 0x150C6BC)]
0x506b8 LSLS            R0, R3, #0x10
0x506ba CMP             R0, #0
0x506bc BLE             loc_506C0
0x506be B               loc_507B8
0x506c0 LDRH            R3, [R5,#(word_150C6C8 - 0x150C6BC)]
0x506c2 LSLS            R3, R3, #0x10
0x506c4 ASRS            R1, R3, #0x10
0x506c6 CMP             R1, #0
0x506c8 BGT             loc_506CC
0x506ca B               loc_507D6
0x506cc MOVS            R0, #(byte_150C6BD - 0x150C6BC)
0x506ce LDRSB           R0, [R5,R0]; byte_150C6BD
0x506d0 B               loc_507D0
0x506d2 LDR             R2, =dword_1501DA0
0x506d4 MOVS            R3, #6
0x506d6 STR             R3, [R2]
0x506d8 B               loc_507E4
0x506da CMP             R5, #5
0x506dc BNE             loc_50794
0x506de LDR             R3, =dword_1501DB4
0x506e0 MOVS            R5, #0
0x506e2 STR             R5, [R3]
0x506e4 LDR             R3, =dword_1501C80
0x506e6 LDR             R2, [SP,#8+var_4]
0x506e8 STR             R5, [R3]
0x506ea LDR             R3, =dword_1501C58
0x506ec MOVS            R6, #1
0x506ee STR             R6, [R7]
0x506f0 STR             R5, [R2]
0x506f2 STR             R5, [R3]
0x506f4 LDR             R2, =byte_150C6BC
0x506f6 LDRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x506f8 LSLS            R0, R3, #0x10
0x506fa CMP             R0, #0
0x506fc BGT             loc_507B8
0x506fe MOVS            R3, #(word_150C6BE - 0x150C6BC)
0x50700 LDRSH           R0, [R2,R3]; word_150C6BE
0x50702 LDR             R3, =0x1CF
0x50704 CMP             R0, R3
0x50706 BNE             loc_507D6
0x50708 LDR             R4, =byte_153407C
0x5070a STRB            R5, [R4,#(byte_153407D - 0x153407C)]
0x5070c STRB            R5, [R4,#(byte_153407E - 0x153407C)]
0x5070e BL              sub_34F90
0x50712 LDR             R1, =byte_1533780
0x50714 STRB            R6, [R1,#(byte_153378C - 0x1533780)]
0x50716 STR             R5, [R1,#(dword_1533788 - 0x1533780)]
0x50718 STR             R5, [R1,#(dword_1533790 - 0x1533780)]
0x5071a LDRB            R2, [R4,#(byte_153407D - 0x153407C)]
0x5071c LSLS            R3, R2, #4
0x5071e ADDS            R3, R3, R2
0x50720 LDR             R0, =word_1402774
0x50722 LSLS            R3, R3, #1
0x50724 ADDS            R3, R3, R0
0x50726 LDRH            R2, [R3,#0x20]
0x50728 LDR             R3, =dword_1500058
0x5072a STR             R2, [R1,#(dword_1533790 - 0x1533780)]
0x5072c STR             R2, [R3]
0x5072e B               loc_507D6
0x50794 CMP             R5, #6
0x50796 BNE             loc_507E4
0x50798 MOVS            R3, #1
0x5079a STR             R3, [R7]
0x5079c LDR             R3, [SP,#8+var_4]
0x5079e MOVS            R2, #0
0x507a0 STR             R2, [R3]
0x507a2 LDR             R3, =dword_1501DB4
0x507a4 STR             R2, [R3]
0x507a6 LDR             R3, =dword_1501C80
0x507a8 STR             R2, [R3]
0x507aa LDR             R3, =dword_1501C58
0x507ac STR             R2, [R3]
0x507ae LDR             R2, =byte_150C6BC
0x507b0 LDRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x507b2 LSLS            R0, R3, #0x10
0x507b4 CMP             R0, #0
0x507b6 BLE             loc_507C2
0x507b8 LSRS            R0, R0, #0x10
0x507ba LDR             R3, =0x70561
0x507bc BL              sub_66A76
0x507c0 B               loc_507E4
0x507c2 LDRH            R3, [R2,#(word_150C6C8 - 0x150C6BC)]
0x507c4 LSLS            R3, R3, #0x10
0x507c6 ASRS            R1, R3, #0x10
0x507c8 CMP             R1, #0
0x507ca BLE             loc_507D6
0x507cc MOVS            R0, #(byte_150C6BD - 0x150C6BC)
0x507ce LDRSB           R0, [R2,R0]; byte_150C6BD
0x507d0 BL              sub_4EE2C
0x507d4 B               loc_507E4
0x507d6 MOVS            R0, #1
0x507d8 MOVS            R1, #0
0x507da MOVS            R2, #0
0x507dc MOVS            R3, #0
0x507de LDR             R4, =(sub_1404+1)
0x507e0 BL              sub_66A78
0x507e4 ADD             SP, SP, #8
0x507e6 POP             {R4-R7}
0x507e8 POP             {R0}
0x507ea BX              R0