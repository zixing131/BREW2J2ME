0x8555c PUSH            {R4-R7,LR}
0x8555e LSLS            R0, R0, #0x18
0x85560 LSRS            R0, R0, #0x18
0x85562 SUB             SP, SP, #4
0x85564 STR             R0, [SP,#4+var_4]
0x85566 LDR             R3, =byte_1537CD9
0x85568 LDRB            R2, [R3,R0]
0x8556a LSLS            R1, R1, #0x18
0x8556c LSLS            R3, R2, #2
0x8556e LSRS            R7, R1, #0x18
0x85570 ADDS            R3, R3, R2
0x85572 LDR             R1, =unk_1538860
0x85574 LSLS            R3, R3, #5
0x85576 LDR             R3, [R3,R1]
0x85578 LDRB            R5, [R3,#6]
0x8557a CMP             R5, #2
0x8557c BLS             loc_85580
0x8557e B               loc_856C0
0x85580 LDR             R3, =byte_1500088
0x85582 LDRB            R3, [R3]
0x85584 LSLS            R2, R7, #3
0x85586 CMP             R3, #1
0x85588 BNE             loc_8559C
0x8558a LDR             R3, =word_1401F16
0x8558c ADDS            R2, R2, R7
0x8558e LSLS            R2, R2, #2
0x85590 ADDS            R2, R2, R3
0x85592 LDRH            R3, [R2,#4]
0x85594 MOVS            R0, #0x7D0
0x85598 ADDS            R4, R3, R0
0x8559a B               loc_855AC
0x8559c LDR             R3, =word_1401E3E
0x8559e ADDS            R2, R2, R7
0x855a0 LSLS            R2, R2, #2
0x855a2 ADDS            R2, R2, R3
0x855a4 LDRH            R3, [R2,#4]
0x855a6 MOVS            R1, #0x7D0
0x855aa ADDS            R4, R3, R1
0x855ac LDR             R0, =0x2710
0x855ae LDR             R3, =(sub_6C7D4+1)
0x855b0 BL              sub_8A950
0x855b4 CMP             R4, R0
0x855b6 BHI             loc_855BA
0x855b8 B               loc_856C0
0x855ba LDR             R3, =byte_1537CD9
0x855bc LDR             R0, [SP,#4+var_4]
0x855be LDRB            R2, [R3,R0]
0x855c0 LSLS            R3, R2, #2
0x855c2 LDR             R1, =unk_1538860
0x855c4 ADDS            R3, R3, R2
0x855c6 LSLS            R3, R3, #5
0x855c8 LDR             R3, [R3,R1]
0x855ca LDR             R2, =word_1401FEE
0x855cc LDRB            R1, [R3]
0x855ce LSLS            R3, R5, #1
0x855d0 LDRH            R3, [R3,R2]
0x855d2 MOVS            R6, R3
0x855d4 MULS            R6, R1
0x855d6 LDR             R3, =byte_1500088
0x855d8 LDR             R1, =0x8BFE9
0x855da LDRB            R3, [R3]
0x855dc LSLS            R2, R7, #3
0x855de MOV             R12, R1
0x855e0 CMP             R3, #1
0x855e2 BNE             loc_855E8
0x855e4 LDR             R5, =word_1401F16
0x855e6 B               loc_855EA
0x855e8 LDR             R5, =word_1401E3E
0x855ea ADDS            R4, R2, R7
0x855ec LSLS            R4, R4, #2
0x855ee LDRH            R3, [R4,R5]
0x855f0 LDR             R1, =0x2710
0x855f2 MOVS            R0, R3
0x855f4 MULS            R0, R6
0x855f6 BL              sub_8A95A
0x855fa ADDS            R4, R4, R5
0x855fc LDRH            R3, [R4,#6]
0x855fe ADDS            R3, R6, R3
0x85600 ADDS            R4, R0, R3
0x85602 LDR             R3, =dword_1501D90
0x85604 LDR             R3, [R3]
0x85606 LDR             R2, [R3,#0x10]
0x85608 LDR             R3, =0x48C
0x8560a LDRH            R3, [R2,R3]
0x8560c MOVS            R1, #0x64 ; 'd'
0x8560e MOVS            R0, R3
0x85610 MULS            R0, R4
0x85612 LDR             R3, =0x8BFE9
0x85614 BL              sub_8A950
0x85618 LDR             R6, =byte_15386AD
0x8561a ADDS            R5, R4, R0
0x8561c LDRB            R4, [R6]
0x8561e LDR             R7, =word_1534DE8
0x85620 LSLS            R4, R4, #4
0x85622 ADDS            R4, R4, R7
0x85624 MOVS            R2, #1
0x85626 MOVS            R3, #0
0x85628 STRB            R2, [R4,#1]
0x8562a STRB            R3, [R4,#4]
0x8562c STRB            R3, [R4,#5]
0x8562e MOVS            R1, #0
0x85630 LDR             R3, =(sub_2D3B8+1)
0x85632 MOVS            R0, #0
0x85634 BL              sub_8A950
0x85638 STRB            R0, [R4,#2]
0x8563a LDRB            R3, [R6]
0x8563c LSLS            R3, R3, #4
0x8563e ADDS            R4, R3, R7
0x85640 MOVS            R3, #0xC
0x85642 STRB            R3, [R4,#3]
0x85644 MOVS            R3, #1
0x85646 STRB            R3, [R4]
0x85648 LDR             R0, [SP,#4+var_4]
0x8564a LSLS            R2, R0, #2
0x8564c LDR             R3, =unk_1538F9C
0x8564e ADDS            R2, R2, R0
0x85650 STRH            R5, [R4,#6]
0x85652 LSLS            R2, R2, #7
0x85654 ADDS            R2, R2, R3
0x85656 LDRH            R3, [R2,#2]
0x85658 SUBS            R3, #0xE4
0x8565a LSLS            R3, R3, #0x10
0x8565c LSRS            R3, R3, #0x10
0x8565e LDR             R1, =(sub_6C7D4+1)
0x85660 LDRH            R5, [R2,#0x10]
0x85662 CMP             R3, #1
0x85664 BHI             loc_85674
0x85666 MOVS            R0, #0x28 ; '('
0x85668 BL              sub_8A94C
0x8566c MOVS            R3, R5
0x8566e ADDS            R3, #0x64 ; 'd'
0x85670 ADDS            R0, R0, R3
0x85672 B               loc_8567E
0x85674 MOVS            R0, #0x32 ; '2'
0x85676 BL              sub_8A94C
0x8567a ADDS            R0, R5, R0
0x8567c SUBS            R0, #0x19
0x8567e LDR             R1, [SP,#4+var_4]
0x85680 LSLS            R3, R1, #2
0x85682 LDR             R2, =unk_1538F9C
0x85684 ADDS            R3, R3, R1
0x85686 STRH            R0, [R4,#8]
0x85688 LSLS            R3, R3, #7
0x8568a LDR             R6, =byte_15386AD
0x8568c ADDS            R3, R3, R2
0x8568e LDRH            R4, [R3,#0x12]
0x85690 MOVS            R0, #0x32 ; '2'
0x85692 LDR             R3, =(sub_6C7D4+1)
0x85694 LDRB            R5, [R6]
0x85696 BL              sub_8A950
0x8569a LDR             R3, =word_1534DE8
0x8569c ADDS            R4, R4, R0
0x8569e LSLS            R5, R5, #4
0x856a0 ADDS            R5, R5, R3
0x856a2 SUBS            R4, #0x19
0x856a4 STRH            R4, [R5,#0xA]
0x856a6 LDR             R3, =(sub_2C240+1)
0x856a8 LDRB            R0, [R6]
0x856aa BL              sub_8A950
0x856ae LDRB            R3, [R6]
0x856b0 ADDS            R3, #1
0x856b2 LSLS            R3, R3, #0x18
0x856b4 LSRS            R3, R3, #0x18
0x856b6 STRB            R3, [R6]
0x856b8 CMP             R3, #0x77 ; 'w'
0x856ba BLS             loc_856C0
0x856bc MOVS            R3, #0
0x856be STRB            R3, [R6]
0x856c0 ADD             SP, SP, #4
0x856c2 POP             {R4-R7}
0x856c4 POP             {R0}
0x856c6 BX              R0