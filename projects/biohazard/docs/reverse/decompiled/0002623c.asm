0002623c  PUSH            {R4-R11,LR}
00026240  MOV             R7, R1
00026244  LDR             R1, [R0,#0xE0]
00026248  SUB             SP, SP, #0x14
0002624c  MOV             R8, R2
00026250  MOV             R6, R0
00026254  BL              sub_1058
00026258  MOV             R4, R0
0002625c  LDR             R0, [R0,#0x10]
00026260  LDR             R11, =(start - 0x2626C)
00026264  ADD             R11, PC, R11; start
00026268  CMP             R0, #0
0002626c  BNE             loc_2628C
00026270  LDR             R0, [R11,#(dword_8 - 0xC)]
00026274  LDR             R1, [R0,#0x68]
00026278  LDR             R0, =0x5E4
0002627c  BLX             R1
00026280  STR             R0, [R4,#0x10]
00026284  CMP             R0, #0
00026288  BEQ             loc_2662C
0002628c  LDR             R1, [R4,#0x10]
00026290  MOV             R0, #0xFFFFFFFF
00026294  STR             R0, [R1]
00026298  LDR             R1, [R4,#0x10]
0002629c  MOV             R10, #0
000262a0  STR             R0, [R1,#4]
000262a4  LDR             R0, [R4,#0x10]
000262a8  MOV             R1, #9
000262ac  STR             R10, [R0,#0x54C]
000262b0  ADD             R0, R4, #0x18
000262b4  BL              sub_17E2C
000262b8  CMP             R0, #0
000262bc  BNE             loc_26624
000262c0  LDR             R0, [R4,#0x10]
000262c4  MOV             R2, #0x3C ; '<'
000262c8  STR             R2, [R0,#0x44]
000262cc  LDR             R1, [R4,#0x10]
000262d0  MOV             R0, #0x400
000262d4  STR             R0, [R1,#0x448]
000262d8  LDR             R0, [R4,#0x10]
000262dc  MOV             R3, #0
000262e0  STR             R2, [R0,#0x488]
000262e4  LDR             R1, [R4,#0x10]
000262e8  MOV             R0, #0x8C
000262ec  STR             R0, [R1,#0x5E0]
000262f0  LDR             R1, [R4,#0x10]
000262f4  MOV             R0, #0x5A ; 'Z'
000262f8  STR             R0, [R1,#0x4E8]
000262fc  LDR             R1, [R4,#0x10]
00026300  MOV             R5, #1
00026304  STR             R0, [R1,#0x548]
00026308  LDR             R2, [R4,#0x10]
0002630c  MOV             R1, #0
00026310  STMEA           SP, {R2,R3}
00026314  LDR             R2, =(aAuth - 0x26324); "Auth"
00026318  MOV             R3, #1
0002631c  ADD             R2, PC, R2; "Auth"
00026320  LDR             R0, [R4,#0x18]
00026324  BL              sub_17DB4
00026328  LDR             R0, [R4,#0x10]
0002632c  MOV             R3, #0
00026330  ADD             R2, R0, #4
00026334  STMEA           SP, {R2,R3}
00026338  LDR             R2, =(aErrorcode - 0x26350); "ErrorCode"
0002633c  MOV             R3, #1
00026340  MOV             R1, R5
00026344  MOV             R9, #2
00026348  ADD             R2, PC, R2; "ErrorCode"
0002634c  LDR             R0, [R4,#0x18]
00026350  BL              sub_17DB4
00026354  LDR             R0, [R4,#0x10]
00026358  MOV             R1, R9
0002635c  ADD             R3, R0, #0x400
00026360  ADD             R2, R0, #0x400
00026364  ADD             R2, R2, #0x4C ; 'L'
00026368  ADD             R3, R3, #0x88
0002636c  STMEA           SP, {R2,R3}
00026370  LDR             R2, =(aTemporaryid - 0x26384); "TemporaryID"
00026374  MOV             R3, #0
00026378  MOV             R5, #3
0002637c  ADD             R2, PC, R2; "TemporaryID"
00026380  LDR             R0, [R4,#0x18]
00026384  BL              sub_17DB4
00026388  LDR             R0, [R4,#0x10]
0002638c  MOV             R1, R5
00026390  ADD             R3, R0, #0x400
00026394  ADD             R3, R3, #0x48 ; 'H'
00026398  ADD             R2, R0, #0x48 ; 'H'
0002639c  STMEA           SP, {R2,R3}
000263a0  LDR             R2, =(aValidationcode - 0x263B4); "ValidationCodeImage"
000263a4  MOV             R3, #2
000263a8  MOV             R9, #4
000263ac  ADD             R2, PC, R2; "ValidationCodeImage"
000263b0  LDR             R0, [R4,#0x18]
000263b4  BL              sub_17DB4
000263b8  LDR             R0, [R4,#0x10]
000263bc  MOV             R1, R9
000263c0  ADD             R3, R0, #0x44 ; 'D'
000263c4  ADD             R2, R0, #8
000263c8  STMEA           SP, {R2,R3}
000263cc  LDR             R2, =(aOrdernum - 0x263E0); "OrderNum"
000263d0  MOV             R3, #0
000263d4  MOV             R5, #5
000263d8  ADD             R2, PC, R2; "OrderNum"
000263dc  LDR             R0, [R4,#0x18]
000263e0  BL              sub_17DB4
000263e4  LDR             R0, [R4,#0x10]
000263e8  MOV             R1, R5
000263ec  ADD             R3, R0, #0x400
000263f0  ADD             R2, R0, #0x400
000263f4  ADD             R2, R2, #0x8C
000263f8  ADD             R3, R3, #0xE8
000263fc  STMEA           SP, {R2,R3}
00026400  LDR             R2, =(aProvidername - 0x26414); "ProviderName"
00026404  MOV             R3, #0
00026408  MOV             R9, #6
0002640c  ADD             R2, PC, R2; "ProviderName"
00026410  LDR             R0, [R4,#0x18]
00026414  BL              sub_17DB4
00026418  LDR             R0, [R4,#0x10]
0002641c  MOV             R1, R9
00026420  ADD             R3, R0, #0x400
00026424  ADD             R2, R0, #0x400
00026428  ADD             R2, R2, #0xEC
0002642c  ADD             R3, R3, #0x148
00026430  STMEA           SP, {R2,R3}
00026434  LDR             R2, =(aProductname - 0x26448); "ProductName"
00026438  MOV             R3, #0
0002643c  MOV             R5, #7
00026440  ADD             R2, PC, R2; "ProductName"
00026444  LDR             R0, [R4,#0x18]
00026448  BL              sub_17DB4
0002644c  LDR             R0, [R4,#0x10]
00026450  MOV             R3, #0
00026454  ADD             R2, R0, #0x400
00026458  ADD             R2, R2, #0x14C
0002645c  STMEA           SP, {R2,R3}
00026460  LDR             R2, =(aPrice - 0x26478); "Price"
00026464  MOV             R3, #1
00026468  MOV             R1, R5
0002646c  MOV             R9, #8
00026470  ADD             R2, PC, R2; "Price"
00026474  LDR             R0, [R4,#0x18]
00026478  BL              sub_17DB4
0002647c  LDR             R0, [R4,#0x10]
00026480  MOV             R1, R9
00026484  ADD             R3, R0, #0x5E0
00026488  ADD             R2, R0, #0x550
0002648c  STMEA           SP, {R2,R3}
00026490  LDR             R2, =(aServerdata - 0x264A0); "ServerData"
00026494  MOV             R3, #2
00026498  ADD             R2, PC, R2; "ServerData"
0002649c  LDR             R0, [R4,#0x18]
000264a0  BL              sub_17DB4
000264a4  MOV             R3, R8
000264a8  MOV             R2, R7
000264ac  MOV             R1, #9
000264b0  LDR             R0, [R4,#0x18]
000264b4  BL              sub_17E88
000264b8  MOV             R5, R0
000264bc  LDR             R0, [R4,#0x18]
000264c0  BL              sub_17E68
000264c4  CMP             R5, #0
000264c8  MOVNE           R0, R5
000264cc  BNE             loc_26624
000264d0  LDR             R0, [R4,#0x10]
000264d4  LDR             R1, [R0]
000264d8  CMP             R1, #1
000264dc  BNE             loc_265B4
000264e0  LDR             R0, [R4,#0x44]
000264e4  CMP             R0, #0
000264e8  BEQ             loc_26518
000264ec  LDRB            R1, [R4,#0x48]
000264f0  CMP             R1, #0
000264f4  BEQ             loc_26508
000264f8  LDR             R1, [R11,#(dword_8 - 0xC)]
000264fc  LDR             R1, [R1,#0xBC]
00026500  BLX             R1
00026504  B               loc_26518
00026508  LDR             R1, [R0]
0002650c  LDR             R1, [R1,#4]
00026510  BLX             R1
00026514  STR             R10, [R4,#0x44]
00026518  LDR             R0, [R4,#0x10]
0002651c  ADD             R3, R4, #0x48 ; 'H'
00026520  ADD             R1, R0, #0x48 ; 'H'
00026524  LDR             R0, [R11,#(dword_8 - 0xC)]
00026528  ADD             R2, SP, #0x14+var_C
0002652c  LDR             R12, [R0,#0x64]
00026530  LDR             R0, =0x1004001
00026534  BLX             R12
00026538  STR             R0, [R4,#0x44]
0002653c  CMP             R0, #0
00026540  BEQ             loc_2662C
00026544  LDR             R0, [R6]
00026548  MOV             R2, R6
0002654c  LDR             R1, [R0]
00026550  LDR             R3, [R1,#0x30]
00026554  LDR             R1, =(sub_223D0 - 0x26560)
00026558  ADD             R1, PC, R1; sub_223D0
0002655c  BLX             R3
00026560  LDR             R0, [R4]
00026564  BL              sub_15280
00026568  LDR             R0, [R11,#(dword_8 - 0xC)]
0002656c  LDR             R5, =(word_28286 - 0x26578)
00026570  ADD             R5, PC, R5; word_28286
00026574  LDR             R1, [R0,#0x30]
00026578  MOV             R0, R5
0002657c  BLX             R1
00026580  MOV             R3, R0
00026584  LDR             R0, [R4]
00026588  MOV             R2, R5
0002658c  MOV             R1, #1
00026590  BL              sub_152D4
00026594  MOV             R0, #3
00026598  STRB            R0, [R6,#0xD5]
0002659c  LDR             R0, [R4]
000265a0  MOV             R1, #1
000265a4  BL              sub_1532C
000265a8  MOV             R0, R6
000265ac  BL              sub_25608
000265b0  B               loc_26620
000265b4  LDR             R1, [R0,#4]
000265b8  CMP             R1, #5
000265bc  BNE             loc_2662C
000265c0  LDR             R1, [R0,#0x5E0]
000265c4  ADD             R7, R0, #0x550
000265c8  MOV             R5, #0
000265cc  MOV             R9, R1,LSR#1
000265d0  B               loc_265F0
000265d4  ADD             R8, R7, R5,LSL#1
000265d8  LDR             R1, [R11,#(dword_8 - 0xC)]
000265dc  LDRH            R0, [R8]
000265e0  LDR             R1, [R1,#0x130]
000265e4  BLX             R1
000265e8  STRH            R0, [R8]
000265ec  ADD             R5, R5, #1
000265f0  CMP             R5, R9
000265f4  BCC             loc_265D4
000265f8  ADD             R0, R7, R5,LSL#1
000265fc  STRH            R10, [R0]
00026600  LDR             R0, [R4,#0x10]
00026604  MOV             R2, #0
00026608  ADD             R3, R0, #0x550
0002660c  STMEA           SP, {R2,R3}
00026610  MOV             R3, #0
00026614  MOV             R0, R6
00026618  LDR             R1, =(sub_3F4+1)
0002661c  BL              sub_21CCC
00026620  MOV             R0, #0
00026624  ADD             SP, SP, #0x14
00026628  POP             {R4-R11,PC}
0002662c  MOV             R0, #1
00026630  B               loc_26624
