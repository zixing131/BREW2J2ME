000105d0  PUSH            {R0-R11,LR}
000105d4  SUB             SP, SP, #0x54
000105d8  ADD             R6, SP, #0x64+arg_0
000105dc  MOV             R5, R0
000105e0  LDM             R6, {R0,R6}
000105e4  ADD             R7, SP, #0x90
000105e8  MOV             R8, R2
000105ec  LDM             R7, {R2,R7}
000105f0  MOV             R1, #0
000105f4  STR             R1, [SP,#0x64+var_54]
000105f8  LDR             R1, [SP,#0x64+var_4]
000105fc  CMP             R1, R0
00010600  BNE             loc_1062C
00010604  STMFA           SP, {R2,R7}
00010608  STR             R6, [SP,#0x64+var_64]
0001060c  LDR             R3, [SP,#0x64+var_4]
00010610  LDR             R1, [SP,#0x64+var_C]
00010614  MOV             R2, R8
00010618  MOV             R0, R5
0001061c  BL              sub_10434
00010620  ADD             SP, SP, #0x64 ; 'd'
00010624  POP             {R4-R11,LR}
00010628  BX              LR
0001062c  LDR             R1, [R5,#0x14]
00010630  CMP             R1, #0
00010634  MOVEQ           R0, #7
00010638  BEQ             loc_10620
0001063c  LDR             R1, [SP,#0x64+var_4]
00010640  MOV             R9, #0
00010644  CMP             R1, R0
00010648  LDRCC           R1, [SP,#0x64+var_4]
0001064c  STRCC           R0, [SP,#0x64+var_4]
00010650  MOVCC           R0, R1,LSL#16
00010654  MOVCC           R1, #1
00010658  STRCC           R1, [SP,#0x64+var_54]
0001065c  MOVCC           R0, R0,LSR#16
00010660  CMP             R0, #0
00010664  MOVEQ           R0, #1
00010668  MOV             R1, R0,LSL#16
0001066c  MOV             R1, R1,ASR#16
00010670  STR             R1, [SP,#0x64+var_44]
00010674  LDR             R1, [SP,#0x64+var_4]
00010678  MUL             R4, R0, R0
0001067c  MUL             R10, R1, R1
00010680  ADD             R1, R10, R4,LSL#1
00010684  MUL             R2, R0, R10
00010688  SUB             R1, R1, R2,LSL#1
0001068c  STR             R1, [SP,#0x64+var_50]
00010690  ADD             R1, R4, R4,LSL#1
00010694  STR             R1, [SP,#0x64+var_14]
00010698  B               loc_10800
0001069c  LDR             R0, [SP,#0x64+var_54]
000106a0  CMP             R0, #0
000106a4  STREQ           R9, [SP,#0x64+var_48]
000106a8  LDREQ           R11, [SP,#0x64+var_44]
000106ac  BEQ             loc_10720
000106b0  LDR             R1, [SP,#0x64+var_44]
000106b4  ADD             R0, R8, R9
000106b8  MOV             R3, R1,LSL#17
000106bc  MOV             R3, R3,ASR#16
000106c0  STR             R3, [SP,#0x64+var_18]
000106c4  STR             R1, [SP,#0x64+var_48]
000106c8  STMEA           SP, {R6,R7}
000106cc  MOV             R2, R0,LSL#16
000106d0  LDR             R0, [SP,#0x64+var_C]
000106d4  LDR             R1, [SP,#0x64+var_48]
000106d8  MOV             R2, R2,ASR#16
000106dc  SUB             R0, R0, R1
000106e0  MOV             R1, R0,LSL#16
000106e4  MOV             R1, R1,ASR#16
000106e8  STR             R1, [SP,#0x64+var_1C]
000106ec  MOV             R0, R5
000106f0  MOV             R11, R9
000106f4  BL              sub_109D0
000106f8  MOVS            R9, R11
000106fc  BEQ             loc_10720
00010700  SUB             R0, R8, R11
00010704  MOV             R2, R0,LSL#16
00010708  STMEA           SP, {R6,R7}
0001070c  ADD             R3, SP, #0x64+var_1C
00010710  LDM             R3, {R1,R3}
00010714  MOV             R2, R2,ASR#16
00010718  MOV             R0, R5
0001071c  BL              sub_109D0
00010720  LDR             R1, [SP,#0x64+var_50]
00010724  MUL             R0, R9, R4
00010728  CMP             R1, #0
0001072c  LDR             R1, [SP,#0x64+var_14]
00010730  MOV             R0, R0,LSL#2
00010734  ADD             R0, R0, R1,LSL#1
00010738  LDRLT           R1, [SP,#0x64+var_50]
0001073c  ADDLT           R1, R0, R1
00010740  STRLT           R1, [SP,#0x64+var_50]
00010744  BLT             loc_107F4
00010748  LDR             R1, [SP,#0x64+var_44]
0001074c  RSB             R1, R1, #1
00010750  MUL             R1, R10, R1
00010754  ADD             R0, R0, R1,LSL#2
00010758  LDR             R1, [SP,#0x64+var_50]
0001075c  ADD             R1, R0, R1
00010760  LDR             R0, [SP,#0x64+var_54]
00010764  STR             R1, [SP,#0x64+var_50]
00010768  CMP             R0, #0
0001076c  BNE             loc_107E0
00010770  LDR             R0, [SP,#0x64+var_28]
00010774  CMP             R0, R9
00010778  BLE             loc_107E0
0001077c  STMEA           SP, {R6,R7}
00010780  LDR             R1, [SP,#0x64+var_48]
00010784  MOV             R0, R1,LSL#17
00010788  MOV             R0, R0,ASR#16
0001078c  STR             R0, [SP,#0x64+var_20]
00010790  ADD             R0, R8, R11
00010794  MOV             R2, R0,LSL#16
00010798  LDR             R0, [SP,#0x64+var_C]
0001079c  MOV             R2, R2,ASR#16
000107a0  SUB             R0, R0, R1
000107a4  MOV             R0, R0,LSL#16
000107a8  MOV             R0, R0,ASR#16
000107ac  STR             R0, [SP,#0x64+var_24]
000107b0  MOV             R1, R0
000107b4  MOV             R0, R5
000107b8  LDR             R3, [SP,#0x64+var_20]
000107bc  BL              sub_109D0
000107c0  SUB             R0, R8, R11
000107c4  MOV             R2, R0,LSL#16
000107c8  STMEA           SP, {R6,R7}
000107cc  ADD             R3, SP, #0x64+var_24
000107d0  LDM             R3, {R1,R3}
000107d4  MOV             R2, R2,ASR#16
000107d8  MOV             R0, R5
000107dc  BL              sub_109D0
000107e0  LDR             R1, [SP,#0x64+var_44]
000107e4  SUB             R0, R1, #1
000107e8  MOV             R1, R0,LSL#16
000107ec  MOV             R1, R1,ASR#16
000107f0  STR             R1, [SP,#0x64+var_44]
000107f4  ADD             R0, R9, #1
000107f8  MOV             R9, R0,LSL#16
000107fc  MOV             R9, R9,ASR#16
00010800  LDR             R1, [SP,#0x64+var_44]
00010804  MUL             R0, R10, R1
00010808  ADD             R1, R0, R4,ASR#1
0001080c  MOV             R0, R4
00010810  BL              sub_104
00010814  STR             R0, [SP,#0x64+var_28]
00010818  CMP             R0, R9
0001081c  BGE             loc_1069C
00010820  LDR             R1, [SP,#0x64+var_4]
00010824  ADD             R0, R4, R10,LSL#1
00010828  MOV             R9, R1,LSL#16
0001082c  MUL             R2, R1, R4
00010830  SUB             R1, R0, R2,LSL#1
00010834  STR             R1, [SP,#0x64+var_50]
00010838  ADD             R1, R10, R10,LSL#1
0001083c  STR             R1, [SP,#0x64+var_2C]
00010840  MOV             R9, R9,ASR#16
00010844  MOV             R11, #0
00010848  B               loc_109AC
0001084c  LDR             R0, [SP,#0x64+var_54]
00010850  CMP             R0, #0
00010854  ADDNE           R0, SP, #0x64+var_4C
00010858  STMNE           R0, {R9,R11}
0001085c  BNE             loc_108D4
00010860  MOV             R3, R9,LSL#17
00010864  MOV             R3, R3,ASR#16
00010868  STR             R3, [SP,#0x64+var_30]
0001086c  STR             R9, [SP,#0x64+var_48]
00010870  STR             R11, [SP,#0x64+var_4C]
00010874  STMEA           SP, {R6,R7}
00010878  ADD             R0, R8, R11
0001087c  MOV             R2, R0,LSL#16
00010880  LDR             R0, [SP,#0x64+var_C]
00010884  LDR             R9, [SP,#0x64+var_48]
00010888  MOV             R2, R2,ASR#16
0001088c  SUB             R0, R0, R9
00010890  MOV             R1, R0,LSL#16
00010894  MOV             R1, R1,ASR#16
00010898  STR             R1, [SP,#0x64+var_34]
0001089c  MOV             R0, R5
000108a0  BL              sub_109D0
000108a4  LDR             R11, [SP,#0x64+var_4C]
000108a8  CMP             R11, #0
000108ac  BEQ             loc_108D4
000108b0  STMEA           SP, {R6,R7}
000108b4  LDR             R0, [SP,#0x64+var_4C]
000108b8  ADD             R3, SP, #0x64+var_34
000108bc  SUB             R0, R8, R0
000108c0  MOV             R2, R0,LSL#16
000108c4  MOV             R2, R2,ASR#16
000108c8  MOV             R0, R5
000108cc  LDM             R3, {R1,R3}
000108d0  BL              sub_109D0
000108d4  LDR             R1, [SP,#0x64+var_50]
000108d8  MUL             R0, R11, R10
000108dc  CMP             R1, #0
000108e0  LDR             R1, [SP,#0x64+var_2C]
000108e4  MOV             R0, R0,LSL#2
000108e8  ADD             R0, R0, R1,LSL#1
000108ec  LDRLT           R1, [SP,#0x64+var_50]
000108f0  ADDLT           R1, R0, R1
000108f4  STRLT           R1, [SP,#0x64+var_50]
000108f8  BLT             loc_109A0
000108fc  RSB             R1, R9, #1
00010900  MUL             R1, R4, R1
00010904  ADD             R0, R0, R1,LSL#2
00010908  LDR             R1, [SP,#0x64+var_50]
0001090c  ADD             R1, R0, R1
00010910  LDR             R0, [SP,#0x64+var_54]
00010914  STR             R1, [SP,#0x64+var_50]
00010918  CMP             R0, #0
0001091c  LDRNE           R0, [SP,#0x64+var_40]
00010920  CMPNE           R0, R9
00010924  BGE             loc_10994
00010928  STMEA           SP, {R6,R7}
0001092c  LDR             R1, [SP,#0x64+var_48]
00010930  MOV             R0, R1,LSL#17
00010934  MOV             R0, R0,ASR#16
00010938  STR             R0, [SP,#0x64+var_38]
0001093c  LDR             R0, [SP,#0x64+var_4C]
00010940  LDR             R3, [SP,#0x64+var_38]
00010944  ADD             R0, R8, R0
00010948  MOV             R2, R0,LSL#16
0001094c  LDR             R0, [SP,#0x64+var_C]
00010950  MOV             R2, R2,ASR#16
00010954  SUB             R0, R0, R1
00010958  MOV             R0, R0,LSL#16
0001095c  MOV             R0, R0,ASR#16
00010960  STR             R0, [SP,#0x64+var_3C]
00010964  MOV             R1, R0
00010968  MOV             R0, R5
0001096c  BL              sub_109D0
00010970  STMEA           SP, {R6,R7}
00010974  LDR             R0, [SP,#0x64+var_4C]
00010978  ADD             R3, SP, #0x64+var_3C
0001097c  SUB             R0, R8, R0
00010980  MOV             R2, R0,LSL#16
00010984  MOV             R2, R2,ASR#16
00010988  MOV             R0, R5
0001098c  LDM             R3, {R1,R3}
00010990  BL              sub_109D0
00010994  SUB             R0, R9, #1
00010998  MOV             R9, R0,LSL#16
0001099c  MOV             R9, R9,ASR#16
000109a0  ADD             R0, R11, #1
000109a4  MOV             R11, R0,LSL#16
000109a8  MOV             R11, R11,ASR#16
000109ac  MUL             R0, R10, R11
000109b0  ADD             R1, R0, R4,ASR#1
000109b4  MOV             R0, R4
000109b8  BL              sub_104
000109bc  STR             R0, [SP,#0x64+var_40]
000109c0  CMP             R0, R9
000109c4  BLE             loc_1084C
000109c8  MOV             R0, #0
000109cc  B               loc_10620
