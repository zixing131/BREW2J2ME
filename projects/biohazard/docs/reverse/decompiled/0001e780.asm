0001e780  PUSH            {R4-R6,LR}
0001e784  SUB             R12, R1, #0x100
0001e788  SUBS            R12, R12, #2
0001e78c  MOV             R5, R0
0001e790  BNE             def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e794  SUBS            R12, R2, #0xE000
0001e798  SUBSGE          R12, R12, #0x32 ; '2'
0001e79c  ADD             R4, R5, #0x100
0001e7a0  LDRHEQ          R0, [R4,#0x4A]
0001e7a4  ADDEQ           R0, R0, #1
0001e7a8  BEQ             loc_1E7D0
0001e7ac  BGT             loc_1E7F4
0001e7b0  SUB             R12, R2, #0xE000
0001e7b4  SUBS            R12, R12, #0x21 ; '!'
0001e7b8  BEQ             loc_1E81C
0001e7bc  SUB             R12, R2, #0xE000
0001e7c0  SUBS            R12, R12, #0x31 ; '1'
0001e7c4  BNE             def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e7c8  LDRH            R0, [R4,#0x4A]
0001e7cc  SUB             R0, R0, #1
0001e7d0  MOV             R0, R0,LSL#16
0001e7d4  MOV             R0, R0,ASR#16
0001e7d8  ADD             R0, R0, #8
0001e7dc  MOV             R1, R0,ASR#31
0001e7e0  ADD             R1, R0, R1,LSR#29
0001e7e4  MOV             R1, R1,ASR#3
0001e7e8  SUB             R0, R0, R1,LSL#3
0001e7ec  STRH            R0, [R4,#0x4A]
0001e7f0  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e7f4  SUB             R12, R2, #0xE000
0001e7f8  SUBS            R12, R12, #0x36 ; '6'
0001e7fc  BEQ             loc_1E810
0001e800  SUB             R12, R2, #0xE000
0001e804  SUBS            R12, R12, #0x37 ; '7'
0001e808  BNE             def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e80c  B               loc_1E81C
0001e810  LDRH            R0, [R4,#0x4A]
0001e814  CMP             R0, #0
0001e818  BNE             loc_1E828
0001e81c  MOV             R0, #0
0001e820  POP             {R4-R6,LR}
0001e824  BX              LR
0001e828  MOV             R6, #0
0001e82c  STR             R6, [R5,#0x140]
0001e830  STRH            R6, [R4,#0x4E]
0001e834  MOV             R0, #1
0001e838  STRH            R0, [R4,#0x48]
0001e83c  LDRSH           R2, [R4,#0x4A]
0001e840  LDR             R1, =(start - 0x1E84C)
0001e844  ADD             R1, PC, R1; start
0001e848  CMP             R2, #7; switch 8 cases
0001e84c  ADDLS           PC, PC, R2,LSL#2; switch jump
0001e850  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e854  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e858  B               loc_1E874; jumptable 0001E84C case 1
0001e85c  B               loc_1E90C; jumptable 0001E84C case 2
0001e860  B               loc_1E8F0; jumptable 0001E84C case 3
0001e864  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e868  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e86c  B               loc_1E8D4; jumptable 0001E84C case 6
0001e870  B               loc_1E960; jumptable 0001E84C case 7
0001e874  LDR             R0, [R5,#0x110]; jumptable 0001E84C case 1
0001e878  LDRB            R0, [R0,#0x20]
0001e87c  CMP             R0, #1
0001e880  BNE             loc_1E8BC
0001e884  LDR             R0, [R1,#(dword_8 - 0xC)]
0001e888  ADR             LR, loc_1E894
0001e88c  LDR             R0, [R0,#0xC0]
0001e890  BX              R0
0001e894  LDR             R0, [R0,#0x760]
0001e898  LDRB            R0, [R0,#0x234]
0001e89c  CMP             R0, #0
0001e8a0  LDREQ           R0, [R5,#0x110]
0001e8a4  MOVEQ           R3, #0
0001e8a8  STRBEQ          R6, [R0,#0x20]
0001e8ac  STRHEQ          R6, [R4,#0x48]
0001e8b0  LDREQ           R0, [R5,#0x118]
0001e8b4  LDREQ           R2, =0x2330
0001e8b8  BEQ             loc_1E950
0001e8bc  LDR             R0, [R5,#0x110]
0001e8c0  LDR             R0, [R0]
0001e8c4  LDRH            R0, [R0,#0x2C]
0001e8c8  STRH            R0, [R4,#0x4C]
0001e8cc  STRH            R6, [R4,#0x4E]
0001e8d0  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e8d4  LDR             R0, [R1,#(dword_8 - 0xC)]; jumptable 0001E84C case 6
0001e8d8  ADR             LR, loc_1E8E4
0001e8dc  LDR             R0, [R0,#0xC0]
0001e8e0  BX              R0
0001e8e4  LDR             R0, [R0,#0x760]
0001e8e8  BL              sub_15AE0
0001e8ec  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e8f0  MOV             R0, #2; jumptable 0001E84C case 3
0001e8f4  STRH            R0, [R4,#0x48]
0001e8f8  STRH            R6, [R4,#0x22]
0001e8fc  LDRSH           R1, [R4,#0x3C]
0001e900  MOV             R0, R5
0001e904  BL              sub_161B0
0001e908  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e90c  LDR             R0, [R5,#0x110]; jumptable 0001E84C case 2
0001e910  ADD             R0, R0, #0x200
0001e914  LDRSH           R1, [R0,#0x1C]
0001e918  CMP             R1, #0
0001e91c  BLE             loc_1E93C
0001e920  MOV             R0, #4
0001e924  STRH            R0, [R4,#0x48]
0001e928  STRH            R6, [R4,#0x24]
0001e92c  LDRSH           R1, [R4,#0x3C]
0001e930  MOV             R0, R5
0001e934  BL              sub_16444
0001e938  B               def_1E84C; jumptable 0001E84C default case, cases 0,4,5
0001e93c  STRH            R6, [R0,#0x1C]
0001e940  STRH            R6, [R4,#0x48]
0001e944  LDR             R0, [R5,#0x118]
0001e948  LDR             R2, =0x1F5A
0001e94c  MOV             R3, #0
0001e950  MOV             R1, #0
0001e954  BL              sub_E00
0001e958  MOV             R0, #1; jumptable 0001E84C default case, cases 0,4,5
0001e95c  B               loc_1E820
0001e960  STRB            R0, [R5,#0x10D]; jumptable 0001E84C case 7
0001e964  B               loc_1E81C
