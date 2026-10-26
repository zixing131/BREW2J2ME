0002171c  PUSH            {R0-R6,LR}
00021720  SUB             SP, SP, #0x10
00021724  LDR             R1, [R0,#0xE0]
00021728  MOV             R4, R0
0002172c  BL              sub_1058
00021730  LDR             R3, =0xE037
00021734  ADD             R2, SP, #0x20+var_4
00021738  ADD             R1, SP, #0x20+var_8
0002173c  STMEA           SP, {R1-R3}
00021740  MOV             R5, R0
00021744  MOV             R0, R4
00021748  ADD             R3, SP, #0x20+var_C
0002174c  ADD             R2, R4, #0xEC
00021750  LDR             R1, =0x50B
00021754  BL              sub_615C
00021758  LDRH            R0, [SP,#0x20+var_C]
0002175c  LDR             R6, =(sub_223D0 - 0x21768)
00021760  ADD             R6, PC, R6; sub_223D0
00021764  CMP             R0, #2
00021768  BEQ             loc_2180C
0002176c  CMP             R0, #3
00021770  BEQ             loc_21834
00021774  CMP             R0, #0x100
00021778  BNE             loc_21868
0002177c  LDRH            R0, [SP,#0x20+var_8]
00021780  SUB             R12, R0, #0xE000
00021784  SUBS            R12, R12, #0x30 ; '0'
00021788  LDRHNE          R0, [SP,#0x20+var_8]
0002178c  SUBNE           R12, R0, #0xE000
00021790  SUBSNE          R12, R12, #0x37 ; '7'
00021794  BNE             loc_21868
00021798  MOV             R3, #0
0002179c  STR             R3, [SP,#0x20+var_20]
000217a0  STR             R3, [SP,#0x20+var_1C]
000217a4  MOV             R2, #0
000217a8  LDR             R1, =(off_3EC+1)
000217ac  MOV             R0, R4
000217b0  BL              sub_21CCC
000217b4  LDR             R1, [R5,#0x9C]
000217b8  CMP             R1, #0
000217bc  ADDNE           R0, R5, #0x94
000217c0  BLXNE           R1
000217c4  LDR             R1, [R5,#0xB8]
000217c8  CMP             R1, #0
000217cc  ADDNE           R0, R5, #0xB0
000217d0  BLXNE           R1
000217d4  LDR             R0, [R4]
000217d8  MOV             R2, R4
000217dc  LDR             R1, [R0]
000217e0  LDR             R3, [R1,#0x30]
000217e4  LDR             R1, =(sub_26D18 - 0x217F0)
000217e8  ADD             R1, PC, R1; sub_26D18
000217ec  BLX             R3
000217f0  LDR             R0, [R4]
000217f4  MOV             R2, R4
000217f8  LDR             R1, [R0]
000217fc  LDR             R3, [R1,#0x30]
00021800  MOV             R1, R6
00021804  BLX             R3
00021808  B               loc_2185C
0002180c  ADD             R1, R4, #0xD8
00021810  MOV             R0, R4
00021814  BL              sub_1837C
00021818  LDR             R0, [R4]
0002181c  MOV             R2, R4
00021820  LDR             R1, [R0]
00021824  LDR             R3, [R1,#0x30]
00021828  MOV             R1, R6
0002182c  BLX             R3
00021830  B               loc_2185C
00021834  LDR             R1, [R4,#0xD8]
00021838  MOV             R0, R4
0002183c  BL              sub_182E8
00021840  LDR             R0, [R4]
00021844  MOV             R3, R4
00021848  LDR             R1, [R0]
0002184c  MOV             R2, R6
00021850  LDR             R12, [R1,#0x2C]
00021854  MOV             R1, #0xFA
00021858  BLX             R12
0002185c  MOV             R0, #1
00021860  ADD             SP, SP, #0x20 ; ' '
00021864  POP             {R4-R6,PC}
00021868  MOV             R0, #0
0002186c  B               loc_21860
