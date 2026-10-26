00022a30  PUSH            {R3-R9,LR}
00022a34  MOV             R6, R0
00022a38  LDR             R0, [R0,#0x1C]
00022a3c  CMP             R0, #0
00022a40  BEQ             loc_22B28
00022a44  LDR             R8, =(start - 0x22A58)
00022a48  MOV             R5, #0
00022a4c  MOV             R9, #0
00022a50  ADD             R8, PC, R8; start
00022a54  B               loc_22B04
00022a58  MOV             R4, #0
00022a5c  B               loc_22AC8
00022a60  LDR             R0, [R0,#4]
00022a64  LDR             R7, [R0,R4,LSL#2]
00022a68  CMP             R7, #0
00022a6c  BEQ             loc_22ABC
00022a70  LDRB            R0, [R7]
00022a74  CMP             R0, #0
00022a78  BNE             loc_22A9C
00022a7c  LDR             R0, [R7,#8]
00022a80  CMP             R0, #0
00022a84  BEQ             loc_22A9C
00022a88  LDR             R1, [R8,#(dword_8 - 0xC)]
00022a8c  ADR             LR, loc_22A98
00022a90  LDR             R1, [R1,#0x6C]
00022a94  BX              R1
00022a98  STR             R9, [R7,#8]
00022a9c  LDR             R0, [R6,#0x1C]
00022aa0  LDR             R1, [R8,#(dword_8 - 0xC)]
00022aa4  ADD             R0, R0, R5,LSL#3
00022aa8  LDR             R0, [R0,#4]
00022aac  ADR             LR, loc_22ABC
00022ab0  LDR             R0, [R0,R4,LSL#2]
00022ab4  LDR             R1, [R1,#0x6C]
00022ab8  BX              R1
00022abc  ADD             R0, R4, #1
00022ac0  MOV             R4, R0,LSL#16
00022ac4  MOV             R4, R4,ASR#16
00022ac8  LDR             R0, [R6,#0x1C]
00022acc  ADD             R0, R0, R5,LSL#3
00022ad0  LDRSH           R1, [R0,#2]
00022ad4  CMP             R1, R4
00022ad8  BGT             loc_22A60
00022adc  LDR             R0, [R6,#0x1C]
00022ae0  LDR             R1, [R8,#(dword_8 - 0xC)]
00022ae4  ADD             R0, R0, R5,LSL#3
00022ae8  LDR             R0, [R0,#4]
00022aec  LDR             R1, [R1,#0x6C]
00022af0  MOV             LR, PC
00022af4  BX              R1
00022af8  ADD             R0, R5, #1
00022afc  MOV             R5, R0,LSL#16
00022b00  MOV             R5, R5,ASR#16
00022b04  LDRH            R0, [R6,#0x20]
00022b08  CMP             R0, R5
00022b0c  BGT             loc_22A58
00022b10  LDR             R1, [R8,#(dword_8 - 0xC)]
00022b14  LDR             R0, [R6,#0x1C]
00022b18  LDR             R1, [R1,#0x6C]
00022b1c  MOV             LR, PC
00022b20  BX              R1
00022b24  STR             R9, [R6,#0x1C]
00022b28  POP             {R3-R9,LR}
00022b2c  BX              LR
