00013a8c  PUSH            {R1-R11,LR}
00013a90  MOV             R5, R1
00013a94  MOV             R1, R2
00013a98  MOV             R2, R3
00013a9c  LDR             R3, [SP,#0xC+arg_0]
00013aa0  LDR             R8, [R5,#0x20]
00013aa4  MOV             R7, R0
00013aa8  LDR             R0, [R0,#0x13C]
00013aac  CMP             R0, #4
00013ab0  BNE             def_13C1C; jumptable 00013C1C default case
00013ab4  ADD             R4, R7, #0x100
00013ab8  LDRH            R12, [R4,#0x82]
00013abc  LDR             R0, =(start - 0x13AC8)
00013ac0  ADD             R0, PC, R0; start
00013ac4  MOV             R9, #1
00013ac8  LDR             R0, [R0,#(dword_8 - 0xC)]
00013acc  MOV             R6, #0
00013ad0  CMP             R12, #0
00013ad4  BEQ             loc_13B54
00013ad8  CMP             R12, #1
00013adc  BEQ             loc_13CF4
00013ae0  CMP             R12, #2
00013ae4  SUBEQ           R12, R1, #0x100
00013ae8  SUBSEQ          R12, R12, #1
00013aec  BNE             def_13C1C; jumptable 00013C1C default case
00013af0  SUB             R12, R2, #0xE000
00013af4  SUBS            R12, R12, #0x36 ; '6'
00013af8  BEQ             loc_13B20
00013afc  SUB             R12, R2, #0xE000
00013b00  SUBS            R12, R12, #0x37 ; '7'
00013b04  LDREQ           R0, [R5,#0xC]
00013b08  ADREQ           LR, loc_13B1C
00013b0c  LDREQ           R1, [R0]
00013b10  LDREQ           R2, [R1,#0x18]
00013b14  MOVEQ           R1, #0
00013b18  BXEQ            R2
00013b1c  B               def_13C1C; jumptable 00013C1C default case
00013b20  LDR             R0, [R0,#0xC0]
00013b24  MOV             LR, PC
00013b28  BX              R0
00013b2c  LDRB            R0, [R0,#0x374]
00013b30  MOV             R3, #0xFFFFFFFF
00013b34  MOV             R2, #0
00013b38  CMP             R0, #0
00013b3c  STRHNE          R9, [R4,#0x7E]
00013b40  STRH            R6, [R4,#0x82]
00013b44  STMEA           SP, {R2,R3}
00013b48  MOV             R3, #0
00013b4c  MOV             R2, #6
00013b50  B               loc_13C04
00013b54  SUB             R12, R1, #0x100
00013b58  SUBS            R12, R12, #2
00013b5c  BNE             def_13C1C; jumptable 00013C1C default case
00013b60  SUB             R12, R2, #0xE000
00013b64  SUBS            R12, R12, #0x31 ; '1'
00013b68  BEQ             loc_13BA8
00013b6c  SUB             R12, R2, #0xE000
00013b70  SUBS            R12, R12, #0x32 ; '2'
00013b74  BEQ             loc_13BD0
00013b78  SUB             R12, R2, #0xE000
00013b7c  SUBS            R12, R12, #0x36 ; '6'
00013b80  BEQ             loc_13C14
00013b84  SUB             R12, R2, #0xE000
00013b88  SUBS            R12, R12, #0x37 ; '7'
00013b8c  LDREQ           R0, [R5,#0xC]
00013b90  ADREQ           LR, loc_13BA4
00013b94  LDREQ           R1, [R0]
00013b98  LDREQ           R2, [R1,#0x18]
00013b9c  MOVEQ           R1, #0
00013ba0  BXEQ            R2
00013ba4  B               def_13C1C; jumptable 00013C1C default case
00013ba8  LDRH            R0, [R4,#0x7E]
00013bac  SUB             R0, R0, #1
00013bb0  MOV             R0, R0,LSL#16
00013bb4  MOV             R0, R0,ASR#16
00013bb8  STRH            R0, [R4,#0x7E]
00013bbc  CMP             R0, #0
00013bc0  MOVLT           R0, #5
00013bc4  STRHLT          R0, [R4,#0x7E]
00013bc8  BLT             def_13C1C; jumptable 00013C1C default case
00013bcc  B               loc_13BF0
00013bd0  LDRH            R0, [R4,#0x7E]
00013bd4  ADD             R0, R0, #1
00013bd8  MOV             R0, R0,LSL#16
00013bdc  MOV             R0, R0,ASR#16
00013be0  STRH            R0, [R4,#0x7E]
00013be4  CMP             R0, #6
00013be8  STRHGE          R6, [R4,#0x7E]
00013bec  BGE             def_13C1C; jumptable 00013C1C default case
00013bf0  MOV             R3, #0xFFFFFFFF
00013bf4  MOV             R2, #0
00013bf8  STMEA           SP, {R2,R3}
00013bfc  MOV             R3, #0
00013c00  MOV             R2, #3
00013c04  MOV             R1, #1
00013c08  MOV             R0, R7
00013c0c  BL              sub_103B4
00013c10  B               def_13C1C; jumptable 00013C1C default case
00013c14  LDRSH           R1, [R4,#0x7E]
00013c18  CMP             R1, #5; switch 6 cases
00013c1c  ADDLS           PC, PC, R1,LSL#2; switch jump
00013c20  B               def_13C1C; jumptable 00013C1C default case
00013c24  B               loc_13C3C; jumptable 00013C1C case 0
00013c28  B               loc_13C64; jumptable 00013C1C case 1
00013c2c  B               loc_13C98; jumptable 00013C1C case 2
00013c30  B               loc_13CB4; jumptable 00013C1C case 3
00013c34  B               loc_13CC4; jumptable 00013C1C case 4
00013c38  B               loc_13CD8; jumptable 00013C1C case 5
00013c3c  LDR             R0, [R0,#0xC0]; jumptable 00013C1C case 0
00013c40  MOV             LR, PC
00013c44  BX              R0
00013c48  LDRB            R0, [R0,#0x374]
00013c4c  CMP             R0, #0
00013c50  STRHNE          R6, [R4,#0x7C]
00013c54  STRHNE          R9, [R4,#0x82]
00013c58  BNE             loc_13C8C
00013c5c  MOV             R2, #0xFFFFFFFF
00013c60  B               loc_13C80
00013c64  LDR             R0, [R0,#0xC0]; jumptable 00013C1C case 1
00013c68  MOV             LR, PC
00013c6c  BX              R0
00013c70  LDRB            R0, [R0,#0x374]
00013c74  CMP             R0, #0
00013c78  BEQ             loc_13C5C
00013c7c  MOV             R2, #0
00013c80  MOV             R1, R5
00013c84  MOV             R0, R7
00013c88  BL              sub_18288
00013c8c  MOV             R0, #1
00013c90  POP             {R1-R11,LR}
00013c94  BX              LR
00013c98  STRH            R9, [R4,#0x82]; jumptable 00013C1C case 2
00013c9c  LDRB            R0, [R5,#0x59]
00013ca0  CMP             R0, #1
00013ca4  MOVNE           R0, #0
00013ca8  MOVEQ           R0, #1
00013cac  STRH            R0, [R4,#0x84]
00013cb0  B               def_13C1C; jumptable 00013C1C default case
00013cb4  STRH            R9, [R4,#0x82]; jumptable 00013C1C case 3
00013cb8  MOV             R0, R7
00013cbc  BL              sub_15AE0
00013cc0  B               loc_13CD0
00013cc4  STRH            R9, [R4,#0x82]; jumptable 00013C1C case 4
00013cc8  MOV             R0, R7
00013ccc  BL              sub_153D0
00013cd0  STRB            R9, [R7,#0x12C]
00013cd4  B               def_13C1C; jumptable 00013C1C default case
00013cd8  LDR             R0, [R5,#0xC]; jumptable 00013C1C case 5
00013cdc  ADR             LR, loc_13CF0
00013ce0  LDR             R1, [R0]
00013ce4  LDR             R2, [R1,#0x18]
00013ce8  MOV             R1, #0
00013cec  BX              R2
00013cf0  B               def_13C1C; jumptable 00013C1C default case
00013cf4  LDRSH           R0, [R4,#0x7E]
00013cf8  CMP             R0, #0
00013cfc  BEQ             loc_13D30
00013d00  CMP             R0, #2
00013d04  BEQ             loc_13D98
00013d08  CMP             R0, #3
00013d0c  CMPNE           R0, #4
00013d10  BNE             def_13C1C; jumptable 00013C1C default case
00013d14  MOV             R0, R7
00013d18  BL              sub_10250
00013d1c  CMP             R0, #0
00013d20  BNE             def_13C1C; jumptable 00013C1C default case
00013d24  MOV             R0, R7
00013d28  BL              sub_602C
00013d2c  B               loc_13EC8
00013d30  SUB             R12, R1, #0x100
00013d34  SUBS            R12, R12, #2
00013d38  BNE             def_13C1C; jumptable 00013C1C default case
00013d3c  SUBS            R12, R2, #0xE000
00013d40  SUBSGE          R12, R12, #0x34 ; '4'
00013d44  STRHEQ          R9, [R4,#0x7C]
00013d48  BEQ             def_13C1C; jumptable 00013C1C default case
00013d4c  BGT             loc_13D6C
00013d50  SUB             R12, R2, #0xE000
00013d54  SUBS            R12, R12, #0x21 ; '!'
00013d58  BEQ             loc_13EC8
00013d5c  SUB             R12, R2, #0xE000
00013d60  SUBS            R12, R12, #0x33 ; '3'
00013d64  STRHEQ          R6, [R4,#0x7C]
00013d68  B               def_13C1C; jumptable 00013C1C default case
00013d6c  SUB             R12, R2, #0xE000
00013d70  SUBS            R12, R12, #0x36 ; '6'
00013d74  BEQ             loc_13D88
00013d78  SUB             R12, R2, #0xE000
00013d7c  SUBS            R12, R12, #0x37 ; '7'
00013d80  BNE             def_13C1C; jumptable 00013C1C default case
00013d84  B               loc_13EC8
00013d88  LDRH            R0, [R4,#0x7C]
00013d8c  CMP             R0, #0
00013d90  BEQ             loc_13C5C
00013d94  B               loc_13EC8
00013d98  SUB             R12, R1, #0x100
00013d9c  SUBS            R12, R12, #2
00013da0  LDR             R10, =0x7530
00013da4  BNE             loc_13DF8
00013da8  SUB             R12, R2, #0xE000
00013dac  SUBS            R12, R12, #0x33 ; '3'
00013db0  STRHEQ          R6, [R4,#0x84]
00013db4  BEQ             def_13C1C; jumptable 00013C1C default case
00013db8  SUB             R12, R2, #0xE000
00013dbc  SUBS            R12, R12, #0x34 ; '4'
00013dc0  BEQ             loc_13EB0
00013dc4  SUB             R12, R2, #0xE000
00013dc8  SUBS            R12, R12, #0x36 ; '6'
00013dcc  BEQ             loc_13DE0
00013dd0  SUB             R12, R2, #0xE000
00013dd4  SUBS            R12, R12, #0x37 ; '7'
00013dd8  BNE             def_13C1C; jumptable 00013C1C default case
00013ddc  B               loc_13EC8
00013de0  LDRH            R0, [R4,#0x84]
00013de4  CMP             R0, #0
00013de8  MOVEQ           R2, R10
00013dec  MOVEQ           R1, #1
00013df0  BEQ             loc_13EC0
00013df4  B               loc_13EB8
00013df8  SUB             R12, R1, #0x400
00013dfc  SUBS            R12, R12, #0x104
00013e00  BNE             def_13C1C; jumptable 00013C1C default case
00013e04  MOV             R0, R3,LSR#16
00013e08  MOV             R7, R0,LSL#16
00013e0c  LDRH            R1, [R8,#2]
00013e10  MOV             R0, R3,LSL#16
00013e14  MOV             R2, #0xC
00013e18  ADD             R2, R2, R1,LSR#1
00013e1c  MOV             R0, R0,ASR#16
00013e20  CMP             R2, R0
00013e24  MOV             R7, R7,ASR#16
00013e28  BGT             def_13C1C; jumptable 00013C1C default case
00013e2c  MOV             R11, #0x18
00013e30  ADD             R1, R11, R1,LSR#1
00013e34  CMP             R1, R0
00013e38  BLT             def_13C1C; jumptable 00013C1C default case
00013e3c  LDRH            R0, [R8]
00013e40  MOV             R1, #0xFFFFFFE8
00013e44  ADD             R1, R1, R0,LSR#1
00013e48  CMP             R1, R7
00013e4c  BGT             loc_13E84
00013e50  MOV             R1, #0xFFFFFFF4
00013e54  ADD             R0, R1, R0,LSR#1
00013e58  CMP             R0, R7
00013e5c  BLT             loc_13E84
00013e60  LDRH            R0, [R4,#0x84]
00013e64  CMP             R0, #1
00013e68  STRHEQ          R6, [R4,#0x84]
00013e6c  BEQ             loc_13E84
00013e70  MOV             R2, R10
00013e74  MOV             R1, #1
00013e78  MOV             R0, R5
00013e7c  BL              sub_24C64
00013e80  STRH            R6, [R4,#0x82]
00013e84  LDRH            R0, [R8]
00013e88  MOV             R2, #0xC
00013e8c  ADD             R1, R2, R0,LSR#1
00013e90  CMP             R1, R7
00013e94  BGT             def_13C1C; jumptable 00013C1C default case
00013e98  ADD             R0, R11, R0,LSR#1
00013e9c  CMP             R0, R7
00013ea0  BLT             def_13C1C; jumptable 00013C1C default case
00013ea4  LDRH            R0, [R4,#0x84]
00013ea8  CMP             R0, #0
00013eac  BNE             loc_13EB8
00013eb0  STRH            R9, [R4,#0x84]
00013eb4  B               def_13C1C; jumptable 00013C1C default case
00013eb8  MOV             R2, R10
00013ebc  MOV             R1, #0
00013ec0  MOV             R0, R5
00013ec4  BL              sub_24C64
00013ec8  STRH            R6, [R4,#0x82]
00013ecc  MOV             R0, #0; jumptable 00013C1C default case
00013ed0  B               loc_13C90
