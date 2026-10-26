0001f5a8  PUSH            {R4,R5,LR}
0001f5ac  SUB             SP, SP, #0x14
0001f5b0  MOV             R4, R0
0001f5b4  CMP             R1, #0x100
0001f5b8  BEQ             loc_1F634
0001f5bc  SUB             R0, R2, #0xE000
0001f5c0  SUB             R12, R1, #0x100
0001f5c4  SUBS            R12, R12, #1
0001f5c8  SUB             R0, R0, #0x22 ; '"'
0001f5cc  BEQ             loc_1F7C0
0001f5d0  SUB             R12, R1, #0x100
0001f5d4  SUBS            R12, R12, #2
0001f5d8  BNE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f5dc  CMP             R0, #0x12; switch 19 cases
0001f5e0  ADDLS           PC, PC, R0,LSL#2; switch jump
0001f5e4  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f5e8  B               loc_1F890; jumptable 0001F5E0 case 0
0001f5ec  B               loc_1F878; jumptable 0001F5E0 cases 1,15
0001f5f0  B               loc_1F89C; jumptable 0001F5E0 case 2
0001f5f4  B               loc_1F860; jumptable 0001F5E0 cases 3,17
0001f5f8  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f5fc  B               loc_1F86C; jumptable 0001F5E0 cases 5,18
0001f600  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f604  B               loc_1F884; jumptable 0001F5E0 cases 7,16
0001f608  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f60c  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f610  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f614  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f618  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f61c  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f620  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f624  B               loc_1F878; jumptable 0001F5E0 cases 1,15
0001f628  B               loc_1F884; jumptable 0001F5E0 cases 7,16
0001f62c  B               loc_1F860; jumptable 0001F5E0 cases 3,17
0001f630  B               loc_1F86C; jumptable 0001F5E0 cases 5,18
0001f634  SUBS            R12, R2, #0xE000
0001f638  SUBSGE          R12, R12, #0x29 ; ')'
0001f63c  MOV             R0, #0
0001f640  MOV             R1, #1
0001f644  BEQ             loc_1F7A4
0001f648  BGT             loc_1F6D0
0001f64c  SUB             R12, R2, #0xE000
0001f650  SUBS            R12, R12, #0x26 ; '&'
0001f654  BEQ             loc_1F6E8
0001f658  SUB             R12, R2, #0xE000
0001f65c  SUBS            R12, R12, #0x28 ; '('
0001f660  LDRBEQ          R2, [R4,#0x84D]
0001f664  CMPEQ           R2, #0
0001f668  LDRBEQ          R2, [R4,#0x84C]
0001f66c  CMPEQ           R2, #0
0001f670  LDRBEQ          R2, [R4,#0x870]
0001f674  CMPEQ           R2, #0
0001f678  LDRBEQ          R2, [R4,#0x85C]
0001f67c  CMPEQ           R2, #0
0001f680  BNE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f684  LDR             R2, [R4,#0x8B0]
0001f688  ADD             R12, R2, #0x200
0001f68c  LDRSH           R3, [R12,#0x1C]
0001f690  CMP             R3, #0
0001f694  BLE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f698  ADD             R2, R2, #0x300
0001f69c  LDRH            R2, [R2,#0x1E]
0001f6a0  AND             R3, R2, #0xFF
0001f6a4  ADD             R2, R3, #1
0001f6a8  AND             R2, R2, #0xFF
0001f6ac  STRB            R3, [R4,#0x84E]
0001f6b0  STRB            R2, [R4,#0x84F]
0001f6b4  LDRSH           R12, [R12,#0x1C]
0001f6b8  CMP             R2, R12
0001f6bc  STRBGE          R0, [R4,#0x84F]
0001f6c0  LDRB            R0, [R4,#0x84F]
0001f6c4  CMP             R3, R0
0001f6c8  STRBNE          R1, [R4,#0x84C]
0001f6cc  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f6d0  SUB             R12, R2, #0xE000
0001f6d4  SUBS            R12, R12, #0x32 ; '2'
0001f6d8  BEQ             loc_1F7A4
0001f6dc  SUB             R12, R2, #0xE000
0001f6e0  SUBS            R12, R12, #0x35 ; '5'
0001f6e4  BNE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f6e8  LDRB            R0, [R4,#0x852]
0001f6ec  CMP             R0, #0
0001f6f0  LDRBEQ          R0, [R4,#0x84D]
0001f6f4  CMPEQ           R0, #0
0001f6f8  LDRBEQ          R0, [R4,#0x851]
0001f6fc  CMPEQ           R0, #0
0001f700  LDRBEQ          R0, [R4,#0x84C]
0001f704  CMPEQ           R0, #0
0001f708  LDRBEQ          R0, [R4,#0x85C]
0001f70c  CMPEQ           R0, #0
0001f710  BNE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f714  STRB            R1, [R4,#0x851]
0001f718  LDR             R1, [R4,#0x8B0]
0001f71c  LDR             R0, =0x31E
0001f720  LDRSH           R5, [R0,R1]
0001f724  CMP             R5, #0
0001f728  MOVGE           R0, #0x21C
0001f72c  LDRSHGE         R0, [R0,R1]
0001f730  CMPGE           R0, R5
0001f734  BLE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f738  MOV             R2, R5,LSL#16
0001f73c  MOV             R2, R2,LSR#16
0001f740  MOV             R0, SP
0001f744  BL              sub_12F30
0001f748  LDRB            R0, [SP,#0x14+var_8]
0001f74c  CMP             R0, #0
0001f750  LDREQ           R0, [R4,#0x8B0]
0001f754  ADDEQ           R1, R0, R5,LSL#3
0001f758  LDRBEQ          R1, [R1,#0x225]
0001f75c  CMPEQ           R1, #0
0001f760  BNE             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f764  LDR             R0, [R0,#0x24]
0001f768  CMP             R0, #0
0001f76c  BGT             def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f770  LDR             R0, =(start - 0x1F77C)
0001f774  ADD             R0, PC, R0; start
0001f778  LDR             R0, [R0,#(dword_8 - 0xC)]
0001f77c  ADR             LR, loc_1F788
0001f780  LDR             R0, [R0,#0xC0]
0001f784  BX              R0
0001f788  LDR             R0, [R0,#0x760]
0001f78c  MOV             R3, #0
0001f790  MOV             R1, #0
0001f794  ADD             R0, R0, #0x220
0001f798  LDR             R2, =0x1F59
0001f79c  BL              sub_E00
0001f7a0  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7a4  LDRB            R1, [R4,#0x870]
0001f7a8  CMP             R1, #1
0001f7ac  STRBEQ          R0, [R4,#0x870]
0001f7b0  MOVEQ           R0, R4
0001f7b4  MOVEQ           R1, #0
0001f7b8  BLEQ            sub_21FB4
0001f7bc  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7c0  CMP             R0, #0x12; switch 19 cases
0001f7c4  ADDLS           PC, PC, R0,LSL#2; switch jump
0001f7c8  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7cc  B               loc_1F848; jumptable 0001F7C4 case 0
0001f7d0  B               loc_1F830; jumptable 0001F7C4 cases 1,15
0001f7d4  B               loc_1F854; jumptable 0001F7C4 case 2
0001f7d8  B               loc_1F818; jumptable 0001F7C4 cases 3,17
0001f7dc  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7e0  B               loc_1F824; jumptable 0001F7C4 cases 5,18
0001f7e4  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7e8  B               loc_1F83C; jumptable 0001F7C4 cases 7,16
0001f7ec  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7f0  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7f4  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7f8  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f7fc  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f800  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f804  B               def_1F5E0; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f808  B               loc_1F830; jumptable 0001F7C4 cases 1,15
0001f80c  B               loc_1F83C; jumptable 0001F7C4 cases 7,16
0001f810  B               loc_1F818; jumptable 0001F7C4 cases 3,17
0001f814  B               loc_1F824; jumptable 0001F7C4 cases 5,18
0001f818  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 cases 3,17
0001f81c  ORR             R0, R0, #0x100
0001f820  B               loc_1F8A4
0001f824  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 cases 5,18
0001f828  ORR             R0, R0, #0x200
0001f82c  B               loc_1F8A4
0001f830  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 cases 1,15
0001f834  ORR             R0, R0, #1
0001f838  B               loc_1F8A4
0001f83c  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 cases 7,16
0001f840  ORR             R0, R0, #2
0001f844  B               loc_1F8A4
0001f848  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 case 0
0001f84c  ORR             R0, R0, #4
0001f850  B               loc_1F8A4
0001f854  LDR             R0, [R4,#0x844]; jumptable 0001F7C4 case 2
0001f858  ORR             R0, R0, #8
0001f85c  B               loc_1F8A4
0001f860  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 cases 3,17
0001f864  BIC             R0, R0, #0x100
0001f868  B               loc_1F8A4
0001f86c  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 cases 5,18
0001f870  BIC             R0, R0, #0x200
0001f874  B               loc_1F8A4
0001f878  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 cases 1,15
0001f87c  BIC             R0, R0, #1
0001f880  B               loc_1F8A4
0001f884  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 cases 7,16
0001f888  BIC             R0, R0, #2
0001f88c  B               loc_1F8A4
0001f890  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 case 0
0001f894  BIC             R0, R0, #4
0001f898  B               loc_1F8A4
0001f89c  LDR             R0, [R4,#0x844]; jumptable 0001F5E0 case 2
0001f8a0  BIC             R0, R0, #8
0001f8a4  STR             R0, [R4,#0x844]
0001f8a8  ADD             SP, SP, #0x14; jumptable 0001F5E0 default case, cases 4,6,8-14
0001f8ac  POP             {R4,R5,LR}
0001f8b0  MOV             R0, #1
0001f8b4  BX              LR
