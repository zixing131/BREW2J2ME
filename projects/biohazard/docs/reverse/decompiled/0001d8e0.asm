0001d8e0  PUSH            {R4-R11,LR}
0001d8e4  LDR             R5, =(start - 0x1D8FC)
0001d8e8  SUB             SP, SP, #0x34
0001d8ec  MOV             R8, R0
0001d8f0  MOV             R4, R1
0001d8f4  ADD             R5, PC, R5; start
0001d8f8  LDR             R0, [R5,#(dword_8 - 0xC)]
0001d8fc  ADR             LR, loc_1D908
0001d900  LDR             R0, [R0,#0xC0]
0001d904  BX              R0
0001d908  LDR             R6, [R0,#0x28]
0001d90c  LDR             R0, [R5,#(dword_8 - 0xC)]
0001d910  LDR             R7, [R6,#0x64]
0001d914  LDR             R0, [R0,#0xC0]
0001d918  MOV             LR, PC
0001d91c  BX              R0
0001d920  MOV             R9, R0
0001d924  LDRB            R0, [R8,#0x10]
0001d928  CMP             R0, #1
0001d92c  BEQ             loc_1D9AC
0001d930  LDRSH           R0, [R4,#2]
0001d934  MOV             R3, #0
0001d938  LDR             R2, =0xADD7
0001d93c  MOV             R1, #0
0001d940  STMEA           SP, {R0-R3}
0001d944  LDRSH           R3, [R4]
0001d948  MOV             R2, #0
0001d94c  MOV             R0, R4
0001d950  BL              sub_10C58
0001d954  MOV             R3, #0
0001d958  LDR             R2, =0x4BBB
0001d95c  MOV             R1, #0
0001d960  MOV             R0, #0xF
0001d964  STMEA           SP, {R0-R3}
0001d968  LDRSH           R3, [R4]
0001d96c  MOV             R2, #0
0001d970  MOV             R0, R4
0001d974  BL              sub_10C58
0001d978  MOV             R3, #0
0001d97c  LDR             R2, =0x4BB1
0001d980  MOV             R1, #0
0001d984  MOV             R0, #0xF
0001d988  STMEA           SP, {R0-R3}
0001d98c  LDRSH           R3, [R4]
0001d990  LDRH            R0, [R4,#2]
0001d994  MOV             R1, #0
0001d998  SUB             R0, R0, #0xF
0001d99c  MOV             R2, R0,LSL#16
0001d9a0  MOV             R2, R2,ASR#16
0001d9a4  MOV             R0, R4
0001d9a8  BL              sub_10C58
0001d9ac  LDRB            R0, [R8,#0x10]
0001d9b0  LDR             R10, =0x258C
0001d9b4  LDR             R11, =0xFFE0
0001d9b8  ADD             R5, R8, #0x12
0001d9bc  CMP             R0, #4; switch 5 cases
0001d9c0  ADDLS           PC, PC, R0,LSL#2; switch jump
0001d9c4  B               def_1D9C0; jumptable 0001D9C0 default case, case 1
0001d9c8  B               loc_1D9DC; jumptable 0001D9C0 case 0
0001d9cc  B               def_1D9C0; jumptable 0001D9C0 default case, case 1
0001d9d0  B               loc_1DED8; jumptable 0001D9C0 case 2
0001d9d4  B               loc_1DF3C; jumptable 0001D9C0 case 3
0001d9d8  B               loc_1E0E4; jumptable 0001D9C0 case 4
0001d9dc  MOV             R3, #0x20 ; ' '; jumptable 0001D9C0 case 0
0001d9e0  MOV             R2, R5
0001d9e4  LDR             R1, =0x2616
0001d9e8  MOV             R0, R6
0001d9ec  BL              sub_19618
0001d9f0  MOV             R2, #0
0001d9f4  MOV             R1, R5
0001d9f8  MOV             R0, R7
0001d9fc  BL              sub_12BC8
0001da00  LDRH            R1, [R4]
0001da04  MOV             R3, #0
0001da08  STR             R3, [SP,#0x34+var_20]
0001da0c  SUB             R0, R1, R0
0001da10  MOV             R1, #0
0001da14  STR             R1, [SP,#0x34+var_2C]
0001da18  MOV             R2, R0,ASR#1
0001da1c  MOV             R3, #0x1E
0001da20  STMEA           SP, {R2,R3}
0001da24  ADD             R0, SP, #0x34+var_28
0001da28  STM             R0, {R1,R11}
0001da2c  MOV             R1, R4
0001da30  MOV             R0, R7
0001da34  MOV             R3, #0xFFFFFFFF
0001da38  MOV             R2, R5
0001da3c  BL              sub_1A228
0001da40  LDR             R0, [R8]
0001da44  LDR             R1, [R8,#0xC]
0001da48  LDR             R0, [R0,#8]
0001da4c  ADD             R1, R1, R1,LSL#2
0001da50  ADD             R0, R0, R1,LSL#2
0001da54  LDRH            R1, [R0]
0001da58  MOV             R0, R6
0001da5c  MOV             R3, #0x20 ; ' '
0001da60  MOV             R2, R5
0001da64  BL              sub_19618
0001da68  MOV             R2, #0
0001da6c  MOV             R1, R5
0001da70  MOV             R0, R7
0001da74  BL              sub_12BC8
0001da78  LDRH            R1, [R4]
0001da7c  MOV             R3, #0
0001da80  LDR             R2, =0xFFE0
0001da84  SUB             R0, R1, R0
0001da88  MOV             R12, R0,ASR#1
0001da8c  MOV             R1, #0
0001da90  STR             R1, [SP,#0x34+var_2C]
0001da94  ADD             R0, SP, #0x34+var_28
0001da98  STM             R0, {R1-R3}
0001da9c  MOV             R3, #0x32 ; '2'
0001daa0  STR             R3, [SP,#0x34+var_30]
0001daa4  MOV             R3, #0xFFFFFFFF
0001daa8  STR             R12, [SP,#0x34+var_34]
0001daac  MOV             R2, R5
0001dab0  MOV             R1, R4
0001dab4  MOV             R0, R7
0001dab8  BL              sub_1A228
0001dabc  MOV             R3, #0x20 ; ' '
0001dac0  MOV             R2, R5
0001dac4  LDR             R1, =0x2619
0001dac8  MOV             R0, R6
0001dacc  BL              sub_19618
0001dad0  MOV             R2, #0
0001dad4  MOV             R1, R5
0001dad8  MOV             R0, R7
0001dadc  BL              sub_12BC8
0001dae0  LDRH            R1, [R4]
0001dae4  MOV             R3, #0
0001dae8  LDR             R2, =0xFFE0
0001daec  RSB             R12, R0, R1,LSR#1
0001daf0  MOV             R1, #0
0001daf4  STR             R1, [SP,#0x34+var_2C]
0001daf8  ADD             R0, SP, #0x34+var_28
0001dafc  STM             R0, {R1-R3}
0001db00  MOV             R3, #0x46 ; 'F'
0001db04  STR             R3, [SP,#0x34+var_30]
0001db08  MOV             R3, #0xFFFFFFFF
0001db0c  STR             R12, [SP,#0x34+var_34]
0001db10  MOV             R2, R5
0001db14  MOV             R1, R4
0001db18  MOV             R0, R7
0001db1c  BL              sub_1A228
0001db20  LDR             R0, [R8]
0001db24  LDR             R1, [R8,#0xC]
0001db28  LDR             R0, [R0,#8]
0001db2c  LDR             R2, =(start - 0x1DB44)
0001db30  ADD             R1, R1, R1,LSL#2
0001db34  ADD             R0, R0, R1,LSL#2
0001db38  LDRB            R3, [R0,#4]
0001db3c  ADD             R2, PC, R2; start
0001db40  LDR             R0, [R2,#(dword_8 - 0xC)]
0001db44  LDR             R2, =(aD_0 - 0x1DB50); "%d"
0001db48  ADD             R2, PC, R2; "%d"
0001db4c  LDR             R12, [R0,#0x3C]
0001db50  MOV             R0, R5
0001db54  MOV             R1, #0x20 ; ' '
0001db58  MOV             LR, PC
0001db5c  BX              R12
0001db60  MOV             R1, #0
0001db64  STR             R1, [SP,#0x34+var_2C]
0001db68  MOV             R3, #0
0001db6c  LDR             R2, =0xFFE0
0001db70  ADD             R0, SP, #0x34+var_28
0001db74  STM             R0, {R1-R3}
0001db78  LDRH            R0, [R4]
0001db7c  MOV             R3, #0x46 ; 'F'
0001db80  MOV             R1, R4
0001db84  MOV             R2, R0,LSR#1
0001db88  STMEA           SP, {R2,R3}
0001db8c  MOV             R3, #0xFFFFFFFF
0001db90  MOV             R2, R5
0001db94  MOV             R0, R7
0001db98  BL              sub_1A228
0001db9c  MOV             R3, #0x20 ; ' '
0001dba0  MOV             R2, R5
0001dba4  LDR             R1, =0x261A
0001dba8  MOV             R0, R6
0001dbac  BL              sub_19618
0001dbb0  MOV             R1, #0
0001dbb4  STR             R1, [SP,#0x34+var_2C]
0001dbb8  MOV             R3, #0
0001dbbc  LDR             R2, =0xFFE0
0001dbc0  ADD             R12, SP, #0x34+var_28
0001dbc4  STM             R12, {R1-R3}
0001dbc8  LDRH            R0, [R4]
0001dbcc  MOV             R1, #8
0001dbd0  MOV             R3, #0x46 ; 'F'
0001dbd4  ADD             R2, R1, R0,LSR#1
0001dbd8  STMEA           SP, {R2,R3}
0001dbdc  MOV             R3, #0xFFFFFFFF
0001dbe0  MOV             R2, R5
0001dbe4  MOV             R1, R4
0001dbe8  MOV             R0, R7
0001dbec  BL              sub_1A228
0001dbf0  MOV             R3, #0x20 ; ' '
0001dbf4  MOV             R2, R5
0001dbf8  LDR             R1, =0x261D
0001dbfc  MOV             R0, R6
0001dc00  BL              sub_19618
0001dc04  LDR             R1, [R8,#0xC]
0001dc08  ADD             R0, R0, R0,LSR#31
0001dc0c  ADD             R1, R1, R9
0001dc10  LDRB            R3, [R1,#0x390]
0001dc14  MOV             R0, R0,ASR#1
0001dc18  SUB             R0, R0, #1
0001dc1c  MOV             R1, #0x20 ; ' '
0001dc20  SUB             R1, R1, R0,LSL#1
0001dc24  ADD             R0, R8, R0,LSL#1
0001dc28  LDR             R2, =(start - 0x1DC38)
0001dc2c  ADD             R0, R0, #0x12
0001dc30  ADD             R2, PC, R2; start
0001dc34  LDR             R2, [R2,#(dword_8 - 0xC)]
0001dc38  LDR             R12, [R2,#0x3C]
0001dc3c  LDR             R2, =(aD_0 - 0x1DC48); "%d"
0001dc40  ADD             R2, PC, R2; "%d"
0001dc44  MOV             LR, PC
0001dc48  BX              R12
0001dc4c  MOV             R2, #0
0001dc50  MOV             R1, R5
0001dc54  LDR             R0, [R6,#0x64]
0001dc58  BL              sub_12BC8
0001dc5c  LDRH            R1, [R4]
0001dc60  MOV             R3, #0
0001dc64  LDR             R2, =0xFFE0
0001dc68  SUB             R0, R1, R0
0001dc6c  MOV             R1, #8
0001dc70  ADD             R12, R1, R0,ASR#1
0001dc74  MOV             R1, #0
0001dc78  STR             R1, [SP,#0x34+var_2C]
0001dc7c  ADD             R0, SP, #0x34+var_28
0001dc80  STM             R0, {R1-R3}
0001dc84  MOV             R3, #0x55 ; 'U'
0001dc88  STR             R3, [SP,#0x34+var_30]
0001dc8c  STR             R12, [SP,#0x34+var_34]
0001dc90  LDR             R0, [R6,#0x64]
0001dc94  MOV             R3, #0xFFFFFFFF
0001dc98  MOV             R2, R5
0001dc9c  MOV             R1, R4
0001dca0  BL              sub_1A228
0001dca4  LDRB            R0, [R9,#0x40]
0001dca8  CMP             R0, #0
0001dcac  BEQ             loc_1DCEC
0001dcb0  MOV             R3, #0
0001dcb4  STR             R3, [SP,#0x34+var_20]
0001dcb8  MOV             R1, #0
0001dcbc  STR             R1, [SP,#0x34+var_2C]
0001dcc0  ADD             R0, SP, #0x34+var_28
0001dcc4  STM             R0, {R1,R11}
0001dcc8  MOV             R3, #0xC8
0001dccc  MOV             R2, #0
0001dcd0  STMEA           SP, {R2,R3}
0001dcd4  ADD             R2, R9, #0x400
0001dcd8  ADD             R2, R2, #0x338
0001dcdc  LDR             R0, [R6,#0x64]
0001dce0  MOV             R3, #0xFFFFFFFF
0001dce4  MOV             R1, R4
0001dce8  BL              sub_1A228
0001dcec  MOV             R0, #0x64 ; 'd'
0001dcf0  STRH            R0, [SP,#0x34+var_4]
0001dcf4  MOV             R0, #0x28 ; '('
0001dcf8  STRH            R0, [SP,#0x34+var_2]
0001dcfc  MOV             R0, #0x26 ; '&'
0001dd00  STRH            R0, [SP,#0x34+var_8]
0001dd04  MOV             R0, #0x6E ; 'n'
0001dd08  STRH            R0, [SP,#0x34+var_6]
0001dd0c  MOV             R0, #1
0001dd10  STRB            R0, [R8,#0x122]
0001dd14  LDR             R0, =(start - 0x1DD20)
0001dd18  ADD             R0, PC, R0; start
0001dd1c  LDR             R0, [R0,#(dword_8 - 0xC)]
0001dd20  MOV             R2, #8
0001dd24  LDR             R3, [R0,#4]
0001dd28  ADD             R0, SP, #0x34+var_10
0001dd2c  MOV             R1, #0
0001dd30  MOV             LR, PC
0001dd34  BX              R3
0001dd38  LDRH            R0, [SP,#0x34+var_4]
0001dd3c  MOV             R3, #0
0001dd40  MOV             R2, #0
0001dd44  STRH            R0, [SP,#0x34+var_C]
0001dd48  LDRSH           R0, [SP,#0x34+var_10]
0001dd4c  MOV             R1, #0
0001dd50  ADD             R9, SP, #0x34+var_24
0001dd54  STM             R9, {R0-R3}
0001dd58  ADD             R0, R8, #0x32 ; '2'
0001dd5c  STMEA           SP, {R0-R3}
0001dd60  LDRSH           R2, [SP,#0x34+var_E]
0001dd64  MOV             R9, R0
0001dd68  LDR             R0, [R6,#0x64]
0001dd6c  ADD             R3, SP, #0x34+var_10
0001dd70  MOV             R1, R4
0001dd74  BL              sub_98BC
0001dd78  STR             R0, [SP,#0x34+var_14]
0001dd7c  LDRH            R0, [SP,#0x34+var_14+2]
0001dd80  LDRSH           R1, [SP,#0x34+var_2]
0001dd84  ADD             R0, R0, #0xC
0001dd88  MOV             R0, R0,LSL#16
0001dd8c  MOV             R0, R0,ASR#16
0001dd90  CMP             R1, R0
0001dd94  BLE             loc_1DDC8
0001dd98  LDRSH           R0, [SP,#0x34+var_8]
0001dd9c  MOV             R3, #0
0001dda0  MOV             R2, #0
0001dda4  MOV             R1, #0
0001dda8  ADD             R12, SP, #0x34+var_24
0001ddac  STM             R12, {R0-R3}
0001ddb0  STR             R9, [SP,#0x34+var_34]
0001ddb4  STMFA           SP, {R1-R3}
0001ddb8  LDRSH           R2, [SP,#0x34+var_6]
0001ddbc  LDR             R0, [R6,#0x64]
0001ddc0  ADD             R3, SP, #0x34+var_8
0001ddc4  B               loc_1DE40
0001ddc8  LDR             R1, [R8,#0x128]
0001ddcc  MOV             R2, R1,ASR#31
0001ddd0  ADD             R1, R1, R2,LSR#29
0001ddd4  MOV             R8, R1,ASR#3
0001ddd8  LDRSH           R1, [SP,#0x34+var_2]
0001dddc  ADD             R1, R1, R0
0001dde0  MOV             R0, #0xC
0001dde4  BL              sub_104
0001dde8  ADD             R0, R0, #1
0001ddec  MOV             R1, R8
0001ddf0  BL              sub_104
0001ddf4  ADD             R0, R1, R1,LSL#1
0001ddf8  LDRH            R1, [SP,#0x34+var_6]
0001ddfc  LDRH            R2, [SP,#0x34+var_2]
0001de00  MOV             R3, #0
0001de04  ADD             R8, SP, #0x34+var_24
0001de08  ADD             R1, R1, R2
0001de0c  SUB             R1, R1, #0xC
0001de10  SUB             R0, R1, R0,LSL#2
0001de14  MOV             R12, R0,LSL#16
0001de18  LDRSH           R0, [SP,#0x34+var_8]
0001de1c  MOV             R1, #0
0001de20  MOV             R2, #0
0001de24  STM             R8, {R0-R3}
0001de28  STR             R9, [SP,#0x34+var_34]
0001de2c  STMFA           SP, {R1-R3}
0001de30  LDR             R0, [R6,#0x64]
0001de34  MOV             R12, R12,ASR#16
0001de38  MOV             R2, R12
0001de3c  ADD             R3, SP, #0x34+var_8
0001de40  MOV             R1, R4
0001de44  BL              sub_98BC
0001de48  MOV             R3, #0x20 ; ' '
0001de4c  MOV             R2, R5
0001de50  MOV             R1, R10
0001de54  MOV             R0, R6
0001de58  BL              sub_19618
0001de5c  MOV             R1, #0
0001de60  STR             R1, [SP,#0x34+var_2C]
0001de64  ADD             R2, SP, #0x34+var_28
0001de68  STM             R2, {R1,R11}
0001de6c  MOV             R3, #0
0001de70  STR             R3, [SP,#0x34+var_20]
0001de74  LDRH            R0, [R4,#2]
0001de78  MOV             R2, #0
0001de7c  MOV             R1, R4
0001de80  SUB             R3, R0, #0xC
0001de84  STMEA           SP, {R2,R3}
0001de88  MOV             R3, #0xFFFFFFFF
0001de8c  MOV             R2, R5
0001de90  MOV             R0, R7
0001de94  BL              sub_1A228
0001de98  MOV             R3, #0x20 ; ' '
0001de9c  MOV             R2, R5
0001dea0  LDR             R1, =0x258D
0001dea4  MOV             R0, R6
0001dea8  BL              sub_19618
0001deac  MOV             R1, #0
0001deb0  STR             R1, [SP,#0x34+var_2C]
0001deb4  MOV             R3, #0
0001deb8  LDR             R2, =0xFFE0
0001debc  ADD             R6, SP, #0x34+var_28
0001dec0  STM             R6, {R1-R3}
0001dec4  LDRH            R0, [R4,#2]
0001dec8  SUB             R3, R0, #0xC
0001decc  LDRH            R0, [R4]
0001ded0  SUB             R2, R0, #0x18
0001ded4  B               loc_1E180
0001ded8  MOV             R3, #0x20 ; ' '; jumptable 0001D9C0 case 2
0001dedc  MOV             R2, R5
0001dee0  LDR             R1, =0x2617
0001dee4  MOV             R0, R6
0001dee8  BL              sub_19618
0001deec  MOV             R2, #0
0001def0  MOV             R1, R5
0001def4  LDR             R0, [R6,#0x64]
0001def8  BL              sub_12BC8
0001defc  LDRH            R1, [R4]
0001df00  MOV             R3, #0
0001df04  STR             R3, [SP,#0x34+var_20]
0001df08  SUB             R0, R1, R0
0001df0c  MOV             R2, R0,ASR#1
0001df10  MOV             R1, #0
0001df14  STR             R1, [SP,#0x34+var_2C]
0001df18  ADD             R0, SP, #0x34+var_28
0001df1c  STM             R0, {R1,R11}
0001df20  MOV             R3, #0x32 ; '2'
0001df24  STMEA           SP, {R2,R3}
0001df28  LDR             R0, [R6,#0x64]
0001df2c  MOV             R3, #0xFFFFFFFF
0001df30  MOV             R2, R5
0001df34  MOV             R1, R4
0001df38  B               loc_1E144
0001df3c  MOV             R3, #0x20 ; ' '; jumptable 0001D9C0 case 3
0001df40  MOV             R2, R5
0001df44  LDR             R1, =0x2618
0001df48  MOV             R0, R6
0001df4c  BL              sub_19618
0001df50  MOV             R2, #0
0001df54  MOV             R1, R5
0001df58  LDR             R0, [R6,#0x64]
0001df5c  BL              sub_12BC8
0001df60  LDRH            R1, [R4]
0001df64  MOV             R3, #0
0001df68  STR             R3, [SP,#0x34+var_20]
0001df6c  SUB             R0, R1, R0
0001df70  MOV             R2, R0,ASR#1
0001df74  MOV             R1, #0
0001df78  STR             R1, [SP,#0x34+var_2C]
0001df7c  ADD             R0, SP, #0x34+var_28
0001df80  STM             R0, {R1,R11}
0001df84  MOV             R3, #0x32 ; '2'
0001df88  STMEA           SP, {R2,R3}
0001df8c  LDR             R0, [R6,#0x64]
0001df90  MOV             R3, #0xFFFFFFFF
0001df94  MOV             R2, R5
0001df98  MOV             R1, R4
0001df9c  BL              sub_1A228
0001dfa0  LDR             R0, [R8,#0x158]
0001dfa4  SUB             R12, R0, #0x300
0001dfa8  SUBS            R12, R12, #0xED
0001dfac  MOVEQ           R3, #0x20 ; ' '
0001dfb0  MOVEQ           R2, R5
0001dfb4  LDREQ           R1, =0x261E
0001dfb8  BEQ             loc_1DFEC
0001dfbc  SUB             R12, R0, #0x300
0001dfc0  SUBS            R12, R12, #0xF2
0001dfc4  MOVEQ           R3, #0x20 ; ' '
0001dfc8  MOVEQ           R2, R5
0001dfcc  LDREQ           R1, =0x261F
0001dfd0  BEQ             loc_1DFEC
0001dfd4  SUB             R12, R0, #0x300
0001dfd8  SUBS            R12, R12, #0xF5
0001dfdc  LDRNE           R1, =0x2621
0001dfe0  MOV             R3, #0x20 ; ' '
0001dfe4  ADDEQ           R1, R3, #0x2600
0001dfe8  MOV             R2, R5
0001dfec  MOV             R0, R6
0001dff0  BL              sub_19618
0001dff4  MOV             R2, #0
0001dff8  MOV             R1, R5
0001dffc  MOV             R0, R7
0001e000  BL              sub_12BC8
0001e004  LDRH            R1, [R4]
0001e008  MOV             R3, #0
0001e00c  STR             R3, [SP,#0x34+var_20]
0001e010  SUB             R0, R1, R0
0001e014  MOV             R1, #0
0001e018  STR             R1, [SP,#0x34+var_2C]
0001e01c  MOV             R2, R0,ASR#1
0001e020  MOV             R3, #0x3E ; '>'
0001e024  STMEA           SP, {R2,R3}
0001e028  ADD             R0, SP, #0x34+var_28
0001e02c  STM             R0, {R1,R11}
0001e030  MOV             R1, R4
0001e034  MOV             R0, R7
0001e038  MOV             R3, #0xFFFFFFFF
0001e03c  MOV             R2, R5
0001e040  BL              sub_1A228
0001e044  LDR             R3, [R8,#0x158]
0001e048  LDR             R8, =(start - 0x1E054)
0001e04c  ADD             R8, PC, R8; start
0001e050  LDR             R0, [R8,#(dword_8 - 0xC)]
0001e054  LDR             R2, =(aD_0 - 0x1E060); "%d"
0001e058  ADD             R2, PC, R2; "%d"
0001e05c  LDR             R12, [R0,#0x3C]
0001e060  MOV             R0, R5
0001e064  MOV             R1, #0x20 ; ' '
0001e068  MOV             LR, PC
0001e06c  BX              R12
0001e070  LDR             R0, [R8,#(dword_8 - 0xC)]
0001e074  LDR             R0, [R0,#0xC0]
0001e078  MOV             LR, PC
0001e07c  BX              R0
0001e080  LDRB            R0, [R0,#0x40]
0001e084  CMP             R0, #1
0001e088  BNE             loc_1E0C4
0001e08c  MOV             R3, #0
0001e090  STR             R3, [SP,#0x34+var_20]
0001e094  MOV             R1, #0
0001e098  STR             R1, [SP,#0x34+var_2C]
0001e09c  ADD             R0, SP, #0x34+var_28
0001e0a0  STM             R0, {R1,R11}
0001e0a4  MOV             R3, #0x50 ; 'P'
0001e0a8  MOV             R2, #0
0001e0ac  STMEA           SP, {R2,R3}
0001e0b0  LDR             R0, [R6,#0x64]
0001e0b4  MOV             R3, #0xFFFFFFFF
0001e0b8  MOV             R2, R5
0001e0bc  MOV             R1, R4
0001e0c0  BL              sub_1A228
0001e0c4  MOV             R3, #0x20 ; ' '
0001e0c8  MOV             R2, R5
0001e0cc  MOV             R1, R10
0001e0d0  MOV             R0, R6
0001e0d4  BL              sub_19618
0001e0d8  MOV             R3, #0
0001e0dc  MOV             R2, R11
0001e0e0  B               loc_1E164
0001e0e4  MOV             R3, #0x20 ; ' '; jumptable 0001D9C0 case 4
0001e0e8  MOV             R2, R5
0001e0ec  LDR             R1, =0x261C
0001e0f0  MOV             R0, R6
0001e0f4  BL              sub_19618
0001e0f8  MOV             R2, #0
0001e0fc  MOV             R1, R5
0001e100  LDR             R0, [R6,#0x64]
0001e104  BL              sub_12BC8
0001e108  LDRH            R1, [R4]
0001e10c  MOV             R3, #0
0001e110  STR             R3, [SP,#0x34+var_20]
0001e114  SUB             R0, R1, R0
0001e118  MOV             R2, R0,ASR#1
0001e11c  MOV             R1, #0
0001e120  STR             R1, [SP,#0x34+var_2C]
0001e124  MOV             R3, #0x32 ; '2'
0001e128  STMEA           SP, {R2,R3}
0001e12c  ADD             R0, SP, #0x34+var_28
0001e130  STM             R0, {R1,R11}
0001e134  MOV             R1, R4
0001e138  MOV             R0, R7
0001e13c  MOV             R3, #0xFFFFFFFF
0001e140  MOV             R2, R5
0001e144  BL              sub_1A228
0001e148  MOV             R3, #0x20 ; ' '
0001e14c  MOV             R2, R5
0001e150  MOV             R1, R10
0001e154  MOV             R0, R6
0001e158  BL              sub_19618
0001e15c  LDR             R2, =0xFFE0
0001e160  MOV             R3, #0
0001e164  MOV             R1, #0
0001e168  STR             R1, [SP,#0x34+var_2C]
0001e16c  ADD             R6, SP, #0x34+var_28
0001e170  STM             R6, {R1-R3}
0001e174  LDRH            R0, [R4,#2]
0001e178  MOV             R2, #0
0001e17c  SUB             R3, R0, #0xC
0001e180  STMEA           SP, {R2,R3}
0001e184  MOV             R3, #0xFFFFFFFF
0001e188  MOV             R2, R5
0001e18c  MOV             R1, R4
0001e190  MOV             R0, R7
0001e194  BL              sub_1A228
0001e198  ADD             SP, SP, #0x34 ; '4'; jumptable 0001D9C0 default case, case 1
0001e19c  POP             {R4-R11,LR}
0001e1a0  BX              LR
