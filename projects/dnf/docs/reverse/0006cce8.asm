0x6cce8 PUSH            {R4-R7,LR}
0x6ccea SUB             SP, SP, #0x5C
0x6ccec MOV             R3, SP
0x6ccee MOV             R4, SP
0x6ccf0 LSLS            R2, R0, #0x18
0x6ccf2 MOVS            R1, #0
0x6ccf4 ADDS            R3, #0x5B ; '['
0x6ccf6 ADDS            R4, #0x32 ; '2'
0x6ccf8 STRB            R1, [R3]
0x6ccfa LSRS            R2, R2, #0x18
0x6ccfc LDR             R1, =aDEtc; "%d.etc"
0x6ccfe LDR             R3, =unk_14032CC
0x6cd00 MOVS            R0, R4
0x6cd02 BL              sub_6EACE
0x6cd06 MOVS            R0, R4
0x6cd08 BL              sub_6CBE0
0x6cd0c STR             R0, [SP,#0x5C+var_44]
0x6cd0e CMP             R0, #0
0x6cd10 BNE             loc_6CD14
0x6cd12 B               loc_6CF04
0x6cd14 LDR             R7, =unk_140327C
0x6cd16 LDR             R1, [SP,#0x5C+var_44]
0x6cd18 MOVS            R2, #2
0x6cd1a ADD             R0, SP, #0x5C+var_4
0x6cd1c BL              sub_6EAD6
0x6cd20 LDR             R1, [SP,#0x5C+var_44]
0x6cd22 MOVS            R2, #4
0x6cd24 ADDS            R1, #2
0x6cd26 ADD             R0, SP, #0x5C+var_C
0x6cd28 BL              sub_6EAD6
0x6cd2c LDR             R1, [SP,#0x5C+var_44]
0x6cd2e MOVS            R2, #4
0x6cd30 ADDS            R1, #6
0x6cd32 ADD             R0, SP, #0x5C+var_8
0x6cd34 BL              sub_6EAD6
0x6cd38 LDR             R2, =unk_14032EC
0x6cd3a LDR             R0, [SP,#0x5C+var_C]
0x6cd3c STR             R2, [SP,#0x5C+var_4C]
0x6cd3e BL              sub_6EACC
0x6cd42 STR             R0, [SP,#0x5C+var_40]
0x6cd44 LDR             R0, [SP,#0x5C+var_44]
0x6cd46 MOVS            R1, #6
0x6cd48 LDR             R3, [SP,#0x5C+var_8]
0x6cd4a LDR             R2, [SP,#0x5C+var_C]
0x6cd4c STR             R1, [SP,#0x5C+var_5C]
0x6cd4e ADDS            R0, #0xA
0x6cd50 LDR             R1, [SP,#0x5C+var_40]
0x6cd52 LDR             R4, =(sub_692B4+1)
0x6cd54 BL              sub_6EAD0
0x6cd58 BL              sub_6CB8C
0x6cd5c LDR             R6, =byte_1537B78
0x6cd5e LDR             R1, [SP,#0x5C+var_40]
0x6cd60 MOVS            R0, R6
0x6cd62 MOVS            R2, #1
0x6cd64 BL              sub_6EAD6
0x6cd68 LDRB            R3, [R6]
0x6cd6a CMP             R3, #0
0x6cd6c BNE             loc_6CD70
0x6cd6e B               loc_6CEEE
0x6cd70 LSLS            R4, R3, #2
0x6cd72 ADDS            R4, R4, R3
0x6cd74 LSLS            R4, R4, #3
0x6cd76 LDR             R3, [SP,#0x5C+var_4C]
0x6cd78 ADDS            R0, R4, #2
0x6cd7a LDR             R5, [SP,#0x5C+var_40]
0x6cd7c BL              sub_6EACE
0x6cd80 MOVS            R2, R4
0x6cd82 STR             R0, [R6,#(dword_1537B7C - 0x1537B78)]
0x6cd84 STR             R0, [R6,#(dword_1537B80 - 0x1537B78)]
0x6cd86 MOVS            R1, #0
0x6cd88 LDR             R3, =unk_140329C
0x6cd8a BL              sub_6EACE
0x6cd8e ADDS            R5, #1
0x6cd90 MOVS            R2, #0
0x6cd92 STR             R2, [SP,#0x5C+var_3C]
0x6cd94 B               loc_6CEE0
0x6cd96 LDR             R3, =unk_140327C
0x6cd98 MOV             R6, SP
0x6cd9a ADDS            R6, #0x5B ; '['
0x6cd9c MOVS            R1, R5
0x6cd9e MOVS            R2, #1
0x6cda0 STR             R3, [SP,#0x5C+var_50]
0x6cda2 MOVS            R0, R6
0x6cda4 BL              sub_6EACE
0x6cda8 LDR             R2, [R7,#(dword_1537B80 - 0x1537B78)]
0x6cdaa LDR             R3, [SP,#0x5C+var_34]
0x6cdac ADDS            R3, R3, R2
0x6cdae STR             R3, [SP,#0x5C+var_48]
0x6cdb0 LDRB            R0, [R6]
0x6cdb2 LDR             R3, =unk_14032EC
0x6cdb4 ADDS            R0, #1
0x6cdb6 BL              sub_6EACE
0x6cdba LDR             R2, [SP,#0x5C+var_48]
0x6cdbc LDR             R3, [R7,#(dword_1537B80 - 0x1537B78)]
0x6cdbe STR             R0, [R2]
0x6cdc0 LDR             R2, [SP,#0x5C+var_34]
0x6cdc2 ADDS            R3, R2, R3
0x6cdc4 LDR             R0, [R3]
0x6cdc6 STR             R0, [R3,#4]
0x6cdc8 LDRB            R2, [R6]
0x6cdca MOVS            R1, #0
0x6cdcc ADDS            R2, #1
0x6cdce LDR             R3, =unk_140329C
0x6cdd0 BL              sub_6EACE
0x6cdd4 LDR             R3, [R7,#(dword_1537B80 - 0x1537B78)]
0x6cdd6 LDR             R2, [SP,#0x5C+var_34]
0x6cdd8 ADDS            R4, R5, #1
0x6cdda ADDS            R3, R3, R2
0x6cddc MOVS            R1, R4
0x6cdde LDR             R0, [R3,#4]
0x6cde0 LDRB            R2, [R6]
0x6cde2 LDR             R3, [SP,#0x5C+var_50]
0x6cde4 BL              sub_6EACE
0x6cde8 LDRB            R3, [R6]
0x6cdea LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6cdec LDR             R2, [SP,#0x5C+var_34]
0x6cdee ADDS            R4, R4, R3
0x6cdf0 ADDS            R0, R2, R0
0x6cdf2 MOVS            R1, R4
0x6cdf4 MOVS            R2, #1
0x6cdf6 LDR             R3, [SP,#0x5C+var_50]
0x6cdf8 ADDS            R0, #8
0x6cdfa BL              sub_6EACE
0x6cdfe LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6ce00 LDR             R2, [SP,#0x5C+var_34]
0x6ce02 ADDS            R4, #1
0x6ce04 ADDS            R0, R2, R0
0x6ce06 MOVS            R1, R4
0x6ce08 MOVS            R2, #1
0x6ce0a LDR             R3, [SP,#0x5C+var_50]
0x6ce0c ADDS            R0, #9
0x6ce0e BL              sub_6EACE
0x6ce12 LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6ce14 LDR             R2, [SP,#0x5C+var_34]
0x6ce16 ADDS            R4, #1
0x6ce18 ADDS            R0, R2, R0
0x6ce1a MOVS            R1, R4
0x6ce1c MOVS            R2, #1
0x6ce1e LDR             R3, [SP,#0x5C+var_50]
0x6ce20 ADDS            R0, #0xA
0x6ce22 BL              sub_6EACE
0x6ce26 LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6ce28 LDR             R2, [SP,#0x5C+var_34]
0x6ce2a ADDS            R4, #1
0x6ce2c ADDS            R0, R2, R0
0x6ce2e MOVS            R1, R4
0x6ce30 MOVS            R2, #1
0x6ce32 LDR             R3, [SP,#0x5C+var_50]
0x6ce34 ADDS            R0, #0xB
0x6ce36 BL              sub_6EACE
0x6ce3a LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6ce3c LDR             R2, [SP,#0x5C+var_34]
0x6ce3e ADDS            R4, #1
0x6ce40 ADDS            R0, R2, R0
0x6ce42 MOVS            R1, R4
0x6ce44 MOVS            R2, #1
0x6ce46 LDR             R3, [SP,#0x5C+var_50]
0x6ce48 ADDS            R0, #0xC
0x6ce4a BL              sub_6EACE
0x6ce4e LDR             R0, [R7,#(dword_1537B80 - 0x1537B78)]
0x6ce50 LDR             R2, [SP,#0x5C+var_34]
0x6ce52 ADDS            R4, #1
0x6ce54 ADDS            R0, R2, R0
0x6ce56 MOVS            R1, R4
0x6ce58 MOVS            R2, #1
0x6ce5a ADDS            R0, #0xD
0x6ce5c LDR             R3, [SP,#0x5C+var_50]
0x6ce5e BL              sub_6EACE
0x6ce62 ADDS            R4, #1
0x6ce64 MOVS            R2, #0
0x6ce66 STR             R4, [SP,#0x5C+var_30]
0x6ce68 STR             R2, [SP,#0x5C+var_38]
0x6ce6a MOVS            R7, R4
0x6ce6c LDR             R6, =byte_1537B78
0x6ce6e LDR             R2, [SP,#0x5C+var_38]
0x6ce70 LDR             R3, [SP,#0x5C+var_34]
0x6ce72 LDR             R0, [R6,#(dword_1537B80 - 0x1537B78)]
0x6ce74 LSLS            R4, R2, #3
0x6ce76 ADDS            R0, R3, R0
0x6ce78 MOVS            R5, R4
0x6ce7a LDR             R3, =unk_140327C
0x6ce7c ADDS            R5, #0x10
0x6ce7e MOVS            R1, R7
0x6ce80 MOVS            R2, #1
0x6ce82 STR             R3, [SP,#0x5C+var_58]
0x6ce84 ADDS            R0, R0, R5
0x6ce86 BL              sub_6EACE
0x6ce8a LDR             R2, [SP,#0x5C+var_34]
0x6ce8c LDR             R0, [R6,#(dword_1537B80 - 0x1537B78)]
0x6ce8e ADDS            R0, R2, R0
0x6ce90 ADDS            R0, R0, R5
0x6ce92 ADDS            R1, R7, #1
0x6ce94 MOVS            R2, #2
0x6ce96 LDR             R3, [SP,#0x5C+var_58]
0x6ce98 ADDS            R0, #2
0x6ce9a BL              sub_6EACE
0x6ce9e LDR             R2, [SP,#0x5C+var_34]
0x6cea0 LDR             R0, [R6,#(dword_1537B80 - 0x1537B78)]
0x6cea2 ADDS            R4, #0x14
0x6cea4 ADDS            R0, R2, R0
0x6cea6 ADDS            R1, R7, #3
0x6cea8 MOVS            R2, #2
0x6ceaa LDR             R3, [SP,#0x5C+var_58]
0x6ceac ADDS            R0, R0, R4
0x6ceae BL              sub_6EACE
0x6ceb2 LDR             R2, [SP,#0x5C+var_34]
0x6ceb4 LDR             R0, [R6,#(dword_1537B80 - 0x1537B78)]
0x6ceb6 ADDS            R0, R2, R0
0x6ceb8 ADDS            R0, R0, R4
0x6ceba ADDS            R1, R7, #5
0x6cebc MOVS            R2, #2
0x6cebe ADDS            R0, #2
0x6cec0 LDR             R3, [SP,#0x5C+var_58]
0x6cec2 BL              sub_6EACE
0x6cec6 LDR             R2, [SP,#0x5C+var_38]
0x6cec8 ADDS            R2, #1
0x6ceca ADDS            R7, #7
0x6cecc STR             R2, [SP,#0x5C+var_38]
0x6cece CMP             R2, #3
0x6ced0 BNE             loc_6CE6C
0x6ced2 LDR             R3, [SP,#0x5C+var_3C]
0x6ced4 LDR             R5, [SP,#0x5C+var_30]
0x6ced6 ADDS            R3, #1
0x6ced8 LDR             R2, [SP,#0x5C+var_34]
0x6ceda STR             R3, [SP,#0x5C+var_3C]
0x6cedc ADDS            R5, #0x15
0x6cede ADDS            R2, #0x28 ; '('
0x6cee0 STR             R2, [SP,#0x5C+var_34]
0x6cee2 LDR             R7, =byte_1537B78
0x6cee4 LDR             R2, [SP,#0x5C+var_3C]
0x6cee6 LDRB            R3, [R7]
0x6cee8 CMP             R2, R3
0x6ceea BGE             loc_6CEEE
0x6ceec B               loc_6CD96
0x6ceee LDR             R3, [SP,#0x5C+var_40]
0x6cef0 CMP             R3, #0
0x6cef2 BEQ             loc_6CEFC
0x6cef4 MOVS            R0, R3
0x6cef6 LDR             R3, =unk_14032FC
0x6cef8 BL              sub_6EACE
0x6cefc LDR             R0, [SP,#0x5C+var_44]
0x6cefe LDR             R3, =unk_14032FC
0x6cf00 BL              sub_6EACE
0x6cf04 ADD             SP, SP, #0x5C ; '\'
0x6cf06 POP             {R4-R7}
0x6cf08 POP             {R0}
0x6cf0a BX              R0