00019afc  PUSH            {R1-R5,LR}
00019b00  LDR             R1, [R0,#0xE0]
00019b04  MOV             R5, R0
00019b08  BL              sub_1058
00019b0c  MOV             R4, R0
00019b10  LDR             R0, [R0,#0x198]
00019b14  MOV             R0, R0,LSL#16
00019b18  MOVS            R0, R0,LSR#16
00019b1c  BNE             loc_19BC8
00019b20  LDR             R0, [R4,#0x40]
00019b24  CMP             R0, #0
00019b28  BNE             loc_19B50
00019b2c  LDR             R0, [R4,#0x10]
00019b30  MOV             R3, #0
00019b34  ADD             R2, R0, #8
00019b38  STMEA           SP, {R2,R3}
00019b3c  LDR             R3, [R0,#0x54C]
00019b40  MOV             R0, R5
00019b44  MOV             R2, #1
00019b48  MOV             R1, #0x3EC
00019b4c  BL              sub_21CCC
00019b50  LDR             R0, [R4,#0x40]
00019b54  ADD             R0, R0, #1
00019b58  STR             R0, [R4,#0x40]
00019b5c  LDR             R1, [R4,#0x20]
00019b60  LDR             R1, [R1,#0x88]
00019b64  CMP             R0, R1
00019b68  BCS             loc_19BB4
00019b6c  LDR             R0, [R4,#0x194]
00019b70  CMP             R0, #0
00019b74  BEQ             loc_19B8C
00019b78  LDR             R1, [R0]
00019b7c  LDR             R1, [R1,#4]
00019b80  BLX             R1
00019b84  MOV             R0, #0
00019b88  STR             R0, [R4,#0x194]
00019b8c  LDR             R0, [R4,#0x20]!
00019b90  LDR             R1, [R4,#0x20]
00019b94  MOV             R2, #0xA1
00019b98  MLA             R2, R1, R2, R0
00019b9c  ADD             R0, R0, R1,LSL#5
00019ba0  ADD             R1, R0, #0x8C
00019ba4  MOV             R0, R5
00019ba8  ADD             R2, R2, #0x1F8
00019bac  BL              sub_24B44
00019bb0  POP             {R1-R5,PC}
00019bb4  MOV             R0, R5
00019bb8  BL              sub_2408C
00019bbc  MOV             R0, R5
00019bc0  BL              sub_249B4
00019bc4  B               locret_19BB0
00019bc8  MOV             R3, #0
00019bcc  STR             R3, [SP,#0xC+var_C]
00019bd0  STR             R3, [SP,#0xC+var_8]
00019bd4  MOV             R2, #0
00019bd8  MOV             R1, #0x3F0
00019bdc  MOV             R0, R5
00019be0  BL              sub_21CCC
00019be4  B               locret_19BB0
