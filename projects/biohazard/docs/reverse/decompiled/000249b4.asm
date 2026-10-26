000249b4  PUSH            {R3-R9,LR}
000249b8  LDR             R1, [R0,#0xE0]
000249bc  MOV             R6, R0
000249c0  BL              sub_1058
000249c4  MOV             R4, R0
000249c8  LDR             R0, [R0,#0xD4]
000249cc  LDR             R8, =(start - 0x249D8)
000249d0  ADD             R8, PC, R8; start
000249d4  CMP             R0, #0
000249d8  BNE             loc_249F0
000249dc  LDR             R0, [R8,#(dword_8 - 0xC)]
000249e0  LDR             R1, [R0,#0x68]
000249e4  MOV             R0, #0x200
000249e8  BLX             R1
000249ec  STR             R0, [R4,#0xD4]
000249f0  LDR             R0, [R8,#(dword_8 - 0xC)]
000249f4  LDR             R1, [R0,#0x68]
000249f8  MOV             R0, #0x200
000249fc  BLX             R1
00024a00  MOV             R5, R0
00024a04  LDR             R0, [R4,#0xD4]
00024a08  CMP             R0, #0
00024a0c  BEQ             loc_24A30
00024a10  MOV             R9, #0
00024a14  CMP             R5, #0
00024a18  BNE             loc_24A4C
00024a1c  LDR             R1, [R8,#(dword_8 - 0xC)]
00024a20  LDR             R1, [R1,#0x6C]
00024a24  BLX             R1
00024a28  STR             R9, [R4,#0xD4]
00024a2c  B               loc_24A44
00024a30  CMP             R5, #0
00024a34  LDRNE           R0, [R8,#(dword_8 - 0xC)]
00024a38  LDRNE           R1, [R0,#0x6C]
00024a3c  MOVNE           R0, R5
00024a40  BLXNE           R1
00024a44  MOV             R0, #2
00024a48  POP             {R3-R9,PC}
00024a4c  LDR             R1, [R8,#(dword_8 - 0xC)]
00024a50  MOV             R2, #0x200
00024a54  LDR             R3, [R1,#0x14C]
00024a58  LDR             R1, =(aHttp_1 - 0x24A64); "http://"
00024a5c  ADD             R1, PC, R1; "http://"
00024a60  BLX             R3
00024a64  LDR             R1, [R8,#(dword_8 - 0xC)]
00024a68  LDR             R0, [R4,#0xD4]
00024a6c  LDR             R3, [R1,#0x150]
00024a70  LDR             R1, =(aSmsbilling189b_1 - 0x24A80); "smsbilling.189brew.com:8080"
00024a74  MOV             R2, #0x200
00024a78  ADD             R1, PC, R1; "smsbilling.189brew.com:8080"
00024a7c  BLX             R3
00024a80  LDR             R1, [R8,#(dword_8 - 0xC)]
00024a84  LDR             R0, [R4,#0xD4]
00024a88  LDR             R3, [R1,#0x150]
00024a8c  LDR             R1, =(aSmsbillingOrde_1 - 0x24A9C); "/smsbilling/orderStatusQry"
00024a90  MOV             R2, #0x200
00024a94  ADD             R1, PC, R1; "/smsbilling/orderStatusQry"
00024a98  BLX             R3
00024a9c  LDR             R0, [R4,#0x20]
00024aa0  ADD             R3, R0, #0x48 ; 'H'
00024aa4  STR             R3, [SP,#4+var_4]
00024aa8  LDR             R0, [R8,#(dword_8 - 0xC)]
00024aac  LDR             R3, =(a109_1 - 0x24AB8); "1.0.9"
00024ab0  ADD             R3, PC, R3; "1.0.9"
00024ab4  LDR             R2, =(aVersionSOrdern - 0x24AC0); "?Version=%s&OrderNum=%s"
00024ab8  ADD             R2, PC, R2; "?Version=%s&OrderNum=%s"
00024abc  LDR             R12, [R0,#0x144]
00024ac0  MOV             R0, R5
00024ac4  MOV             R1, #0x200
00024ac8  BLX             R12
00024acc  LDR             R1, [R8,#(dword_8 - 0xC)]
00024ad0  LDR             R0, [R4,#0xD4]
00024ad4  LDR             R3, [R1,#0x150]
00024ad8  MOV             R1, R5
00024adc  MOV             R2, #0x200
00024ae0  BLX             R3
00024ae4  MOV             R0, R6
00024ae8  BL              sub_26170
00024aec  MOVS            R7, R0
00024af0  STR             R9, [R4,#0x188]
00024af4  BNE             loc_24B14
00024af8  MOV             R2, #0
00024afc  MOV             R0, R6
00024b00  LDR             R1, [R4,#0xD4]
00024b04  BL              sub_26E2C
00024b08  MOVS            R7, R0
00024b0c  MOVNE           R0, R6
00024b10  BLNE            sub_26C90
00024b14  LDR             R0, [R8,#(dword_8 - 0xC)]
00024b18  LDR             R1, [R0,#0x6C]
00024b1c  MOV             R0, R5
00024b20  BLX             R1
00024b24  MOV             R0, R7
00024b28  B               locret_24A48
