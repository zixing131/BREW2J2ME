00014dec  PUSH            {R0-R6,LR}
00014df0  MOV             R4, R0
00014df4  LDRB            R0, [R0,#0xC]
00014df8  SUB             SP, SP, #8
00014dfc  MOV             R6, #0
00014e00  MOV             R5, #0
00014e04  CMP             R0, #0
00014e08  BEQ             loc_14FE0
00014e0c  LDRB            R0, [R4,#0xF]
00014e10  CMP             R0, #0
00014e14  ADDEQ           R3, SP, #0x18+var_4
00014e18  ADDEQ           R2, SP, #0x18+var_8
00014e1c  ADDEQ           R1, SP, #0x18+var_C
00014e20  MOVEQ           R0, R4
00014e24  BLEQ            sub_21E14
00014e28  LDRH            R0, [SP,#0x18+var_C]
00014e2c  CMP             R0, #0x100
00014e30  BNE             loc_14FE0
00014e34  LDRH            R1, [SP,#0x18+var_8]
00014e38  MOV             R0, #0
00014e3c  SUBS            R12, R1, #0xE000
00014e40  SUBSGE          R12, R12, #0x28 ; '('
00014e44  BEQ             loc_14EE4; jumptable 00014E58 cases 0-6
00014e48  BGT             loc_14E7C
00014e4c  SUB             R1, R1, #0xE000
00014e50  SUB             R1, R1, #0x21 ; '!'
00014e54  CMP             R1, #6; switch 7 cases
00014e58  ADDLS           PC, PC, R1,LSL#2; switch jump
00014e5c  B               def_14E58; jumptable 00014E58 default case
00014e60  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e64  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e68  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e6c  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e70  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e74  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e78  B               loc_14EE4; jumptable 00014E58 cases 0-6
00014e7c  SUBS            R12, R1, #0xE000
00014e80  SUBSGE          R12, R12, #0x2C ; ','
00014e84  MOVEQ           R5, #0x23 ; '#'
00014e88  BEQ             loc_14F8C
00014e8c  BGT             loc_14EB8
00014e90  SUB             R12, R1, #0xE000
00014e94  SUBS            R12, R12, #0x29 ; ')'
00014e98  SUBNE           R12, R1, #0xE000
00014e9c  SUBSNE          R12, R12, #0x2A ; '*'
00014ea0  BEQ             loc_14EE4; jumptable 00014E58 cases 0-6
00014ea4  SUB             R12, R1, #0xE000
00014ea8  SUBS            R12, R12, #0x2B ; '+'
00014eac  BNE             loc_14FE0
00014eb0  MOV             R5, #0x2A ; '*'
00014eb4  B               loc_14F8C
00014eb8  SUB             R12, R1, #0xE000
00014ebc  SUBS            R12, R12, #0x30 ; '0'
00014ec0  BEQ             loc_14EFC
00014ec4  SUB             R12, R1, #0xE000
00014ec8  SUBS            R12, R12, #0x35 ; '5'
00014ecc  BEQ             loc_14F34
00014ed0  SUB             R12, R1, #0xE000
00014ed4  SUBS            R12, R12, #0x45 ; 'E'
00014ed8  BNE             loc_14FE0
00014edc  MOV             R5, #0x2E ; '.'
00014ee0  B               loc_14F8C
00014ee4  LDRH            R1, [SP,#0x18+var_8]; jumptable 00014E58 cases 0-6
00014ee8  SUB             R1, R1, #0xDF00
00014eec  SUB             R1, R1, #0xF1
00014ef0  MOV             R5, R1,LSL#16
00014ef4  MOV             R5, R5,LSR#16
00014ef8  B               loc_14F8C
00014efc  LDRB            R1, [R4,#0xE]
00014f00  CMP             R1, #0
00014f04  STRHNE          R0, [R4,#0x74]
00014f08  STRBNE          R0, [R4,#0xE]
00014f0c  STRHNE          R0, [R4,#0x10]
00014f10  BNE             loc_14FD4
00014f14  LDRH            R1, [R4,#0x74]
00014f18  CMP             R1, #0
00014f1c  SUBNE           R1, R1, #1
00014f20  MOVNE           R1, R1,LSL#16
00014f24  MOVNE           R1, R1,LSR#16
00014f28  STRHNE          R1, [R4,#0x74]
00014f2c  BNE             loc_14FCC
00014f30  B               loc_14FE0
00014f34  LDRB            R0, [R4,#0xF]
00014f38  CMP             R0, #0
00014f3c  BNE             loc_14FE0
00014f40  LDR             R0, =(start - 0x14F4C)
00014f44  ADD             R0, PC, R0; start
00014f48  LDR             R0, [R0,#(dword_8 - 0xC)]
00014f4c  LDR             R0, [R0,#0xC0]
00014f50  BLX             R0
00014f54  MOV             R3, #0
00014f58  LDR             R1, [R0,#4]
00014f5c  STR             R3, [SP,#0x18+var_18]
00014f60  STR             R3, [SP,#0x18+var_14]
00014f64  LDR             R0, [R4]
00014f68  LDR             R3, =0x7064
00014f6c  LDR             R2, [R0]
00014f70  LDR             R12, [R2,#0x54]
00014f74  MOV             R2, R1
00014f78  MOV             R1, #3
00014f7c  BLX             R12
00014f80  B               loc_14FAC
00014f84  CMP             R6, #0; jumptable 00014E58 default case
00014f88  BEQ             loc_14FE0
00014f8c  LDRB            R1, [R4,#0xE]
00014f90  CMP             R1, #0
00014f94  STRHNE          R0, [R4,#0x74]
00014f98  STRBNE          R0, [R4,#0xE]
00014f9c  LDRH            R1, [R4,#0x74]
00014fa0  LDRH            R2, [R4,#0x72]
00014fa4  CMP             R1, R2
00014fa8  BCC             loc_14FB8
00014fac  MOV             R0, #1
00014fb0  ADD             SP, SP, #0x18
00014fb4  POP             {R4-R6,PC}
00014fb8  ADD             R2, R1, #1
00014fbc  STRH            R2, [R4,#0x74]
00014fc0  ADD             R1, R4, R1,LSL#1
00014fc4  STRH            R5, [R1,#0x10]
00014fc8  LDRH            R1, [R4,#0x74]
00014fcc  ADD             R1, R4, R1,LSL#1
00014fd0  STRH            R0, [R1,#0x10]
00014fd4  MOV             R0, R4
00014fd8  BL              sub_D204
00014fdc  B               loc_14FAC
00014fe0  MOV             R0, #0
00014fe4  B               loc_14FB0
