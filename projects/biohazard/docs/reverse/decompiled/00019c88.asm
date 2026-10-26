00019c88  PUSH            {R3-R9,LR}
00019c8c  MOV             R4, R0
00019c90  LDRB            R0, [R0,#0x1A4]
00019c94  LDR             R9, =(start - 0x19CAC)
00019c98  MOV             R7, R3
00019c9c  MOV             R6, R1
00019ca0  MOV             R5, R2
00019ca4  ADD             R9, PC, R9; start
00019ca8  ADD             R8, R4, #0x100
00019cac  CMP             R0, #7; switch 8 cases
00019cb0  ADDLS           PC, PC, R0,LSL#2; switch jump
00019cb4  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019cb8  B               loc_19D44; jumptable 00019CB0 case 0
00019cbc  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019cc0  B               loc_19F10; jumptable 00019CB0 case 2
00019cc4  B               loc_19D1C; jumptable 00019CB0 case 3
00019cc8  B               loc_1A008; jumptable 00019CB0 case 4
00019ccc  B               loc_1A0A8; jumptable 00019CB0 case 5
00019cd0  B               loc_19D04; jumptable 00019CB0 case 6
00019cd4  B               loc_19CD8; jumptable 00019CB0 case 7
00019cd8  SUB             R12, R6, #0x100; jumptable 00019CB0 case 7
00019cdc  SUBS            R12, R12, #2
00019ce0  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
00019ce4  SUB             R12, R5, #0xE000
00019ce8  SUBS            R12, R12, #0x21 ; '!'
00019cec  SUBNE           R12, R5, #0xE000
00019cf0  SUBSNE          R12, R12, #0x37 ; '7'
00019cf4  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
00019cf8  MOV             R2, #0
00019cfc  MOV             R1, #0
00019d00  B               loc_1A06C
00019d04  MOV             R3, R7; jumptable 00019CB0 case 6
00019d08  MOV             R2, R5
00019d0c  MOV             R1, R6
00019d10  LDR             R0, [R4,#0x194]
00019d14  BL              sub_1F35C
00019d18  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019d1c  MOV             R3, R7; jumptable 00019CB0 case 3
00019d20  MOV             R2, R5
00019d24  MOV             R1, R6
00019d28  LDR             R0, [R4,#0x1A0]
00019d2c  BL              sub_13EDC
00019d30  CMP             R0, #0
00019d34  LDRBEQ          R1, [R4,#0x1A5]
00019d38  MOVEQ           R2, #0
00019d3c  BEQ             loc_1A06C
00019d40  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019d44  SUB             R12, R6, #0x100; jumptable 00019CB0 case 0
00019d48  SUBS            R12, R12, #2
00019d4c  BNE             loc_19EF8
00019d50  SUB             R12, R5, #0xE000
00019d54  SUBS            R12, R12, #0x2B ; '+'
00019d58  LDRNE           R12, =0xE02C
00019d5c  CMPNE           R5, R12
00019d60  SUBNE           R12, R5, #0xE000
00019d64  SUBSNE          R12, R12, #0x37 ; '7'
00019d68  BNE             loc_19DA8
00019d6c  MOV             R2, #0
00019d70  MOV             R1, #2
00019d74  MOV             R0, R4
00019d78  BL              sub_59C4
00019d7c  SUB             R12, R5, #0xE000
00019d80  SUBS            R12, R12, #0x2C ; ','
00019d84  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
00019d88  MOV             R2, #0
00019d8c  MOV             R1, #2
00019d90  LDR             R0, [R4,#0x198]
00019d94  BL              sub_1BA98
00019d98  LDRSH           R1, [R8,#0xBC]
00019d9c  LDR             R0, [R4,#0x198]
00019da0  BL              sub_1627C
00019da4  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019da8  SUB             R12, R5, #0xE000
00019dac  SUBS            R12, R12, #0x2A ; '*'
00019db0  BNE             loc_19DD8
00019db4  LDR             R0, [R4,#0x190]
00019db8  LDR             R0, [R0]
00019dbc  LDRB            R0, [R0,#0x2E]
00019dc0  CMP             R0, #0
00019dc4  MOVNE           R2, #0
00019dc8  MOVNE           R1, #7
00019dcc  BNE             loc_1A06C
00019dd0  MOV             R2, #3
00019dd4  B               loc_1A068
00019dd8  SUB             R12, R5, #0xE000
00019ddc  SUBS            R12, R12, #0x21 ; '!'
00019de0  BNE             loc_19E88
00019de4  LDR             R8, [R4,#0x190]
00019de8  LDR             R0, =algn_322
00019dec  ADD             R9, R4, #0x220
00019df0  LDRSH           R0, [R0,R8]
00019df4  CMP             R0, #0
00019df8  BLE             loc_19E70
00019dfc  LDR             R0, [R8,#0x14]
00019e00  LDR             R1, [R0]
00019e04  MOV             R0, #0x28 ; '('
00019e08  MUL             R1, R0, R1
00019e0c  MOV             R0, #0x64 ; 'd'
00019e10  BL              sub_104
00019e14  LDR             R2, [R8,#0x18]
00019e18  MOV             R3, #0
00019e1c  LDR             R1, [R2]
00019e20  ADD             R1, R0, R1
00019e24  STR             R1, [R2]
00019e28  LDR             R0, [R4,#0x190]
00019e2c  ADD             R2, R0, #0x14
00019e30  LDM             R2, {R0,R2}
00019e34  LDR             R0, [R0]
00019e38  CMP             R1, R0
00019e3c  MOVLT           R0, R1
00019e40  STR             R0, [R2]
00019e44  LDR             R2, =0x1F41
00019e48  MOV             R0, R9
00019e4c  MOV             R1, #0
00019e50  BL              sub_E00
00019e54  LDR             R0, [R4,#0x190]
00019e58  ADD             R0, R0, #0x300
00019e5c  ADD             R0, R0, #0x22 ; '"'
00019e60  LDRH            R1, [R0]
00019e64  SUB             R1, R1, #1
00019e68  STRH            R1, [R0]
00019e6c  B               loc_19EF8
00019e70  MOV             R3, #0
00019e74  MOV             R2, #0x1F40
00019e78  MOV             R1, #0
00019e7c  MOV             R0, R9
00019e80  BL              sub_E00
00019e84  B               loc_19EF8
00019e88  SUB             R12, R5, #0xE000
00019e8c  SUBS            R12, R12, #0x36 ; '6'
00019e90  LDRNE           R12, =0xE026
00019e94  CMPNE           R5, R12
00019e98  SUBNE           R12, R5, #0xE000
00019e9c  SUBSNE          R12, R12, #0x35 ; '5'
00019ea0  BNE             loc_19EF8
00019ea4  MOV             R3, #0
00019ea8  STR             R3, [SP,#4+var_4]
00019eac  LDR             R0, [R4,#0x190]
00019eb0  LDR             R1, [R0,#0x328]
00019eb4  LDR             R0, [R0,#0x324]
00019eb8  LDR             R1, [R1]
00019ebc  LDR             R0, [R0]
00019ec0  MOV             R3, R1,LSL#16
00019ec4  MOV             R2, R0,LSL#16
00019ec8  MOV             R2, R2,LSR#16
00019ecc  LDR             R0, [R4,#0x194]
00019ed0  MOV             R3, R3,LSR#16
00019ed4  MOV             R1, #1
00019ed8  BL              sub_24FDC
00019edc  LDR             R0, [R4,#0x194]
00019ee0  LDRH            R0, [R0,#0x3C]
00019ee4  CMP             R0, #0
00019ee8  MOVNE           R2, #0
00019eec  MOVNE           R1, #6
00019ef0  MOVNE           R0, R4
00019ef4  BLNE            sub_59C4
00019ef8  MOV             R3, R7
00019efc  MOV             R2, R5
00019f00  MOV             R1, R6
00019f04  LDR             R0, [R4,#0x18C]
00019f08  BL              sub_1F5A8
00019f0c  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019f10  LDRB            R0, [R4,#0x12C]; jumptable 00019CB0 case 2
00019f14  CMP             R0, #1
00019f18  BNE             loc_19F58
00019f1c  MOV             R3, R7
00019f20  MOV             R2, R5
00019f24  MOV             R1, R6
00019f28  MOV             R0, R4
00019f2c  BL              sub_10250
00019f30  CMP             R0, #0
00019f34  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
00019f38  MOV             R0, R4
00019f3c  BL              sub_602C
00019f40  MOV             R3, R7
00019f44  MOV             R2, R5
00019f48  MOV             R1, R6
00019f4c  LDR             R0, [R4,#0x198]
00019f50  BL              sub_1F8C4
00019f54  B               def_19CB0; jumptable 00019CB0 default case, case 1
00019f58  MOV             R3, R7
00019f5c  MOV             R2, R5
00019f60  MOV             R1, R6
00019f64  LDR             R0, [R4,#0x198]
00019f68  BL              sub_1F8C4
00019f6c  CMP             R0, #0
00019f70  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
00019f74  LDR             R0, [R4,#0x198]
00019f78  MOV             R5, #0
00019f7c  LDRB            R1, [R0,#0x10D]
00019f80  CMP             R1, #1
00019f84  BNE             loc_19FCC
00019f88  BL              nullsub_1
00019f8c  LDR             R1, [R9,#(dword_8 - 0xC)]
00019f90  LDR             R0, [R4,#0x198]
00019f94  LDR             R1, [R1,#0x6C]
00019f98  MOV             LR, PC
00019f9c  BX              R1
00019fa0  STR             R5, [R4,#0x198]
00019fa4  LDR             R0, [R9,#(dword_8 - 0xC)]
00019fa8  LDR             R0, [R0,#0xC0]
00019fac  MOV             LR, PC
00019fb0  BX              R0
00019fb4  MOV             R4, R0
00019fb8  LDR             R0, [R9,#(dword_8 - 0xC)]
00019fbc  LDR             R0, [R0,#0xC0]
00019fc0  MOV             LR, PC
00019fc4  BX              R0
00019fc8  B               loc_1A0D8
00019fcc  LDRB            R1, [R0,#0x10C]
00019fd0  CMP             R1, #0xFF
00019fd4  ADDNE           R0, R0, #0x100
00019fd8  LDRSBNE         R0, [R0,#0xC]
00019fdc  MOVNE           R2, R0,LSL#16
00019fe0  MOVNE           R2, R2,LSR#16
00019fe4  BNE             loc_1A068
00019fe8  BL              nullsub_1
00019fec  LDR             R1, [R9,#(dword_8 - 0xC)]
00019ff0  LDR             R0, [R4,#0x198]
00019ff4  LDR             R1, [R1,#0x6C]
00019ff8  MOV             LR, PC
00019ffc  BX              R1
0001a000  STR             R5, [R4,#0x198]
0001a004  B               loc_19CF8
0001a008  SUB             R12, R6, #0x100; jumptable 00019CB0 case 4
0001a00c  SUBS            R12, R12, #2
0001a010  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
0001a014  LDRH            R0, [R8,#0xB4]
0001a018  CMP             R0, #5
0001a01c  BCC             def_19CB0; jumptable 00019CB0 default case, case 1
0001a020  SUB             R12, R5, #0xE000
0001a024  SUBS            R12, R12, #0x33 ; '3'
0001a028  SUBNE           R12, R5, #0xE000
0001a02c  SUBSNE          R12, R12, #0x34 ; '4'
0001a030  LDRSHEQ         R0, [R8,#0x9C]
0001a034  ADDEQ           R0, R0, #1
0001a038  ADDEQ           R1, R0, R0,LSR#31
0001a03c  MOVEQ           R1, R1,ASR#1
0001a040  SUBEQ           R0, R0, R1,LSL#1
0001a044  STRHEQ          R0, [R8,#0x9C]
0001a048  BEQ             def_19CB0; jumptable 00019CB0 default case, case 1
0001a04c  SUB             R12, R5, #0xE000
0001a050  SUBS            R12, R12, #0x36 ; '6'
0001a054  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
0001a058  LDRH            R0, [R8,#0x9C]
0001a05c  CMP             R0, #0
0001a060  BNE             loc_1A078
0001a064  MOV             R2, #5
0001a068  MOV             R1, #3
0001a06c  MOV             R0, R4
0001a070  BL              sub_59C4
0001a074  B               def_19CB0; jumptable 00019CB0 default case, case 1
0001a078  MOV             R0, #1
0001a07c  STRB            R0, [R4,#0x186]
0001a080  LDR             R0, [R9,#(dword_8 - 0xC)]
0001a084  ADR             LR, loc_1A090
0001a088  LDR             R0, [R0,#0xC0]
0001a08c  BX              R0
0001a090  MOV             R4, R0
0001a094  LDR             R0, [R9,#(dword_8 - 0xC)]
0001a098  LDR             R0, [R0,#0xC0]
0001a09c  MOV             LR, PC
0001a0a0  BX              R0
0001a0a4  B               loc_1A0D8
0001a0a8  SUB             R12, R6, #0x100; jumptable 00019CB0 case 5
0001a0ac  SUBS            R12, R12, #2
0001a0b0  BNE             def_19CB0; jumptable 00019CB0 default case, case 1
0001a0b4  LDR             R0, [R9,#(dword_8 - 0xC)]
0001a0b8  ADR             LR, loc_1A0C4
0001a0bc  LDR             R0, [R0,#0xC0]
0001a0c0  BX              R0
0001a0c4  MOV             R4, R0
0001a0c8  LDR             R0, [R9,#(dword_8 - 0xC)]
0001a0cc  LDR             R0, [R0,#0xC0]
0001a0d0  MOV             LR, PC
0001a0d4  BX              R0
0001a0d8  LDR             R0, [R0,#0x760]
0001a0dc  MOV             R2, #0
0001a0e0  MOV             R1, R4
0001a0e4  BL              sub_18170
0001a0e8  POP             {R3-R9,LR}; jumptable 00019CB0 default case, case 1
0001a0ec  MOV             R0, #1
0001a0f0  BX              LR
