0x6aa7c PUSH            {R4-R7,LR}
0x6aa7e SUB             SP, SP, #0x60
0x6aa80 STR             R3, [SP,#0x60+var_50]
0x6aa82 LDR             R3, [SP,#0x60+arg_8]
0x6aa84 LSLS            R3, R3, #0x18
0x6aa86 LSRS            R3, R3, #0x18
0x6aa88 STR             R0, [SP,#0x60+var_44]
0x6aa8a STR             R2, [SP,#0x60+var_4C]
0x6aa8c STR             R1, [SP,#0x60+var_48]
0x6aa8e LDR             R6, [SP,#0x60+arg_C]
0x6aa90 STR             R3, [SP,#0x60+var_54]
0x6aa92 LDR             R0, [SP,#0x60+arg_0]
0x6aa94 LDRB            R1, [R6,#3]
0x6aa96 LDR             R2, [SP,#0x60+arg_10]
0x6aa98 STR             R1, [SP,#0x60+var_40]
0x6aa9a LDR             R1, [R0,#4]
0x6aa9c LSLS            R2, R2, #0x18
0x6aa9e LSRS            R4, R2, #0x18
0x6aaa0 CMP             R1, #0
0x6aaa2 BNE             loc_6AAA6
0x6aaa4 B               loc_6AD94
0x6aaa6 LDR             R3, [SP,#0x60+arg_4]
0x6aaa8 LSLS            R3, R3, #4
0x6aaaa ADDS            R5, R1, R3
0x6aaac STR             R1, [R0,#0x14]
0x6aaae LDR             R1, [R5,#8]
0x6aab0 CMP             R1, #0
0x6aab2 BNE             loc_6AAB6
0x6aab4 B               loc_6AD94
0x6aab6 LDR             R2, [R0]
0x6aab8 CMP             R2, #0
0x6aaba BNE             loc_6AABE
0x6aabc B               loc_6AD94
0x6aabe STR             R2, [R0,#0x10]
0x6aac0 LDRB            R3, [R6,#4]
0x6aac2 LSLS            R3, R3, #3
0x6aac4 ADDS            R7, R2, R3
0x6aac6 LDR             R3, [R7]
0x6aac8 CMP             R3, #0
0x6aaca BNE             loc_6AACE
0x6aacc B               loc_6AD94
0x6aace STR             R1, [R5,#0xC]
0x6aad0 STR             R3, [R7,#4]
0x6aad2 SUBS            R3, R4, #4
0x6aad4 LSLS            R3, R3, #0x18
0x6aad6 LSRS            R3, R3, #0x18
0x6aad8 STR             R3, [SP,#0x60+var_3C]
0x6aada CMP             R3, #2
0x6aadc BLS             loc_6AAE2
0x6aade STR             R5, [SP,#0x60+var_30]
0x6aae0 B               loc_6AB02
0x6aae2 LDR             R3, =unk_14032EC
0x6aae4 MOVS            R0, #0x12
0x6aae6 BL              sub_6BB36
0x6aaea MOVS            R1, #0
0x6aaec MOVS            R2, #0x10
0x6aaee STR             R0, [SP,#0x60+var_34]
0x6aaf0 STR             R0, [SP,#0x60+var_30]
0x6aaf2 LDR             R3, =unk_140329C
0x6aaf4 BL              sub_6BB36
0x6aaf8 LDR             R0, [SP,#0x60+var_34]
0x6aafa MOVS            R1, R5
0x6aafc MOVS            R2, R4
0x6aafe BL              sub_69E04
0x6ab02 LDR             R3, =unk_140329C
0x6ab04 ADD             R0, SP, #0x60+var_2C
0x6ab06 STR             R3, [SP,#0x60+var_58]
0x6ab08 MOVS            R1, #0
0x6ab0a MOVS            R2, #0x1C
0x6ab0c LDR             R5, [SP,#0x60+var_40]
0x6ab0e BL              sub_6BB36
0x6ab12 MOVS            R3, #2
0x6ab14 ADD             R0, SP, #0x60+var_24
0x6ab16 STRB            R3, [R0]
0x6ab18 LDRB            R3, [R6,#3]
0x6ab1a ADDS            R5, #1
0x6ab1c CMP             R3, #0
0x6ab1e BEQ             loc_6AB44
0x6ab20 LDR             R3, =unk_14032EC
0x6ab22 MOVS            R0, #0x12
0x6ab24 BL              sub_6BB36
0x6ab28 MOVS            R1, #0
0x6ab2a STR             R0, [SP,#0x60+var_38]
0x6ab2c STR             R0, [SP,#0x60+var_2C]
0x6ab2e MOVS            R2, #0x10
0x6ab30 LDR             R3, [SP,#0x60+var_58]
0x6ab32 BL              sub_6BB36
0x6ab36 ADD             R0, SP, #0x60+var_2C
0x6ab38 LDR             R1, [SP,#0x60+var_30]
0x6ab3a MOVS            R2, R5
0x6ab3c STR             R7, [SP,#0x60+var_28]
0x6ab3e BL              sub_69D34
0x6ab42 B               loc_6AB4A
0x6ab44 LDR             R0, [SP,#0x60+var_30]
0x6ab46 STR             R7, [SP,#0x60+var_28]
0x6ab48 STR             R0, [SP,#0x60+var_2C]
0x6ab4a LDR             R1, [SP,#0x60+var_54]
0x6ab4c CMP             R1, #0
0x6ab4e BNE             loc_6AB62
0x6ab50 LDR             R2, [SP,#0x60+var_44]
0x6ab52 LDR             R3, [SP,#0x60+var_4C]
0x6ab54 LDR             R1, [SP,#0x60+var_48]
0x6ab56 ADDS            R0, R2, R3
0x6ab58 LDR             R2, [SP,#0x60+var_50]
0x6ab5a ADDS            R7, R1, R2
0x6ab5c CMP             R4, #0
0x6ab5e BNE             loc_6AB7C
0x6ab60 B               loc_6AB6C
0x6ab62 LDR             R3, [SP,#0x60+var_54]
0x6ab64 CMP             R3, #1
0x6ab66 BEQ             loc_6AB6A
0x6ab68 B               loc_6AD40
0x6ab6a B               loc_6AC12
0x6ab6c LDR             R2, [SP,#0x60+var_2C]
0x6ab6e MOVS            R4, #0
0x6ab70 LDRSH           R3, [R2,R4]
0x6ab72 SUBS            R3, R0, R3
0x6ab74 STR             R3, [SP,#0x60+var_10]
0x6ab76 MOVS            R0, #2
0x6ab78 LDRSH           R3, [R2,R0]
0x6ab7a B               loc_6AC68
0x6ab7c CMP             R4, #1
0x6ab7e BNE             loc_6AB98
0x6ab80 LDR             R1, [SP,#0x60+var_2C]
0x6ab82 MOVS            R2, #0
0x6ab84 LDRSH           R3, [R1,R2]
0x6ab86 LDRH            R2, [R1,#4]
0x6ab88 SUBS            R2, R2, R5
0x6ab8a SUBS            R3, R3, R2
0x6ab8c ADDS            R3, #0xF
0x6ab8e ADDS            R3, R0, R3
0x6ab90 STR             R3, [SP,#0x60+var_10]
0x6ab92 MOVS            R4, #2
0x6ab94 LDRSH           R3, [R1,R4]
0x6ab96 B               loc_6AC36
0x6ab98 CMP             R4, #2
0x6ab9a BNE             loc_6ABBE
0x6ab9c LDR             R1, [SP,#0x60+var_2C]
0x6ab9e MOVS            R2, #0
0x6aba0 LDRSH           R3, [R1,R2]
0x6aba2 LDRH            R2, [R1,#4]
0x6aba4 SUBS            R2, R2, R5
0x6aba6 SUBS            R3, R3, R2
0x6aba8 ADDS            R3, #0xF
0x6abaa ADDS            R3, R0, R3
0x6abac STR             R3, [SP,#0x60+var_10]
0x6abae LDRH            R2, [R1,#6]
0x6abb0 MOVS            R4, #2
0x6abb2 LDRSH           R3, [R1,R4]
0x6abb4 SUBS            R2, R2, R5
0x6abb6 SUBS            R3, R3, R2
0x6abb8 ADDS            R3, #0xF
0x6abba ADDS            R3, R7, R3
0x6abbc B               loc_6ACE0
0x6abbe CMP             R4, #3
0x6abc0 BNE             loc_6ABDC
0x6abc2 LDR             R1, [SP,#0x60+var_2C]
0x6abc4 MOVS            R2, #0
0x6abc6 LDRSH           R3, [R1,R2]
0x6abc8 SUBS            R3, R0, R3
0x6abca STR             R3, [SP,#0x60+var_10]
0x6abcc LDRH            R2, [R1,#6]
0x6abce MOVS            R4, #2
0x6abd0 LDRSH           R3, [R1,R4]
0x6abd2 SUBS            R2, R2, R5
0x6abd4 SUBS            R3, R3, R2
0x6abd6 ADDS            R3, #0xF
0x6abd8 ADDS            R3, R7, R3
0x6abda B               loc_6ACA2
0x6abdc LDR             R1, [SP,#0x60+var_3C]
0x6abde CMP             R1, #2
0x6abe0 BLS             loc_6ABE4
0x6abe2 B               loc_6AD6A
0x6abe4 LDR             R2, [SP,#0x60+var_2C]
0x6abe6 MOVS            R4, #0
0x6abe8 LDRSH           R3, [R2,R4]
0x6abea SUBS            R3, R0, R3
0x6abec STR             R3, [SP,#0x60+var_10]
0x6abee MOVS            R0, #2
0x6abf0 LDRSH           R3, [R2,R0]
0x6abf2 SUBS            R3, R7, R3
0x6abf4 STR             R3, [SP,#0x60+var_C]
0x6abf6 LDRH            R3, [R2,#4]
0x6abf8 STR             R3, [SP,#0x60+var_8]
0x6abfa LDRH            R3, [R2,#6]
0x6abfc STR             R3, [SP,#0x60+var_4]
0x6abfe LDRB            R2, [R6,#1]
0x6ac00 LDRB            R3, [R6]
0x6ac02 STR             R2, [SP,#0x60+var_60]
0x6ac04 LDRB            R2, [R6,#2]
0x6ac06 LDR             R4, =(sub_67AD8+1)
0x6ac08 STR             R2, [SP,#0x60+var_5C]
0x6ac0a MOVS            R0, #0
0x6ac0c ADD             R1, SP, #0x60+var_10
0x6ac0e ADD             R2, SP, #0x60+var_2C
0x6ac10 B               loc_6AD3A
0x6ac12 LDR             R1, [SP,#0x60+var_44]
0x6ac14 LDR             R2, [SP,#0x60+var_4C]
0x6ac16 LDR             R3, [SP,#0x60+var_48]
0x6ac18 SUBS            R0, R1, R2
0x6ac1a LDR             R1, [SP,#0x60+var_50]
0x6ac1c ADDS            R7, R3, R1
0x6ac1e CMP             R4, #0
0x6ac20 BNE             loc_6AC56
0x6ac22 LDR             R1, [SP,#0x60+var_2C]
0x6ac24 LDRH            R3, [R1,#4]
0x6ac26 MOVS            R4, #0
0x6ac28 LDRSH           R2, [R1,R4]
0x6ac2a SUBS            R3, R3, R5
0x6ac2c SUBS            R3, R3, R2
0x6ac2e SUBS            R3, R0, R3
0x6ac30 STR             R3, [SP,#0x60+var_10]
0x6ac32 MOVS            R0, #2
0x6ac34 LDRSH           R3, [R1,R0]
0x6ac36 SUBS            R3, R7, R3
0x6ac38 STR             R3, [SP,#0x60+var_C]
0x6ac3a LDRH            R3, [R1,#4]
0x6ac3c STR             R3, [SP,#0x60+var_8]
0x6ac3e LDRH            R3, [R1,#6]
0x6ac40 STR             R3, [SP,#0x60+var_4]
0x6ac42 LDRB            R2, [R6,#1]
0x6ac44 LDRB            R3, [R6]
0x6ac46 STR             R2, [SP,#0x60+var_60]
0x6ac48 LDRB            R2, [R6,#2]
0x6ac4a LDR             R4, =(sub_67A84+1)
0x6ac4c STR             R2, [SP,#0x60+var_5C]
0x6ac4e MOVS            R0, #0
0x6ac50 ADD             R1, SP, #0x60+var_10
0x6ac52 ADD             R2, SP, #0x60+var_2C
0x6ac54 B               loc_6ACFC
0x6ac56 CMP             R4, #1
0x6ac58 BNE             loc_6AC88
0x6ac5a LDR             R2, [SP,#0x60+var_2C]
0x6ac5c MOVS            R1, #0
0x6ac5e LDRSH           R3, [R2,R1]
0x6ac60 SUBS            R3, R0, R3
0x6ac62 STR             R3, [SP,#0x60+var_10]
0x6ac64 MOVS            R4, #2
0x6ac66 LDRSH           R3, [R2,R4]
0x6ac68 SUBS            R3, R7, R3
0x6ac6a STR             R3, [SP,#0x60+var_C]
0x6ac6c LDRH            R3, [R2,#4]
0x6ac6e STR             R3, [SP,#0x60+var_8]
0x6ac70 LDRH            R3, [R2,#6]
0x6ac72 STR             R3, [SP,#0x60+var_4]
0x6ac74 LDRB            R2, [R6,#1]
0x6ac76 LDRB            R3, [R6]
0x6ac78 STR             R2, [SP,#0x60+var_60]
0x6ac7a LDRB            R2, [R6,#2]
0x6ac7c LDR             R4, =(sub_67AD8+1)
0x6ac7e STR             R2, [SP,#0x60+var_5C]
0x6ac80 MOVS            R0, #0
0x6ac82 ADD             R1, SP, #0x60+var_10
0x6ac84 ADD             R2, SP, #0x60+var_2C
0x6ac86 B               loc_6ACFC
0x6ac88 CMP             R4, #2
0x6ac8a BNE             loc_6ACC0
0x6ac8c LDR             R1, [SP,#0x60+var_2C]
0x6ac8e MOVS            R2, #0
0x6ac90 LDRSH           R3, [R1,R2]
0x6ac92 SUBS            R3, R0, R3
0x6ac94 STR             R3, [SP,#0x60+var_10]
0x6ac96 LDRH            R3, [R1,#6]
0x6ac98 MOVS            R4, #2
0x6ac9a LDRSH           R2, [R1,R4]
0x6ac9c SUBS            R3, R3, R5
0x6ac9e SUBS            R3, R3, R2
0x6aca0 SUBS            R3, R7, R3
0x6aca2 STR             R3, [SP,#0x60+var_C]
0x6aca4 LDRH            R3, [R1,#4]
0x6aca6 STR             R3, [SP,#0x60+var_8]
0x6aca8 LDRH            R3, [R1,#6]
0x6acaa STR             R3, [SP,#0x60+var_4]
0x6acac LDRB            R2, [R6,#1]
0x6acae LDRB            R3, [R6]
0x6acb0 STR             R2, [SP,#0x60+var_60]
0x6acb2 LDRB            R2, [R6,#2]
0x6acb4 LDR             R4, =(sub_67A30+1)
0x6acb6 STR             R2, [SP,#0x60+var_5C]
0x6acb8 MOVS            R0, #0
0x6acba ADD             R1, SP, #0x60+var_10
0x6acbc ADD             R2, SP, #0x60+var_2C
0x6acbe B               loc_6ACFC
0x6acc0 CMP             R4, #3
0x6acc2 BNE             loc_6AD02
0x6acc4 LDR             R1, [SP,#0x60+var_2C]
0x6acc6 LDRH            R3, [R1,#4]
0x6acc8 MOVS            R4, #0
0x6acca LDRSH           R2, [R1,R4]
0x6accc SUBS            R3, R3, R5
0x6acce SUBS            R3, R3, R2
0x6acd0 SUBS            R3, R0, R3
0x6acd2 STR             R3, [SP,#0x60+var_10]
0x6acd4 LDRH            R3, [R1,#6]
0x6acd6 MOVS            R0, #2
0x6acd8 LDRSH           R2, [R1,R0]
0x6acda SUBS            R3, R3, R5
0x6acdc SUBS            R3, R3, R2
0x6acde SUBS            R3, R7, R3
0x6ace0 STR             R3, [SP,#0x60+var_C]
0x6ace2 LDRH            R3, [R1,#4]
0x6ace4 STR             R3, [SP,#0x60+var_8]
0x6ace6 LDRH            R3, [R1,#6]
0x6ace8 STR             R3, [SP,#0x60+var_4]
0x6acea LDRB            R2, [R6,#1]
0x6acec LDRB            R3, [R6]
0x6acee STR             R2, [SP,#0x60+var_60]
0x6acf0 LDRB            R2, [R6,#2]
0x6acf2 LDR             R4, =(sub_679DC+1)
0x6acf4 STR             R2, [SP,#0x60+var_5C]
0x6acf6 MOVS            R0, #0
0x6acf8 ADD             R1, SP, #0x60+var_10
0x6acfa ADD             R2, SP, #0x60+var_2C
0x6acfc BL              sub_6BB38
0x6ad00 B               loc_6AD40
0x6ad02 LDR             R1, [SP,#0x60+var_3C]
0x6ad04 CMP             R1, #2
0x6ad06 BHI             loc_6AD6A
0x6ad08 LDR             R1, [SP,#0x60+var_2C]
0x6ad0a LDRH            R3, [R1,#4]
0x6ad0c MOVS            R4, #0
0x6ad0e LDRSH           R2, [R1,R4]
0x6ad10 SUBS            R3, R3, R5
0x6ad12 SUBS            R3, R3, R2
0x6ad14 SUBS            R3, R0, R3
0x6ad16 STR             R3, [SP,#0x60+var_10]
0x6ad18 MOVS            R0, #2
0x6ad1a LDRSH           R3, [R1,R0]
0x6ad1c SUBS            R3, R7, R3
0x6ad1e STR             R3, [SP,#0x60+var_C]
0x6ad20 LDRH            R3, [R1,#4]
0x6ad22 STR             R3, [SP,#0x60+var_8]
0x6ad24 LDRH            R3, [R1,#6]
0x6ad26 STR             R3, [SP,#0x60+var_4]
0x6ad28 LDRB            R2, [R6,#1]
0x6ad2a LDRB            R3, [R6]
0x6ad2c STR             R2, [SP,#0x60+var_60]
0x6ad2e LDRB            R2, [R6,#2]
0x6ad30 LDR             R4, =(sub_67A84+1)
0x6ad32 STR             R2, [SP,#0x60+var_5C]
0x6ad34 MOVS            R0, #0
0x6ad36 ADD             R1, SP, #0x60+var_10
0x6ad38 ADD             R2, SP, #0x60+var_2C
0x6ad3a BL              sub_6BB38
0x6ad3e B               loc_6AD46
0x6ad40 LDR             R1, [SP,#0x60+var_3C]
0x6ad42 CMP             R1, #2
0x6ad44 BHI             loc_6AD6A
0x6ad46 LDR             R2, [SP,#0x60+var_34]
0x6ad48 CMP             R2, #0
0x6ad4a BEQ             loc_6AD6A
0x6ad4c LDR             R3, [SP,#0x60+var_30]
0x6ad4e LDR             R0, [R3,#8]
0x6ad50 CMP             R0, #0
0x6ad52 BEQ             loc_6AD62
0x6ad54 LDR             R3, =unk_14032FC
0x6ad56 BL              sub_6BB36
0x6ad5a LDR             R4, [SP,#0x60+var_30]
0x6ad5c MOVS            R3, #0
0x6ad5e STR             R3, [R4,#8]
0x6ad60 STR             R3, [R4,#0xC]
0x6ad62 LDR             R0, [SP,#0x60+var_34]
0x6ad64 LDR             R3, =unk_14032FC
0x6ad66 BL              sub_6BB36
0x6ad6a LDRB            R3, [R6,#3]
0x6ad6c CMP             R3, #0
0x6ad6e BEQ             loc_6AD94
0x6ad70 LDR             R0, [SP,#0x60+var_38]
0x6ad72 CMP             R0, #0
0x6ad74 BEQ             loc_6AD94
0x6ad76 LDR             R3, [SP,#0x60+var_2C]
0x6ad78 LDR             R0, [R3,#8]
0x6ad7a CMP             R0, #0
0x6ad7c BEQ             loc_6AD8C
0x6ad7e LDR             R3, =unk_14032FC
0x6ad80 BL              sub_6BB36
0x6ad84 LDR             R2, [SP,#0x60+var_2C]
0x6ad86 MOVS            R3, #0
0x6ad88 STR             R3, [R2,#8]
0x6ad8a STR             R3, [SP,#0x60+var_2C]
0x6ad8c LDR             R0, [SP,#0x60+var_38]
0x6ad8e LDR             R3, =unk_14032FC
0x6ad90 BL              sub_6BB36
0x6ad94 ADD             SP, SP, #0x60 ; '`'
0x6ad96 POP             {R4-R7}
0x6ad98 POP             {R0}
0x6ad9a BX              R0