00001098  PUSH            {R4-R11,LR}
0000109c  MOV             R4, R0
000010a0  LDR             R0, [R0,#0x4C]
000010a4  SUB             SP, SP, #0x4C
000010a8  LDR             R1, [R0,#0x8B0]
000010ac  LDR             R0, =0x31E
000010b0  LDRSH           R0, [R0,R1]
000010b4  CMP             R0, #0
000010b8  MOVGE           R2, #0x21C
000010bc  LDRSHGE         R2, [R2,R1]
000010c0  CMPGE           R2, R0
000010c4  BLE             loc_131C
000010c8  MOV             R2, R0,LSL#16
000010cc  MOV             R2, R2,LSR#16
000010d0  ADD             R0, SP, #0x4C+var_18
000010d4  BL              sub_12F30
000010d8  LDR             R0, [R4,#0x4C]
000010dc  MOV             R5, #0
000010e0  LDR             R0, [R0,#0x898]
000010e4  STR             R0, [SP,#0x4C+var_20]
000010e8  LDRH            R11, [SP,#0x4C+var_12]
000010ec  LDRH            R0, [SP,#0x4C+var_10]
000010f0  STR             R0, [SP,#0x4C+var_34]
000010f4  LDR             R1, [R4,#0x10]
000010f8  STR             R5, [SP,#0x4C+var_1C]
000010fc  STR             R1, [SP,#0x4C+var_24]
00001100  LDR             R0, [R4,#0xC]
00001104  BL              sub_196D8
00001108  MOV             R0, R0,ASR#8
0000110c  STR             R0, [SP,#0x4C+var_2C]
00001110  LDR             R0, [R4,#0xC]
00001114  BL              sub_197A8
00001118  MOV             R1, R0,ASR#8
0000111c  LDR             R0, [SP,#0x4C+var_34]
00001120  STR             R1, [SP,#0x4C+var_30]
00001124  RSB             R0, R0, #0
00001128  STR             R0, [SP,#0x4C+var_4]
0000112c  MOV             R7, #0
00001130  B               loc_1280
00001134  MOV             R2, #0x13
00001138  LDR             R0, [SP,#0x4C+var_20]
0000113c  MUL             R1, R2, R7
00001140  LDR             R0, [R0,#0x38]
00001144  ADD             R5, R0, R1,LSL#2
00001148  LDRB            R0, [R5]
0000114c  CMP             R0, #4
00001150  BNE             loc_127C
00001154  LDRH            R0, [R5,#0x44]
00001158  CMP             R0, #2
0000115c  LDRSHNE         R0, [R5,#0x38]
00001160  CMPNE           R0, #0
00001164  BLE             loc_127C
00001168  LDRSH           R0, [R5,#0x3C]
0000116c  LDR             R1, [R4]
00001170  SUB             R10, R0, R1
00001174  LDRSH           R0, [R5,#0x3E]
00001178  LDR             R1, [R4,#4]
0000117c  LDR             R2, [SP,#0x4C+var_30]
00001180  SUB             R9, R0, R1
00001184  LDR             R1, [SP,#0x4C+var_2C]
00001188  MUL             R0, R1, R9
0000118c  MUL             R1, R2, R10
00001190  SUB             R0, R0, R1
00001194  MOV             R0, R0,ASR#8
00001198  STR             R0, [SP,#0x4C+var_28]
0000119c  LDR             R0, [SP,#0x4C+var_2C]
000011a0  MUL             R0, R10, R0
000011a4  MLA             R0, R9, R2, R0
000011a8  MOV             R8, R0,ASR#8
000011ac  CMP             R8, #0
000011b0  BLE             loc_127C
000011b4  MOV             R0, R8
000011b8  LDR             R1, [SP,#0x4C+var_28]
000011bc  BL              sub_19868
000011c0  MOV             R6, R0
000011c4  CMP             R0, #0xB4
000011c8  LDR             R0, [SP,#0x4C+var_4]
000011cc  SUBGE           R6, R6, #0x168
000011d0  CMP             R6, R0
000011d4  BLT             loc_127C
000011d8  LDR             R0, [SP,#0x4C+var_34]
000011dc  CMP             R6, R0
000011e0  BGT             loc_127C
000011e4  MOV             R1, R9
000011e8  MOV             R0, R10
000011ec  BL              sub_1973C
000011f0  MOV             R9, R0
000011f4  CMP             R0, R11
000011f8  BGE             loc_127C
000011fc  LDRSH           R2, [R5,#0x3E]
00001200  STMEA           SP, {R2,R9}
00001204  LDRSH           R3, [R5,#0x3C]
00001208  LDR             R0, [R4,#0x4C]
0000120c  LDM             R4, {R1,R2}
00001210  BL              sub_576C
00001214  CMP             R0, #0
00001218  BEQ             loc_127C
0000121c  LDR             R10, [R4,#8]
00001220  LDR             R1, [R4,#0x10]
00001224  SUB             R0, R10, #0xB4
00001228  MOV             R0, R0,LSL#8
0000122c  MUL             R1, R0, R1
00001230  MOV             R0, R8,LSL#2
00001234  BL              sub_104
00001238  LDR             R1, [R4,#0x14]
0000123c  STR             R5, [SP,#0x4C+var_1C]
00001240  SUB             R1, R10, R1
00001244  RSB             R0, R0, R1,LSL#8
00001248  MOV             R10, R0,ASR#8
0000124c  ADD             R1, SP, #0x4C+var_28
00001250  STR             R6, [SP,#0x4C+var_38]
00001254  LDM             R1, {R0,R1}
00001258  MOV             R11, R9
0000125c  MUL             R1, R0, R1
00001260  MOV             R0, R8
00001264  BL              sub_104
00001268  STR             R0, [SP,#0x4C+var_3C]
0000126c  MOV             R0, R7,LSL#16
00001270  MOV             R0, R0,LSR#16
00001274  ADD             R2, SP, #0x4C+var_44
00001278  STM             R2, {R0,R10}
0000127c  ADD             R7, R7, #1
00001280  LDR             R0, [SP,#0x4C+var_20]
00001284  LDR             R0, [R0,#0x34]
00001288  CMP             R0, R7
0000128c  BHI             loc_1134
00001290  LDR             R5, [SP,#0x4C+var_1C]
00001294  CMP             R5, #0
00001298  MOVEQ           R0, #0
0000129c  STRBEQ          R0, [R4,#0x40]
000012a0  STREQ           R0, [R4,#0x44]
000012a4  STRBEQ          R0, [R4,#0x29]
000012a8  BEQ             loc_131C
000012ac  MOV             R0, #1
000012b0  STRB            R0, [R4,#0x40]
000012b4  LDR             R0, [SP,#0x4C+var_3C]
000012b8  STRH            R0, [R4,#0x38]
000012bc  STRH            R11, [R4,#0x3C]
000012c0  LDR             R5, [SP,#0x4C+var_1C]
000012c4  STR             R5, [R4,#0x44]
000012c8  LDR             R0, [SP,#0x4C+var_44]
000012cc  STRH            R0, [R4,#0x42]
000012d0  LDR             R6, [SP,#0x4C+var_38]
000012d4  STRH            R6, [R4,#0x3E]
000012d8  LDR             R10, [SP,#0x4C+var_40]
000012dc  STRH            R10, [R4,#0x3A]
000012e0  LDRB            R0, [R4,#0x48]
000012e4  CMP             R0, #0
000012e8  MOVEQ           R1, #0x10
000012ec  MOVNE           R1, #0x18
000012f0  MOV             R0, R11
000012f4  BL              sub_19868
000012f8  LDR             R6, [SP,#0x4C+var_38]
000012fc  ADD             R0, R0, #1
00001300  CMP             R6, R0
00001304  BGE             loc_131C
00001308  LDR             R6, [SP,#0x4C+var_38]
0000130c  RSB             R0, R0, #0
00001310  CMP             R6, R0
00001314  MOVGT           R0, #2
00001318  STRBGT          R0, [R4,#0x40]
0000131c  ADD             SP, SP, #0x4C ; 'L'
00001320  POP             {R4-R11,LR}
00001324  BX              LR
