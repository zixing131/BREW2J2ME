0x6fb64 PUSH            {R4-R6,LR}
0x6fb66 LDR             R3, =dword_1536348
0x6fb68 LSLS            R0, R0, #2
0x6fb6a LDR             R5, [R0,R3]
0x6fb6c LDR             R1, =0x26D
0x6fb6e LDRB            R2, [R5,R1]
0x6fb70 LSLS            R3, R2, #2
0x6fb72 ADDS            R3, R3, R2
0x6fb74 LDR             R4, =byte_1536DA4
0x6fb76 LSLS            R3, R3, #2
0x6fb78 ADDS            R3, R3, R4
0x6fb7a MOVS            R2, #0
0x6fb7c STRB            R2, [R3,#0x11]
0x6fb7e LDR             R3, =0x246
0x6fb80 LDRH            R3, [R5,R3]
0x6fb82 SUB             SP, SP, #4
0x6fb84 CMP             R3, #1
0x6fb86 BNE             loc_6FBE6
0x6fb88 LDRH            R0, [R5,#0x18]
0x6fb8a LDR             R3, =0xA029
0x6fb8c CMP             R0, R3
0x6fb8e BNE             loc_6FBAC
0x6fb90 LDRB            R3, [R5,R1]
0x6fb92 LSLS            R1, R3, #2
0x6fb94 ADDS            R1, R1, R3
0x6fb96 MOVS            R3, #0x244
0x6fb9a LSLS            R1, R1, #2
0x6fb9c ADDS            R1, R1, R4
0x6fb9e LDRH            R2, [R5,R3]
0x6fba0 LDR             R0, =dword_1501C30
0x6fba2 MOVS            R3, #1
0x6fba4 LDR             R4, =(sub_6C9BC+1)
0x6fba6 BL              sub_71336
0x6fbaa B               loc_6FBE6
0x6fbac LDRB            R2, [R5,R1]
0x6fbae LDR             R6, =(sub_6C9BC+1)
0x6fbb0 CMP             R0, #0
0x6fbb2 BNE             loc_6FBC6
0x6fbb4 LDR             R3, =dword_1501D90
0x6fbb6 LDR             R3, [R3]
0x6fbb8 LSLS            R1, R2, #2
0x6fbba LDR             R0, [R3,#0x10]
0x6fbbc ADDS            R1, R1, R2
0x6fbbe LSLS            R1, R1, #2
0x6fbc0 ADDS            R0, #0x44 ; 'D'
0x6fbc2 ADDS            R1, R1, R4
0x6fbc4 B               loc_6FBDA
0x6fbc6 LSLS            R1, R2, #2
0x6fbc8 ADDS            R1, R1, R2
0x6fbca LSLS            R1, R1, #2
0x6fbcc ADDS            R1, R1, R4
0x6fbce LDRB            R3, [R1,#0x10]
0x6fbd0 LSLS            R0, R3, #3
0x6fbd2 ADDS            R0, R0, R3
0x6fbd4 LDR             R3, =unk_153718C
0x6fbd6 LSLS            R0, R0, #2
0x6fbd8 ADDS            R0, R0, R3
0x6fbda MOVS            R3, #0x244
0x6fbde LDRH            R2, [R5,R3]
0x6fbe0 MOVS            R3, #1
0x6fbe2 BL              sub_7133A
0x6fbe6 LDR             R3, =0x266
0x6fbe8 LDRB            R3, [R5,R3]
0x6fbea CMP             R3, #1
0x6fbec BNE             loc_6FC18
0x6fbee LDR             R3, =0x262
0x6fbf0 LDR             R2, =dword_153653C
0x6fbf2 LDRSB           R1, [R5,R3]
0x6fbf4 MOVS            R3, #0x264
0x6fbf8 LDRH            R3, [R5,R3]
0x6fbfa LDR             R2, [R2]
0x6fbfc SUBS            R2, R2, R3
0x6fbfe MULS            R1, R2
0x6fc00 MOVS            R0, #0x240
0x6fc04 LDRH            R3, [R5,R0]
0x6fc06 ADDS            R3, R3, R1
0x6fc08 STRH            R3, [R5,R0]
0x6fc0a LDR             R3, =0x263
0x6fc0c LDRSB           R3, [R5,R3]
0x6fc0e MULS            R2, R3
0x6fc10 LDR             R1, =0x242
0x6fc12 LDRH            R3, [R5,R1]
0x6fc14 ADDS            R3, R3, R2
0x6fc16 STRH            R3, [R5,R1]
0x6fc18 LDR             R3, =0x26A
0x6fc1a LDRB            R3, [R5,R3]
0x6fc1c CMP             R3, #1
0x6fc1e BEQ             loc_6FC24
0x6fc20 MOVS            R6, #0
0x6fc22 B               loc_6FC3A
0x6fc24 LDR             R3, =0x26D
0x6fc26 LDRB            R2, [R5,R3]
0x6fc28 LSLS            R3, R2, #2
0x6fc2a ADDS            R3, R3, R2
0x6fc2c LDR             R2, =0x26B
0x6fc2e LDR             R1, =byte_1536DA4
0x6fc30 LSLS            R3, R3, #2
0x6fc32 LDRB            R2, [R5,R2]
0x6fc34 ADDS            R3, R3, R1
0x6fc36 STRB            R2, [R3,#5]
0x6fc38 MOVS            R6, #1
0x6fc3a LDR             R3, =0x269
0x6fc3c LDRB            R3, [R5,R3]
0x6fc3e CMP             R3, #1
0x6fc40 BNE             loc_6FC44
0x6fc42 MOVS            R6, #2
0x6fc44 MOVS            R3, #0x248
0x6fc48 LDRH            R0, [R5,R3]
0x6fc4a CMP             R0, #0
0x6fc4c BNE             loc_6FC5C
0x6fc4e MOVS            R3, #0x24C
0x6fc52 STRB            R0, [R5,R3]
0x6fc54 LDR             R1, =byte_1536DA4
0x6fc56 LDR             R3, =0x24D
0x6fc58 STRB            R0, [R5,R3]
0x6fc5a B               loc_6FC6E
0x6fc5c LDR             R1, =byte_1536DA4
0x6fc5e CMP             R0, #1
0x6fc60 BNE             loc_6FC7E
0x6fc62 MOVS            R3, #0x24C
0x6fc66 STRB            R0, [R5,R3]
0x6fc68 LDR             R3, =0x24D
0x6fc6a MOVS            R2, #0
0x6fc6c STRB            R2, [R5,R3]
0x6fc6e ADDS            R3, #0x20 ; ' '
0x6fc70 LDRB            R2, [R5,R3]
0x6fc72 LSLS            R3, R2, #2
0x6fc74 ADDS            R3, R3, R2
0x6fc76 LSLS            R3, R3, #2
0x6fc78 ADDS            R3, R3, R1
0x6fc7a STRB            R0, [R3,#0xC]
0x6fc7c B               loc_6FC96
0x6fc7e LDR             R3, =0x24D
0x6fc80 STRB            R0, [R5,R3]
0x6fc82 ADDS            R3, #0x20 ; ' '
0x6fc84 LDRB            R3, [R5,R3]
0x6fc86 LSLS            R2, R3, #2
0x6fc88 ADDS            R2, R2, R3
0x6fc8a MOVS            R3, #0x24C
0x6fc8e LSLS            R2, R2, #2
0x6fc90 LDRB            R3, [R5,R3]
0x6fc92 ADDS            R2, R2, R1
0x6fc94 STRB            R3, [R2,#0xC]
0x6fc96 MOVS            R3, #0x250
0x6fc9a LDRB            R3, [R5,R3]
0x6fc9c LDR             R1, =byte_1536DA4
0x6fc9e CMP             R3, #1
0x6fca0 BNE             loc_6FCB0
0x6fca2 LDR             R3, =0x26D
0x6fca4 LDRB            R2, [R5,R3]
0x6fca6 LSLS            R3, R2, #2
0x6fca8 ADDS            R3, R3, R2
0x6fcaa LSLS            R3, R3, #2
0x6fcac MOVS            R2, #0
0x6fcae B               loc_6FCBC
0x6fcb0 LDR             R3, =0x26D
0x6fcb2 LDRB            R2, [R5,R3]
0x6fcb4 LSLS            R3, R2, #2
0x6fcb6 ADDS            R3, R3, R2
0x6fcb8 LSLS            R3, R3, #2
0x6fcba MOVS            R2, #1
0x6fcbc STRB            R2, [R3,R1]
0x6fcbe LDR             R4, =0x251
0x6fcc0 LDRB            R3, [R5,R4]
0x6fcc2 CMP             R3, #1
0x6fcc4 BNE             loc_6FCD8
0x6fcc6 LDR             R3, =0x26D
0x6fcc8 LDRB            R2, [R5,R3]
0x6fcca LSLS            R3, R2, #2
0x6fccc ADDS            R3, R3, R2
0x6fcce LDR             R1, =byte_1536DA4
0x6fcd0 LSLS            R3, R3, #2
0x6fcd2 ADDS            R3, R3, R1
0x6fcd4 MOVS            R2, #0
0x6fcd6 STRB            R2, [R3,#5]
0x6fcd8 LDR             R0, =0x26D
0x6fcda LDRB            R3, [R5,R0]
0x6fcdc LSLS            R2, R3, #2
0x6fcde ADDS            R2, R2, R3
0x6fce0 MOVS            R3, #0x90
0x6fce2 LDR             R1, =byte_1536DA4
0x6fce4 LSLS            R3, R3, #2
0x6fce6 LDRH            R3, [R5,R3]
0x6fce8 LSLS            R2, R2, #2
0x6fcea ADDS            R2, R2, R1
0x6fcec STRH            R3, [R2,#8]
0x6fcee LDRB            R2, [R5,R0]
0x6fcf0 LSLS            R3, R2, #2
0x6fcf2 ADDS            R3, R3, R2
0x6fcf4 LDR             R2, =0x242
0x6fcf6 LSLS            R3, R3, #2
0x6fcf8 LDRH            R2, [R5,R2]
0x6fcfa ADDS            R3, R3, R1
0x6fcfc STRH            R2, [R3,#0xA]
0x6fcfe LDRB            R3, [R5,R4]
0x6fd00 CMP             R3, #1
0x6fd02 BNE             loc_6FD24
0x6fd04 CMP             R6, #2
0x6fd06 BNE             loc_6FD0C
0x6fd08 MOVS            R4, #5
0x6fd0a B               loc_6FD0E
0x6fd0c MOVS            R4, #3
0x6fd0e LDR             R3, =0x26D
0x6fd10 LDRB            R0, [R5,R3]
0x6fd12 SUBS            R3, #6
0x6fd14 LDRB            R2, [R5,R3]
0x6fd16 MOVS            R3, #0x9A
0x6fd18 LDRH            R1, [R5,#0x18]
0x6fd1a LSLS            R3, R3, #2
0x6fd1c LDRB            R3, [R5,R3]
0x6fd1e STR             R1, [SP,#4+var_4]
0x6fd20 MOVS            R1, R4
0x6fd22 B               loc_6FD36
0x6fd24 LDR             R3, =0x267
0x6fd26 LDRH            R1, [R5,#0x18]
0x6fd28 LDRB            R2, [R5,R3]
0x6fd2a MOVS            R3, #0x268
0x6fd2e LDRB            R0, [R5,R0]
0x6fd30 LDRB            R3, [R5,R3]
0x6fd32 STR             R1, [SP,#4+var_4]
0x6fd34 MOVS            R1, R6
0x6fd36 LDR             R4, =0x72089
0x6fd38 BL              sub_71336
0x6fd3c ADD             SP, SP, #4
0x6fd3e POP             {R4-R6}
0x6fd40 POP             {R0}
0x6fd42 BX              R0