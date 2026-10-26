0000d7a8  PUSH            {R0-R2,R4-R11,LR}
0000d7ac  MOV             R6, R1
0000d7b0  MOV             R1, #0
0000d7b4  SUB             SP, SP, #0x60
0000d7b8  STR             R1, [SP,#0x6C+var_44]
0000d7bc  LDR             R1, [R0,#0x8B0]
0000d7c0  MOV             R5, R0
0000d7c4  LDR             R0, =0x31E
0000d7c8  LDRSH           R0, [R0,R1]
0000d7cc  CMP             R0, #0
0000d7d0  MOVGE           R2, #0x21C
0000d7d4  LDRSHGE         R2, [R2,R1]
0000d7d8  CMPGE           R2, R0
0000d7dc  BLE             loc_DF50
0000d7e0  MOV             R2, R0,LSL#16
0000d7e4  MOV             R2, R2,LSR#16
0000d7e8  ADD             R0, SP, #0x6C+var_38
0000d7ec  BL              sub_12F30
0000d7f0  LDRB            R2, [SP,#0x6C+var_27]
0000d7f4  MOV             R1, #0x1D
0000d7f8  STR             R2, [SP,#0x6C+var_24]
0000d7fc  LDR             R0, [R5,#0x894]
0000d800  MUL             R2, R1, R2
0000d804  ADD             R7, R0, R2,LSL#2
0000d808  LDR             R0, =(start - 0xD814)
0000d80c  ADD             R0, PC, R0; start
0000d810  LDR             R0, [R0,#(dword_8 - 0xC)]
0000d814  ADR             LR, loc_D820
0000d818  LDR             R0, [R0,#0xC0]
0000d81c  BX              R0
0000d820  LDR             R0, [R0,#0x760]
0000d824  ADD             R4, R5, #0x800
0000d828  LDRB            R0, [R0,#0x1A4]
0000d82c  CMP             R0, #0
0000d830  LDRBEQ          R0, [R5,#0x84D]
0000d834  CMPEQ           R0, #0
0000d838  LDRBEQ          R0, [R5,#0x85C]
0000d83c  CMPEQ           R0, #0
0000d840  BNE             loc_DE5C
0000d844  LDRB            R0, [R7,#4]
0000d848  CMP             R0, #0
0000d84c  LDRBEQ          R0, [R5,#0x870]
0000d850  CMPEQ           R0, #0
0000d854  BNE             loc_DA84
0000d858  LDR             R1, =0x10CD
0000d85c  LDR             R0, [SP,#0x6C+var_4]
0000d860  BL              sub_11DD8
0000d864  MOV             R10, R0
0000d868  LDR             R0, [SP,#0x6C+var_4]
0000d86c  LDR             R1, =0x10CE
0000d870  BL              sub_11DD8
0000d874  MOV             R8, R0
0000d878  CMP             R10, #0
0000d87c  CMPNE           R8, #0
0000d880  BEQ             loc_DE5C
0000d884  LDRH            R1, [R4,#0x9E]
0000d888  LDR             R0, [R5,#0x830]
0000d88c  LDR             R2, [R5,#0x83C]
0000d890  SUB             R0, R1, R0
0000d894  ADD             R0, R0, R2
0000d898  LDRH            R2, [R4,#0xA2]
0000d89c  ADD             R0, R0, R2
0000d8a0  STR             R0, [SP,#0x6C+var_40]
0000d8a4  LDRB            R0, [R5,#0x868]
0000d8a8  CMP             R0, #1
0000d8ac  CMPNE           R0, #2
0000d8b0  BNE             loc_D8DC
0000d8b4  LDRSH           R3, [R4,#0x62]
0000d8b8  CMP             R0, #1
0000d8bc  MOVEQ           R9, #1
0000d8c0  SUB             R1, R1, R3
0000d8c4  ADD             R1, R1, R2
0000d8c8  STR             R1, [SP,#0x6C+var_40]
0000d8cc  BEQ             loc_D8E0
0000d8d0  CMP             R0, #2
0000d8d4  MOVEQ           R9, #2
0000d8d8  BEQ             loc_D8E0
0000d8dc  MOV             R9, #0
0000d8e0  LDRH            R0, [SP,#0x6C+var_30]
0000d8e4  BL              sub_19808
0000d8e8  LDR             R1, [R5,#0x838]
0000d8ec  MUL             R0, R1, R0
0000d8f0  MOV             R0, R0,ASR#16
0000d8f4  MOV             R1, R0,LSL#1
0000d8f8  STR             R1, [SP,#0x6C+var_48]
0000d8fc  LDRH            R1, [R8,#2]
0000d900  MOV             R0, #3
0000d904  BL              sub_1DC
0000d908  MOV             R12, R0
0000d90c  LDRH            R0, [R4,#0x9C]
0000d910  LDR             R1, [SP,#0x6C+var_48]
0000d914  MOV             R3, #0
0000d918  SUB             R0, R0, R1
0000d91c  LDRH            R1, [R8]
0000d920  ADD             R0, R0, R0,LSR#31
0000d924  MOV             R0, R0,ASR#1
0000d928  SUB             R0, R0, R1,LSR#1
0000d92c  LDRH            R1, [R4,#0xA0]
0000d930  MOV             R2, #0
0000d934  ADD             LR, SP, #0x6C+var_60
0000d938  ADD             R0, R0, R1
0000d93c  STR             R0, [SP,#0x6C+var_3C]
0000d940  LDR             R1, [SP,#0x6C+var_40]
0000d944  ADD             R0, R12, R12,LSR#31
0000d948  SUB             R0, R1, R0,ASR#1
0000d94c  MOV             R0, R0,LSL#16
0000d950  MOV             R11, R0,ASR#16
0000d954  MUL             R0, R9, R12
0000d958  MOV             R0, R0,LSL#16
0000d95c  MOV             R0, R0,ASR#16
0000d960  STR             R0, [SP,#0x6C+var_10]
0000d964  MOV             R1, #1
0000d968  STM             LR, {R0-R3}
0000d96c  MOV             R1, R12,LSL#16
0000d970  MOV             R1, R1,ASR#16
0000d974  STR             R1, [SP,#0x6C+var_14]
0000d978  STMEA           SP, {R1,R8}
0000d97c  MOV             R3, #0
0000d980  STR             R3, [SP,#0x6C+var_64]
0000d984  LDRSH           R3, [R8]
0000d988  LDR             R0, [SP,#0x6C+var_3C]
0000d98c  MOV             R2, R11
0000d990  MOV             R1, R0,LSL#16
0000d994  MOV             R1, R1,ASR#16
0000d998  MOV             R0, R6
0000d99c  BL              sub_3324
0000d9a0  LDR             R0, [SP,#0x6C+var_3C]
0000d9a4  LDR             R1, [SP,#0x6C+var_48]
0000d9a8  MOV             R3, #0
0000d9ac  ADD             R12, R0, R1
0000d9b0  LDR             R0, [SP,#0x6C+var_10]
0000d9b4  MOV             R1, #3
0000d9b8  MOV             R2, #0
0000d9bc  ADD             LR, SP, #0x6C+var_60
0000d9c0  STM             LR, {R0-R3}
0000d9c4  LDR             R1, [SP,#0x6C+var_14]
0000d9c8  MOV             R2, R11
0000d9cc  STMEA           SP, {R1,R8}
0000d9d0  STR             R3, [SP,#0x6C+var_64]
0000d9d4  MOV             R1, R12,LSL#16
0000d9d8  MOV             R1, R1,ASR#16
0000d9dc  LDRSH           R3, [R8]
0000d9e0  MOV             R0, R6
0000d9e4  BL              sub_3324
0000d9e8  LDRH            R0, [R4,#0xA0]
0000d9ec  LDRH            R1, [R4,#0x9C]
0000d9f0  LDRH            R11, [R10]
0000d9f4  ADD             R8, R0, R1,LSR#1
0000d9f8  LDRH            R1, [R10,#2]
0000d9fc  MOV             R0, #3
0000da00  BL              sub_1DC
0000da04  MOV             R12, R0
0000da08  LDRB            R0, [R5,#0x868]
0000da0c  MOV             R3, #0
0000da10  MOV             R2, #0
0000da14  CMP             R0, #1
0000da18  CMPNE           R0, #2
0000da1c  LDRSHEQ         R0, [R4,#0x60]
0000da20  LDR             R1, [SP,#0x6C+var_40]
0000da24  ADDEQ           R8, R0, R8
0000da28  ADD             R0, R12, R12,LSR#31
0000da2c  SUB             R0, R1, R0,ASR#1
0000da30  MOV             LR, R0,LSL#16
0000da34  ADD             R0, R11, R11,LSR#31
0000da38  SUB             R0, R8, R0,ASR#1
0000da3c  MOV             R8, R0,LSL#16
0000da40  MUL             R0, R9, R12
0000da44  MOV             R0, R0,LSL#16
0000da48  MOV             R0, R0,ASR#16
0000da4c  ADD             R9, SP, #0x6C+var_60
0000da50  MOV             R1, #1
0000da54  STM             R9, {R0-R3}
0000da58  STR             R3, [SP,#0x6C+var_64]
0000da5c  MOV             R1, R12,LSL#16
0000da60  MOV             R1, R1,ASR#16
0000da64  STMEA           SP, {R1,R10}
0000da68  MOV             R3, R11,LSL#16
0000da6c  MOV             R8, R8,ASR#16
0000da70  MOV             LR, LR,ASR#16
0000da74  MOV             R2, LR
0000da78  MOV             R1, R8
0000da7c  MOV             R3, R3,ASR#16
0000da80  B               loc_DE54
0000da84  LDRB            R0, [R5,#0x870]
0000da88  CMP             R0, #1
0000da8c  BNE             loc_DE5C
0000da90  LDR             R1, =0x10D0
0000da94  LDR             R0, [SP,#0x6C+var_4]
0000da98  BL              sub_11DD8
0000da9c  STR             R0, [SP,#0x6C+var_4C]
0000daa0  CMP             R0, #0
0000daa4  BEQ             loc_DE5C
0000daa8  LDRH            R0, [R4,#0x9C]
0000daac  LDR             R1, [R5,#0x830]
0000dab0  MOV             R3, #0
0000dab4  MOV             R11, R0,LSR#1
0000dab8  LDRH            R0, [R4,#0x9E]
0000dabc  MOV             R2, #0
0000dac0  MOV             R9, #0x50 ; 'P'
0000dac4  SUB             R0, R0, R1
0000dac8  LDR             R1, [R5,#0x83C]
0000dacc  ADD             R0, R0, R1
0000dad0  SUB             R8, R0, #0x50 ; 'P'
0000dad4  MOV             R0, R8,LSL#16
0000dad8  MOV             R0, R0,ASR#16
0000dadc  MOV             R1, #0
0000dae0  STMEA           SP, {R0-R3}
0000dae4  LDRSH           R3, [R4,#0x9C]
0000dae8  LDRSH           R2, [R4,#0xA2]
0000daec  LDRSH           R1, [R4,#0xA0]
0000daf0  MOV             R0, R6
0000daf4  BL              sub_10C58
0000daf8  LDRH            R0, [R4,#0x9E]
0000dafc  MOV             R3, #0
0000db00  MOV             R2, #0
0000db04  SUB             R0, R0, R8
0000db08  SUB             R0, R0, #0xA0
0000db0c  MOV             R0, R0,LSL#16
0000db10  MOV             R0, R0,ASR#16
0000db14  MOV             R1, #0
0000db18  STMEA           SP, {R0-R3}
0000db1c  LDRH            R1, [R4,#0xA2]
0000db20  ADD             R0, R8, #0xA0
0000db24  LDRSH           R3, [R4,#0x9C]
0000db28  ADD             R0, R0, R1
0000db2c  MOV             R2, R0,LSL#16
0000db30  MOV             R2, R2,ASR#16
0000db34  MOV             R0, R6
0000db38  LDRSH           R1, [R4,#0xA0]
0000db3c  BL              sub_10C58
0000db40  ADD             R10, R8, #0x50 ; 'P'
0000db44  MOV             R1, #0xFFFFFF63
0000db48  STR             R1, [SP,#0x6C+var_50]
0000db4c  MOV             R8, #0
0000db50  MOV             R3, #0
0000db54  MOV             R2, #0
0000db58  MOV             R1, #0
0000db5c  MOV             R0, #1
0000db60  STMEA           SP, {R0-R3}
0000db64  SUB             R0, R11, R9
0000db68  MOV             R0, R0,LSL#16
0000db6c  MOV             R0, R0,ASR#16
0000db70  STR             R0, [SP,#0x6C+var_18]
0000db74  STR             R0, [SP,#0x6C+var_1C]
0000db78  LDRH            R0, [R4,#0xA2]
0000db7c  LDRSH           R1, [R4,#0xA0]
0000db80  LDR             R3, [SP,#0x6C+var_1C]
0000db84  ADD             R0, R0, R10
0000db88  ADD             R0, R0, R8
0000db8c  MOV             R2, R0,LSL#16
0000db90  MOV             R2, R2,ASR#16
0000db94  MOV             R0, R6
0000db98  BL              sub_10C58
0000db9c  MOV             R3, #0
0000dba0  MOV             R2, #0
0000dba4  MOV             R1, #0
0000dba8  MOV             R0, #1
0000dbac  STMEA           SP, {R0-R3}
0000dbb0  LDRH            R0, [R4,#0xA2]
0000dbb4  ADD             R0, R0, R10
0000dbb8  ADD             R0, R0, R8
0000dbbc  MOV             R2, R0,LSL#16
0000dbc0  LDRH            R0, [R4,#0xA0]
0000dbc4  LDR             R3, [SP,#0x6C+var_1C]
0000dbc8  MOV             R2, R2,ASR#16
0000dbcc  ADD             R0, R0, R11
0000dbd0  ADD             R0, R0, R9
0000dbd4  MOV             R1, R0,LSL#16
0000dbd8  MOV             R1, R1,ASR#16
0000dbdc  MOV             R0, R6
0000dbe0  BL              sub_10C58
0000dbe4  CMP             R8, #0
0000dbe8  BLE             loc_DC6C
0000dbec  MOV             R3, #0
0000dbf0  MOV             R2, #0
0000dbf4  MOV             R1, #0
0000dbf8  MOV             R0, #1
0000dbfc  STMEA           SP, {R0-R3}
0000dc00  LDRH            R0, [R4,#0xA2]
0000dc04  LDRSH           R1, [R4,#0xA0]
0000dc08  LDR             R3, [SP,#0x6C+var_18]
0000dc0c  ADD             R0, R0, R10
0000dc10  SUB             R0, R0, R8
0000dc14  MOV             R2, R0,LSL#16
0000dc18  MOV             R2, R2,ASR#16
0000dc1c  MOV             R0, R6
0000dc20  BL              sub_10C58
0000dc24  MOV             R3, #0
0000dc28  MOV             R2, #0
0000dc2c  MOV             R1, #0
0000dc30  MOV             R0, #1
0000dc34  STMEA           SP, {R0-R3}
0000dc38  LDRH            R0, [R4,#0xA2]
0000dc3c  ADD             R0, R0, R10
0000dc40  SUB             R0, R0, R8
0000dc44  MOV             R2, R0,LSL#16
0000dc48  LDRH            R0, [R4,#0xA0]
0000dc4c  LDR             R3, [SP,#0x6C+var_18]
0000dc50  MOV             R2, R2,ASR#16
0000dc54  ADD             R0, R0, R11
0000dc58  ADD             R0, R0, R9
0000dc5c  MOV             R1, R0,LSL#16
0000dc60  MOV             R1, R1,ASR#16
0000dc64  MOV             R0, R6
0000dc68  BL              sub_10C58
0000dc6c  LDR             R1, [SP,#0x6C+var_50]
0000dc70  CMP             R1, #0
0000dc74  LDRLT           R1, [SP,#0x6C+var_50]
0000dc78  ADDLT           R0, R1, R8,LSL#2
0000dc7c  ADDLT           R1, R0, #6
0000dc80  STRLT           R1, [SP,#0x6C+var_50]
0000dc84  BLT             loc_DDB8
0000dc88  LDR             R1, [SP,#0x6C+var_50]
0000dc8c  SUB             R0, R8, R9
0000dc90  ADD             R0, R1, R0,LSL#2
0000dc94  ADD             R1, R0, #0xA
0000dc98  STR             R1, [SP,#0x6C+var_50]
0000dc9c  CMP             R8, R9
0000dca0  BGE             loc_DDB4
0000dca4  MOV             R3, #0
0000dca8  MOV             R2, #0
0000dcac  MOV             R1, #0
0000dcb0  MOV             R0, #1
0000dcb4  STMEA           SP, {R0-R3}
0000dcb8  SUB             R0, R11, R8
0000dcbc  MOV             R0, R0,LSL#16
0000dcc0  MOV             R0, R0,ASR#16
0000dcc4  STR             R0, [SP,#0x6C+var_20]
0000dcc8  LDRH            R0, [R4,#0xA2]
0000dccc  LDRSH           R1, [R4,#0xA0]
0000dcd0  LDR             R3, [SP,#0x6C+var_20]
0000dcd4  ADD             R0, R0, R10
0000dcd8  ADD             R0, R0, R9
0000dcdc  MOV             R2, R0,LSL#16
0000dce0  MOV             R2, R2,ASR#16
0000dce4  MOV             R0, R6
0000dce8  BL              sub_10C58
0000dcec  MOV             R3, #0
0000dcf0  MOV             R2, #0
0000dcf4  MOV             R1, #0
0000dcf8  MOV             R0, #1
0000dcfc  STMEA           SP, {R0-R3}
0000dd00  LDRH            R0, [R4,#0xA2]
0000dd04  ADD             R0, R0, R10
0000dd08  ADD             R0, R0, R9
0000dd0c  MOV             R2, R0,LSL#16
0000dd10  LDRH            R0, [R4,#0xA0]
0000dd14  LDR             R3, [SP,#0x6C+var_20]
0000dd18  MOV             R2, R2,ASR#16
0000dd1c  ADD             R0, R0, R11
0000dd20  ADD             R0, R0, R8
0000dd24  MOV             R1, R0,LSL#16
0000dd28  MOV             R1, R1,ASR#16
0000dd2c  MOV             R0, R6
0000dd30  BL              sub_10C58
0000dd34  MOV             R3, #0
0000dd38  MOV             R2, #0
0000dd3c  MOV             R1, #0
0000dd40  MOV             R0, #1
0000dd44  STMEA           SP, {R0-R3}
0000dd48  LDRH            R0, [R4,#0xA2]
0000dd4c  LDRSH           R1, [R4,#0xA0]
0000dd50  LDR             R3, [SP,#0x6C+var_20]
0000dd54  ADD             R0, R0, R10
0000dd58  SUB             R0, R0, R9
0000dd5c  MOV             R2, R0,LSL#16
0000dd60  MOV             R2, R2,ASR#16
0000dd64  MOV             R0, R6
0000dd68  BL              sub_10C58
0000dd6c  MOV             R3, #0
0000dd70  MOV             R2, #0
0000dd74  MOV             R1, #0
0000dd78  MOV             R0, #1
0000dd7c  STMEA           SP, {R0-R3}
0000dd80  LDRH            R0, [R4,#0xA2]
0000dd84  ADD             R0, R0, R10
0000dd88  SUB             R0, R0, R9
0000dd8c  MOV             R2, R0,LSL#16
0000dd90  LDRH            R0, [R4,#0xA0]
0000dd94  LDR             R3, [SP,#0x6C+var_20]
0000dd98  MOV             R2, R2,ASR#16
0000dd9c  ADD             R0, R0, R11
0000dda0  ADD             R0, R0, R8
0000dda4  MOV             R1, R0,LSL#16
0000dda8  MOV             R1, R1,ASR#16
0000ddac  MOV             R0, R6
0000ddb0  BL              sub_10C58
0000ddb4  SUB             R9, R9, #1
0000ddb8  ADD             R8, R8, #1
0000ddbc  CMP             R8, R9
0000ddc0  BLE             loc_DB50
0000ddc4  LDR             R0, [SP,#0x6C+var_4C]
0000ddc8  LDRH            R1, [R4,#0x9E]
0000ddcc  LDRH            R12, [R0]
0000ddd0  LDRH            LR, [R0,#2]
0000ddd4  LDRH            R0, [R4,#0x9C]
0000ddd8  LDR             R2, [R5,#0x830]
0000dddc  MOV             R3, #0
0000dde0  SUB             R1, R1, R2
0000dde4  LDR             R2, [R5,#0x83C]
0000dde8  SUB             R0, R0, R12
0000ddec  ADD             R1, R1, R2
0000ddf0  ADD             R0, R0, R0,LSR#31
0000ddf4  MOV             R8, R0,ASR#1
0000ddf8  ADD             R0, LR, LR,LSR#31
0000ddfc  SUB             R9, R1, R0,ASR#1
0000de00  MOV             R1, #1
0000de04  STR             R1, [SP,#0x6C+var_5C]
0000de08  MOV             R2, #0
0000de0c  STR             R2, [SP,#0x6C+var_58]
0000de10  MOV             R1, LR,LSL#16
0000de14  MOV             R0, #0
0000de18  STR             R0, [SP,#0x6C+var_60]
0000de1c  MOV             R1, R1,ASR#16
0000de20  LDR             R2, [SP,#0x6C+var_4C]
0000de24  STR             R3, [SP,#0x6C+var_54]
0000de28  STMEA           SP, {R1-R3}
0000de2c  LDRH            R0, [R4,#0xA2]
0000de30  MOV             R3, R12,LSL#16
0000de34  MOV             R3, R3,ASR#16
0000de38  ADD             R0, R0, R9
0000de3c  MOV             R2, R0,LSL#16
0000de40  LDRH            R0, [R4,#0xA0]
0000de44  MOV             R2, R2,ASR#16
0000de48  ADD             R0, R0, R8
0000de4c  MOV             R1, R0,LSL#16
0000de50  MOV             R1, R1,ASR#16
0000de54  MOV             R0, R6
0000de58  BL              sub_3324
0000de5c  LDR             R2, [SP,#0x6C+var_24]
0000de60  CMP             R2, #0
0000de64  BNE             loc_DF5C
0000de68  LDRB            R0, [R5,#0x852]
0000de6c  CMP             R0, #0
0000de70  LDRBNE          R0, [R5,#0x853]
0000de74  LDRNE           R1, [R7,#0x38]
0000de78  CMPNE           R0, R1
0000de7c  BCS             loc_DF5C
0000de80  LDR             R1, [R7]
0000de84  LDR             R0, [SP,#0x6C+var_4]
0000de88  BL              sub_11DD8
0000de8c  LDRB            R1, [R5,#0x853]
0000de90  MOV             R8, R0
0000de94  LDRH            R12, [R0]
0000de98  ADD             R1, R1, R1,LSL#1
0000de9c  ADD             R7, R7, R1,LSL#1
0000dea0  LDRH            R0, [R0,#2]
0000dea4  LDRSH           R1, [R7,#0x3E]
0000dea8  ADD             R1, R1, R1,LSL#2
0000deac  ADD             R1, R1, R1,LSR#31
0000deb0  SUB             R1, R0, R1,ASR#1
0000deb4  ADD             R5, R1, #0x14
0000deb8  CMP             R0, R5
0000debc  BGE             loc_DECC
0000dec0  MUL             R1, R5, R12
0000dec4  BL              sub_104
0000dec8  MOV             R12, R0
0000decc  LDRH            R0, [R4,#0x9C]
0000ded0  LDR             R1, [SP,#0x6C+var_44]
0000ded4  MOV             R3, #0
0000ded8  ADD             R0, R1, R0,LSR#1
0000dedc  LDRH            R1, [R7,#0x3C]
0000dee0  MOV             R2, #0
0000dee4  ADD             R9, SP, #0x6C+var_58
0000dee8  ADD             R0, R0, R1
0000deec  SUB             LR, R0, #0x3C ; '<'
0000def0  LDRH            R0, [R4,#0x9E]
0000def4  MOV             R1, #1
0000def8  SUB             R7, R0, R5
0000defc  LDRSH           R0, [R8,#2]
0000df00  STM             R9, {R0-R3}
0000df04  LDRSH           R3, [R8]
0000df08  ADD             R0, SP, #0x6C+var_64
0000df0c  MOV             R1, #0
0000df10  STM             R0, {R1-R3}
0000df14  MOV             R3, R5,LSL#16
0000df18  MOV             R3, R3,ASR#16
0000df1c  STMEA           SP, {R3,R8}
0000df20  LDRH            R0, [R4,#0xA2]
0000df24  MOV             R3, R12,LSL#16
0000df28  MOV             R3, R3,ASR#16
0000df2c  ADD             R0, R0, R7
0000df30  MOV             R2, R0,LSL#16
0000df34  LDRH            R0, [R4,#0xA0]
0000df38  MOV             R2, R2,ASR#16
0000df3c  ADD             R0, R0, LR
0000df40  MOV             R1, R0,LSL#16
0000df44  MOV             R1, R1,ASR#16
0000df48  MOV             R0, R6
0000df4c  BL              sub_18BC
0000df50  ADD             SP, SP, #0x6C ; 'l'
0000df54  POP             {R4-R11,LR}
0000df58  BX              LR
0000df5c  LDRB            R0, [R5,#0x870]
0000df60  CMP             R0, #0
0000df64  BNE             loc_DF50
0000df68  LDR             R1, [R7]
0000df6c  LDR             R0, [SP,#0x6C+var_4]
0000df70  BL              sub_11DD8
0000df74  MOV             R8, R0
0000df78  LDRB            R0, [R5,#0x852]
0000df7c  CMP             R0, #0
0000df80  BEQ             loc_E0A0
0000df84  LDRB            R0, [R7,#5]
0000df88  CMP             R0, #0
0000df8c  LDRBEQ          R0, [R5,#0x853]
0000df90  CMPEQ           R0, #0
0000df94  LDRBEQ          R0, [R7,#4]
0000df98  CMPEQ           R0, #0
0000df9c  BNE             loc_E064
0000dfa0  LDR             R1, =0x1005
0000dfa4  LDR             R0, [SP,#0x6C+var_4]
0000dfa8  BL              sub_11DD8
0000dfac  MOV             R9, R0
0000dfb0  LDR             R1, [R5,#0x858]
0000dfb4  LDRB            R0, [R7,#0xC]
0000dfb8  BL              sub_1DC
0000dfbc  ADD             R0, R7, R1
0000dfc0  LDRB            R0, [R0,#0xD]
0000dfc4  ADD             R1, R0, #0x1000
0000dfc8  ADD             R1, R1, #0xF
0000dfcc  LDR             R0, [SP,#0x6C+var_4]
0000dfd0  BL              sub_11DD8
0000dfd4  MOV             R3, R0
0000dfd8  LDRH            R0, [R4,#0x9C]
0000dfdc  LDR             R1, [SP,#0x6C+var_44]
0000dfe0  MOV             R2, #0
0000dfe4  ADD             R0, R1, R0,LSR#1
0000dfe8  LDRH            R1, [R7,#8]
0000dfec  ADD             R12, R0, R1
0000dff0  LDRH            R0, [R4,#0x9E]
0000dff4  LDRH            R1, [R8,#2]
0000dff8  SUB             R0, R0, R1
0000dffc  LDRH            R1, [R7,#0xA]
0000e000  STR             R2, [SP,#0x6C+var_58]
0000e004  STR             R3, [SP,#0x6C+var_54]
0000e008  ADD             LR, R0, R1
0000e00c  MOV             R1, #0x21 ; '!'
0000e010  MOV             R0, #0
0000e014  STR             R0, [SP,#0x6C+var_60]
0000e018  STR             R1, [SP,#0x6C+var_5C]
0000e01c  LDRSH           R1, [R9,#2]
0000e020  MOV             R3, #0
0000e024  STMEA           SP, {R1,R9}
0000e028  STR             R3, [SP,#0x6C+var_64]
0000e02c  LDRH            R0, [R4,#0xA2]
0000e030  LDRSH           R3, [R9]
0000e034  ADD             R0, R0, LR
0000e038  MOV             R2, R0,LSL#16
0000e03c  LDRH            R0, [R4,#0xA0]
0000e040  MOV             R2, R2,ASR#16
0000e044  ADD             R0, R0, R12
0000e048  MOV             R1, R0,LSL#16
0000e04c  MOV             R1, R1,ASR#16
0000e050  MOV             R0, R6
0000e054  BL              sub_3324
0000e058  LDRB            R0, [R5,#0x852]
0000e05c  CMP             R0, #0
0000e060  BEQ             loc_E0A0
0000e064  LDRB            R0, [R5,#0x853]
0000e068  LDR             R1, [R7,#0x38]
0000e06c  CMP             R0, R1
0000e070  BCS             loc_E0A0
0000e074  LDRH            R1, [R4,#0x9C]
0000e078  LDR             R2, [SP,#0x6C+var_44]
0000e07c  ADD             R0, R0, R0,LSL#1
0000e080  ADD             R0, R7, R0,LSL#1
0000e084  ADD             R1, R2, R1,LSR#1
0000e088  LDRSH           R2, [R0,#0x3C]
0000e08c  ADD             R9, R1, R2
0000e090  LDRH            R1, [R8,#2]
0000e094  LDRSH           R0, [R0,#0x3E]
0000e098  SUB             R7, R1, R0
0000e09c  B               loc_E108
0000e0a0  LDRB            R0, [R5,#0x868]
0000e0a4  CMP             R0, #0
0000e0a8  BNE             loc_E0E0
0000e0ac  LDR             R0, [R5,#0x844]
0000e0b0  MOV             R0, R0,LSL#20
0000e0b4  MOVS            R0, R0,LSR#20
0000e0b8  BEQ             loc_E0E0
0000e0bc  LDRB            R0, [R5,#0x84D]
0000e0c0  CMP             R0, #0
0000e0c4  LDRBEQ          R0, [R5,#0x85C]
0000e0c8  CMPEQ           R0, #0
0000e0cc  BNE             loc_E0E0
0000e0d0  LDR             R1, [R5,#0x8A4]
0000e0d4  LDR             R0, [R7,#0x14]
0000e0d8  BL              sub_1DC
0000e0dc  B               loc_E0E4
0000e0e0  MOV             R1, #0
0000e0e4  LDRH            R0, [R4,#0x9C]
0000e0e8  LDR             R2, [SP,#0x6C+var_44]
0000e0ec  ADD             R1, R7, R1,LSL#2
0000e0f0  ADD             R0, R2, R0,LSR#1
0000e0f4  LDRSH           R2, [R1,#0x18]
0000e0f8  ADD             R9, R0, R2
0000e0fc  LDRH            R0, [R8,#2]
0000e100  LDRSH           R1, [R1,#0x1A]
0000e104  SUB             R7, R0, R1
0000e108  LDRB            R0, [R5,#0x84D]
0000e10c  CMP             R0, #0
0000e110  BEQ             loc_E138
0000e114  LDRB            R0, [R5,#0x850]
0000e118  CMP             R0, #1
0000e11c  CMPNE           R0, #3
0000e120  ADDEQ           R0, R7, R7,LSR#31
0000e124  MOVEQ           R7, R0,ASR#1
0000e128  BEQ             loc_E164
0000e12c  CMP             R0, #2
0000e130  MOVEQ           R7, #0
0000e134  B               loc_E164
0000e138  LDRB            R0, [R5,#0x85C]
0000e13c  CMP             R0, #0
0000e140  BEQ             loc_E164
0000e144  LDRB            R0, [R5,#0x85D]
0000e148  MOV             R1, R7,LSL#1
0000e14c  MUL             R1, R0, R1
0000e150  LDRB            R0, [R5,#0x85E]
0000e154  BL              sub_104
0000e158  CMP             R0, R7
0000e15c  RSBGT           R0, R0, R7,LSL#1
0000e160  SUB             R7, R7, R0
0000e164  LDRH            R0, [R4,#0x9E]
0000e168  MOV             R3, #0
0000e16c  MOV             R2, #0
0000e170  SUB             R12, R0, R7
0000e174  MOV             R0, #0
0000e178  MOV             R1, #1
0000e17c  ADD             R5, SP, #0x6C+var_60
0000e180  STM             R5, {R0-R3}
0000e184  LDRSH           R1, [R8,#2]
0000e188  STMEA           SP, {R1,R8}
0000e18c  STR             R3, [SP,#0x6C+var_64]
0000e190  LDRH            R0, [R4,#0xA2]
0000e194  LDRSH           R3, [R8]
0000e198  ADD             R0, R0, R12
0000e19c  MOV             R2, R0,LSL#16
0000e1a0  LDRH            R0, [R4,#0xA0]
0000e1a4  MOV             R2, R2,ASR#16
0000e1a8  ADD             R0, R0, R9
0000e1ac  MOV             R1, R0,LSL#16
0000e1b0  MOV             R1, R1,ASR#16
0000e1b4  MOV             R0, R6
0000e1b8  BL              sub_3324
0000e1bc  B               loc_DF50
