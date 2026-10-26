00012634  PUSH            {R4-R8,LR}
00012638  MOV             R8, R1
0001263c  LDR             R1, [R0,#0xE0]
00012640  MOV             R7, R0
00012644  MOV             R6, R3
00012648  MOV             R5, R2
0001264c  BL              sub_1058
00012650  MOV             R4, R0
00012654  LDR             R0, =(start - 0x12660)
00012658  ADD             R0, PC, R0; start
0001265c  CMP             R8, #0
00012660  BNE             loc_12880
00012664  MOV             R7, R0
00012668  LDR             R0, [R0,#(dword_8 - 0xC)]
0001266c  LDR             R1, =(aAuth_0 - 0x12678); "Auth"
00012670  ADD             R1, PC, R1; "Auth"
00012674  LDR             R2, [R0,#0x10]
00012678  MOV             R0, R5
0001267c  BLX             R2
00012680  CMP             R0, #0
00012684  BNE             loc_126A4
00012688  LDR             R0, [R7,#(dword_8 - 0xC)]
0001268c  LDR             R1, [R0,#0x90]
00012690  MOV             R0, R6
00012694  BLX             R1
00012698  LDR             R1, [R4,#0x20]
0001269c  STR             R0, [R1]
000126a0  B               loc_128F8
000126a4  LDR             R0, [R7,#(dword_8 - 0xC)]
000126a8  LDR             R1, =(aErrorcode_0 - 0x126B4); "ErrorCode"
000126ac  ADD             R1, PC, R1; "ErrorCode"
000126b0  LDR             R2, [R0,#0x10]
000126b4  MOV             R0, R5
000126b8  BLX             R2
000126bc  CMP             R0, #0
000126c0  BNE             loc_126E0
000126c4  LDR             R0, [R7,#(dword_8 - 0xC)]
000126c8  LDR             R1, [R0,#0x90]
000126cc  MOV             R0, R6
000126d0  BLX             R1
000126d4  LDR             R1, [R4,#0x20]
000126d8  STR             R0, [R1,#4]
000126dc  B               loc_128F8
000126e0  LDR             R0, [R7,#(dword_8 - 0xC)]
000126e4  LDR             R1, =(aTemporaryid_0 - 0x126F0); "TemporaryID"
000126e8  ADD             R1, PC, R1; "TemporaryID"
000126ec  LDR             R2, [R0,#0x10]
000126f0  MOV             R0, R5
000126f4  BLX             R2
000126f8  CMP             R0, #0
000126fc  BNE             loc_12728
00012700  LDR             R0, [R4,#0x20]
00012704  LDR             R1, [R7,#(dword_8 - 0xC)]
00012708  MOV             R2, #0x3C ; '<'
0001270c  LDR             R3, [R1,#0x14C]
00012710  MOV             R1, R6
00012714  ADD             R0, R0, #8
00012718  BLX             R3
0001271c  LDR             R1, [R4,#0x20]
00012720  STR             R0, [R1,#0x44]
00012724  B               loc_128F8
00012728  LDR             R0, [R7,#(dword_8 - 0xC)]
0001272c  LDR             R1, =(aOrdernum_0 - 0x12738); "OrderNum"
00012730  ADD             R1, PC, R1; "OrderNum"
00012734  LDR             R2, [R0,#0x10]
00012738  MOV             R0, R5
0001273c  BLX             R2
00012740  CMP             R0, #0
00012744  BNE             loc_12770
00012748  LDR             R0, [R4,#0x20]
0001274c  LDR             R1, [R7,#(dword_8 - 0xC)]
00012750  MOV             R2, #0x3C ; '<'
00012754  LDR             R3, [R1,#0x14C]
00012758  MOV             R1, R6
0001275c  ADD             R0, R0, #0x48 ; 'H'
00012760  BLX             R3
00012764  LDR             R1, [R4,#0x20]
00012768  STR             R0, [R1,#0x84]
0001276c  B               loc_128F8
00012770  LDR             R0, [R7,#(dword_8 - 0xC)]
00012774  LDR             R1, =(aNumofsms - 0x12780); "NumofSMS"
00012778  ADD             R1, PC, R1; "NumofSMS"
0001277c  LDR             R2, [R0,#0x10]
00012780  MOV             R0, R5
00012784  BLX             R2
00012788  CMP             R0, #0
0001278c  BNE             loc_127AC
00012790  LDR             R0, [R7,#(dword_8 - 0xC)]
00012794  LDR             R1, [R0,#0x90]
00012798  MOV             R0, R6
0001279c  BLX             R1
000127a0  LDR             R1, [R4,#0x20]
000127a4  STR             R0, [R1,#0x88]
000127a8  B               loc_128F8
000127ac  LDR             R0, [R7,#(dword_8 - 0xC)]
000127b0  LDR             R1, =(aSmsshortcode - 0x127BC); "SMSShortCode"
000127b4  ADD             R1, PC, R1; "SMSShortCode"
000127b8  LDR             R2, [R0,#0x10]
000127bc  MOV             R0, R5
000127c0  BLX             R2
000127c4  CMP             R0, #0
000127c8  BNE             loc_12814
000127cc  LDR             R0, [R4,#0x20]
000127d0  LDR             R5, [R0,#0x1F4]
000127d4  CMP             R5, #0xA
000127d8  BCS             loc_12804
000127dc  LDR             R1, [R7,#(dword_8 - 0xC)]
000127e0  ADD             R0, R0, R5,LSL#5
000127e4  LDR             R3, [R1,#0x14C]
000127e8  MOV             R1, R6
000127ec  ADD             R0, R0, #0x8C
000127f0  MOV             R2, #0x20 ; ' '
000127f4  BLX             R3
000127f8  LDR             R1, [R4,#0x20]
000127fc  ADD             R1, R1, R5,LSL#2
00012800  STR             R0, [R1,#0x1CC]
00012804  LDR             R1, [R4,#0x20]
00012808  ADD             R0, R5, #1
0001280c  STR             R0, [R1,#0x1F4]
00012810  B               loc_128F8
00012814  LDR             R0, [R7,#(dword_8 - 0xC)]
00012818  LDR             R1, =(aSmspayload - 0x12824); "SMSPayload"
0001281c  ADD             R1, PC, R1; "SMSPayload"
00012820  LDR             R2, [R0,#0x10]
00012824  MOV             R0, R5
00012828  BLX             R2
0001282c  CMP             R0, #0
00012830  BNE             loc_128F8
00012834  LDR             R0, [R4,#0x20]
00012838  LDR             R5, [R0,#0x86C]
0001283c  CMP             R5, #0xA
00012840  BCS             loc_12870
00012844  MOV             R1, #0xA1
00012848  MLA             R0, R1, R5, R0
0001284c  LDR             R1, [R7,#(dword_8 - 0xC)]
00012850  MOV             R2, #0xA1
00012854  LDR             R3, [R1,#0x14C]
00012858  MOV             R1, R6
0001285c  ADD             R0, R0, #0x1F8
00012860  BLX             R3
00012864  LDR             R1, [R4,#0x20]
00012868  ADD             R1, R1, R5,LSL#2
0001286c  STR             R0, [R1,#0x844]
00012870  LDR             R1, [R4,#0x20]
00012874  ADD             R0, R5, #1
00012878  STR             R0, [R1,#0x86C]
0001287c  B               loc_128F8
00012880  CMP             R8, #2
00012884  BNE             loc_128F8
00012888  MOV             R5, R0
0001288c  LDR             R0, [R0,#(dword_8 - 0xC)]
00012890  LDR             R3, =0x283
00012894  LDR             R2, =(aUiVerifyInputC - 0x128A4); "ui_verify_input.c"
00012898  LDR             R12, [R0,#0x9C]
0001289c  ADD             R2, PC, R2; "ui_verify_input.c"
000128a0  LDR             R0, =(aDbgprintfDSD_1 - 0x128B0); "*dbgprintf-%d* %s:%d"
000128a4  MOV             R1, #4
000128a8  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
000128ac  BLX             R12
000128b0  LDR             R0, [R5,#(dword_8 - 0xC)]
000128b4  LDR             R1, [R0,#0x9C]
000128b8  LDR             R0, =(aKvStateEnd - 0x128C4); "KV_STATE_END"
000128bc  ADD             R0, PC, R0; "KV_STATE_END"
000128c0  BLX             R1
000128c4  LDR             R1, [R4,#0x2C]
000128c8  CMP             R1, #0
000128cc  ADDNE           R0, R4, #0x24 ; '$'
000128d0  BLXNE           R1
000128d4  LDR             R0, =(sub_5F24 - 0x128E0)
000128d8  ADD             R0, PC, R0; sub_5F24
000128dc  STR             R0, [R4,#0x34]
000128e0  STR             R7, [R4,#0x38]
000128e4  LDR             R0, [R7]
000128e8  LDR             R1, [R0]
000128ec  LDR             R2, [R1,#0x90]
000128f0  ADD             R1, R4, #0x24 ; '$'
000128f4  BLX             R2
000128f8  MOV             R0, #0
000128fc  POP             {R4-R8,PC}
