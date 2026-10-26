000243a0  PUSH            {R4-R9,LR}
000243a4  SUB             SP, SP, #0x14
000243a8  LDR             R1, [R0,#0xE0]
000243ac  MOV             R6, R0
000243b0  BL              sub_1058
000243b4  MOV             R4, R0
000243b8  LDR             R0, [R0,#0xD4]
000243bc  LDR             R8, =(start - 0x243C8)
000243c0  ADD             R8, PC, R8; start
000243c4  CMP             R0, #0
000243c8  BNE             loc_243E0
000243cc  LDR             R0, [R8,#(dword_8 - 0xC)]
000243d0  LDR             R1, [R0,#0x68]
000243d4  MOV             R0, #0x200
000243d8  BLX             R1
000243dc  STR             R0, [R4,#0xD4]
000243e0  LDR             R0, [R8,#(dword_8 - 0xC)]
000243e4  LDR             R1, [R0,#0x68]
000243e8  MOV             R0, #0x200
000243ec  BLX             R1
000243f0  MOV             R5, R0
000243f4  LDR             R0, [R4,#0xD4]
000243f8  CMP             R0, #0
000243fc  BEQ             loc_24420
00024400  MOV             R9, #0
00024404  CMP             R5, #0
00024408  BNE             loc_24440
0002440c  LDR             R1, [R8,#(dword_8 - 0xC)]
00024410  LDR             R1, [R1,#0x6C]
00024414  BLX             R1
00024418  STR             R9, [R4,#0xD4]
0002441c  B               loc_24434
00024420  CMP             R5, #0
00024424  LDRNE           R0, [R8,#(dword_8 - 0xC)]
00024428  LDRNE           R1, [R0,#0x6C]
0002442c  MOVNE           R0, R5
00024430  BLXNE           R1
00024434  MOV             R0, #2
00024438  ADD             SP, SP, #0x14
0002443c  POP             {R4-R9,PC}
00024440  LDR             R1, [R8,#(dword_8 - 0xC)]
00024444  MOV             R2, #0x200
00024448  LDR             R3, [R1,#0x14C]
0002444c  LDR             R1, =(aHttp - 0x24458); "http://"
00024450  ADD             R1, PC, R1; "http://"
00024454  BLX             R3
00024458  LDR             R1, [R8,#(dword_8 - 0xC)]
0002445c  LDR             R0, [R4,#0xD4]
00024460  LDR             R3, [R1,#0x150]
00024464  LDR             R1, =(aSmsbilling189b - 0x24474); "smsbilling.189brew.com:8080"
00024468  MOV             R2, #0x200
0002446c  ADD             R1, PC, R1; "smsbilling.189brew.com:8080"
00024470  BLX             R3
00024474  LDR             R1, [R8,#(dword_8 - 0xC)]
00024478  LDR             R0, [R4,#0xD4]
0002447c  LDR             R3, [R1,#0x150]
00024480  LDR             R1, =(aSmsbillingOrde - 0x24490); "/smsbilling/orderConfirm"
00024484  MOV             R2, #0x200
00024488  ADD             R1, PC, R1; "/smsbilling/orderConfirm"
0002448c  BLX             R3
00024490  STRB            R9, [SP,#0x14+var_8]
00024494  LDR             R0, [R8,#(dword_8 - 0xC)]
00024498  MOV             R2, #5
0002449c  LDR             R3, [R0,#4]
000244a0  ADD             R0, SP, #0x14+var_8
000244a4  MOV             R1, #0
000244a8  BLX             R3
000244ac  LDR             R0, [R4]
000244b0  BL              sub_14DE4
000244b4  LDR             R1, [R8,#(dword_8 - 0xC)]
000244b8  MOV             R2, #5
000244bc  LDR             R3, [R1,#0x44]
000244c0  ADD             R1, SP, #0x14+var_8
000244c4  BLX             R3
000244c8  LDR             R0, [R4,#0x10]
000244cc  ADD             R2, SP, #0x14+var_8
000244d0  ADD             R3, R0, #8
000244d4  STMEA           SP, {R2,R3}
000244d8  LDR             R0, [R8,#(dword_8 - 0xC)]
000244dc  LDR             R3, =(a109 - 0x244E8); "1.0.9"
000244e0  ADD             R3, PC, R3; "1.0.9"
000244e4  LDR             R2, =(aVersionSValida - 0x244F0); "?Version=%s&ValidationCode=%s&OrderNum="...
000244e8  ADD             R2, PC, R2; "?Version=%s&ValidationCode=%s&OrderNum="...
000244ec  LDR             R12, [R0,#0x144]
000244f0  MOV             R0, R5
000244f4  MOV             R1, #0x200
000244f8  BLX             R12
000244fc  LDR             R1, [R8,#(dword_8 - 0xC)]
00024500  LDR             R0, [R4,#0xD4]
00024504  LDR             R3, [R1,#0x150]
00024508  MOV             R1, R5
0002450c  MOV             R2, #0x200
00024510  BLX             R3
00024514  MOV             R0, R6
00024518  BL              sub_26170
0002451c  MOVS            R7, R0
00024520  STR             R9, [R4,#0x188]
00024524  BNE             loc_24544
00024528  MOV             R2, #0
0002452c  MOV             R0, R6
00024530  LDR             R1, [R4,#0xD4]
00024534  BL              sub_26E2C
00024538  MOVS            R7, R0
0002453c  MOVNE           R0, R6
00024540  BLNE            sub_26C90
00024544  LDR             R0, [R8,#(dword_8 - 0xC)]
00024548  LDR             R1, [R0,#0x6C]
0002454c  MOV             R0, R5
00024550  BLX             R1
00024554  MOV             R0, R7
00024558  B               loc_24438
