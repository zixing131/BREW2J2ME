0x80370 PUSH            {R4-R7,LR}
0x80372 SUB             SP, SP, #0xC
0x80374 LSLS            R0, R0, #0x18
0x80376 STR             R3, [SP,#0xC+var_C]
0x80378 LSRS            R4, R0, #0x18
0x8037a LDR             R3, =dword_1501D90
0x8037c LSLS            R1, R1, #0x18
0x8037e LSRS            R1, R1, #0x18
0x80380 MOVS            R0, R4
0x80382 LDR             R5, [R3]
0x80384 STR             R1, [SP,#0xC+var_8]
0x80386 BL              sub_78D40
0x8038a LSLS            R0, R0, #0x18
0x8038c LSRS            R0, R0, #0x18
0x8038e LDR             R7, [SP,#0xC+arg_0]
0x80390 STR             R0, [SP,#0xC+var_4]
0x80392 LDRB            R3, [R7]
0x80394 CMP             R3, #0x11
0x80396 BEQ             loc_8039A
0x80398 B               loc_8061C
0x8039a LDRB            R2, [R7,#1]
0x8039c MOVS            R3, R2
0x8039e SUBS            R3, #0x13
0x803a0 LSLS            R3, R3, #0x18
0x803a2 LSRS            R3, R3, #0x18
0x803a4 CMP             R3, #1
0x803a6 BLS             loc_803AA
0x803a8 B               loc_8061C
0x803aa LDR             R3, =0x1AE8
0x803ac LDRB            R3, [R5,R3]
0x803ae CMP             R3, #0
0x803b0 BEQ             loc_80404
0x803b2 CMP             R3, #0x14
0x803b4 BEQ             loc_80404
0x803b6 CMP             R2, #0x13
0x803b8 BNE             loc_803DC
0x803ba LDR             R3, =byte_150007C
0x803bc LDRB            R1, [R3]
0x803be LDR             R2, =byte_1500089
0x803c0 CMP             R1, #1
0x803c2 BNE             loc_803D2
0x803c4 LDRB            R3, [R2]
0x803c6 CMP             R3, #0
0x803c8 BEQ             loc_80404
0x803ca CMP             R3, #1
0x803cc BEQ             loc_803F0
0x803ce STRB            R1, [R2]
0x803d0 B               loc_8064E
0x803d2 LDRB            R3, [R2]
0x803d4 CMP             R3, #0
0x803d6 BNE             loc_803F0
0x803d8 MOVS            R3, #1
0x803da B               loc_80400
0x803dc CMP             R2, #0x14
0x803de BNE             loc_8040E
0x803e0 LDR             R3, =byte_150007C
0x803e2 LDRB            R3, [R3]
0x803e4 CMP             R3, #1
0x803e6 BNE             loc_80404
0x803e8 LDR             R2, =byte_1500089
0x803ea LDRB            R3, [R2]
0x803ec CMP             R3, #0
0x803ee BEQ             loc_803FE
0x803f0 MOVS            R0, #3
0x803f2 MOVS            R1, #9
0x803f4 LDR             R3, =(sub_2D328+1)
0x803f6 BL              sub_80706
0x803fa MOVS            R0, #3
0x803fc B               loc_80650
0x803fe MOVS            R3, #2
0x80400 STRB            R3, [R2]
0x80402 B               loc_8064E
0x80404 MOVS            R0, #3
0x80406 MOVS            R1, #8
0x80408 LDR             R3, =(sub_2D328+1)
0x8040a BL              sub_80706
0x8040e MOVS            R0, #2
0x80410 B               loc_80650
0x80412 CMP             R4, #6
0x80414 BLS             loc_8041A
0x80416 LDR             R0, [SP,#0xC+var_C]
0x80418 B               loc_8042A
0x8041a CMP             R3, #3
0x8041c BNE             loc_80424
0x8041e MOVS            R0, R7
0x80420 ADDS            R0, #0x34 ; '4'
0x80422 B               loc_8042A
0x80424 LDR             R2, [SP,#0xC+var_C]
0x80426 LSLS            R3, R3, #3
0x80428 ADDS            R0, R2, R3
0x8042a LDRB            R3, [R0]
0x8042c SUBS            R3, #0x30 ; '0'
0x8042e LSLS            R3, R3, #0x18
0x80430 LSRS            R3, R3, #0x18
0x80432 CMP             R3, #0x67; switch 104 cases
0x80434 BLS             loc_80438
0x80436 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80438 LDR             R2, =jpt_8043E
0x8043a LSLS            R3, R3, #2
0x8043c LDR             R3, [R3,R2]
0x8043e MOV             PC, R3; switch jump
0x80440 MOVS            R1, R4; jumptable 0008043E case 0
0x80442 MOVS            R2, #7
0x80444 BL              sub_78654
0x80448 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8044a MOVS            R1, R4; jumptable 0008043E case 1
0x8044c MOVS            R2, #7
0x8044e BL              sub_78684
0x80452 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80454 MOVS            R1, R4; jumptable 0008043E case 2
0x80456 MOVS            R2, #7
0x80458 BL              sub_786B4
0x8045c B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8045e MOVS            R1, R4; jumptable 0008043E case 3
0x80460 MOVS            R2, #7
0x80462 BL              sub_78700
0x80466 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80468 MOVS            R1, R4; jumptable 0008043E case 4
0x8046a MOVS            R2, #7
0x8046c BL              sub_78748
0x80470 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80472 MOVS            R0, R4; jumptable 0008043E case 5
0x80474 MOVS            R1, #7
0x80476 BL              sub_7D2AC
0x8047a B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8047c MOVS            R1, R4; jumptable 0008043E case 6
0x8047e MOVS            R2, #7
0x80480 BL              sub_787AC
0x80484 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80486 LDR             R3, =dword_1501D90; jumptable 0008043E case 10
0x80488 LDR             R3, [R3]
0x8048a LDR             R5, [R3,#0x10]
0x8048c CMP             R4, #9
0x8048e BEQ             loc_80492
0x80490 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80492 LDR             R3, =0x19D0
0x80494 B               loc_804A4
0x80496 LDR             R3, =dword_1501D90; jumptable 0008043E case 11
0x80498 LDR             R3, [R3]
0x8049a LDR             R5, [R3,#0x10]
0x8049c CMP             R4, #9
0x8049e BEQ             loc_804A2
0x804a0 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804a2 LDR             R3, =0x19D2
0x804a4 LDRH            R2, [R5,R3]
0x804a6 LDRH            R1, [R0,#2]
0x804a8 ADDS            R2, R2, R1
0x804aa STRH            R2, [R5,R3]
0x804ac B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804ae MOVS            R1, R4; jumptable 0008043E case 12
0x804b0 MOVS            R2, #7
0x804b2 BL              sub_79F7C
0x804b6 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804b8 MOVS            R1, R4; jumptable 0008043E case 13
0x804ba MOVS            R2, #7
0x804bc BL              sub_79DE0
0x804c0 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804c2 MOVS            R1, R4; jumptable 0008043E case 14
0x804c4 MOVS            R2, #7
0x804c6 BL              sub_7B638
0x804ca B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804cc MOVS            R1, R4; jumptable 0008043E case 15
0x804ce MOVS            R2, #7
0x804d0 BL              sub_7B61C
0x804d4 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804d6 MOVS            R1, R4; jumptable 0008043E case 16
0x804d8 MOVS            R2, #7
0x804da BL              sub_7B4B0
0x804de B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804e0 MOVS            R1, R4; jumptable 0008043E case 17
0x804e2 MOVS            R2, #7
0x804e4 BL              sub_7B494
0x804e8 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804ea MOVS            R1, R4; jumptable 0008043E case 18
0x804ec MOVS            R2, #7
0x804ee BL              sub_7B478
0x804f2 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804f4 MOVS            R1, R4; jumptable 0008043E case 19
0x804f6 MOVS            R2, #7
0x804f8 BL              sub_7B45C
0x804fc B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x804fe MOVS            R1, R4; jumptable 0008043E case 20
0x80500 MOVS            R2, #7
0x80502 BL              sub_7B440
0x80506 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80508 MOVS            R1, R4; jumptable 0008043E case 39
0x8050a MOVS            R2, #7
0x8050c BL              sub_7B398
0x80510 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80512 MOVS            R1, R4; jumptable 0008043E case 41
0x80514 MOVS            R2, #7
0x80516 BL              sub_7B360
0x8051a B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8051c MOVS            R1, R4; jumptable 0008043E case 42
0x8051e MOVS            R2, #7
0x80520 BL              sub_7B344
0x80524 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80526 MOVS            R1, R4; jumptable 0008043E case 43
0x80528 MOVS            R2, #7
0x8052a BL              sub_78830
0x8052e B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80530 MOVS            R1, R4; jumptable 0008043E case 44
0x80532 MOVS            R2, #7
0x80534 BL              sub_78878
0x80538 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8053a MOVS            R1, R4; jumptable 0008043E case 45
0x8053c MOVS            R2, #7
0x8053e BL              sub_788BC
0x80542 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80544 MOVS            R1, R4; jumptable 0008043E case 51
0x80546 MOVS            R2, #7
0x80548 BL              sub_7E304
0x8054c B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8054e MOVS            R1, R4; jumptable 0008043E case 52
0x80550 MOVS            R2, #7
0x80552 BL              sub_789A0
0x80556 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80558 MOVS            R1, R4; jumptable 0008043E case 54
0x8055a MOVS            R2, #7
0x8055c BL              sub_7B30C
0x80560 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80562 MOVS            R1, R4; jumptable 0008043E case 55
0x80564 MOVS            R2, #7
0x80566 BL              sub_7B2F0
0x8056a B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8056c MOVS            R1, R4; jumptable 0008043E case 56
0x8056e MOVS            R2, #7
0x80570 BL              sub_7B2D4
0x80574 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80576 MOVS            R1, R4; jumptable 0008043E case 57
0x80578 MOVS            R2, #7
0x8057a BL              sub_7B2B8
0x8057e B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80580 LDR             R1, [SP,#0xC+var_8]; jumptable 0008043E case 58
0x80582 MOVS            R2, R4
0x80584 MOVS            R3, #7
0x80586 BL              sub_7CEE0
0x8058a B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8058c LDR             R1, [SP,#0xC+var_8]; jumptable 0008043E case 59
0x8058e MOVS            R2, R4
0x80590 MOVS            R3, #7
0x80592 BL              sub_7CE64
0x80596 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80598 MOVS            R1, R4; jumptable 0008043E case 60
0x8059a MOVS            R2, #7
0x8059c BL              sub_7B264
0x805a0 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805a2 MOVS            R1, R4; jumptable 0008043E case 61
0x805a4 MOVS            R2, #7
0x805a6 BL              sub_78A28
0x805aa B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805ac MOVS            R1, R4; jumptable 0008043E case 62
0x805ae MOVS            R2, #7
0x805b0 BL              sub_7B210
0x805b4 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805b6 MOVS            R1, R4; jumptable 0008043E case 63
0x805b8 MOVS            R2, #7
0x805ba BL              sub_7CE14
0x805be B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805c0 MOVS            R1, R4; jumptable 0008043E case 64
0x805c2 MOVS            R2, #7
0x805c4 BL              sub_7CDC4
0x805c8 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805ca MOVS            R1, R4; jumptable 0008043E case 65
0x805cc MOVS            R2, #7
0x805ce BL              sub_7CD74
0x805d2 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805d4 MOVS            R1, R4; jumptable 0008043E case 66
0x805d6 MOVS            R2, #7
0x805d8 BL              sub_7CD24
0x805dc B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805de MOVS            R1, R4; jumptable 0008043E case 67
0x805e0 MOVS            R2, #7
0x805e2 BL              sub_7CCD4
0x805e6 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805e8 MOVS            R1, R4; jumptable 0008043E case 68
0x805ea MOVS            R2, #7
0x805ec BL              sub_7B1D0
0x805f0 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805f2 MOVS            R1, R4; jumptable 0008043E case 69
0x805f4 MOVS            R2, #7
0x805f6 BL              sub_7B190
0x805fa B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x805fc MOVS            R1, R4; jumptable 0008043E case 70
0x805fe MOVS            R2, #7
0x80600 BL              sub_7CC4C
0x80604 B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80606 MOVS            R1, R4; jumptable 0008043E case 71
0x80608 MOVS            R2, #7
0x8060a BL              sub_7D128
0x8060e B               def_8043E; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x80610 MOVS            R1, R4; jumptable 0008043E case 103
0x80612 MOVS            R2, #7
0x80614 BL              sub_7B14C
0x80618 ADDS            R6, #1; jumptable 0008043E default case, cases 7-9,21-38,40,46-50,53,72-102
0x8061a B               loc_8061E
0x8061c MOVS            R6, #0
0x8061e LDR             R2, [SP,#0xC+var_4]
0x80620 LSLS            R3, R6, #0x18
0x80622 LSRS            R3, R3, #0x18
0x80624 CMP             R6, R2
0x80626 BEQ             loc_8062A
0x80628 B               loc_80412
0x8062a LDR             R4, =dword_1501D90
0x8062c LDR             R3, [R4]
0x8062e MOVS            R1, #0
0x80630 MOVS            R2, #0
0x80632 MOVS            R0, #0
0x80634 LDR             R5, [R3,#0x10]
0x80636 BL              sub_79E14
0x8063a LDR             R3, =0x19B8
0x8063c STR             R0, [R5,R3]
0x8063e LDR             R3, [R4]
0x80640 MOVS            R0, #0
0x80642 MOVS            R1, #0
0x80644 MOVS            R2, #0
0x80646 LDR             R4, [R3,#0x10]
0x80648 BL              sub_79C88
0x8064c STR             R0, [R4,#0xC]
0x8064e MOVS            R0, #1
0x80650 ADD             SP, SP, #0xC
0x80652 POP             {R4-R7}
0x80654 POP             {R1}
0x80656 BX              R1