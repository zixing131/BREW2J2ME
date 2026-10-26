0x4ed6c PUSH            {R4-R6,LR}
0x4ed6e LDR             R3, =(sub_1FD3C+1)
0x4ed70 LSLS            R4, R0, #0x18
0x4ed72 BL              sub_66A76
0x4ed76 LDR             R3, =byte_1500065
0x4ed78 LDR             R5, =byte_150C6BC
0x4ed7a MOVS            R6, #0
0x4ed7c LSRS            R4, R4, #0x18
0x4ed7e STRB            R6, [R3]
0x4ed80 MOVS            R3, #1
0x4ed82 STRB            R3, [R5]
0x4ed84 STRB            R4, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4ed86 MOVS            R0, R4
0x4ed88 LDR             R3, =(sub_1F39C+1)
0x4ed8a BL              sub_66A76
0x4ed8e LDR             R3, =(sub_1F3E0+1)
0x4ed90 STRB            R0, [R5,#(byte_150C6C0 - 0x150C6BC)]
0x4ed92 MOVS            R0, R4
0x4ed94 BL              sub_66A76
0x4ed98 LDR             R3, =(sub_1F41C+1)
0x4ed9a STRB            R0, [R5,#(byte_150C6C1 - 0x150C6BC)]
0x4ed9c MOVS            R0, R4
0x4ed9e BL              sub_66A76
0x4eda2 LDR             R3, =byte_1500063
0x4eda4 LDR             R2, =byte_150005E
0x4eda6 STRB            R6, [R3]
0x4eda8 MOVS            R3, #1
0x4edaa NEGS            R3, R3
0x4edac STRB            R3, [R2]
0x4edae STRB            R3, [R2,#(byte_150005F - 0x150005E)]
0x4edb0 STRB            R3, [R2,#(byte_1500060 - 0x150005E)]
0x4edb2 STRB            R3, [R2,#(byte_1500061 - 0x150005E)]
0x4edb4 STRB            R3, [R2,#(byte_1500062 - 0x150005E)]
0x4edb6 STRB            R0, [R5,#(byte_150C6C2 - 0x150C6BC)]
0x4edb8 LDR             R3, =byte_1402886
0x4edba LDRB            R0, [R3,R4]
0x4edbc LDR             R3, =unk_14028AF
0x4edbe LSLS            R4, R4, #2
0x4edc0 ADDS            R4, R4, R3
0x4edc2 MOVS            R1, #0
0x4edc4 B               loc_4EDCE
0x4edc6 LDRB            R3, [R4]
0x4edc8 ADDS            R4, #1
0x4edca STRB            R3, [R1,R2]
0x4edcc ADDS            R1, #1
0x4edce CMP             R1, R0
0x4edd0 BLT             loc_4EDC6
0x4edd2 LDR             R4, =byte_1500063
0x4edd4 LDR             R3, =(sub_21DC8+1)
0x4edd6 STRB            R1, [R4]
0x4edd8 BL              sub_66A76
0x4eddc LDR             R3, =byte_150D16C
0x4edde LDRB            R3, [R3]
0x4ede0 CMP             R3, #0
0x4ede2 BEQ             loc_4EDF4
0x4ede4 LDRB            R1, [R4]
0x4ede6 LDR             R0, =byte_150005E
0x4ede8 LSLS            R3, R1, #0x18
0x4edea ASRS            R3, R3, #0x18
0x4edec MOVS            R2, #0x10
0x4edee ADDS            R1, #1
0x4edf0 STRB            R2, [R0,R3]
0x4edf2 STRB            R1, [R4]
0x4edf4 POP             {R4-R6}
0x4edf6 POP             {R0}
0x4edf8 BX              R0