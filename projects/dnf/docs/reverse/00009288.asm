0x9288 PUSH            {R4-R7,LR}
0x928a LDR             R4, =0xFFFFFB7C
0x928c LDR             R0, =0x45A
0x928e ADD             SP, R4
0x9290 MOVS            R5, #0x8F
0x9292 LDR             R3, =sub_8CA1C
0x9294 MOVS            R1, #0
0x9296 MOVS            R2, #0x1E
0x9298 ADD             R0, SP
0x929a LSLS            R5, R5, #3
0x929c BL              sub_F0C0
0x92a0 ADD             R5, SP
0x92a2 MOVS            R1, #0
0x92a4 LDR             R2, =0x41C
0x92a6 LDR             R4, =unk_140329C
0x92a8 ADD             R0, SP, #0x484+var_448
0x92aa BL              sub_F0C2
0x92ae MOVS            R1, #0
0x92b0 MOVS            R2, #0xC
0x92b2 MOVS            R0, R5
0x92b4 BL              sub_F0C2
0x92b8 LDR             R0, =aDnfopt; "DnfOpt"
0x92ba MOVS            R1, R5
0x92bc MOVS            R2, #1
0x92be LDR             R3, =unk_140350C
0x92c0 BL              sub_F0C0
0x92c4 CMP             R0, #0
0x92c6 BEQ             loc_92E8
0x92c8 LDR             R6, =0x41C
0x92ca B               loc_92F6
0x92e8 MOVS            R0, #0x480
0x92ec ADD             R0, SP
0x92ee LDR             R3, [R0]
0x92f0 LDR             R1, =0x41C
0x92f2 STR             R3, [SP,#0x484+var_448]
0x92f4 ADDS            R6, R3, R1
0x92f6 MOVS            R4, #0x478
0x92fa ADD             R4, SP
0x92fc MOVS            R1, #0
0x92fe MOVS            R2, #0xC
0x9300 MOVS            R0, R4
0x9302 LDR             R7, =unk_140329C
0x9304 BL              sub_F0C8
0x9308 LDR             R0, =aDnfslot_0; "DnfSlot"
0x930a MOVS            R1, R4
0x930c MOVS            R2, #1
0x930e LDR             R5, =unk_140350C
0x9310 BL              sub_F0C4
0x9314 CMP             R0, #0
0x9316 BNE             loc_9324
0x9318 MOVS            R2, #0x480
0x931c ADD             R2, SP
0x931e LDR             R3, [R2]
0x9320 STR             R3, [SP,#0x484+var_444]
0x9322 ADDS            R6, R6, R3
0x9324 MOVS            R1, #0
0x9326 MOVS            R2, #0xC
0x9328 MOVS            R0, R4
0x932a BL              sub_F0C8
0x932e LDR             R0, =aDnfhero0; "DnfHero0"
0x9330 MOVS            R1, R4
0x9332 MOVS            R2, #1
0x9334 BL              sub_F0C4
0x9338 CMP             R0, #0
0x933a BNE             loc_9348
0x933c MOVS            R0, #0x480
0x9340 ADD             R0, SP
0x9342 LDR             R3, [R0]
0x9344 STR             R3, [SP,#0x484+var_440]
0x9346 ADDS            R6, R6, R3
0x9348 MOVS            R1, #0
0x934a MOVS            R2, #0xC
0x934c MOVS            R0, R4
0x934e BL              sub_F0C8
0x9352 LDR             R0, =aDnfhero1; "DnfHero1"
0x9354 MOVS            R1, R4
0x9356 MOVS            R2, #1
0x9358 BL              sub_F0C4
0x935c CMP             R0, #0
0x935e BNE             loc_936C
0x9360 MOVS            R1, #0x480
0x9364 ADD             R1, SP
0x9366 LDR             R3, [R1]
0x9368 STR             R3, [SP,#0x484+var_43C]
0x936a ADDS            R6, R6, R3
0x936c MOVS            R1, #0
0x936e MOVS            R2, #0xC
0x9370 MOVS            R0, R4
0x9372 BL              sub_F0C8
0x9376 LDR             R0, =aDnfhero2; "DnfHero2"
0x9378 MOVS            R1, R4
0x937a MOVS            R2, #1
0x937c BL              sub_F0C4
0x9380 CMP             R0, #0
0x9382 BNE             loc_9390
0x9384 MOVS            R2, #0x480
0x9388 ADD             R2, SP
0x938a LDR             R3, [R2]
0x938c STR             R3, [SP,#0x484+var_438]
0x938e ADDS            R6, R6, R3
0x9390 MOVS            R1, #0
0x9392 MOVS            R2, #0xC
0x9394 MOVS            R0, R4
0x9396 BL              sub_F0C8
0x939a LDR             R0, =aDnfhero3; "DnfHero3"
0x939c MOVS            R1, R4
0x939e MOVS            R2, #1
0x93a0 BL              sub_F0C4
0x93a4 CMP             R0, #0
0x93a6 BNE             loc_93B4
0x93a8 MOVS            R0, #0x480
0x93ac ADD             R0, SP
0x93ae LDR             R3, [R0]
0x93b0 STR             R3, [SP,#0x484+var_434]
0x93b2 ADDS            R6, R6, R3
0x93b4 MOVS            R1, #0
0x93b6 MOVS            R2, #0xC
0x93b8 MOVS            R0, R4
0x93ba BL              sub_F0C8
0x93be LDR             R0, =aDnfquest0; "DnfQuest0"
0x93c0 MOVS            R1, R4
0x93c2 MOVS            R2, #1
0x93c4 BL              sub_F0C4
0x93c8 CMP             R0, #0
0x93ca BNE             loc_93D8
0x93cc MOVS            R1, #0x480
0x93d0 ADD             R1, SP
0x93d2 LDR             R3, [R1]
0x93d4 STR             R3, [SP,#0x484+var_430]
0x93d6 ADDS            R6, R6, R3
0x93d8 MOVS            R1, #0
0x93da MOVS            R2, #0xC
0x93dc MOVS            R0, R4
0x93de BL              sub_F0C8
0x93e2 LDR             R0, =aDnfquest1; "DnfQuest1"
0x93e4 MOVS            R1, R4
0x93e6 MOVS            R2, #1
0x93e8 BL              sub_F0C4
0x93ec CMP             R0, #0
0x93ee BNE             loc_93FC
0x93f0 MOVS            R2, #0x480
0x93f4 ADD             R2, SP
0x93f6 LDR             R3, [R2]
0x93f8 STR             R3, [SP,#0x484+var_42C]
0x93fa ADDS            R6, R6, R3
0x93fc MOVS            R1, #0
0x93fe MOVS            R2, #0xC
0x9400 MOVS            R0, R4
0x9402 BL              sub_F0C8
0x9406 LDR             R0, =aDnfquest2; "DnfQuest2"
0x9408 MOVS            R1, R4
0x940a MOVS            R2, #1
0x940c BL              sub_F0C4
0x9410 CMP             R0, #0
0x9412 BNE             loc_9420
0x9414 MOVS            R0, #0x480
0x9418 ADD             R0, SP
0x941a LDR             R3, [R0]
0x941c STR             R3, [SP,#0x484+var_428]
0x941e ADDS            R6, R6, R3
0x9420 MOVS            R1, #0
0x9422 MOVS            R2, #0xC
0x9424 MOVS            R0, R4
0x9426 BL              sub_F0C8
0x942a LDR             R0, =aDnfquest3; "DnfQuest3"
0x942c MOVS            R1, R4
0x942e MOVS            R2, #1
0x9430 BL              sub_F0C4
0x9434 CMP             R0, #0
0x9436 BNE             loc_9444
0x9438 MOVS            R1, #0x480
0x943c ADD             R1, SP
0x943e LDR             R3, [R1]
0x9440 STR             R3, [SP,#0x484+var_424]
0x9442 ADDS            R6, R6, R3
0x9444 MOVS            R1, #0
0x9446 MOVS            R2, #0xC
0x9448 MOVS            R0, R4
0x944a BL              sub_F0C8
0x944e LDR             R0, =aDnfnetEtInfo; "DnfNet_ET_info"
0x9450 MOVS            R1, R4
0x9452 MOVS            R2, #1
0x9454 BL              sub_F0C4
0x9458 CMP             R0, #0
0x945a BNE             loc_9468
0x945c MOVS            R2, #0x480
0x9460 ADD             R2, SP
0x9462 LDR             R3, [R2]
0x9464 STR             R3, [SP,#0x484+var_420]
0x9466 ADDS            R6, R6, R3
0x9468 MOVS            R1, #0
0x946a MOVS            R2, #0xC
0x946c MOVS            R0, R4
0x946e BL              sub_F0C8
0x9472 LDR             R0, =aDnfnetCp; "DnfNet_CP"
0x9474 MOVS            R1, R4
0x9476 MOVS            R2, #1
0x9478 BL              sub_F0C4
0x947c CMP             R0, #0
0x947e BNE             loc_948C
0x9480 MOVS            R0, #0x480
0x9484 ADD             R0, SP
0x9486 LDR             R3, [R0]
0x9488 STR             R3, [SP,#0x484+var_41C]
0x948a ADDS            R6, R6, R3
0x948c MOVS            R1, #0
0x948e MOVS            R2, #0xC
0x9490 MOVS            R0, R4
0x9492 BL              sub_F0C8
0x9496 LDR             R0, =aDnfnetRk1; "DnfNet_RK_1"
0x9498 MOVS            R1, R4
0x949a MOVS            R2, #1
0x949c BL              sub_F0C4
0x94a0 CMP             R0, #0
0x94a2 BNE             loc_94B0
0x94a4 MOVS            R1, #0x480
0x94a8 ADD             R1, SP
0x94aa LDR             R3, [R1]
0x94ac STR             R3, [SP,#0x484+var_418]
0x94ae ADDS            R6, R6, R3
0x94b0 MOVS            R1, #0
0x94b2 MOVS            R2, #0xC
0x94b4 MOVS            R0, R4
0x94b6 BL              sub_F0C8
0x94ba LDR             R0, =aDnfnetRk2; "DnfNet_RK_2"
0x94bc MOVS            R1, R4
0x94be MOVS            R2, #1
0x94c0 BL              sub_F0C4
0x94c4 CMP             R0, #0
0x94c6 BNE             loc_94D4
0x94c8 MOVS            R2, #0x480
0x94cc ADD             R2, SP
0x94ce LDR             R3, [R2]
0x94d0 STR             R3, [SP,#0x484+var_414]
0x94d2 ADDS            R6, R6, R3
0x94d4 MOVS            R1, #0
0x94d6 MOVS            R2, #0xC
0x94d8 MOVS            R0, R4
0x94da BL              sub_F0C8
0x94de LDR             R0, =aDnfnetRk3; "DnfNet_RK_3"
0x94e0 MOVS            R1, R4
0x94e2 MOVS            R2, #1
0x94e4 BL              sub_F0C4
0x94e8 CMP             R0, #0
0x94ea BNE             loc_94F8
0x94ec MOVS            R0, #0x480
0x94f0 ADD             R0, SP
0x94f2 LDR             R3, [R0]
0x94f4 STR             R3, [SP,#0x484+var_410]
0x94f6 ADDS            R6, R6, R3
0x94f8 MOVS            R1, #0
0x94fa MOVS            R2, #0xC
0x94fc MOVS            R0, R4
0x94fe BL              sub_F0C8
0x9502 LDR             R0, =aDnfnetRk4; "DnfNet_RK_4"
0x9504 MOVS            R1, R4
0x9506 MOVS            R2, #1
0x9508 BL              sub_F0C4
0x950c CMP             R0, #0
0x950e BNE             loc_951C
0x9510 MOVS            R1, #0x480
0x9514 ADD             R1, SP
0x9516 LDR             R3, [R1]
0x9518 STR             R3, [SP,#0x484+var_40C]
0x951a ADDS            R6, R6, R3
0x951c MOVS            R1, #0
0x951e MOVS            R2, #0xC
0x9520 MOVS            R0, R4
0x9522 BL              sub_F0C8
0x9526 LDR             R0, =aDnflocalRk1; "DnfLocal_RK_1"
0x9528 MOVS            R1, R4
0x952a MOVS            R2, #1
0x952c BL              sub_F0C4
0x9530 CMP             R0, #0
0x9532 BNE             loc_9540
0x9534 MOVS            R2, #0x480
0x9538 ADD             R2, SP
0x953a LDR             R3, [R2]
0x953c STR             R3, [SP,#0x484+var_408]
0x953e ADDS            R6, R6, R3
0x9540 MOVS            R1, #0
0x9542 MOVS            R2, #0xC
0x9544 MOVS            R0, R4
0x9546 BL              sub_F0C8
0x954a LDR             R0, =aDnflocalRk2; "DnfLocal_RK_2"
0x954c MOVS            R1, R4
0x954e MOVS            R2, #1
0x9550 BL              sub_F0C4
0x9554 CMP             R0, #0
0x9556 BNE             loc_9564
0x9558 MOVS            R0, #0x480
0x955c ADD             R0, SP
0x955e LDR             R3, [R0]
0x9560 STR             R3, [SP,#0x484+var_404]
0x9562 ADDS            R6, R6, R3
0x9564 MOVS            R1, #0
0x9566 MOVS            R2, #0xC
0x9568 MOVS            R0, R4
0x956a BL              sub_F0C8
0x956e LDR             R0, =aDnflocalRk3; "DnfLocal_RK_3"
0x9570 MOVS            R1, R4
0x9572 MOVS            R2, #1
0x9574 BL              sub_F0C4
0x9578 CMP             R0, #0
0x957a BNE             loc_9588
0x957c MOVS            R1, #0x480
0x9580 ADD             R1, SP
0x9582 LDR             R3, [R1]
0x9584 STR             R3, [SP,#0x484+var_400]
0x9586 ADDS            R6, R6, R3
0x9588 MOVS            R1, #0
0x958a MOVS            R2, #0xC
0x958c MOVS            R0, R4
0x958e BL              sub_F0C8
0x9592 LDR             R0, =aDnflocalRk4; "DnfLocal_RK_4"
0x9594 MOVS            R1, R4
0x9596 MOVS            R2, #1
0x9598 BL              sub_F0C4
0x959c CMP             R0, #0
0x959e BNE             loc_95AC
0x95a0 MOVS            R2, #0x480
0x95a4 ADD             R2, SP
0x95a6 LDR             R3, [R2]
0x95a8 STR             R3, [SP,#0x484+var_3FC]
0x95aa ADDS            R6, R6, R3
0x95ac MOVS            R1, #0
0x95ae MOVS            R2, #0xC
0x95b0 MOVS            R0, R4
0x95b2 BL              sub_F0C8
0x95b6 LDR             R0, =a46000Act; "46000.act"
0x95b8 MOVS            R1, R4
0x95ba MOVS            R2, #1
0x95bc BL              sub_F0C4
0x95c0 CMP             R0, #0
0x95c2 BNE             loc_95D0
0x95c4 MOVS            R0, #0x480
0x95c8 ADD             R0, SP
0x95ca LDR             R3, [R0]
0x95cc STR             R3, [SP,#0x484+var_3F8]
0x95ce ADDS            R6, R6, R3
0x95d0 MOVS            R1, #0
0x95d2 MOVS            R2, #0xC
0x95d4 MOVS            R0, R4
0x95d6 BL              sub_F0C8
0x95da LDR             R0, =a46000Fra; "46000.fra"
0x95dc MOVS            R1, R4
0x95de MOVS            R2, #1
0x95e0 BL              sub_F0C4
0x95e4 CMP             R0, #0
0x95e6 BNE             loc_95F4
0x95e8 MOVS            R1, #0x480
0x95ec ADD             R1, SP
0x95ee LDR             R3, [R1]
0x95f0 STR             R3, [SP,#0x484+var_3F4]
0x95f2 ADDS            R6, R6, R3
0x95f4 MOVS            R1, #0
0x95f6 MOVS            R2, #0xC
0x95f8 MOVS            R0, R4
0x95fa BL              sub_F0C8
0x95fe LDR             R0, =a46000Dat; "46000.dat"
0x9600 MOVS            R1, R4
0x9602 MOVS            R2, #1
0x9604 BL              sub_F0C4
0x9608 CMP             R0, #0
0x960a BNE             loc_9618
0x960c MOVS            R2, #0x480
0x9610 ADD             R2, SP
0x9612 LDR             R3, [R2]
0x9614 STR             R3, [SP,#0x484+var_3F0]
0x9616 ADDS            R6, R6, R3
0x9618 MOVS            R0, #0x368
0x961c MOVS            R3, #0
0x961e ADD             R0, SP
0x9620 STR             R3, [SP,#0x484+var_454]
0x9622 STR             R0, [SP,#0x484+var_450]
0x9624 LDR             R5, =0x45A
0x9626 ADD             R5, SP
0x9628 MOVS            R1, #0
0x962a MOVS            R2, #0x1E
0x962c LDR             R4, =unk_140329C
0x962e MOVS            R0, R5
0x9630 BL              sub_F0C2
0x9634 LDR             R1, [SP,#0x484+var_454]
0x9636 LDR             R2, =0xB3B1
0x9638 LDR             R3, =unk_14032CC
0x963a MOVS            R7, #0x8F
0x963c ADDS            R2, R1, R2
0x963e LSLS            R7, R7, #3
0x9640 STR             R3, [SP,#0x484+var_460]
0x9642 STR             R2, [SP,#0x484+var_44C]
0x9644 LDR             R1, =aDAct; "%d.act"
0x9646 ADD             R7, SP
0x9648 MOVS            R0, R5
0x964a BL              sub_F0C0
0x964e MOVS            R1, #0
0x9650 MOVS            R2, #0xC
0x9652 MOVS            R0, R7
0x9654 BL              sub_F0C2
0x9658 LDR             R3, =unk_140350C
0x965a MOVS            R0, R5
0x965c MOVS            R1, R7
0x965e MOVS            R2, #1
0x9660 STR             R3, [SP,#0x484+var_464]
0x9662 BL              sub_F0C0
0x9666 CMP             R0, #0
0x9668 BEQ             loc_966C
0x966a B               loc_97BE
0x966c MOVS            R0, #0x480
0x9670 ADD             R0, SP
0x9672 LDR             R2, [R0]
0x9674 LDR             R1, [SP,#0x484+var_450]
0x9676 LDR             R0, =0xFFFFFD30
0x9678 ADDS            R3, R1, R0
0x967a STR             R2, [R3]
0x967c MOVS            R1, #0
0x967e ADDS            R6, R6, R2
0x9680 MOVS            R0, R5
0x9682 MOVS            R2, #0x1E
0x9684 BL              sub_F0C2
0x9688 LDR             R3, [SP,#0x484+var_460]
0x968a LDR             R1, =aDFra; "%d.fra"
0x968c LDR             R2, [SP,#0x484+var_44C]
0x968e MOVS            R0, R5
0x9690 B               loc_9710
0x9710 BL              sub_F0C0
0x9714 MOVS            R1, #0
0x9716 MOVS            R2, #0xC
0x9718 MOVS            R0, R7
0x971a BL              sub_F0C2
0x971e MOVS            R0, R5
0x9720 MOVS            R1, R7
0x9722 MOVS            R2, #1
0x9724 LDR             R3, [SP,#0x484+var_464]
0x9726 BL              sub_F0C0
0x972a CMP             R0, #0
0x972c BNE             loc_9740
0x972e MOVS            R0, #0x480
0x9732 ADD             R0, SP
0x9734 LDR             R2, [R0]
0x9736 LDR             R1, [SP,#0x484+var_450]
0x9738 LDR             R0, =0xFFFFFE20
0x973a ADDS            R3, R1, R0
0x973c STR             R2, [R3]
0x973e ADDS            R6, R6, R2
0x9740 MOVS            R1, #0
0x9742 MOVS            R2, #0x1E
0x9744 MOVS            R0, R5
0x9746 BL              sub_F0C2
0x974a LDR             R3, [SP,#0x484+var_460]
0x974c LDR             R1, =aDDat; "%d.dat"
0x974e LDR             R2, [SP,#0x484+var_44C]
0x9750 MOVS            R0, R5
0x9752 BL              sub_F0C0
0x9756 MOVS            R1, #0
0x9758 MOVS            R2, #0xC
0x975a MOVS            R0, R7
0x975c BL              sub_F0C2
0x9760 MOVS            R0, R5
0x9762 MOVS            R1, R7
0x9764 MOVS            R2, #1
0x9766 LDR             R3, [SP,#0x484+var_464]
0x9768 BL              sub_F0C0
0x976c CMP             R0, #0
0x976e BNE             loc_9780
0x9770 MOVS            R0, #0x480
0x9774 ADD             R0, SP
0x9776 LDR             R3, [SP,#0x484+var_450]
0x9778 LDR             R2, [R0]
0x977a SUBS            R3, #0xF0
0x977c STR             R2, [R3]
0x977e ADDS            R6, R6, R2
0x9780 MOVS            R1, #0
0x9782 MOVS            R2, #0x1E
0x9784 MOVS            R0, R5
0x9786 BL              sub_F0C2
0x978a LDR             R3, [SP,#0x484+var_460]
0x978c LDR             R1, =aDDg; "%d.dg"
0x978e LDR             R2, [SP,#0x484+var_44C]
0x9790 MOVS            R0, R5
0x9792 BL              sub_F0C0
0x9796 MOVS            R1, #0
0x9798 MOVS            R2, #0xC
0x979a MOVS            R0, R7
0x979c BL              sub_F0C2
0x97a0 MOVS            R0, R5
0x97a2 MOVS            R1, R7
0x97a4 MOVS            R2, #1
0x97a6 LDR             R3, [SP,#0x484+var_464]
0x97a8 BL              sub_F0C0
0x97ac CMP             R0, #0
0x97ae BNE             loc_97BE
0x97b0 MOVS            R0, #0x480
0x97b4 ADD             R0, SP
0x97b6 LDR             R3, [R0]
0x97b8 LDR             R1, [SP,#0x484+var_450]
0x97ba STR             R3, [R1]
0x97bc ADDS            R6, R6, R3
0x97be LDR             R2, [SP,#0x484+var_454]
0x97c0 LDR             R3, [SP,#0x484+var_450]
0x97c2 ADDS            R2, #1
0x97c4 ADDS            R3, #4
0x97c6 STR             R2, [SP,#0x484+var_454]
0x97c8 STR             R3, [SP,#0x484+var_450]
0x97ca CMP             R2, #0x3C ; '<'
0x97cc BEQ             loc_97D0
0x97ce B               loc_9624
0x97d0 LDR             R3, =unk_14032EC
0x97d2 ADDS            R0, R6, #2
0x97d4 BL              sub_F0C0
0x97d8 LDR             R4, =unk_140327C
0x97da MOVS            R7, R0
0x97dc ADD             R1, SP, #0x484+var_448
0x97de MOVS            R2, #4
0x97e0 BL              sub_F0C2
0x97e4 ADD             R1, SP, #0x484+var_444
0x97e6 MOVS            R2, #4
0x97e8 ADDS            R0, R7, #4
0x97ea BL              sub_F0C2
0x97ee MOVS            R0, R7
0x97f0 ADD             R1, SP, #0x484+var_440
0x97f2 MOVS            R2, #4
0x97f4 ADDS            R0, #8
0x97f6 BL              sub_F0C2
0x97fa MOVS            R0, R7
0x97fc ADD             R1, SP, #0x484+var_43C
0x97fe MOVS            R2, #4
0x9800 ADDS            R0, #0xC
0x9802 BL              sub_F0C2
0x9806 MOVS            R0, R7
0x9808 ADD             R1, SP, #0x484+var_438
0x980a MOVS            R2, #4
0x980c ADDS            R0, #0x10
0x980e BL              sub_F0C2
0x9812 MOVS            R0, R7
0x9814 ADD             R1, SP, #0x484+var_434
0x9816 MOVS            R2, #4
0x9818 ADDS            R0, #0x14
0x981a BL              sub_F0C2
0x981e MOVS            R0, R7
0x9820 ADD             R1, SP, #0x484+var_430
0x9822 MOVS            R2, #4
0x9824 ADDS            R0, #0x18
0x9826 BL              sub_F0C2
0x982a MOVS            R0, R7
0x982c ADD             R1, SP, #0x484+var_42C
0x982e MOVS            R2, #4
0x9830 ADDS            R0, #0x1C
0x9832 BL              sub_F0C2
0x9836 MOVS            R0, R7
0x9838 ADD             R1, SP, #0x484+var_428
0x983a MOVS            R2, #4
0x983c ADDS            R0, #0x20 ; ' '
0x983e BL              sub_F0C2
0x9842 MOVS            R0, R7
0x9844 ADD             R1, SP, #0x484+var_424
0x9846 MOVS            R2, #4
0x9848 ADDS            R0, #0x24 ; '$'
0x984a BL              sub_F0C2
0x984e MOVS            R0, R7
0x9850 ADD             R1, SP, #0x484+var_420
0x9852 MOVS            R2, #4
0x9854 ADDS            R0, #0x28 ; '('
0x9856 BL              sub_F0C2
0x985a MOVS            R0, R7
0x985c ADD             R1, SP, #0x484+var_41C
0x985e MOVS            R2, #4
0x9860 ADDS            R0, #0x2C ; ','
0x9862 BL              sub_F0C2
0x9866 MOVS            R0, R7
0x9868 ADD             R1, SP, #0x484+var_418
0x986a MOVS            R2, #4
0x986c ADDS            R0, #0x30 ; '0'
0x986e BL              sub_F0C2
0x9872 MOVS            R0, R7
0x9874 ADD             R1, SP, #0x484+var_414
0x9876 MOVS            R2, #4
0x9878 ADDS            R0, #0x34 ; '4'
0x987a BL              sub_F0C2
0x987e MOVS            R0, R7
0x9880 ADD             R1, SP, #0x484+var_410
0x9882 MOVS            R2, #4
0x9884 ADDS            R0, #0x38 ; '8'
0x9886 BL              sub_F0C2
0x988a MOVS            R0, R7
0x988c ADD             R1, SP, #0x484+var_40C
0x988e MOVS            R2, #4
0x9890 ADDS            R0, #0x3C ; '<'
0x9892 BL              sub_F0C2
0x9896 MOVS            R0, R7
0x9898 ADD             R1, SP, #0x484+var_408
0x989a MOVS            R2, #4
0x989c ADDS            R0, #0x40 ; '@'
0x989e BL              sub_F0C2
0x98a2 MOVS            R0, R7
0x98a4 ADD             R1, SP, #0x484+var_404
0x98a6 MOVS            R2, #4
0x98a8 ADDS            R0, #0x44 ; 'D'
0x98aa BL              sub_F0C2
0x98ae MOVS            R0, R7
0x98b0 ADD             R1, SP, #0x484+var_400
0x98b2 MOVS            R2, #4
0x98b4 ADDS            R0, #0x48 ; 'H'
0x98b6 BL              sub_F0C2
0x98ba MOVS            R0, R7
0x98bc ADD             R1, SP, #0x484+var_3FC
0x98be MOVS            R2, #4
0x98c0 ADDS            R0, #0x4C ; 'L'
0x98c2 BL              sub_F0C2
0x98c6 MOVS            R0, R7
0x98c8 ADD             R1, SP, #0x484+var_3F8
0x98ca MOVS            R2, #4
0x98cc ADDS            R0, #0x50 ; 'P'
0x98ce BL              sub_F0C2
0x98d2 MOVS            R0, R7
0x98d4 ADD             R1, SP, #0x484+var_3F4
0x98d6 MOVS            R2, #4
0x98d8 ADDS            R0, #0x54 ; 'T'
0x98da BL              sub_F0C2
0x98de MOVS            R0, R7
0x98e0 ADDS            R0, #0x58 ; 'X'
0x98e2 ADD             R1, SP, #0x484+var_3F0
0x98e4 MOVS            R2, #4
0x98e6 BL              sub_F0C2
0x98ea MOVS            R5, R7
0x98ec ADDS            R5, #0x5C ; '\'
0x98ee ADD             R6, SP, #0x484+var_3EC
0x98f0 LDR             R4, =unk_140327C
0x98f2 MOVS            R1, R6
0x98f4 MOVS            R0, R5
0x98f6 MOVS            R2, #4
0x98f8 BL              sub_F0C2
0x98fc MOVS            R1, R6
0x98fe ADDS            R0, R5, #4
0x9900 ADDS            R1, #0xF0
0x9902 MOVS            R2, #4
0x9904 BL              sub_F0C2
0x9908 MOVS            R2, #0xF0
0x990a MOVS            R0, R5
0x990c LSLS            R2, R2, #1
0x990e ADDS            R1, R6, R2
0x9910 ADDS            R0, #8
0x9912 MOVS            R2, #4
0x9914 BL              sub_F0C2
0x9918 MOVS            R3, #0x2D0
0x991c MOVS            R0, R5
0x991e ADDS            R1, R6, R3
0x9920 ADDS            R0, #0xC
0x9922 MOVS            R2, #4
0x9924 BL              sub_F0C2
0x9928 ADDS            R6, #4
0x992a ADD             R3, SP, #0x484+var_2FC
0x992c ADDS            R5, #0x10
0x992e CMP             R6, R3
0x9930 BNE             loc_98F0
0x9932 MOVS            R4, #0x478
0x9936 ADD             R4, SP
0x9938 MOVS            R1, #0
0x993a MOVS            R2, #0xC
0x993c LDR             R3, =unk_140329C
0x993e MOVS            R0, R4
0x9940 BL              sub_F0C0
0x9944 LDR             R5, =aDnfopt; "DnfOpt"
0x9946 MOVS            R1, R4
0x9948 MOVS            R0, R5
0x994a MOVS            R2, #1
0x994c LDR             R3, =unk_140350C
0x994e BL              sub_F0C0
0x9952 CMP             R0, #0
0x9954 BEQ             loc_9980
0x9956 LDR             R5, =0x41C
0x9958 B               loc_99B6
0x9980 MOVS            R0, R5
0x9982 MOVS            R1, #1
0x9984 MOVS            R2, #1
0x9986 LDR             R3, =unk_14034CC
0x9988 BL              sub_F0C0
0x998c MOVS            R3, #0x90
0x998e MOVS            R4, R0
0x9990 LSLS            R3, R3, #3
0x9992 LDR             R0, =0x41C
0x9994 ADD             R3, SP
0x9996 ADDS            R1, R7, R0
0x9998 LDR             R2, [R3]
0x999a MOVS            R0, R4
0x999c LDR             R3, =unk_14034DC
0x999e BL              sub_F0C0
0x99a2 MOVS            R0, #0x480
0x99a6 ADD             R0, SP
0x99a8 LDR             R3, [R0]
0x99aa LDR             R1, =0x41C
0x99ac MOVS            R0, R4
0x99ae ADDS            R5, R3, R1
0x99b0 LDR             R3, =unk_14034FC
0x99b2 BL              sub_F0C0
0x99b6 MOVS            R6, #0x8F
0x99b8 LDR             R3, =unk_140329C
0x99ba LSLS            R6, R6, #3
0x99bc ADD             R6, SP
0x99be MOVS            R1, #0
0x99c0 MOVS            R2, #0xC
0x99c2 STR             R3, [SP,#0x484+var_468]
0x99c4 MOVS            R0, R6
0x99c6 BL              sub_F0C0
0x99ca LDR             R4, =aDnfslot_0; "DnfSlot"
0x99cc LDR             R3, =unk_140350C
0x99ce MOVS            R0, R4
0x99d0 MOVS            R1, R6
0x99d2 MOVS            R2, #1
0x99d4 STR             R3, [SP,#0x484+var_46C]
0x99d6 BL              sub_F0C0
0x99da CMP             R0, #0
0x99dc BNE             loc_9A10
0x99de MOVS            R0, R4
0x99e0 MOVS            R1, #1
0x99e2 MOVS            R2, #1
0x99e4 LDR             R3, =unk_14034CC
0x99e6 BL              sub_F0C0
0x99ea MOVS            R4, R0
0x99ec MOVS            R0, #0x480
0x99f0 ADD             R0, SP
0x99f2 ADDS            R1, R7, R5
0x99f4 LDR             R2, [R0]
0x99f6 LDR             R3, =unk_14034DC
0x99f8 MOVS            R0, R4
0x99fa BL              sub_F0C0
0x99fe MOVS            R1, #0x480
0x9a02 ADD             R1, SP
0x9a04 LDR             R3, [R1]
0x9a06 MOVS            R0, R4
0x9a08 ADDS            R5, R5, R3
0x9a0a LDR             R3, =unk_14034FC
0x9a0c BL              sub_F0C0
0x9a10 MOVS            R1, #0
0x9a12 MOVS            R2, #0xC
0x9a14 LDR             R3, [SP,#0x484+var_468]
0x9a16 MOVS            R0, R6
0x9a18 BL              sub_F0C0
0x9a1c LDR             R4, =aDnfhero0; "DnfHero0"
0x9a1e MOVS            R1, R6
0x9a20 MOVS            R0, R4
0x9a22 MOVS            R2, #1
0x9a24 LDR             R3, [SP,#0x484+var_46C]
0x9a26 BL              sub_F0C0
0x9a2a CMP             R0, #0
0x9a2c BNE             loc_9A60
0x9a2e MOVS            R0, R4
0x9a30 MOVS            R1, #1
0x9a32 MOVS            R2, #1
0x9a34 LDR             R3, =unk_14034CC
0x9a36 BL              sub_F0C0
0x9a3a MOVS            R4, R0
0x9a3c MOVS            R0, #0x480
0x9a40 ADD             R0, SP
0x9a42 ADDS            R1, R7, R5
0x9a44 LDR             R2, [R0]
0x9a46 LDR             R3, =unk_14034DC
0x9a48 MOVS            R0, R4
0x9a4a BL              sub_F0C0
0x9a4e MOVS            R1, #0x480
0x9a52 ADD             R1, SP
0x9a54 LDR             R3, [R1]
0x9a56 MOVS            R0, R4
0x9a58 ADDS            R5, R5, R3
0x9a5a LDR             R3, =unk_14034FC
0x9a5c BL              sub_F0C0
0x9a60 MOVS            R1, #0
0x9a62 MOVS            R2, #0xC
0x9a64 LDR             R3, [SP,#0x484+var_468]
0x9a66 MOVS            R0, R6
0x9a68 BL              sub_F0C0
0x9a6c LDR             R4, =aDnfhero1; "DnfHero1"
0x9a6e MOVS            R1, R6
0x9a70 MOVS            R0, R4
0x9a72 MOVS            R2, #1
0x9a74 LDR             R3, [SP,#0x484+var_46C]
0x9a76 BL              sub_F0C0
0x9a7a CMP             R0, #0
0x9a7c BNE             loc_9AB0
0x9a7e MOVS            R0, R4
0x9a80 MOVS            R1, #1
0x9a82 MOVS            R2, #1
0x9a84 LDR             R3, =unk_14034CC
0x9a86 BL              sub_F0C0
0x9a8a MOVS            R4, R0
0x9a8c MOVS            R0, #0x480
0x9a90 ADD             R0, SP
0x9a92 ADDS            R1, R7, R5
0x9a94 LDR             R2, [R0]
0x9a96 LDR             R3, =unk_14034DC
0x9a98 MOVS            R0, R4
0x9a9a BL              sub_F0C0
0x9a9e MOVS            R1, #0x480
0x9aa2 ADD             R1, SP
0x9aa4 LDR             R3, [R1]
0x9aa6 MOVS            R0, R4
0x9aa8 ADDS            R5, R5, R3
0x9aaa LDR             R3, =unk_14034FC
0x9aac BL              sub_F0C0
0x9ab0 MOVS            R1, #0
0x9ab2 MOVS            R2, #0xC
0x9ab4 LDR             R3, [SP,#0x484+var_468]
0x9ab6 MOVS            R0, R6
0x9ab8 BL              sub_F0C0
0x9abc LDR             R4, =aDnfhero2; "DnfHero2"
0x9abe MOVS            R1, R6
0x9ac0 MOVS            R0, R4
0x9ac2 MOVS            R2, #1
0x9ac4 LDR             R3, [SP,#0x484+var_46C]
0x9ac6 BL              sub_F0C0
0x9aca CMP             R0, #0
0x9acc BNE             loc_9B00
0x9ace MOVS            R0, R4
0x9ad0 MOVS            R1, #1
0x9ad2 MOVS            R2, #1
0x9ad4 LDR             R3, =unk_14034CC
0x9ad6 BL              sub_F0C0
0x9ada MOVS            R4, R0
0x9adc MOVS            R0, #0x480
0x9ae0 ADD             R0, SP
0x9ae2 ADDS            R1, R7, R5
0x9ae4 LDR             R2, [R0]
0x9ae6 LDR             R3, =unk_14034DC
0x9ae8 MOVS            R0, R4
0x9aea BL              sub_F0C0
0x9aee MOVS            R1, #0x480
0x9af2 ADD             R1, SP
0x9af4 LDR             R3, [R1]
0x9af6 MOVS            R0, R4
0x9af8 ADDS            R5, R5, R3
0x9afa LDR             R3, =unk_14034FC
0x9afc BL              sub_F0C0
0x9b00 MOVS            R1, #0
0x9b02 MOVS            R2, #0xC
0x9b04 LDR             R3, [SP,#0x484+var_468]
0x9b06 MOVS            R0, R6
0x9b08 BL              sub_F0C0
0x9b0c LDR             R4, =aDnfhero3; "DnfHero3"
0x9b0e MOVS            R1, R6
0x9b10 MOVS            R0, R4
0x9b12 MOVS            R2, #1
0x9b14 LDR             R3, [SP,#0x484+var_46C]
0x9b16 BL              sub_F0C0
0x9b1a CMP             R0, #0
0x9b1c BNE             loc_9B50
0x9b1e MOVS            R0, R4
0x9b20 MOVS            R1, #1
0x9b22 MOVS            R2, #1
0x9b24 LDR             R3, =unk_14034CC
0x9b26 BL              sub_F0C0
0x9b2a MOVS            R4, R0
0x9b2c MOVS            R0, #0x480
0x9b30 ADD             R0, SP
0x9b32 ADDS            R1, R7, R5
0x9b34 LDR             R2, [R0]
0x9b36 LDR             R3, =unk_14034DC
0x9b38 MOVS            R0, R4
0x9b3a BL              sub_F0C0
0x9b3e MOVS            R1, #0x480
0x9b42 ADD             R1, SP
0x9b44 LDR             R3, [R1]
0x9b46 MOVS            R0, R4
0x9b48 ADDS            R5, R5, R3
0x9b4a LDR             R3, =unk_14034FC
0x9b4c BL              sub_F0C0
0x9b50 MOVS            R1, #0
0x9b52 MOVS            R2, #0xC
0x9b54 LDR             R3, [SP,#0x484+var_468]
0x9b56 MOVS            R0, R6
0x9b58 BL              sub_F0C0
0x9b5c LDR             R4, =aDnfquest0; "DnfQuest0"
0x9b5e MOVS            R1, R6
0x9b60 MOVS            R0, R4
0x9b62 MOVS            R2, #1
0x9b64 LDR             R3, [SP,#0x484+var_46C]
0x9b66 BL              sub_F0C0
0x9b6a CMP             R0, #0
0x9b6c BNE             loc_9BA0
0x9b6e MOVS            R0, R4
0x9b70 MOVS            R1, #1
0x9b72 MOVS            R2, #1
0x9b74 LDR             R3, =unk_14034CC
0x9b76 BL              sub_F0C0
0x9b7a MOVS            R4, R0
0x9b7c MOVS            R0, #0x480
0x9b80 ADD             R0, SP
0x9b82 ADDS            R1, R7, R5
0x9b84 LDR             R2, [R0]
0x9b86 LDR             R3, =unk_14034DC
0x9b88 MOVS            R0, R4
0x9b8a BL              sub_F0C0
0x9b8e MOVS            R1, #0x480
0x9b92 ADD             R1, SP
0x9b94 LDR             R3, [R1]
0x9b96 MOVS            R0, R4
0x9b98 ADDS            R5, R5, R3
0x9b9a LDR             R3, =unk_14034FC
0x9b9c BL              sub_F0C0
0x9ba0 MOVS            R1, #0
0x9ba2 MOVS            R2, #0xC
0x9ba4 LDR             R3, [SP,#0x484+var_468]
0x9ba6 MOVS            R0, R6
0x9ba8 BL              sub_F0C0
0x9bac LDR             R4, =aDnfquest1; "DnfQuest1"
0x9bae MOVS            R1, R6
0x9bb0 MOVS            R0, R4
0x9bb2 MOVS            R2, #1
0x9bb4 LDR             R3, [SP,#0x484+var_46C]
0x9bb6 BL              sub_F0C0
0x9bba CMP             R0, #0
0x9bbc BNE             loc_9BF0
0x9bbe MOVS            R0, R4
0x9bc0 MOVS            R1, #1
0x9bc2 MOVS            R2, #1
0x9bc4 LDR             R3, =unk_14034CC
0x9bc6 BL              sub_F0C0
0x9bca MOVS            R4, R0
0x9bcc MOVS            R0, #0x480
0x9bd0 ADD             R0, SP
0x9bd2 ADDS            R1, R7, R5
0x9bd4 LDR             R2, [R0]
0x9bd6 LDR             R3, =unk_14034DC
0x9bd8 MOVS            R0, R4
0x9bda BL              sub_F0C0
0x9bde MOVS            R1, #0x480
0x9be2 ADD             R1, SP
0x9be4 LDR             R3, [R1]
0x9be6 MOVS            R0, R4
0x9be8 ADDS            R5, R5, R3
0x9bea LDR             R3, =unk_14034FC
0x9bec BL              sub_F0C0
0x9bf0 MOVS            R1, #0
0x9bf2 MOVS            R2, #0xC
0x9bf4 LDR             R3, [SP,#0x484+var_468]
0x9bf6 MOVS            R0, R6
0x9bf8 BL              sub_F0C0
0x9bfc LDR             R4, =aDnfquest2; "DnfQuest2"
0x9bfe MOVS            R1, R6
0x9c00 MOVS            R0, R4
0x9c02 MOVS            R2, #1
0x9c04 LDR             R3, [SP,#0x484+var_46C]
0x9c06 BL              sub_F0C0
0x9c0a CMP             R0, #0
0x9c0c BNE             loc_9C40
0x9c0e MOVS            R0, R4
0x9c10 MOVS            R1, #1
0x9c12 MOVS            R2, #1
0x9c14 LDR             R3, =unk_14034CC
0x9c16 BL              sub_F0C0
0x9c1a MOVS            R4, R0
0x9c1c MOVS            R0, #0x480
0x9c20 ADD             R0, SP
0x9c22 ADDS            R1, R7, R5
0x9c24 LDR             R2, [R0]
0x9c26 LDR             R3, =unk_14034DC
0x9c28 MOVS            R0, R4
0x9c2a BL              sub_F0C0
0x9c2e MOVS            R1, #0x480
0x9c32 ADD             R1, SP
0x9c34 LDR             R3, [R1]
0x9c36 MOVS            R0, R4
0x9c38 ADDS            R5, R5, R3
0x9c3a LDR             R3, =unk_14034FC
0x9c3c BL              sub_F0C0
0x9c40 MOVS            R1, #0
0x9c42 MOVS            R2, #0xC
0x9c44 LDR             R3, [SP,#0x484+var_468]
0x9c46 MOVS            R0, R6
0x9c48 BL              sub_F0C0
0x9c4c LDR             R4, =aDnfquest3; "DnfQuest3"
0x9c4e MOVS            R1, R6
0x9c50 MOVS            R0, R4
0x9c52 MOVS            R2, #1
0x9c54 LDR             R3, [SP,#0x484+var_46C]
0x9c56 BL              sub_F0C0
0x9c5a CMP             R0, #0
0x9c5c BNE             loc_9C90
0x9c5e MOVS            R0, R4
0x9c60 MOVS            R1, #1
0x9c62 MOVS            R2, #1
0x9c64 LDR             R3, =unk_14034CC
0x9c66 BL              sub_F0C0
0x9c6a MOVS            R4, R0
0x9c6c MOVS            R0, #0x480
0x9c70 ADD             R0, SP
0x9c72 ADDS            R1, R7, R5
0x9c74 LDR             R2, [R0]
0x9c76 LDR             R3, =unk_14034DC
0x9c78 MOVS            R0, R4
0x9c7a BL              sub_F0C0
0x9c7e MOVS            R1, #0x480
0x9c82 ADD             R1, SP
0x9c84 LDR             R3, [R1]
0x9c86 MOVS            R0, R4
0x9c88 ADDS            R5, R5, R3
0x9c8a LDR             R3, =unk_14034FC
0x9c8c BL              sub_F0C0
0x9c90 MOVS            R1, #0
0x9c92 MOVS            R2, #0xC
0x9c94 LDR             R3, [SP,#0x484+var_468]
0x9c96 MOVS            R0, R6
0x9c98 BL              sub_F0C0
0x9c9c LDR             R4, =aDnfnetEtInfo; "DnfNet_ET_info"
0x9c9e MOVS            R1, R6
0x9ca0 MOVS            R0, R4
0x9ca2 MOVS            R2, #1
0x9ca4 LDR             R3, [SP,#0x484+var_46C]
0x9ca6 BL              sub_F0C0
0x9caa CMP             R0, #0
0x9cac BNE             loc_9CE0
0x9cae MOVS            R0, R4
0x9cb0 MOVS            R1, #1
0x9cb2 MOVS            R2, #1
0x9cb4 LDR             R3, =unk_14034CC
0x9cb6 BL              sub_F0C0
0x9cba MOVS            R4, R0
0x9cbc MOVS            R0, #0x480
0x9cc0 ADD             R0, SP
0x9cc2 ADDS            R1, R7, R5
0x9cc4 LDR             R2, [R0]
0x9cc6 LDR             R3, =unk_14034DC
0x9cc8 MOVS            R0, R4
0x9cca BL              sub_F0C0
0x9cce MOVS            R1, #0x480
0x9cd2 ADD             R1, SP
0x9cd4 LDR             R3, [R1]
0x9cd6 MOVS            R0, R4
0x9cd8 ADDS            R5, R5, R3
0x9cda LDR             R3, =unk_14034FC
0x9cdc BL              sub_F0C0
0x9ce0 MOVS            R1, #0
0x9ce2 MOVS            R2, #0xC
0x9ce4 LDR             R3, [SP,#0x484+var_468]
0x9ce6 MOVS            R0, R6
0x9ce8 BL              sub_F0C0
0x9cec LDR             R4, =aDnfnetCp; "DnfNet_CP"
0x9cee MOVS            R1, R6
0x9cf0 MOVS            R0, R4
0x9cf2 MOVS            R2, #1
0x9cf4 LDR             R3, [SP,#0x484+var_46C]
0x9cf6 BL              sub_F0C0
0x9cfa CMP             R0, #0
0x9cfc BNE             loc_9D30
0x9cfe MOVS            R0, R4
0x9d00 MOVS            R1, #1
0x9d02 MOVS            R2, #1
0x9d04 LDR             R3, =unk_14034CC
0x9d06 BL              sub_F0C0
0x9d0a MOVS            R4, R0
0x9d0c MOVS            R0, #0x480
0x9d10 ADD             R0, SP
0x9d12 ADDS            R1, R7, R5
0x9d14 LDR             R2, [R0]
0x9d16 LDR             R3, =unk_14034DC
0x9d18 MOVS            R0, R4
0x9d1a BL              sub_F0C0
0x9d1e MOVS            R1, #0x480
0x9d22 ADD             R1, SP
0x9d24 LDR             R3, [R1]
0x9d26 MOVS            R0, R4
0x9d28 ADDS            R5, R5, R3
0x9d2a LDR             R3, =unk_14034FC
0x9d2c BL              sub_F0C0
0x9d30 MOVS            R1, #0
0x9d32 MOVS            R2, #0xC
0x9d34 LDR             R3, [SP,#0x484+var_468]
0x9d36 MOVS            R0, R6
0x9d38 BL              sub_F0C0
0x9d3c LDR             R4, =aDnfnetRk1; "DnfNet_RK_1"
0x9d3e MOVS            R1, R6
0x9d40 MOVS            R0, R4
0x9d42 MOVS            R2, #1
0x9d44 LDR             R3, [SP,#0x484+var_46C]
0x9d46 BL              sub_F0C0
0x9d4a CMP             R0, #0
0x9d4c BNE             loc_9DCA
0x9d4e B               loc_9D98
0x9d98 MOVS            R0, R4
0x9d9a MOVS            R1, #1
0x9d9c MOVS            R2, #1
0x9d9e LDR             R3, =unk_14034CC
0x9da0 BL              sub_F0C0
0x9da4 MOVS            R4, R0
0x9da6 MOVS            R0, #0x480
0x9daa ADD             R0, SP
0x9dac ADDS            R1, R7, R5
0x9dae LDR             R2, [R0]
0x9db0 LDR             R3, =unk_14034DC
0x9db2 MOVS            R0, R4
0x9db4 BL              sub_F0C0
0x9db8 MOVS            R1, #0x480
0x9dbc ADD             R1, SP
0x9dbe LDR             R3, [R1]
0x9dc0 MOVS            R0, R4
0x9dc2 ADDS            R5, R5, R3
0x9dc4 LDR             R3, =unk_14034FC
0x9dc6 BL              sub_F0C0
0x9dca MOVS            R1, #0
0x9dcc MOVS            R2, #0xC
0x9dce LDR             R3, [SP,#0x484+var_468]
0x9dd0 MOVS            R0, R6
0x9dd2 BL              sub_F0C0
0x9dd6 LDR             R4, =aDnfnetRk2; "DnfNet_RK_2"
0x9dd8 MOVS            R1, R6
0x9dda MOVS            R0, R4
0x9ddc MOVS            R2, #1
0x9dde LDR             R3, [SP,#0x484+var_46C]
0x9de0 BL              sub_F0C0
0x9de4 CMP             R0, #0
0x9de6 BNE             loc_9E1A
0x9de8 MOVS            R0, R4
0x9dea MOVS            R1, #1
0x9dec MOVS            R2, #1
0x9dee LDR             R3, =unk_14034CC
0x9df0 BL              sub_F0C0
0x9df4 MOVS            R4, R0
0x9df6 MOVS            R0, #0x480
0x9dfa ADD             R0, SP
0x9dfc ADDS            R1, R7, R5
0x9dfe LDR             R2, [R0]
0x9e00 LDR             R3, =unk_14034DC
0x9e02 MOVS            R0, R4
0x9e04 BL              sub_F0C0
0x9e08 MOVS            R1, #0x480
0x9e0c ADD             R1, SP
0x9e0e LDR             R3, [R1]
0x9e10 MOVS            R0, R4
0x9e12 ADDS            R5, R5, R3
0x9e14 LDR             R3, =unk_14034FC
0x9e16 BL              sub_F0C0
0x9e1a MOVS            R1, #0
0x9e1c MOVS            R2, #0xC
0x9e1e LDR             R3, [SP,#0x484+var_468]
0x9e20 MOVS            R0, R6
0x9e22 BL              sub_F0C0
0x9e26 LDR             R4, =aDnfnetRk3; "DnfNet_RK_3"
0x9e28 MOVS            R1, R6
0x9e2a MOVS            R0, R4
0x9e2c MOVS            R2, #1
0x9e2e LDR             R3, [SP,#0x484+var_46C]
0x9e30 BL              sub_F0C0
0x9e34 CMP             R0, #0
0x9e36 BNE             loc_9E6A
0x9e38 MOVS            R0, R4
0x9e3a MOVS            R1, #1
0x9e3c MOVS            R2, #1
0x9e3e LDR             R3, =unk_14034CC
0x9e40 BL              sub_F0C0
0x9e44 MOVS            R4, R0
0x9e46 MOVS            R0, #0x480
0x9e4a ADD             R0, SP
0x9e4c ADDS            R1, R7, R5
0x9e4e LDR             R2, [R0]
0x9e50 LDR             R3, =unk_14034DC
0x9e52 MOVS            R0, R4
0x9e54 BL              sub_F0C0
0x9e58 MOVS            R1, #0x480
0x9e5c ADD             R1, SP
0x9e5e LDR             R3, [R1]
0x9e60 MOVS            R0, R4
0x9e62 ADDS            R5, R5, R3
0x9e64 LDR             R3, =unk_14034FC
0x9e66 BL              sub_F0C0
0x9e6a MOVS            R1, #0
0x9e6c MOVS            R2, #0xC
0x9e6e LDR             R3, [SP,#0x484+var_468]
0x9e70 MOVS            R0, R6
0x9e72 BL              sub_F0C0
0x9e76 LDR             R4, =aDnfnetRk4; "DnfNet_RK_4"
0x9e78 MOVS            R1, R6
0x9e7a MOVS            R0, R4
0x9e7c MOVS            R2, #1
0x9e7e LDR             R3, [SP,#0x484+var_46C]
0x9e80 BL              sub_F0C0
0x9e84 CMP             R0, #0
0x9e86 BNE             loc_9EBA
0x9e88 MOVS            R0, R4
0x9e8a MOVS            R1, #1
0x9e8c MOVS            R2, #1
0x9e8e LDR             R3, =unk_14034CC
0x9e90 BL              sub_F0C0
0x9e94 MOVS            R4, R0
0x9e96 MOVS            R0, #0x480
0x9e9a ADD             R0, SP
0x9e9c ADDS            R1, R7, R5
0x9e9e LDR             R2, [R0]
0x9ea0 LDR             R3, =unk_14034DC
0x9ea2 MOVS            R0, R4
0x9ea4 BL              sub_F0C0
0x9ea8 MOVS            R1, #0x480
0x9eac ADD             R1, SP
0x9eae LDR             R3, [R1]
0x9eb0 MOVS            R0, R4
0x9eb2 ADDS            R5, R5, R3
0x9eb4 LDR             R3, =unk_14034FC
0x9eb6 BL              sub_F0C0
0x9eba MOVS            R1, #0
0x9ebc MOVS            R2, #0xC
0x9ebe LDR             R3, [SP,#0x484+var_468]
0x9ec0 MOVS            R0, R6
0x9ec2 BL              sub_F0C0
0x9ec6 LDR             R4, =aDnflocalRk1; "DnfLocal_RK_1"
0x9ec8 MOVS            R1, R6
0x9eca MOVS            R0, R4
0x9ecc MOVS            R2, #1
0x9ece LDR             R3, [SP,#0x484+var_46C]
0x9ed0 BL              sub_F0C0
0x9ed4 CMP             R0, #0
0x9ed6 BNE             loc_9F0A
0x9ed8 MOVS            R0, R4
0x9eda MOVS            R1, #1
0x9edc MOVS            R2, #1
0x9ede LDR             R3, =unk_14034CC
0x9ee0 BL              sub_F0C0
0x9ee4 MOVS            R4, R0
0x9ee6 MOVS            R0, #0x480
0x9eea ADD             R0, SP
0x9eec ADDS            R1, R7, R5
0x9eee LDR             R2, [R0]
0x9ef0 LDR             R3, =unk_14034DC
0x9ef2 MOVS            R0, R4
0x9ef4 BL              sub_F0C0
0x9ef8 MOVS            R1, #0x480
0x9efc ADD             R1, SP
0x9efe LDR             R3, [R1]
0x9f00 MOVS            R0, R4
0x9f02 ADDS            R5, R5, R3
0x9f04 LDR             R3, =unk_14034FC
0x9f06 BL              sub_F0C0
0x9f0a MOVS            R1, #0
0x9f0c MOVS            R2, #0xC
0x9f0e LDR             R3, [SP,#0x484+var_468]
0x9f10 MOVS            R0, R6
0x9f12 BL              sub_F0C0
0x9f16 LDR             R4, =aDnflocalRk2; "DnfLocal_RK_2"
0x9f18 MOVS            R1, R6
0x9f1a MOVS            R0, R4
0x9f1c MOVS            R2, #1
0x9f1e LDR             R3, [SP,#0x484+var_46C]
0x9f20 BL              sub_F0C0
0x9f24 CMP             R0, #0
0x9f26 BNE             loc_9F5A
0x9f28 MOVS            R0, R4
0x9f2a MOVS            R1, #1
0x9f2c MOVS            R2, #1
0x9f2e LDR             R3, =unk_14034CC
0x9f30 BL              sub_F0C0
0x9f34 MOVS            R4, R0
0x9f36 MOVS            R0, #0x480
0x9f3a ADD             R0, SP
0x9f3c ADDS            R1, R7, R5
0x9f3e LDR             R2, [R0]
0x9f40 LDR             R3, =unk_14034DC
0x9f42 MOVS            R0, R4
0x9f44 BL              sub_F0C0
0x9f48 MOVS            R1, #0x480
0x9f4c ADD             R1, SP
0x9f4e LDR             R3, [R1]
0x9f50 MOVS            R0, R4
0x9f52 ADDS            R5, R5, R3
0x9f54 LDR             R3, =unk_14034FC
0x9f56 BL              sub_F0C0
0x9f5a MOVS            R1, #0
0x9f5c MOVS            R2, #0xC
0x9f5e LDR             R3, [SP,#0x484+var_468]
0x9f60 MOVS            R0, R6
0x9f62 BL              sub_F0C0
0x9f66 LDR             R4, =aDnflocalRk3; "DnfLocal_RK_3"
0x9f68 MOVS            R1, R6
0x9f6a MOVS            R0, R4
0x9f6c MOVS            R2, #1
0x9f6e LDR             R3, [SP,#0x484+var_46C]
0x9f70 BL              sub_F0C0
0x9f74 CMP             R0, #0
0x9f76 BNE             loc_9FAA
0x9f78 MOVS            R0, R4
0x9f7a MOVS            R1, #1
0x9f7c MOVS            R2, #1
0x9f7e LDR             R3, =unk_14034CC
0x9f80 BL              sub_F0C0
0x9f84 MOVS            R4, R0
0x9f86 MOVS            R0, #0x480
0x9f8a ADD             R0, SP
0x9f8c ADDS            R1, R7, R5
0x9f8e LDR             R2, [R0]
0x9f90 LDR             R3, =unk_14034DC
0x9f92 MOVS            R0, R4
0x9f94 BL              sub_F0C0
0x9f98 MOVS            R1, #0x480
0x9f9c ADD             R1, SP
0x9f9e LDR             R3, [R1]
0x9fa0 MOVS            R0, R4
0x9fa2 ADDS            R5, R5, R3
0x9fa4 LDR             R3, =unk_14034FC
0x9fa6 BL              sub_F0C0
0x9faa MOVS            R1, #0
0x9fac MOVS            R2, #0xC
0x9fae LDR             R3, [SP,#0x484+var_468]
0x9fb0 MOVS            R0, R6
0x9fb2 BL              sub_F0C0
0x9fb6 LDR             R4, =aDnflocalRk4; "DnfLocal_RK_4"
0x9fb8 MOVS            R1, R6
0x9fba MOVS            R0, R4
0x9fbc MOVS            R2, #1
0x9fbe LDR             R3, [SP,#0x484+var_46C]
0x9fc0 BL              sub_F0C0
0x9fc4 CMP             R0, #0
0x9fc6 BNE             loc_9FFA
0x9fc8 MOVS            R0, R4
0x9fca MOVS            R1, #1
0x9fcc MOVS            R2, #1
0x9fce LDR             R3, =unk_14034CC
0x9fd0 BL              sub_F0C0
0x9fd4 MOVS            R4, R0
0x9fd6 MOVS            R0, #0x480
0x9fda ADD             R0, SP
0x9fdc ADDS            R1, R7, R5
0x9fde LDR             R2, [R0]
0x9fe0 LDR             R3, =unk_14034DC
0x9fe2 MOVS            R0, R4
0x9fe4 BL              sub_F0C0
0x9fe8 MOVS            R1, #0x480
0x9fec ADD             R1, SP
0x9fee LDR             R3, [R1]
0x9ff0 MOVS            R0, R4
0x9ff2 ADDS            R5, R5, R3
0x9ff4 LDR             R3, =unk_14034FC
0x9ff6 BL              sub_F0C0
0x9ffa MOVS            R1, #0
0x9ffc MOVS            R2, #0xC
0x9ffe LDR             R3, [SP,#0x484+var_468]
0xa000 MOVS            R0, R6
0xa002 BL              sub_F0C0
0xa006 LDR             R4, =a46000Act; "46000.act"
0xa008 MOVS            R1, R6
0xa00a MOVS            R0, R4
0xa00c MOVS            R2, #1
0xa00e LDR             R3, [SP,#0x484+var_46C]
0xa010 BL              sub_F0C0
0xa014 CMP             R0, #0
0xa016 BNE             loc_A04A
0xa018 MOVS            R0, R4
0xa01a MOVS            R1, #1
0xa01c MOVS            R2, #1
0xa01e LDR             R3, =unk_14034CC
0xa020 BL              sub_F0C0
0xa024 MOVS            R4, R0
0xa026 MOVS            R0, #0x480
0xa02a ADD             R0, SP
0xa02c ADDS            R1, R7, R5
0xa02e LDR             R2, [R0]
0xa030 LDR             R3, =unk_14034DC
0xa032 MOVS            R0, R4
0xa034 BL              sub_F0C0
0xa038 MOVS            R1, #0x480
0xa03c ADD             R1, SP
0xa03e LDR             R3, [R1]
0xa040 MOVS            R0, R4
0xa042 ADDS            R5, R5, R3
0xa044 LDR             R3, =unk_14034FC
0xa046 BL              sub_F0C0
0xa04a MOVS            R1, #0
0xa04c MOVS            R2, #0xC
0xa04e LDR             R3, [SP,#0x484+var_468]
0xa050 MOVS            R0, R6
0xa052 BL              sub_F0C0
0xa056 LDR             R4, =a46000Fra; "46000.fra"
0xa058 MOVS            R1, R6
0xa05a MOVS            R0, R4
0xa05c MOVS            R2, #1
0xa05e LDR             R3, [SP,#0x484+var_46C]
0xa060 BL              sub_F0C0
0xa064 CMP             R0, #0
0xa066 BNE             loc_A09A
0xa068 MOVS            R0, R4
0xa06a MOVS            R1, #1
0xa06c MOVS            R2, #1
0xa06e LDR             R3, =unk_14034CC
0xa070 BL              sub_F0C0
0xa074 MOVS            R4, R0
0xa076 MOVS            R0, #0x480
0xa07a ADD             R0, SP
0xa07c ADDS            R1, R7, R5
0xa07e LDR             R2, [R0]
0xa080 LDR             R3, =unk_14034DC
0xa082 MOVS            R0, R4
0xa084 BL              sub_F0C0
0xa088 MOVS            R1, #0x480
0xa08c ADD             R1, SP
0xa08e LDR             R3, [R1]
0xa090 MOVS            R0, R4
0xa092 ADDS            R5, R5, R3
0xa094 LDR             R3, =unk_14034FC
0xa096 BL              sub_F0C0
0xa09a MOVS            R1, #0
0xa09c MOVS            R2, #0xC
0xa09e LDR             R3, [SP,#0x484+var_468]
0xa0a0 MOVS            R0, R6
0xa0a2 BL              sub_F0C0
0xa0a6 LDR             R4, =a46000Dat; "46000.dat"
0xa0a8 MOVS            R1, R6
0xa0aa MOVS            R0, R4
0xa0ac MOVS            R2, #1
0xa0ae LDR             R3, [SP,#0x484+var_46C]
0xa0b0 BL              sub_F0C0
0xa0b4 CMP             R0, #0
0xa0b6 BNE             loc_A0EA
0xa0b8 MOVS            R0, R4
0xa0ba MOVS            R1, #1
0xa0bc MOVS            R2, #1
0xa0be LDR             R3, =unk_14034CC
0xa0c0 BL              sub_F0C0
0xa0c4 MOVS            R4, R0
0xa0c6 MOVS            R0, #0x480
0xa0ca ADD             R0, SP
0xa0cc ADDS            R1, R7, R5
0xa0ce LDR             R2, [R0]
0xa0d0 LDR             R3, =unk_14034DC
0xa0d2 MOVS            R0, R4
0xa0d4 BL              sub_F0C0
0xa0d8 MOVS            R1, #0x480
0xa0dc ADD             R1, SP
0xa0de LDR             R3, [R1]
0xa0e0 MOVS            R0, R4
0xa0e2 ADDS            R5, R5, R3
0xa0e4 LDR             R3, =unk_14034FC
0xa0e6 BL              sub_F0C0
0xa0ea MOVS            R2, #0
0xa0ec STR             R2, [SP,#0x484+var_458]
0xa0ee LDR             R6, =0x45A
0xa0f0 LDR             R3, =unk_140329C
0xa0f2 ADD             R6, SP
0xa0f4 MOVS            R1, #0
0xa0f6 MOVS            R2, #0x1E
0xa0f8 STR             R3, [SP,#0x484+var_470]
0xa0fa MOVS            R0, R6
0xa0fc BL              sub_F0C0
0xa100 LDR             R0, [SP,#0x484+var_458]
0xa102 LDR             R1, =0xB3B1
0xa104 LDR             R3, =unk_14032CC
0xa106 ADDS            R1, R0, R1
0xa108 STR             R1, [SP,#0x484+var_45C]
0xa10a LDR             R2, [SP,#0x484+var_45C]
0xa10c LDR             R1, =aDAct; "%d.act"
0xa10e STR             R3, [SP,#0x484+var_474]
0xa110 MOVS            R0, R6
0xa112 BL              sub_F0C0
0xa116 MOVS            R0, #0x478
0xa11a MOVS            R1, #0
0xa11c MOVS            R2, #0xC
0xa11e LDR             R3, [SP,#0x484+var_470]
0xa120 ADD             R0, SP
0xa122 BL              sub_F0C0
0xa126 MOVS            R1, #0x8F
0xa128 LDR             R3, =unk_140350C
0xa12a LSLS            R1, R1, #3
0xa12c MOVS            R0, R6
0xa12e ADD             R1, SP
0xa130 MOVS            R2, #1
0xa132 STR             R3, [SP,#0x484+var_478]
0xa134 BL              sub_F0C0
0xa138 CMP             R0, #0
0xa13a BEQ             loc_A13E
0xa13c B               loc_A30E
0xa13e LDR             R3, =unk_14034CC
0xa140 MOVS            R1, #1
0xa142 MOVS            R2, #1
0xa144 STR             R3, [SP,#0x484+var_47C]
0xa146 MOVS            R0, R6
0xa148 BL              sub_F0C0
0xa14c MOVS            R4, R0
0xa14e MOVS            R0, #0x90
0xa150 LDR             R3, =unk_14034DC
0xa152 LSLS            R0, R0, #3
0xa154 ADD             R0, SP
0xa156 LDR             R2, [R0]
0xa158 ADDS            R1, R7, R5
0xa15a STR             R3, [SP,#0x484+var_480]
0xa15c MOVS            R0, R4
0xa15e BL              sub_F0C0
0xa162 MOVS            R0, #0x480
0xa166 LDR             R1, =unk_14034FC
0xa168 ADD             R0, SP
0xa16a LDR             R3, [R0]
0xa16c STR             R1, [SP,#0x484+var_484]
0xa16e B               loc_A1BC
0xa1bc MOVS            R0, R4
0xa1be ADDS            R5, R5, R3
0xa1c0 BL              sub_F0BC
0xa1c4 MOVS            R1, #0
0xa1c6 MOVS            R2, #0x1E
0xa1c8 LDR             R3, [SP,#0x484+var_470]
0xa1ca MOVS            R0, R6
0xa1cc BL              sub_F0C0
0xa1d0 LDR             R1, =aDFra; "%d.fra"
0xa1d2 LDR             R2, [SP,#0x484+var_45C]
0xa1d4 LDR             R3, [SP,#0x484+var_474]
0xa1d6 MOVS            R0, R6
0xa1d8 BL              sub_F0C0
0xa1dc MOVS            R0, #0x478
0xa1e0 MOVS            R1, #0
0xa1e2 MOVS            R2, #0xC
0xa1e4 LDR             R3, [SP,#0x484+var_470]
0xa1e6 ADD             R0, SP
0xa1e8 BL              sub_F0C0
0xa1ec MOVS            R1, #0x478
0xa1f0 MOVS            R0, R6
0xa1f2 ADD             R1, SP
0xa1f4 MOVS            R2, #1
0xa1f6 LDR             R3, [SP,#0x484+var_478]
0xa1f8 BL              sub_F0C0
0xa1fc CMP             R0, #0
0xa1fe BNE             loc_A232
0xa200 MOVS            R1, #1
0xa202 MOVS            R2, #1
0xa204 LDR             R3, [SP,#0x484+var_47C]
0xa206 MOVS            R0, R6
0xa208 BL              sub_F0C0
0xa20c MOVS            R4, R0
0xa20e MOVS            R0, #0x480
0xa212 ADD             R0, SP
0xa214 ADDS            R1, R7, R5
0xa216 LDR             R2, [R0]
0xa218 LDR             R3, [SP,#0x484+var_480]
0xa21a MOVS            R0, R4
0xa21c BL              sub_F0C0
0xa220 MOVS            R0, #0x480
0xa224 ADD             R0, SP
0xa226 LDR             R3, [R0]
0xa228 LDR             R1, [SP,#0x484+var_484]
0xa22a MOVS            R0, R4
0xa22c ADDS            R5, R5, R3
0xa22e BL              sub_F0BC
0xa232 MOVS            R1, #0
0xa234 MOVS            R2, #0x1E
0xa236 LDR             R3, [SP,#0x484+var_470]
0xa238 MOVS            R0, R6
0xa23a BL              sub_F0C0
0xa23e LDR             R1, =aDDat; "%d.dat"
0xa240 LDR             R2, [SP,#0x484+var_45C]
0xa242 LDR             R3, [SP,#0x484+var_474]
0xa244 MOVS            R0, R6
0xa246 BL              sub_F0C0
0xa24a MOVS            R0, #0x478
0xa24e MOVS            R1, #0
0xa250 MOVS            R2, #0xC
0xa252 LDR             R3, [SP,#0x484+var_470]
0xa254 ADD             R0, SP
0xa256 BL              sub_F0C0
0xa25a MOVS            R1, #0x478
0xa25e MOVS            R0, R6
0xa260 ADD             R1, SP
0xa262 MOVS            R2, #1
0xa264 LDR             R3, [SP,#0x484+var_478]
0xa266 BL              sub_F0C0
0xa26a CMP             R0, #0
0xa26c BNE             loc_A2A0
0xa26e MOVS            R1, #1
0xa270 MOVS            R2, #1
0xa272 LDR             R3, [SP,#0x484+var_47C]
0xa274 MOVS            R0, R6
0xa276 BL              sub_F0C0
0xa27a MOVS            R4, R0
0xa27c MOVS            R0, #0x480
0xa280 ADD             R0, SP
0xa282 ADDS            R1, R7, R5
0xa284 LDR             R2, [R0]
0xa286 LDR             R3, [SP,#0x484+var_480]
0xa288 MOVS            R0, R4
0xa28a BL              sub_F0C0
0xa28e MOVS            R0, #0x480
0xa292 ADD             R0, SP
0xa294 LDR             R3, [R0]
0xa296 LDR             R1, [SP,#0x484+var_484]
0xa298 MOVS            R0, R4
0xa29a ADDS            R5, R5, R3
0xa29c BL              sub_F0BC
0xa2a0 MOVS            R1, #0
0xa2a2 MOVS            R2, #0x1E
0xa2a4 LDR             R3, [SP,#0x484+var_470]
0xa2a6 MOVS            R0, R6
0xa2a8 BL              sub_F0C0
0xa2ac LDR             R1, =aDDg; "%d.dg"
0xa2ae LDR             R2, [SP,#0x484+var_45C]
0xa2b0 LDR             R3, [SP,#0x484+var_474]
0xa2b2 MOVS            R0, R6
0xa2b4 BL              sub_F0C0
0xa2b8 MOVS            R0, #0x478
0xa2bc MOVS            R1, #0
0xa2be MOVS            R2, #0xC
0xa2c0 LDR             R3, [SP,#0x484+var_470]
0xa2c2 ADD             R0, SP
0xa2c4 BL              sub_F0C0
0xa2c8 MOVS            R1, #0x478
0xa2cc MOVS            R0, R6
0xa2ce ADD             R1, SP
0xa2d0 MOVS            R2, #1
0xa2d2 LDR             R3, [SP,#0x484+var_478]
0xa2d4 BL              sub_F0C0
0xa2d8 CMP             R0, #0
0xa2da BNE             loc_A30E
0xa2dc MOVS            R1, #1
0xa2de MOVS            R2, #1
0xa2e0 LDR             R3, [SP,#0x484+var_47C]
0xa2e2 MOVS            R0, R6
0xa2e4 BL              sub_F0C0
0xa2e8 MOVS            R4, R0
0xa2ea MOVS            R0, #0x480
0xa2ee ADD             R0, SP
0xa2f0 ADDS            R1, R7, R5
0xa2f2 LDR             R2, [R0]
0xa2f4 LDR             R3, [SP,#0x484+var_480]
0xa2f6 MOVS            R0, R4
0xa2f8 BL              sub_F0C0
0xa2fc MOVS            R0, #0x480
0xa300 ADD             R0, SP
0xa302 LDR             R3, [R0]
0xa304 LDR             R1, [SP,#0x484+var_484]
0xa306 MOVS            R0, R4
0xa308 ADDS            R5, R5, R3
0xa30a BL              sub_F0BC
0xa30e LDR             R2, [SP,#0x484+var_458]
0xa310 ADDS            R2, #1
0xa312 STR             R2, [SP,#0x484+var_458]
0xa314 CMP             R2, #0x3C ; '<'
0xa316 BEQ             loc_A31A
0xa318 B               loc_A0EE
0xa31a LDR             R4, =aDnfsmDat; "DnFSm.dat"
0xa31c MOVS            R0, R4
0xa31e BL              sub_88E0
0xa322 MOVS            R0, R4
0xa324 MOVS            R1, #2
0xa326 MOVS            R2, #1
0xa328 LDR             R3, =unk_14034CC
0xa32a BL              sub_F0C0
0xa32e LDR             R3, =unk_14034EC
0xa330 MOVS            R4, R0
0xa332 MOVS            R1, R7
0xa334 MOVS            R2, R5
0xa336 BL              sub_F0C0
0xa33a MOVS            R0, R4
0xa33c LDR             R3, =unk_14034FC
0xa33e BL              sub_F0C0
0xa342 CMP             R7, #0
0xa344 BEQ             loc_A34E
0xa346 MOVS            R0, R7
0xa348 LDR             R3, =unk_14032FC
0xa34a BL              sub_F0C0
0xa34e LDR             R3, =0x484
0xa350 MOVS            R0, #1
0xa352 ADD             SP, R3
0xa354 POP             {R4-R7}
0xa356 POP             {R1}
0xa358 BX              R1