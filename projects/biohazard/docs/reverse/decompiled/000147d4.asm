000147d4  PUSH            {R4-R9,LR}
000147d8  LDR             R6, =(start - 0x147F0)
000147dc  SUB             SP, SP, #0x3C
000147e0  MOV             R9, R1
000147e4  MOV             R7, R0
000147e8  ADD             R6, PC, R6; start
000147ec  LDR             R0, [R6,#(dword_8 - 0xC)]
000147f0  LDR             R1, [R0,#0x68]
000147f4  MOV             R0, #0x1F8
000147f8  BLX             R1
000147fc  MOVS            R4, R0
00014800  MOVEQ           R0, #1
00014804  BEQ             loc_14938
00014808  STR             R7, [R4]
0001480c  LDR             R0, [R6,#(dword_8 - 0xC)]
00014810  LDR             R0, [R0,#0xAC]
00014814  BLX             R0
00014818  STR             R0, [R4,#0xDC]
0001481c  MOV             R0, #0x40 ; '@'
00014820  STRH            R0, [R4,#0x30]
00014824  LDR             R0, [R4]
00014828  LDR             R1, [R0]
0001482c  LDR             R2, [R1,#0x10]
00014830  ADD             R1, R4, #4
00014834  BLX             R2
00014838  LDR             R0, [R4]
0001483c  ADD             R2, SP, #0x3C+var_20
00014840  LDR             R1, [R0]
00014844  LDR             R3, [R1,#8]
00014848  LDR             R1, =0x1001007
0001484c  BLX             R3
00014850  CMP             R0, #0
00014854  BNE             loc_14898
00014858  LDR             R0, [SP,#0x3C+var_20]
0001485c  LDR             R1, [R0]
00014860  LDR             R2, [R1,#0xC]
00014864  ADD             R1, SP, #0x3C+var_1C
00014868  BLX             R2
0001486c  CMP             R0, #0
00014870  LDREQ           R0, [R6,#(dword_8 - 0xC)]
00014874  MOVEQ           R2, #0x14
00014878  LDREQ           R3, [R0,#0x14C]
0001487c  ADDEQ           R0, R4, #0x48 ; 'H'
00014880  ADDEQ           R1, SP, #0x3C+var_1C
00014884  BLXEQ           R3
00014888  LDR             R0, [SP,#0x3C+var_20]
0001488c  LDR             R1, [R0]
00014890  LDR             R1, [R1,#4]
00014894  BLX             R1
00014898  LDR             R0, [R6,#(dword_8 - 0xC)]
0001489c  LDR             R1, [R0,#0x68]
000148a0  MOV             R0, #0x1B8
000148a4  BLX             R1
000148a8  BL              sub_107C
000148ac  LDR             R1, [R4,#0xDC]
000148b0  ADD             R1, R0, R1
000148b4  STR             R1, [R4,#0xE0]
000148b8  MOV             R0, R4
000148bc  BL              sub_1058
000148c0  MOV             R5, R0
000148c4  LDR             R0, [R4]
000148c8  ADD             R2, R5, #0xC
000148cc  LDR             R1, [R0]
000148d0  LDR             R3, [R1,#8]
000148d4  LDR             R1, =0x1001001
000148d8  BLX             R3
000148dc  CMP             R0, #0
000148e0  BNE             loc_14934
000148e4  LDR             R0, [R5,#0xC]
000148e8  ADD             R3, SP, #0x3C+var_8
000148ec  LDR             R1, [R0]
000148f0  ADD             R2, SP, #0x3C+var_4
000148f4  LDR             R12, [R1,#8]
000148f8  MOV             R1, #0x8000
000148fc  BLX             R12
00014900  STR             R0, [R4,#0x44]
00014904  MOV             R0, R4
00014908  BL              sub_255E8
0001490c  CMP             R0, #0
00014910  BNE             loc_14934
00014914  LDR             R0, [R4]
00014918  ADD             R2, R5, #0x88
0001491c  LDR             R1, [R0]
00014920  LDR             R3, [R1,#8]
00014924  LDR             R1, =0x1005001
00014928  BLX             R3
0001492c  CMP             R0, #0
00014930  BEQ             loc_14940
00014934  MOV             R0, #3
00014938  ADD             SP, SP, #0x3C ; '<'
0001493c  POP             {R4-R9,PC}
00014940  LDR             R0, [R6,#(dword_8 - 0xC)]
00014944  LDR             R0, [R0,#0xC0]
00014948  BLX             R0
0001494c  LDR             R6, [R0,#4]
00014950  LDR             R0, [R7]
00014954  ADD             R2, SP, #0x3C+var_34
00014958  LDR             R3, [R0,#0xC]
0001495c  MOV             R0, R7
00014960  MOV             R1, R6
00014964  BLX             R3
00014968  CMP             R0, #1
0001496c  BNE             loc_14994
00014970  MOV             R3, #0x78 ; 'x'
00014974  STR             R3, [SP,#0x3C+var_3C]
00014978  LDRH            R2, [SP,#0x3C+var_2C]
0001497c  LDR             R1, [SP,#0x3C+var_30]
00014980  LDR             R0, [R7]
00014984  ADD             R3, R4, #0x5C ; '\'
00014988  LDR             R12, [R0,#0x44]
0001498c  MOV             R0, R7
00014990  BLX             R12
00014994  LDR             R0, [R4]
00014998  ADD             R2, SP, #0x3C+var_34
0001499c  LDR             R1, [R0]
000149a0  LDR             R3, [R1,#0xC]
000149a4  MOV             R1, R6
000149a8  BLX             R3
000149ac  MOV             R7, #2
000149b0  MOV             R8, #0
000149b4  CMP             R0, #1
000149b8  BNE             loc_14A64
000149bc  LDR             R0, [R4]
000149c0  LDR             R1, [R0]
000149c4  LDR             R2, [R1,#0xB4]
000149c8  MOV             R1, R6
000149cc  BLX             R2
000149d0  CMP             R0, #0
000149d4  BEQ             loc_14A64
000149d8  LDR             R0, [R4]
000149dc  ADD             R2, SP, #0x3C+var_38
000149e0  LDR             R1, [R0]
000149e4  LDR             R3, [R1,#8]
000149e8  LDR             R1, =0x100100F
000149ec  BLX             R3
000149f0  CMP             R0, #0
000149f4  BNE             loc_14A64
000149f8  LDR             R0, [SP,#0x3C+var_38]
000149fc  MOV             R3, #0
00014a00  LDR             R1, [R0]
00014a04  MOV             R2, #0
00014a08  LDR             R12, [R1,#0x14]
00014a0c  MOV             R1, SP
00014a10  BLX             R12
00014a14  CMP             R0, #5; switch 6 cases
00014a18  ADDLS           PC, PC, R0,LSL#2; switch jump
00014a1c  B               def_14A18; jumptable 00014A18 default case, case 0
00014a20  B               def_14A18; jumptable 00014A18 default case, case 0
00014a24  B               loc_14A38; jumptable 00014A18 cases 1-4
00014a28  B               loc_14A38; jumptable 00014A18 cases 1-4
00014a2c  B               loc_14A38; jumptable 00014A18 cases 1-4
00014a30  B               loc_14A38; jumptable 00014A18 cases 1-4
00014a34  B               loc_14A40; jumptable 00014A18 case 5
00014a38  STR             R8, [R5,#0x1C]; jumptable 00014A18 cases 1-4
00014a3c  B               loc_14A50
00014a40  MOV             R0, #1; jumptable 00014A18 case 5
00014a44  STR             R0, [R5,#0x1C]
00014a48  B               loc_14A50
00014a4c  STR             R7, [R5,#0x1C]; jumptable 00014A18 default case, case 0
00014a50  LDR             R0, [SP,#0x3C+var_38]
00014a54  LDR             R1, [R0]
00014a58  LDR             R1, [R1,#4]
00014a5c  BLX             R1
00014a60  B               loc_14A68
00014a64  STR             R7, [R5,#0x1C]
00014a68  STRB            R8, [R4,#0xD4]
00014a6c  STRB            R8, [R4,#0xD5]
00014a70  STR             R4, [R9]
00014a74  MOV             R0, #0
00014a78  B               loc_14938
