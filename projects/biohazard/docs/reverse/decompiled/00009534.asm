00009534  PUSH            {R0-R11,LR}
00009538  SUB             SP, SP, #0x2C
0000953c  LDR             R4, [SP,#0x3C+arg_0]
00009540  ADD             R10, SP, #0x3C+arg_8
00009544  LDM             R10, {R8,R10}
00009548  MOV             R3, #0
0000954c  STR             R3, [SP,#0x3C+var_24]
00009550  MOV             R7, R0
00009554  LDR             R0, [SP,#0x3C+var_4]
00009558  LDR             R9, [SP,#0x3C+arg_10]
0000955c  CMP             R0, #0
00009560  LDREQ           R0, [SP,#0x3C+var_C]
00009564  MOVEQ           R9, #0
00009568  LDRHEQ          R1, [R0]
0000956c  LDRHEQ          R0, [R0,#2]
00009570  BEQ             loc_95A0
00009574  CMP             R9, #0
00009578  LDREQ           R0, [SP,#0x3C+var_4]
0000957c  LDRSHEQ         R9, [R0]
00009580  LDR             R0, [SP,#0x3C+var_4]
00009584  LDRSH           R0, [R0,#4]
00009588  LDR             R1, [SP,#0x3C+var_4]
0000958c  LDRSH           R1, [R1]
00009590  SUB             R1, R9, R1
00009594  SUB             R1, R0, R1
00009598  LDR             R0, [SP,#0x3C+var_4]
0000959c  LDRSH           R0, [R0,#6]
000095a0  LDR             R6, [SP,#0x3C+var_8]
000095a4  LDR             R2, [R8]
000095a8  MOV             R5, R9
000095ac  STR             R2, [SP,#0x3C+var_28]
000095b0  ADD             R2, R9, R1
000095b4  ADD             R1, R6, R0
000095b8  ADD             R0, SP, #0x3C+var_18
000095bc  STM             R0, {R1,R2}
000095c0  B               loc_9830
000095c4  CMP             R0, #0x24 ; '$'
000095c8  ADD             R4, R4, #2
000095cc  BNE             loc_9770
000095d0  LDRH            R0, [R4]
000095d4  CMP             R0, #0x6E ; 'n'
000095d8  CMPNE           R0, #0x4E ; 'N'
000095dc  BNE             loc_9618
000095e0  LDR             R1, [SP,#0x3C+arg_1C]
000095e4  ADD             R4, R4, #2
000095e8  CMP             R1, #1
000095ec  LDRHNE          R0, [R7,#0x30]
000095f0  LDRNE           R1, [SP,#0x3C+arg_18]
000095f4  MOVNE           R5, R9
000095f8  ADDNE           R0, R0, R1
000095fc  ADDNE           R6, R0, R6
00009600  LDREQ           R6, [SP,#0x3C+var_8]
00009604  LDRHEQ          R0, [R7,#0x32]
00009608  LDREQ           R2, [SP,#0x3C+arg_14]
0000960c  ADDEQ           R0, R0, R2
00009610  SUBEQ           R5, R5, R0
00009614  B               loc_9830
00009618  CMP             R0, #0x73 ; 's'
0000961c  CMPNE           R0, #0x53 ; 'S'
00009620  BNE             loc_9660
00009624  MOV             R0, #0
00009628  STR             R0, [SP,#0x3C+var_28]
0000962c  ADD             R4, R4, #2
00009630  MOV             R0, R4
00009634  ADD             R1, SP, #0x3C+var_28
00009638  BL              sub_11E30
0000963c  CMP             R0, #0
00009640  ADDNE           R4, R4, R0,LSL#1
00009644  LDRNE           R0, [R10]
00009648  LDRNE           R1, [SP,#0x3C+var_28]
0000964c  MOVNE           R0, R0,LSR#16
00009650  MOVNE           R0, R0,LSL#16
00009654  ORRNE           R0, R0, R1
00009658  BNE             loc_9738
0000965c  B               loc_9830
00009660  CMP             R0, #0x68 ; 'h'
00009664  CMPNE           R0, #0x48 ; 'H'
00009668  BNE             loc_96A8
0000966c  MOV             R0, #0
00009670  STR             R0, [SP,#0x3C+var_28]
00009674  ADD             R4, R4, #2
00009678  MOV             R0, R4
0000967c  ADD             R1, SP, #0x3C+var_28
00009680  BL              sub_11E30
00009684  CMP             R0, #0
00009688  ADDNE           R4, R4, R0,LSL#1
0000968c  LDRNE           R0, [R8]
00009690  LDRNE           R1, [SP,#0x3C+var_28]
00009694  MOVNE           R0, R0,LSR#16
00009698  MOVNE           R0, R0,LSL#16
0000969c  ORRNE           R0, R0, R1
000096a0  BNE             loc_96EC
000096a4  B               loc_9830
000096a8  CMP             R0, #0x6C ; 'l'
000096ac  CMPNE           R0, #0x4C ; 'L'
000096b0  BNE             loc_96F4
000096b4  MOV             R0, #0
000096b8  STR             R0, [SP,#0x3C+var_28]
000096bc  ADD             R4, R4, #2
000096c0  MOV             R0, R4
000096c4  ADD             R1, SP, #0x3C+var_28
000096c8  BL              sub_11E30
000096cc  CMP             R0, #0
000096d0  BEQ             loc_9830
000096d4  ADD             R4, R4, R0,LSL#1
000096d8  LDR             R0, [R8]
000096dc  LDR             R1, [SP,#0x3C+var_28]
000096e0  MOV             R0, R0,LSL#16
000096e4  MOV             R0, R0,LSR#16
000096e8  ORR             R0, R0, R1,LSL#16
000096ec  STR             R0, [R8]
000096f0  B               loc_9830
000096f4  CMP             R0, #0x62 ; 'b'
000096f8  CMPNE           R0, #0x42 ; 'B'
000096fc  BNE             loc_9740
00009700  MOV             R0, #0
00009704  STR             R0, [SP,#0x3C+var_28]
00009708  ADD             R4, R4, #2
0000970c  MOV             R0, R4
00009710  ADD             R1, SP, #0x3C+var_28
00009714  BL              sub_11E30
00009718  CMP             R0, #0
0000971c  BEQ             loc_9830
00009720  ADD             R4, R4, R0,LSL#1
00009724  LDR             R0, [R10]
00009728  LDR             R1, [SP,#0x3C+var_28]
0000972c  MOV             R0, R0,LSL#16
00009730  MOV             R0, R0,LSR#16
00009734  ORR             R0, R0, R1,LSL#16
00009738  STR             R0, [R10]
0000973c  B               loc_9830
00009740  CMP             R0, #0x74 ; 't'
00009744  CMPNE           R0, #0x54 ; 'T'
00009748  BNE             loc_9830
0000974c  LDR             R1, [SP,#0x3C+arg_4]
00009750  MOV             R0, #0
00009754  STR             R0, [R1]
00009758  ADD             R3, R4, #2
0000975c  MOV             R0, R3
00009760  LDR             R1, [SP,#0x3C+arg_4]
00009764  BL              sub_12D60
00009768  ADD             R4, R3, #0xA
0000976c  B               loc_9830
00009770  STRH            R0, [SP,#0x3C+var_24]
00009774  LDRH            R0, [SP,#0x3C+var_24]
00009778  CMP             R0, #0x100
0000977c  LDRH            R0, [R7,#0x32]
00009780  LDR             R2, [SP,#0x3C+arg_14]
00009784  ADDCS           R11, R0, R2
00009788  ADDCC           R11, R2, R0,LSR#1
0000978c  LDRH            R0, [R7,#0x30]
00009790  LDR             R1, [SP,#0x3C+arg_18]
00009794  ADD             R0, R0, R1
00009798  STR             R0, [SP,#0x3C+var_20]
0000979c  LDR             R1, [SP,#0x3C+arg_1C]
000097a0  CMP             R1, #0
000097a4  BNE             loc_97C8
000097a8  LDR             R2, [SP,#0x3C+arg_14]
000097ac  ADD             R1, R5, R11
000097b0  SUB             R1, R1, R2
000097b4  LDR             R2, [SP,#0x3C+var_14]
000097b8  CMP             R1, R2
000097bc  MOVGT           R5, R9
000097c0  ADDGT           R6, R0, R6
000097c4  B               loc_97E0
000097c8  LDR             R0, [SP,#0x3C+var_20]
000097cc  LDR             R1, [SP,#0x3C+var_18]
000097d0  ADD             R0, R6, R0
000097d4  CMP             R0, R1
000097d8  LDRGT           R6, [SP,#0x3C+var_8]
000097dc  SUBGT           R5, R5, R11
000097e0  LDR             R3, [R10]
000097e4  LDR             R2, [R8]
000097e8  LDR             R0, [SP,#0x3C+arg_4]
000097ec  LDR             R1, [R0]
000097f0  ADD             R0, SP, #0x3C+var_24
000097f4  STMFA           SP, {R0-R3}
000097f8  LDR             R3, [SP,#0x3C+var_4]
000097fc  MOV             R2, R5,LSL#16
00009800  STR             R3, [SP,#0x3C+var_3C]
00009804  MOV             R3, R6,LSL#16
00009808  MOV             R3, R3,ASR#16
0000980c  MOV             R2, R2,ASR#16
00009810  LDR             R1, [SP,#0x3C+var_C]
00009814  MOV             R0, R7
00009818  BL              sub_94D4
0000981c  LDR             R1, [SP,#0x3C+arg_1C]
00009820  CMP             R1, #1
00009824  LDREQ           R0, [SP,#0x3C+var_20]
00009828  ADDNE           R5, R5, R11
0000982c  ADDEQ           R6, R6, R0
00009830  LDRH            R0, [R4]
00009834  CMP             R0, #0
00009838  BNE             loc_95C4
0000983c  STRH            R5, [SP,#0x3C+var_1C]
00009840  STRH            R6, [SP,#0x3C+var_1C+2]
00009844  LDR             R0, [SP,#0x3C+var_1C]
00009848  ADD             SP, SP, #0x3C ; '<'
0000984c  POP             {R4-R11,LR}
00009850  BX              LR
