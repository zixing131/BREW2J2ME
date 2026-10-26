0x711c8 PUSH            {R4-R7,LR}
0x711ca LDR             R3, =byte_1535F30
0x711cc LDRB            R0, [R3]
0x711ce LDR             R4, =dword_1536348
0x711d0 LSLS            R3, R0, #2
0x711d2 LDR             R3, [R3,R4]
0x711d4 LDRB            R3, [R3]
0x711d6 SUB             SP, SP, #8
0x711d8 CMP             R3, #4
0x711da BNE             loc_711E4
0x711dc LDR             R3, =dword_153653C
0x711de LDR             R1, [R3]
0x711e0 BL              sub_703B4
0x711e4 MOVS            R7, #0
0x711e6 STR             R4, [SP,#8+var_4]
0x711e8 B               loc_712BE
0x711ea LDR             R3, =dword_153653C
0x711ec LDR             R2, [SP,#8+var_4]
0x711ee LDR             R1, [R3]
0x711f0 LDR             R4, [R2]
0x711f2 MOVS            R0, R7
0x711f4 BL              sub_703B4
0x711f8 MOVS            R0, R7
0x711fa BL              sub_6EAD8
0x711fe LDRB            R3, [R4]
0x71200 CMP             R3, #7; switch 8 cases
0x71202 BHI             def_7120A; jumptable 0007120A default case, cases 1,5
0x71204 LDR             R2, =jpt_7120A
0x71206 LSLS            R3, R3, #2
0x71208 LDR             R3, [R3,R2]
0x7120a MOV             PC, R3; switch jump
0x7120c MOVS            R0, R7; jumptable 0007120A case 0
0x7120e BL              sub_6EB20
0x71212 MOVS            R0, R7
0x71214 BL              sub_6FB64
0x71218 MOVS            R0, R7
0x7121a BL              sub_6F278
0x7121e B               def_7120A; jumptable 0007120A default case, cases 1,5
0x71220 LDR             R4, =byte_1535F30; jumptable 0007120A case 4
0x71222 LDRB            R0, [R4]
0x71224 BL              sub_6ECC0
0x71228 LDRB            R0, [R4]
0x7122a BL              sub_6F870
0x7122e LDR             R5, =dword_1501C04
0x71230 LDR             R2, [R5]
0x71232 CMP             R2, #0xF0
0x71234 BNE             loc_71256
0x71236 MOVS            R6, #0
0x71238 MOVS            R0, #0
0x7123a MOVS            R1, #0
0x7123c MOVS            R3, #0x28 ; '('
0x7123e STR             R6, [SP,#8+var_8]
0x71240 LDR             R4, =(sub_6A854+1)
0x71242 BL              sub_71336
0x71246 LDR             R3, =dword_1501BF0
0x71248 LDR             R1, [R3]
0x7124a LDR             R2, [R5]
0x7124c SUBS            R1, #0x28 ; '('
0x7124e MOVS            R0, #0
0x71250 MOVS            R3, #0x28 ; '('
0x71252 STR             R6, [SP,#8+var_8]
0x71254 B               loc_71280
0x71256 MOVS            R3, #0x140
0x7125a CMP             R2, R3
0x7125c BNE             def_7120A; jumptable 0007120A default case, cases 1,5
0x7125e LDR             R6, =dword_1501BF0
0x71260 MOVS            R2, #0
0x71262 LDR             R3, [R6]
0x71264 MOVS            R0, #0
0x71266 STR             R2, [SP,#8+var_8]
0x71268 MOVS            R1, #0
0x7126a MOVS            R2, #0x28 ; '('
0x7126c LDR             R4, =(sub_6A854+1)
0x7126e BL              sub_71336
0x71272 LDR             R0, [R5]
0x71274 MOVS            R2, #0
0x71276 LDR             R3, [R6]
0x71278 SUBS            R0, #0x28 ; '('
0x7127a STR             R2, [SP,#8+var_8]
0x7127c MOVS            R1, #0
0x7127e MOVS            R2, #0x28 ; '('
0x71280 BL              sub_71336
0x71284 B               def_7120A; jumptable 0007120A default case, cases 1,5
0x71286 MOVS            R0, R7; jumptable 0007120A case 2
0x71288 BL              sub_6EE78
0x7128c MOVS            R0, R7
0x7128e BL              sub_6F48C
0x71292 B               def_7120A; jumptable 0007120A default case, cases 1,5
0x71294 MOVS            R0, R7; jumptable 0007120A case 6
0x71296 BL              sub_6EF60
0x7129a MOVS            R0, R7
0x7129c BL              sub_6F1D0
0x712a0 B               def_7120A; jumptable 0007120A default case, cases 1,5
0x712a2 MOVS            R0, R7; jumptable 0007120A case 7
0x712a4 BL              sub_6EFA0
0x712a8 MOVS            R0, R7
0x712aa BL              sub_6F004
0x712ae B               def_7120A; jumptable 0007120A default case, cases 1,5
0x712b0 MOVS            R0, R7; jumptable 0007120A case 3
0x712b2 BL              sub_70184
0x712b6 LDR             R3, [SP,#8+var_4]; jumptable 0007120A default case, cases 1,5
0x712b8 ADDS            R3, #4
0x712ba STR             R3, [SP,#8+var_4]
0x712bc ADDS            R7, #1
0x712be LDR             R4, =unk_15364FC
0x712c0 LDRB            R3, [R4,#(byte_15364FD - 0x15364FC)]
0x712c2 CMP             R7, R3
0x712c4 BLT             loc_711EA
0x712c6 LDR             R2, =byte_1536760
0x712c8 LDRB            R3, [R2]
0x712ca CMP             R3, #7
0x712cc BNE             loc_712D2
0x712ce MOVS            R3, #1
0x712d0 STRB            R3, [R2]
0x712d2 LDR             R0, =dword_153653C
0x712d4 LDRH            R3, [R4,#(word_15364FE - 0x15364FC)]
0x712d6 LDR             R1, [R0]
0x712d8 CMP             R1, R3
0x712da BNE             loc_712E2
0x712dc BL              sub_711B4
0x712e0 B               loc_712EE
0x712e2 LDRB            R3, [R2]
0x712e4 CMP             R3, #1
0x712e6 BNE             loc_712EE
0x712e8 ADDS            R3, R1, #1
0x712ea STR             R3, [R0]
0x712ec B               loc_71304
0x712ee LDR             R2, =byte_1536760
0x712f0 LDRB            R3, [R2]
0x712f2 CMP             R3, #4
0x712f4 BNE             loc_712FC
0x712f6 MOVS            R3, #3
0x712f8 STRB            R3, [R2]
0x712fa B               loc_71304
0x712fc CMP             R3, #6
0x712fe BNE             loc_71304
0x71300 BL              sub_71184
0x71304 BL              sub_6F06C
0x71308 ADD             SP, SP, #8
0x7130a POP             {R4-R7}
0x7130c POP             {R0}
0x7130e BX              R0