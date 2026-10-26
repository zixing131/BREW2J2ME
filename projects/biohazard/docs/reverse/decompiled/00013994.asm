00013994  PUSH            {R1-R3,LR}
00013998  LDR             R12, [R0,#0x13C]
0001399c  CMP             R12, #1
000139a0  SUBEQ           R12, R2, #0x100
000139a4  SUBSEQ          R12, R12, #2
000139a8  MOVNE           R0, #0
000139ac  BNE             loc_13A80
000139b0  SUB             R2, R3, #0xE000
000139b4  SUB             R2, R2, #0x21 ; '!'
000139b8  CMP             R2, #0x16; switch 23 cases
000139bc  ADDLS           PC, PC, R2,LSL#2; switch jump
000139c0  B               def_139BC; jumptable 000139BC default case, cases 12-15
000139c4  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139c8  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139cc  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139d0  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139d4  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139d8  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139dc  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139e0  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139e4  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139e8  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139ec  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139f0  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
000139f4  B               def_139BC; jumptable 000139BC default case, cases 12-15
000139f8  B               def_139BC; jumptable 000139BC default case, cases 12-15
000139fc  B               def_139BC; jumptable 000139BC default case, cases 12-15
00013a00  B               def_139BC; jumptable 000139BC default case, cases 12-15
00013a04  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a08  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a0c  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a10  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a14  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a18  B               loc_13A20; jumptable 000139BC cases 0-11,16-21
00013a1c  B               loc_13A64; jumptable 000139BC case 22
00013a20  ADD             R1, R0, #0x100; jumptable 000139BC cases 0-11,16-21
00013a24  LDRH            R2, [R1,#0x7C]
00013a28  CMP             R2, #0
00013a2c  MOVEQ           R2, #1
00013a30  STRHEQ          R2, [R1,#0x7C]
00013a34  MOVEQ           R1, #0
00013a38  STREQ           R1, [R0,#0x140]
00013a3c  BEQ             def_139BC; jumptable 000139BC default case, cases 12-15
00013a40  MOV             R3, #0xFFFFFFFF
00013a44  MOV             R2, #1
00013a48  STMEA           SP, {R2,R3}
00013a4c  LDR             R3, =(sub_1822C - 0x13A58)
00013a50  ADD             R3, PC, R3; sub_1822C
00013a54  MOV             R2, #4
00013a58  MOV             R1, #5
00013a5c  BL              sub_103B4
00013a60  B               def_139BC; jumptable 000139BC default case, cases 12-15
00013a64  LDR             R0, [R1,#0xC]; jumptable 000139BC case 22
00013a68  ADR             LR, def_139BC; jumptable 000139BC default case, cases 12-15
00013a6c  LDR             R1, [R0]
00013a70  LDR             R2, [R1,#0x18]
00013a74  MOV             R1, #0
00013a78  BX              R2
00013a7c  MOV             R0, #1; jumptable 000139BC default case, cases 12-15
00013a80  POP             {R1-R3,LR}
00013a84  BX              LR
