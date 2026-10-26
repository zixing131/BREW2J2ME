00012bc8  PUSH            {R3-R7,LR}
00012bcc  MOV             R7, R2
00012bd0  MOV             R6, R0
00012bd4  MOV             R5, #0
00012bd8  MOV             R4, R1
00012bdc  B               loc_12C3C
00012be0  CMP             R0, #0x24 ; '$'
00012be4  BNE             loc_12C24
00012be8  LDRH            R0, [R4,#2]
00012bec  CMP             R0, #0x6E ; 'n'
00012bf0  CMPNE           R0, #0x4E ; 'N'
00012bf4  ADDEQ           R4, R4, #4
00012bf8  BEQ             loc_12C3C
00012bfc  CMP             R0, #0x74 ; 't'
00012c00  CMPNE           R0, #0x54 ; 'T'
00012c04  ADDEQ           R4, R4, #0xC
00012c08  BEQ             loc_12C3C
00012c0c  MOV             R1, SP
00012c10  ADD             R0, R4, #4
00012c14  BL              sub_11E30
00012c18  ADD             R0, R4, R0,LSL#1
00012c1c  ADD             R4, R0, #4
00012c20  B               loc_12C3C
00012c24  CMP             R0, #0x100
00012c28  LDRH            R0, [R6,#0x32]
00012c2c  ADD             R4, R4, #2
00012c30  ADDCS           R0, R0, R5
00012c34  ADDCC           R0, R5, R0,LSR#1
00012c38  ADD             R5, R0, R7
00012c3c  LDRH            R0, [R4]
00012c40  CMP             R0, #0
00012c44  BNE             loc_12BE0
00012c48  MOV             R0, R5
00012c4c  POP             {R3-R7,LR}
00012c50  BX              LR
