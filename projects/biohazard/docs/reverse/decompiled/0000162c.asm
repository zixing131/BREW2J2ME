0000162c  PUSH            {R4-R6,LR}
00001630  SUB             SP, SP, #0x48
00001634  LDR             R1, [R0,#0xE0]
00001638  MOV             R4, R0
0000163c  BL              sub_1058
00001640  MOV             R6, #0
00001644  STRH            R6, [SP,#0x48+var_8]
00001648  STRH            R6, [SP,#0x48+var_6]
0000164c  MOV             R5, R0
00001650  LDRH            R0, [R4,#4]
00001654  STRH            R0, [SP,#0x48+var_4]
00001658  LDR             R0, [R4,#0x44]
0000165c  ADD             R1, R0, R0,LSL#1
00001660  MOV             R0, #5
00001664  BL              sub_104
00001668  STRH            R0, [SP,#0x48+var_2]
0000166c  LDR             R0, [R5,#0xC]
00001670  LDR             R2, =0x40606000
00001674  ADD             R1, SP, #0x48+var_8
00001678  BL              sub_144AC
0000167c  STRH            R6, [SP,#0x48+var_10]
00001680  LDRH            R0, [SP,#0x48+var_2]
00001684  LDR             R2, =0x80606000
00001688  ADD             R1, SP, #0x48+var_10
0000168c  STRH            R0, [SP,#0x48+var_E]
00001690  LDRH            R0, [R4,#4]
00001694  STRH            R0, [SP,#0x48+var_C]
00001698  LDR             R0, [R4,#0x44]
0000169c  STRH            R0, [SP,#0x48+var_A]
000016a0  LDR             R0, [R5,#0xC]
000016a4  BL              sub_144AC
000016a8  STRH            R6, [SP,#0x48+var_18]
000016ac  STRH            R6, [SP,#0x48+var_16]
000016b0  LDRH            R0, [R4,#4]
000016b4  MOV             R2, #0xFFFFFF00
000016b8  STRH            R0, [SP,#0x48+var_14]
000016bc  LDRH            R0, [SP,#0x48+var_2]
000016c0  LDRH            R1, [SP,#0x48+var_A]
000016c4  ADD             R0, R0, R1
000016c8  STRH            R0, [SP,#0x48+var_12]
000016cc  LDR             R0, [R5,#0xC]
000016d0  LDR             R1, [R0]
000016d4  LDR             R3, [R1,#0x28]
000016d8  MOV             R1, #1
000016dc  BLX             R3
000016e0  LDRSH           R0, [SP,#0x48+var_18]
000016e4  LDRSH           R1, [SP,#0x48+var_16]
000016e8  ADD             R2, SP, #0x48+var_18
000016ec  LDR             R3, =0x8220
000016f0  STMEA           SP, {R0-R3}
000016f4  LDR             R2, =(dword_282D4 - 0x1704)
000016f8  MOV             R3, #0xFFFFFFFF
000016fc  ADD             R2, PC, R2; dword_282D4
00001700  MOV             R1, #0x8000
00001704  LDR             R0, [R5,#0xC]
00001708  BL              sub_1438C
0000170c  STRH            R6, [SP,#0x48+var_28]
00001710  LDRH            R0, [R4,#6]
00001714  LDR             R1, [R4,#0x44]
00001718  MOV             R2, #0
0000171c  SUB             R0, R0, R1
00001720  STRH            R0, [SP,#0x48+var_26]
00001724  LDRH            R0, [R4,#4]
00001728  ADD             R1, SP, #0x48+var_28
0000172c  STRH            R0, [SP,#0x48+var_24]
00001730  LDR             R0, [R4,#0x44]
00001734  STRH            R0, [SP,#0x48+var_22]
00001738  LDR             R0, [R5,#0xC]
0000173c  BL              sub_144AC
00001740  STRH            R6, [SP,#0x48+var_20]
00001744  LDR             R0, [R4,#0x44]
00001748  ADD             R1, R0, R0,LSL#1
0000174c  MOV             R0, #5
00001750  BL              sub_104
00001754  LDRH            R1, [SP,#0x48+var_26]
00001758  SUB             R0, R1, R0
0000175c  STRH            R0, [SP,#0x48+var_1E]
00001760  LDRH            R0, [R4,#4]
00001764  STRH            R0, [SP,#0x48+var_1C]
00001768  LDR             R0, [R4,#0x44]
0000176c  ADD             R1, R0, R0,LSL#1
00001770  MOV             R0, #5
00001774  BL              sub_104
00001778  STRH            R0, [SP,#0x48+var_1A]
0000177c  LDR             R0, [R5,#0xC]
00001780  LDR             R2, =0x40404000
00001784  ADD             R1, SP, #0x48+var_20
00001788  BL              sub_144AC
0000178c  STRH            R6, [SP,#0x48+var_30]
00001790  LDRH            R0, [SP,#0x48+var_12]
00001794  LDR             R2, =0xC0DCC000
00001798  STRH            R0, [SP,#0x48+var_2E]
0000179c  LDRH            R0, [R4,#4]
000017a0  STRH            R0, [SP,#0x48+var_2C]
000017a4  LDRH            R0, [R4,#6]
000017a8  LDRH            R1, [SP,#0x48+var_12]
000017ac  SUB             R0, R0, R1
000017b0  LDRH            R1, [R4,#0xF2]
000017b4  SUB             R0, R0, R1
000017b8  STRH            R0, [SP,#0x48+var_2A]
000017bc  LDR             R0, [R5,#0xC]
000017c0  ADD             R1, SP, #0x48+var_30
000017c4  BL              sub_144AC
000017c8  STRH            R6, [SP,#0x48+var_38]
000017cc  LDRH            R0, [R4,#6]
000017d0  ADD             R0, R0, R0,LSL#1
000017d4  MOV             R0, R0,LSR#3
000017d8  STRH            R0, [SP,#0x48+var_36]
000017dc  LDRH            R0, [R4,#4]
000017e0  STRH            R0, [SP,#0x48+var_34]
000017e4  LDR             R0, [R4,#0x44]
000017e8  MOV             R1, R0,LSL#3
000017ec  MOV             R0, #5
000017f0  BL              sub_104
000017f4  STRH            R0, [SP,#0x48+var_32]
000017f8  LDR             R0, [R5,#0xC]
000017fc  MOV             R2, #0
00001800  LDR             R1, [R0]
00001804  LDR             R3, [R1,#0x28]
00001808  MOV             R1, #1
0000180c  BLX             R3
00001810  LDRSH           R0, [SP,#0x48+var_38]
00001814  LDRSH           R1, [SP,#0x48+var_36]
00001818  ADD             R2, SP, #0x48+var_38
0000181c  LDR             R3, =0x8220
00001820  STMEA           SP, {R0-R3}
00001824  LDR             R2, =(word_282DE - 0x1834)
00001828  MOV             R3, #0xFFFFFFFF
0000182c  ADD             R2, PC, R2; word_282DE
00001830  MOV             R1, #0x8000
00001834  LDR             R0, [R5,#0xC]
00001838  BL              sub_1438C
0000183c  LDRH            R5, [R4,#4]
00001840  MOV             R0, R5
00001844  BL              sub_2E4
00001848  STRH            R0, [R4,#0xF4]
0000184c  LDRH            R0, [SP,#0x48+var_36]
00001850  LDRH            R1, [SP,#0x48+var_32]
00001854  ADD             R0, R0, R1
00001858  STRH            R0, [R4,#0xF6]
0000185c  MOV             R0, R5,LSL#3
00001860  BL              sub_2E4
00001864  STRH            R0, [R4,#0xF8]
00001868  LDR             R0, [R4,#0x44]
0000186c  ADD             R0, R0, R0,LSL#2
00001870  MOV             R1, R0,ASR#31
00001874  ADD             R0, R0, R1,LSR#29
00001878  MOV             R0, R0,ASR#3
0000187c  STRH            R0, [R4,#0xFA]
00001880  MOV             R0, #8
00001884  STR             R0, [R4,#0xE8]
00001888  STR             R6, [R4,#0xE4]
0000188c  MOV             R0, R4
00001890  BL              sub_223D0
00001894  MOV             R0, #0
00001898  ADD             SP, SP, #0x48 ; 'H'
0000189c  POP             {R4-R6,PC}
