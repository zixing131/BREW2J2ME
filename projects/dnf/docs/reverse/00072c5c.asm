0x72c5c PUSH            {R4-R7,LR}
0x72c5e SUB             SP, SP, #0x10
0x72c60 LDR             R0, =aFont; "font"
0x72c62 LDR             R3, =(sub_6CBE0+1)
0x72c64 BL              sub_75958
0x72c68 MOVS            R7, R0
0x72c6a CMP             R0, #0
0x72c6c BEQ             loc_72D00
0x72c6e MOV             R0, SP
0x72c70 LDR             R4, =unk_140327C
0x72c72 MOVS            R1, R7
0x72c74 MOVS            R2, #2
0x72c76 ADDS            R0, #0xE
0x72c78 BL              sub_7595A
0x72c7c ADDS            R1, R7, #2
0x72c7e MOVS            R2, #4
0x72c80 ADD             R0, SP, #0x10+var_C
0x72c82 BL              sub_7595A
0x72c86 ADDS            R1, R7, #6
0x72c88 MOVS            R2, #4
0x72c8a ADD             R0, SP, #0x10+var_8
0x72c8c BL              sub_7595A
0x72c90 LDR             R0, [SP,#0x10+var_C]
0x72c92 LDR             R3, =unk_14032EC
0x72c94 ADDS            R0, #2
0x72c96 BL              sub_75958
0x72c9a MOVS            R1, #6
0x72c9c MOVS            R6, R0
0x72c9e MOVS            R5, R0
0x72ca0 MOVS            R0, R7
0x72ca2 STR             R1, [SP,#0x10+var_10]
0x72ca4 LDR             R4, =(sub_692B4+1)
0x72ca6 ADDS            R0, #0xA
0x72ca8 LDR             R2, [SP,#0x10+var_C]
0x72caa LDR             R3, [SP,#0x10+var_8]
0x72cac MOVS            R1, R6
0x72cae BL              sub_7595A
0x72cb2 MOVS            R4, #0
0x72cb4 B               loc_72CE0
0x72cb6 CMP             R4, #1
0x72cb8 BEQ             loc_72CC6
0x72cba CMP             R4, #2
0x72cbc BEQ             loc_72CD4
0x72cbe CMP             R4, #0
0x72cc0 BNE             loc_72CDE
0x72cc2 LDR             R0, =unk_1536CBC
0x72cc4 B               loc_72CC8
0x72cc6 LDR             R0, =unk_15377C8
0x72cc8 MOVS            R1, R5
0x72cca LDR             R3, =0x8B989
0x72ccc BL              sub_75958
0x72cd0 ADDS            R5, R5, R0
0x72cd2 B               loc_72CDE
0x72cd4 LDR             R0, =unk_1536B60
0x72cd6 MOVS            R1, R5
0x72cd8 LDR             R3, =0x8B989
0x72cda BL              sub_75958
0x72cde ADDS            R4, #1
0x72ce0 MOV             R3, SP
0x72ce2 ADDS            R3, #0xE
0x72ce4 MOVS            R2, #0
0x72ce6 LDRSH           R3, [R3,R2]
0x72ce8 CMP             R4, R3
0x72cea BLT             loc_72CB6
0x72cec CMP             R6, #0
0x72cee BEQ             loc_72CF8
0x72cf0 MOVS            R0, R6
0x72cf2 LDR             R3, =unk_14032FC
0x72cf4 BL              sub_75958
0x72cf8 MOVS            R0, R7
0x72cfa LDR             R3, =unk_14032FC
0x72cfc BL              sub_75958
0x72d00 ADD             SP, SP, #0x10
0x72d02 POP             {R4-R7}
0x72d04 POP             {R0}
0x72d06 BX              R0