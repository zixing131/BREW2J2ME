00005f24  PUSH            {R1-R7,LR}
00005f28  LDR             R1, [R0,#0xE0]
00005f2c  MOV             R4, R0
00005f30  BL              sub_1058
00005f34  MOV             R5, R0
00005f38  LDR             R0, [R0,#0x20]
00005f3c  LDR             R7, =0x3F3
00005f40  LDR             R1, [R0]
00005f44  CMP             R1, #1
00005f48  BNE             loc_5FAC
00005f4c  LDR             R1, [R0,#0x88]
00005f50  LDR             R2, [R0,#0x1F4]
00005f54  LDR             R6, =0x7D2
00005f58  CMP             R1, R2
00005f5c  LDRNE           R2, [R0,#0x86C]
00005f60  CMPNE           R1, R2
00005f64  BEQ             loc_5F80
00005f68  MOV             R3, #0
00005f6c  STR             R3, [SP,#0xC+var_C]
00005f70  STR             R3, [SP,#0xC+var_8]
00005f74  MOV             R2, #0
00005f78  MOV             R1, R6
00005f7c  B               loc_6014
00005f80  ADD             R1, R0, #0x48 ; 'H'
00005f84  LDR             R0, [R5,#0x10]
00005f88  LDR             R2, =(start - 0x5F98)
00005f8c  ADD             R0, R0, #8
00005f90  ADD             R2, PC, R2; start
00005f94  LDR             R2, [R2,#(dword_8 - 0xC)]
00005f98  LDR             R3, [R2,#0xCC]
00005f9c  MOV             R2, #0x3C ; '<'
00005fa0  BLX             R3
00005fa4  CMP             R0, #0
00005fa8  BEQ             loc_5FC4
00005fac  MOV             R3, #0
00005fb0  STR             R3, [SP,#0xC+var_C]
00005fb4  STR             R3, [SP,#0xC+var_8]
00005fb8  MOV             R2, #0
00005fbc  MOV             R1, R7
00005fc0  B               loc_6014
00005fc4  LDR             R0, [R5,#0x20]
00005fc8  LDR             R1, [R0,#0x88]
00005fcc  CMP             R1, #0
00005fd0  BEQ             loc_5FE8
00005fd4  LDR             R1, [R0,#0x1CC]
00005fd8  CMP             R1, #0
00005fdc  LDRNE           R0, [R0,#0x844]
00005fe0  CMPNE           R0, #0
00005fe4  BEQ             loc_5F68
00005fe8  MOV             R0, R4
00005fec  BL              sub_24110
00005ff0  CMP             R0, #0
00005ff4  MOVEQ           R0, #5
00005ff8  STRBEQ          R0, [R4,#0xD5]
00005ffc  BEQ             locret_601C
00006000  MOV             R3, #0
00006004  STR             R3, [SP,#0xC+var_C]
00006008  STR             R3, [SP,#0xC+var_8]
0000600c  MOV             R2, #0
00006010  MOV             R1, #0x3F0
00006014  MOV             R0, R4
00006018  BL              sub_21CCC
0000601c  POP             {R1-R7,PC}
