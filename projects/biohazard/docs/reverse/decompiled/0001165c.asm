0001165c  PUSH            {R0-R11,LR}
00011660  SUB             SP, SP, #0x14
00011664  LDR             R0, [SP,#0x24+var_10]
00011668  ADD             R10, SP, #0x24+arg_0
0001166c  LDM             R10, {R4,R10}
00011670  LDR             R5, [SP,#0x24+arg_8]
00011674  LDR             R0, [R0,#0x14]
00011678  MOV             R11, R3
0001167c  CMP             R0, #0
00011680  MOVEQ           R0, #7
00011684  MOV             R9, R1
00011688  MOV             R6, R2
0001168c  BEQ             loc_116F0
00011690  CMP             R5, R4
00011694  CMPLT           R5, R6
00011698  BGE             loc_116B4
0001169c  MOV             R0, R6
000116a0  MOV             R6, R5
000116a4  MOV             R5, R0
000116a8  MOV             R0, R9
000116ac  MOV             R9, R10
000116b0  MOV             R10, R0
000116b4  CMP             R4, R6
000116b8  MOVLT           R0, R6
000116bc  MOVLT           R6, R4
000116c0  MOVLT           R4, R0
000116c4  MOVLT           R0, R9
000116c8  MOVLT           R9, R11
000116cc  MOVLT           R11, R0
000116d0  CMP             R5, R4
000116d4  SUBLE           R0, R4, R6
000116d8  SUBGT           R0, R5, R6
000116dc  MOV             R0, R0,LSL#16
000116e0  MOVS            R0, R0,ASR#16
000116e4  STR             R0, [SP,#0x24+var_14]
000116e8  BNE             loc_116FC
000116ec  MOV             R0, #0
000116f0  ADD             SP, SP, #0x24 ; '$'
000116f4  POP             {R4-R11,LR}
000116f8  BX              LR
000116fc  LDR             R0, [SP,#0x24+var_14]
00011700  LDR             R8, =(start - 0x11710)
00011704  MOV             R7, R0,LSL#1
00011708  ADD             R8, PC, R8; start
0001170c  LDR             R0, [R8,#(dword_8 - 0xC)]
00011710  ADR             LR, loc_11720
00011714  LDR             R1, [R0,#0x68]
00011718  MOV             R0, R7
0001171c  BX              R1
00011720  STR             R0, [SP,#0x24+var_18]
00011724  LDR             R0, [R8,#(dword_8 - 0xC)]
00011728  LDR             R1, [R0,#0x68]
0001172c  MOV             R0, R7
00011730  MOV             LR, PC
00011734  BX              R1
00011738  STR             R0, [SP,#0x24+var_1C]
0001173c  MOV             R7, R0
00011740  CMP             R4, R6
00011744  LDR             R8, [SP,#0x24+var_18]
00011748  BLE             loc_11780
0001174c  SUB             R0, R11, R9
00011750  MOV             R1, R0,LSL#16
00011754  SUB             R0, R4, R6
00011758  BL              sub_104
0001175c  MOV             R1, R0,ASR#1
00011760  ADD             R2, R8, R4,LSL#1
00011764  SUB             R3, R2, R6,LSL#1
00011768  RSB             R1, R1, #0
0001176c  CMP             R8, R3
00011770  ADDCC           R1, R1, R0
00011774  ADDCC           R2, R9, R1,ASR#16
00011778  STRHCC          R2, [R8],#2
0001177c  BCC             loc_1176C
00011780  CMP             R5, R6
00011784  BLE             loc_117BC
00011788  SUB             R0, R10, R9
0001178c  MOV             R1, R0,LSL#16
00011790  SUB             R0, R5, R6
00011794  BL              sub_104
00011798  MOV             R1, R0,ASR#1
0001179c  ADD             R2, R7, R5,LSL#1
000117a0  SUB             R3, R2, R6,LSL#1
000117a4  RSB             R1, R1, #0
000117a8  CMP             R7, R3
000117ac  ADDCC           R1, R1, R0
000117b0  ADDCC           R2, R9, R1,ASR#16
000117b4  STRHCC          R2, [R7],#2
000117b8  BCC             loc_117A8
000117bc  CMP             R4, R5
000117c0  BLE             loc_117FC
000117c4  SUB             R0, R11, R10
000117c8  MOV             R1, R0,LSL#16
000117cc  SUB             R0, R4, R5
000117d0  BL              sub_104
000117d4  MOV             R1, R0,ASR#1
000117d8  ADD             R2, R7, R4,LSL#1
000117dc  SUB             R3, R2, R5,LSL#1
000117e0  RSB             R1, R1, #0
000117e4  CMP             R7, R3
000117e8  ADDCC           R1, R1, R0
000117ec  ADDCC           R2, R10, R1,ASR#16
000117f0  STRHCC          R2, [R7],#2
000117f4  BCC             loc_117E4
000117f8  B               loc_11838
000117fc  CMP             R5, R4
00011800  BLE             loc_11838
00011804  SUB             R0, R10, R11
00011808  MOV             R1, R0,LSL#16
0001180c  SUB             R0, R5, R4
00011810  BL              sub_104
00011814  MOV             R1, R0,ASR#1
00011818  ADD             R2, R8, R5,LSL#1
0001181c  SUB             R3, R2, R4,LSL#1
00011820  RSB             R1, R1, #0
00011824  CMP             R8, R3
00011828  ADDCC           R1, R1, R0
0001182c  ADDCC           R2, R11, R1,ASR#16
00011830  STRHCC          R2, [R8],#2
00011834  BCC             loc_11824
00011838  LDR             R0, [SP,#0x24+var_14]
0001183c  LDR             R4, [SP,#0x24+var_18]
00011840  LDR             R5, [SP,#0x24+var_1C]
00011844  ADD             R7, R4, R0,LSL#1
00011848  B               loc_1189C
0001184c  LDRSH           R1, [R4],#2
00011850  LDRSH           R0, [R5],#2
00011854  LDR             R3, [SP,#0x24+arg_14]
00011858  CMP             R1, R0
0001185c  MOVGT           R2, R1
00011860  MOVGT           R1, R0
00011864  MOVGT           R0, R2
00011868  LDR             R2, [SP,#0x24+arg_C]
0001186c  SUB             R0, R0, R1
00011870  STMEA           SP, {R2,R3}
00011874  ADD             R0, R0, #1
00011878  MOV             R3, R0,LSL#16
0001187c  ADD             R0, R6, #1
00011880  MOV             R0, R0,LSL#16
00011884  MOV             R0, R0,ASR#16
00011888  MOV             R2, R6
0001188c  MOV             R6, R0
00011890  LDR             R0, [SP,#0x24+var_10]
00011894  MOV             R3, R3,ASR#16
00011898  BL              sub_109D0
0001189c  CMP             R4, R7
000118a0  BCC             loc_1184C
000118a4  LDR             R8, =(start - 0x118B0)
000118a8  ADD             R8, PC, R8; start
000118ac  LDR             R0, [R8,#(dword_8 - 0xC)]
000118b0  ADR             LR, loc_118C0
000118b4  LDR             R1, [R0,#0x6C]
000118b8  LDR             R0, [SP,#0x24+var_18]
000118bc  BX              R1
000118c0  LDR             R0, [R8,#(dword_8 - 0xC)]
000118c4  LDR             R1, [R0,#0x6C]
000118c8  LDR             R0, [SP,#0x24+var_1C]
000118cc  MOV             LR, PC
000118d0  BX              R1
000118d4  B               loc_116EC
