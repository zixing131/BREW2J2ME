000059c4  PUSH            {R3-R7,LR}
000059c8  LDR             R6, =(start - 0x59E0)
000059cc  MOV             R7, R2
000059d0  MOV             R5, R1
000059d4  MOV             R4, R0
000059d8  ADD             R6, PC, R6; start
000059dc  LDR             R0, [R6,#(dword_8 - 0xC)]
000059e0  ADR             LR, loc_59EC
000059e4  LDR             R0, [R0,#0xC0]
000059e8  BX              R0
000059ec  LDR             R0, [R0,#0x24]
000059f0  BL              sub_22508
000059f4  CMP             R5, #3
000059f8  LDRBEQ          R0, [R4,#0x1A5]
000059fc  STRBEQ          R0, [R4,#0x1A6]
00005a00  LDRB            R0, [R4,#0x1A4]
00005a04  STRB            R0, [R4,#0x1A5]
00005a08  STRB            R5, [R4,#0x1A4]
00005a0c  LDR             R1, [R4,#0x190]
00005a10  MOV             R0, #0
00005a14  LDR             R1, [R1,#0x330]
00005a18  STR             R0, [R1]
00005a1c  MOV             R1, R5
00005a20  CMP             R1, #8; switch 9 cases
00005a24  ADD             R5, R4, #0x100
00005a28  ADDLS           PC, PC, R1,LSL#2; switch jump
00005a2c  B               def_5A28; jumptable 00005A28 default case, case 5
00005a30  B               loc_5BE4; jumptable 00005A28 case 0
00005a34  B               loc_5BD0; jumptable 00005A28 cases 1,8
00005a38  B               loc_5AD4; jumptable 00005A28 case 2
00005a3c  B               loc_5A90; jumptable 00005A28 case 3
00005a40  B               loc_5AC8; jumptable 00005A28 case 4
00005a44  B               def_5A28; jumptable 00005A28 default case, case 5
00005a48  B               loc_5BB0; jumptable 00005A28 case 6
00005a4c  B               loc_5A54; jumptable 00005A28 case 7
00005a50  B               loc_5BD0; jumptable 00005A28 cases 1,8
00005a54  LDRH            R0, [R5,#0xBA]; jumptable 00005A28 case 7
00005a58  ADD             R2, R4, #0x1B0
00005a5c  ADD             R1, R4, #0x1AC
00005a60  MOV             R0, R0,LSR#1
00005a64  STRH            R0, [R5,#0xA8]
00005a68  LDRH            R0, [R5,#0xBC]
00005a6c  SUB             R0, R0, #0x55 ; 'U'
00005a70  ADD             R0, R0, R0,LSR#31
00005a74  MOV             R0, R0,ASR#1
00005a78  ADD             R0, R0, #0x3C ; '<'
00005a7c  STRH            R0, [R5,#0xAA]
00005a80  LDR             R0, [R4,#0x18C]
00005a84  BL              sub_1228C
00005a88  POP             {R3-R7,LR}; jumptable 00005A28 default case, case 5
00005a8c  BX              LR
00005a90  LDR             R0, [R4,#0x1A0]; jumptable 00005A28 case 3
00005a94  CMP             R0, #0
00005a98  BNE             loc_5AB4
00005a9c  LDR             R0, [R6,#(dword_8 - 0xC)]
00005aa0  ADR             LR, loc_5AB0
00005aa4  LDR             R1, [R0,#0x68]
00005aa8  MOV             R0, #0x15C
00005aac  BX              R1
00005ab0  STR             R0, [R4,#0x1A0]
00005ab4  LDR             R1, [R4,#0x190]!
00005ab8  LDR             R0, [R4,#0x10]
00005abc  MOV             R2, R7
00005ac0  BL              sub_1660C
00005ac4  B               def_5A28; jumptable 00005A28 default case, case 5
00005ac8  STRH            R0, [R5,#0xB4]; jumptable 00005A28 case 4
00005acc  STRH            R0, [R5,#0x9C]
00005ad0  B               def_5A28; jumptable 00005A28 default case, case 5
00005ad4  LDRB            R0, [R4,#0x1A5]; jumptable 00005A28 case 2
00005ad8  CMP             R0, #3
00005adc  LDR             R0, [R4,#0x198]
00005ae0  BEQ             loc_5B4C
00005ae4  CMP             R0, #0
00005ae8  BNE             loc_5B04
00005aec  LDR             R0, [R6,#(dword_8 - 0xC)]
00005af0  ADR             LR, loc_5B00
00005af4  LDR             R1, [R0,#0x68]
00005af8  MOV             R0, #0x150
00005afc  BX              R1
00005b00  STR             R0, [R4,#0x198]
00005b04  LDR             R0, [R4,#0x198]
00005b08  BL              sub_17B60
00005b0c  LDR             R0, [R4,#0x190]
00005b10  LDR             R1, [R4,#0x198]
00005b14  STR             R0, [R1,#0x110]
00005b18  LDR             R1, [R4,#0x198]
00005b1c  ADD             R0, R4, #0x220
00005b20  STR             R0, [R1,#0x118]
00005b24  LDR             R0, [R4,#0x188]
00005b28  LDR             R1, [R4,#0x198]
00005b2c  STR             R0, [R1,#0x114]
00005b30  LDRH            R0, [R5,#0xBC]
00005b34  LDR             R1, [R4,#0x198]
00005b38  ADD             R1, R1, #0x100
00005b3c  STRH            R0, [R1,#0x3C]
00005b40  LDR             R0, [R4,#0x198]
00005b44  STR             R4, [R0,#0x11C]
00005b48  B               def_5A28; jumptable 00005A28 default case, case 5
00005b4c  CMP             R0, #0
00005b50  BEQ             def_5A28; jumptable 00005A28 default case, case 5
00005b54  MOV             R1, #0xFF
00005b58  ADD             R0, R0, #0x100
00005b5c  STRB            R1, [R0,#0xC]
00005b60  LDR             R0, [R4,#0x198]
00005b64  ADD             R1, R0, #0x100
00005b68  LDRH            R2, [R1,#0x48]
00005b6c  CMP             R2, #3
00005b70  BNE             def_5A28; jumptable 00005A28 default case, case 5
00005b74  LDRSH           R6, [R0,#2]
00005b78  LDRH            R1, [R1,#0x20]
00005b7c  CMP             R1, #0
00005b80  BNE             loc_5B90
00005b84  LDRSH           R1, [R5,#0xBC]
00005b88  BL              sub_1627C
00005b8c  B               loc_5B9C
00005b90  CMP             R1, #1
00005b94  LDRSHEQ         R1, [R5,#0xBC]
00005b98  BLEQ            sub_16360
00005b9c  LDR             R0, [R4,#0x198]
00005ba0  STRH            R6, [R0,#2]
00005ba4  LDR             R0, [R4,#0x198]
00005ba8  BL              sub_252A0
00005bac  B               def_5A28; jumptable 00005A28 default case, case 5
00005bb0  LDRB            R0, [R4,#0x1A5]; jumptable 00005A28 case 6
00005bb4  CMP             R0, #0
00005bb8  BNE             def_5A28; jumptable 00005A28 default case, case 5
00005bbc  LDR             R0, [R4,#0x18C]
00005bc0  BL              sub_24E48
00005bc4  LDR             R0, [R4,#0x194]
00005bc8  BL              sub_1F908
00005bcc  B               def_5A28; jumptable 00005A28 default case, case 5
00005bd0  MOV             R2, #0; jumptable 00005A28 cases 1,8
00005bd4  MOV             R1, #0
00005bd8  MOV             R0, R4
00005bdc  BL              sub_59C4
00005be0  B               def_5A28; jumptable 00005A28 default case, case 5
00005be4  LDRB            R0, [R4,#0x1A5]; jumptable 00005A28 case 0
00005be8  CMP             R0, #6
00005bec  LDREQ           R0, [R4,#0x18C]
00005bf0  POPEQ           {R3-R7,LR}
00005bf4  BEQ             sub_23C38
00005bf8  B               def_5A28; jumptable 00005A28 default case, case 5
