0x8af94 PUSH            {R4-R7,LR}
0x8af96 LDR             R5, =dword_150D7DC
0x8af98 MOVS            R7, R1
0x8af9a LDR             R1, [R5]
0x8af9c SUB             SP, SP, #0xC
0x8af9e STR             R1, [SP,#0xC+var_8]
0x8afa0 LDR             R4, =(sub_269EC+1)
0x8afa2 STR             R0, [SP,#0xC+var_C]
0x8afa4 MOVS            R6, R2
0x8afa6 BL              sub_8B160
0x8afaa LDR             R3, =(sub_272DC+1)
0x8afac STR             R0, [SP,#0xC+var_4]
0x8afae BL              sub_8B15E
0x8afb2 BL              sub_8B160
0x8afb6 CMP             R6, R0
0x8afb8 BNE             loc_8AFDA
0x8afba LDR             R0, [R5]
0x8afbc LDR             R3, =0x8C1C1
0x8afbe MOVS            R1, R7
0x8afc0 ADDS            R0, #1
0x8afc2 BL              sub_8B15E
0x8afc6 LDR             R3, =dword_150D7E0
0x8afc8 LDR             R2, =byte_150D7E4
0x8afca STR             R0, [R5]
0x8afcc LDR             R3, [R3]
0x8afce LDR             R1, [SP,#0xC+var_C]
0x8afd0 ADDS            R3, R3, R2
0x8afd2 LDRB            R2, [R1,R0]
0x8afd4 SUBS            R3, #1
0x8afd6 STRB            R2, [R3]
0x8afd8 B               loc_8B01A
0x8afda MOVS            R0, R6
0x8afdc LDR             R4, =(sub_269E0+1)
0x8afde MOVS            R6, #0
0x8afe0 BL              sub_8B160
0x8afe4 STR             R6, [R5]
0x8afe6 MOVS            R0, #1
0x8afe8 LDR             R3, =(sub_26B6C+1)
0x8afea BL              sub_8B15E
0x8afee CMP             R0, #0
0x8aff0 BEQ             loc_8B010
0x8aff2 LDR             R3, [R5]
0x8aff4 LDR             R1, [SP,#0xC+var_C]
0x8aff6 LDR             R2, =byte_150D7A4
0x8aff8 LDRB            R3, [R1,R3]
0x8affa STRB            R6, [R2,#(byte_150D7A5 - 0x150D7A4)]
0x8affc STRB            R3, [R2]
0x8affe LDR             R2, =dword_150D7C4
0x8b000 LDR             R3, [R2]
0x8b002 ADDS            R3, #1
0x8b004 STR             R3, [R2]
0x8b006 LDR             R2, =dword_150D7E0
0x8b008 LDR             R3, [R2]
0x8b00a ADDS            R3, #1
0x8b00c STR             R3, [R2]
0x8b00e B               loc_8B01A
0x8b010 LDR             R3, [SP,#0xC+var_8]
0x8b012 LDR             R0, [SP,#0xC+var_4]
0x8b014 STR             R3, [R5]
0x8b016 BL              sub_8B160
0x8b01a LDR             R3, =(sub_272DC+1)
0x8b01c BL              sub_8B15E
0x8b020 LDR             R2, =byte_150D7F1
0x8b022 MOVS            R3, #0
0x8b024 ADD             SP, SP, #0xC
0x8b026 STRB            R3, [R2]
0x8b028 POP             {R4-R7}
0x8b02a POP             {R0}
0x8b02c BX              R0