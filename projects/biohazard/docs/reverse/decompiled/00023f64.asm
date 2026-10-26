00023f64  PUSH            {R4,LR}
00023f68  SUB             SP, SP, #0x2B0
00023f6c  MOV             R1, #0
00023f70  STR             R1, [SP,#0x2B0+var_2B0]
00023f74  LDR             R0, [R0]
00023f78  MOV             R2, SP
00023f7c  LDR             R1, [R0]
00023f80  LDR             R3, [R1,#8]
00023f84  LDR             R1, =0x1001050
00023f88  BLX             R3
00023f8c  CMP             R0, #0
00023f90  MOVNE           R0, #0
00023f94  STRNE           R0, [SP,#0x2B0+var_2B0]
00023f98  BNE             loc_2407C
00023f9c  LDR             R0, [SP,#0x2B0+var_2B0]
00023fa0  MOV             R2, #0x2A8
00023fa4  LDR             R1, [R0]
00023fa8  LDR             R3, [R1,#0x14]
00023fac  ADD             R1, SP, #0x2B0+var_2AC
00023fb0  BLX             R3
00023fb4  MOVS            R4, R0
00023fb8  MOVNE           R4, #0
00023fbc  BNE             loc_24068
00023fc0  LDR             R0, [SP,#0x2B0+var_298]
00023fc4  CMP             R0, #0
00023fc8  BEQ             loc_24068
00023fcc  CMP             R0, #1
00023fd0  BEQ             loc_23FF8
00023fd4  CMP             R0, #2
00023fd8  BNE             loc_24068
00023fdc  LDRH            R0, [SP,#0x2B0+var_294]
00023fe0  SUB             R0, R0, #0x3500
00023fe4  SUBS            R12, R0, #0x200
00023fe8  SUBSCS          R12, R12, #0xFF
00023fec  BHI             loc_24064
00023ff0  MOV             R4, #1
00023ff4  B               loc_24068
00023ff8  LDR             R4, =(start - 0x24004)
00023ffc  ADD             R4, PC, R4; start
00024000  LDR             R0, [R4,#(dword_8 - 0xC)]
00024004  MOV             R2, #3
00024008  LDR             R3, [R0,#4]
0002400c  ADD             R0, SP, #0x2B0+var_4
00024010  MOV             R1, #0
00024014  BLX             R3
00024018  LDR             R0, [R4,#(dword_8 - 0xC)]
0002401c  MOV             R2, #3
00024020  LDR             R3, [R0]
00024024  ADD             R0, SP, #0x2B0+var_4
00024028  ADD             R1, SP, #0x2B0+var_294
0002402c  BLX             R3
00024030  LDRB            R0, [SP,#0x2B0+var_4]
00024034  MOV             R3, #0x64 ; 'd'
00024038  AND             R2, R0, #0xF
0002403c  LDRB            R0, [SP,#0x2B0+var_4]
00024040  LDRB            R1, [SP,#0x2B0+var_3]
00024044  SMULBB          R2, R2, R3
00024048  MOV             R0, R0,LSR#4
0002404c  ADD             R0, R0, R0,LSL#2
00024050  ADD             R0, R2, R0,LSL#1
00024054  AND             R1, R1, #0xF
00024058  ADD             R0, R0, R1
0002405c  CMP             R0, #0x1CC
00024060  BEQ             loc_23FF0
00024064  MOV             R4, #2
00024068  LDR             R0, [SP,#0x2B0+var_2B0]
0002406c  LDR             R1, [R0]
00024070  LDR             R1, [R1,#4]
00024074  BLX             R1
00024078  MOV             R0, R4
0002407c  ADD             SP, SP, #0x2B0
00024080  POP             {R4,PC}
