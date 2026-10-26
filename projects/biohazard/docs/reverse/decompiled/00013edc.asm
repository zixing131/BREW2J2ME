00013edc  PUSH            {R4,LR}
00013ee0  SUB             R12, R1, #0x100
00013ee4  SUBS            R12, R12, #2
00013ee8  MOV             R4, R0
00013eec  BNE             def_13EF8; jumptable 00013EF8 default case
00013ef0  LDRB            R0, [R4,#0x10]
00013ef4  CMP             R0, #4; switch 5 cases
00013ef8  ADDLS           PC, PC, R0,LSL#2; switch jump
00013efc  B               def_13EF8; jumptable 00013EF8 default case
00013f00  B               loc_13F14; jumptable 00013EF8 case 0
00013f04  B               loc_13F84; jumptable 00013EF8 case 1
00013f08  B               loc_13F9C; jumptable 00013EF8 case 2
00013f0c  B               loc_14014; jumptable 00013EF8 cases 3,4
00013f10  B               loc_14014; jumptable 00013EF8 cases 3,4
00013f14  SUB             R12, R2, #0xE000; jumptable 00013EF8 case 0
00013f18  SUBS            R12, R12, #0x36 ; '6'
00013f1c  MOV             R0, #3
00013f20  BNE             loc_13F64
00013f24  LDR             R2, [R4,#0xC]
00013f28  LDR             R1, [R4,#4]
00013f2c  ADD             R2, R2, R2,LSL#2
00013f30  ADD             R1, R1, R2,LSL#2
00013f34  LDRB            R2, [R1,#7]
00013f38  LDR             R3, [R4,#8]
00013f3c  LDRB            R2, [R3,R2]
00013f40  LDRB            R1, [R1,#6]
00013f44  CMP             R2, R1
00013f48  BCC             loc_13F54
00013f4c  CMP             R1, #0
00013f50  BNE             loc_13F94
00013f54  MOV             R0, R4
00013f58  BL              sub_24D7C
00013f5c  MOV             R0, #1
00013f60  B               loc_13F94
00013f64  SUB             R12, R2, #0xE000
00013f68  SUBS            R12, R12, #0x21 ; '!'
00013f6c  SUBNE           R12, R2, #0xE000
00013f70  SUBSNE          R12, R12, #0x37 ; '7'
00013f74  LDREQ           R1, =(off_3EC+1)
00013f78  STREQ           R1, [R4,#0x158]
00013f7c  BEQ             loc_13F94
00013f80  B               def_13EF8; jumptable 00013EF8 default case
00013f84  SUB             R12, R2, #0xE000; jumptable 00013EF8 case 1
00013f88  SUBS            R12, R12, #0x36 ; '6'
00013f8c  BNE             def_13EF8; jumptable 00013EF8 default case
00013f90  MOV             R0, #2
00013f94  STRB            R0, [R4,#0x10]
00013f98  B               def_13EF8; jumptable 00013EF8 default case
00013f9c  SUB             R12, R2, #0xE000; jumptable 00013EF8 case 2
00013fa0  SUBS            R12, R12, #0x36 ; '6'
00013fa4  BNE             def_13EF8; jumptable 00013EF8 default case
00013fa8  LDR             R0, [R4,#0xC]
00013fac  MOV             R1, R0,LSL#16
00013fb0  MOV             R1, R1,ASR#16
00013fb4  LDR             R0, [R4]
00013fb8  BL              sub_1293C
00013fbc  LDR             R0, [R4]
00013fc0  LDR             R1, [R4,#0xC]
00013fc4  LDR             R0, [R0]
00013fc8  ADD             R0, R0, R1
00013fcc  LDRB            R1, [R0,#4]!
00013fd0  ADD             R1, R1, #1
00013fd4  STRB            R1, [R0]
00013fd8  LDR             R1, [R4]
00013fdc  LDR             R2, [R4,#0xC]
00013fe0  LDR             R1, [R1]
00013fe4  MOV             R0, #0
00013fe8  ADD             R1, R1, R2
00013fec  STRB            R0, [R1,#0x18]
00013ff0  LDR             R0, =(start - 0x13FFC)
00013ff4  ADD             R0, PC, R0; start
00013ff8  LDR             R0, [R0,#(dword_8 - 0xC)]
00013ffc  ADR             LR, loc_14008
00014000  LDR             R0, [R0,#0xC0]
00014004  BX              R0
00014008  MOV             R1, #8
0001400c  BL              sub_24190
00014010  B               loc_14020
00014014  SUB             R12, R2, #0xE000; jumptable 00013EF8 cases 3,4
00014018  SUBS            R12, R12, #0x36 ; '6'
0001401c  BNE             def_13EF8; jumptable 00013EF8 default case
00014020  MOV             R0, #0
00014024  POP             {R4,LR}
00014028  BX              LR
0001402c  MOV             R0, #1; jumptable 00013EF8 default case
00014030  B               loc_14024
