00022b34  PUSH            {R4-R6,LR}
00022b38  MOV             R4, R0
00022b3c  LDR             R0, [R0,#0x50]
00022b40  LDR             R6, =(start - 0x22B4C)
00022b44  ADD             R6, PC, R6; start
00022b48  CMP             R0, #0
00022b4c  BEQ             loc_22BB0
00022b50  MOV             R5, #0
00022b54  B               loc_22B90
00022b58  LDR             R0, [R4,#0x50]
00022b5c  ADD             R0, R0, R5,LSL#5
00022b60  LDR             R0, [R0,#8]
00022b64  CMP             R0, #0
00022b68  LDRNE           R1, [R4,#0x48]
00022b6c  LDRNE           R2, [R1,R5,LSL#2]
00022b70  ADDNE           R1, R1, R5,LSL#2
00022b74  LDRNE           R1, [R1,#4]
00022b78  CMPNE           R2, R1
00022b7c  LDRNE           R1, [R6,#(dword_8 - 0xC)]
00022b80  ADRNE           LR, loc_22B8C
00022b84  LDRNE           R1, [R1,#0x6C]
00022b88  BXNE            R1
00022b8c  ADD             R5, R5, #1
00022b90  LDR             R0, [R4,#0x44]
00022b94  CMP             R0, R5
00022b98  BHI             loc_22B58
00022b9c  LDR             R1, [R6,#(dword_8 - 0xC)]
00022ba0  LDR             R0, [R4,#0x50]
00022ba4  LDR             R1, [R1,#0x6C]
00022ba8  MOV             LR, PC
00022bac  BX              R1
00022bb0  LDR             R0, [R4,#0x48]
00022bb4  CMP             R0, #0
00022bb8  LDRNE           R1, [R6,#(dword_8 - 0xC)]
00022bbc  ADRNE           LR, loc_22BC8
00022bc0  LDRNE           R1, [R1,#0x6C]
00022bc4  BXNE            R1
00022bc8  LDR             R0, [R4,#0x4C]
00022bcc  CMP             R0, #0
00022bd0  LDRNE           R1, [R6,#(dword_8 - 0xC)]
00022bd4  ADRNE           LR, loc_22BE0
00022bd8  LDRNE           R1, [R1,#0x6C]
00022bdc  BXNE            R1
00022be0  MOV             R0, #0
00022be4  STR             R0, [R4,#0x50]
00022be8  STR             R0, [R4,#0x44]
00022bec  STR             R0, [R4,#0x48]
00022bf0  STR             R0, [R4,#0x4C]
00022bf4  POP             {R4-R6,LR}
00022bf8  BX              LR
