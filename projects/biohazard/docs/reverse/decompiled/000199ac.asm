000199ac  PUSH            {R0-R6,LR}
000199b0  LDRB            R0, [R1,#0x59]
000199b4  MOV             R4, R1
000199b8  MOV             R5, R2
000199bc  CMP             R0, #0
000199c0  LDRBNE          R0, [R4,#0x3E]
000199c4  CMPNE           R0, #1
000199c8  BEQ             loc_19AE8
000199cc  LDR             R0, [R4,#0x54]
000199d0  CMP             R0, R5
000199d4  BNE             loc_199E4
000199d8  LDRB            R0, [R4,#0x50]
000199dc  CMP             R0, #0
000199e0  BNE             loc_19AE8
000199e4  LDR             R0, [R4,#0x44]
000199e8  CMP             R0, #0
000199ec  BLNE            sub_145C8
000199f0  MOV             R6, #0
000199f4  STRB            R6, [R4,#0x50]
000199f8  LDR             R0, [R4,#0x44]
000199fc  CMP             R0, #0
00019a00  BEQ             loc_19A0C
00019a04  BL              sub_145BC
00019a08  STR             R6, [R4,#0x44]
00019a0c  LDR             R0, [R4,#0x48]
00019a10  CMP             R0, #0
00019a14  BEQ             loc_19A34
00019a18  LDR             R1, =(start - 0x19A24)
00019a1c  ADD             R1, PC, R1; start
00019a20  LDR             R1, [R1,#(dword_8 - 0xC)]
00019a24  ADR             LR, loc_19A30
00019a28  LDR             R1, [R1,#0x6C]
00019a2c  BX              R1
00019a30  STR             R6, [R4,#0x48]
00019a34  LDR             R0, [R4,#0xC]
00019a38  ADD             R2, R4, #0x44 ; 'D'
00019a3c  LDR             R1, [R0]
00019a40  ADR             LR, loc_19A50
00019a44  LDR             R3, [R1,#8]
00019a48  LDR             R1, =0x1005501
00019a4c  BX              R3
00019a50  CMP             R0, #0
00019a54  BNE             loc_19AE4
00019a58  ADD             R2, SP, #0x10+var_4
00019a5c  MOV             R1, R5
00019a60  LDR             R0, [R4,#0x28]
00019a64  BL              sub_18818
00019a68  STR             R0, [R4,#0x48]
00019a6c  CMP             R0, #0
00019a70  BEQ             loc_19AE8
00019a74  MOV             R0, #1
00019a78  STR             R0, [SP,#0x10+var_C]
00019a7c  LDR             R0, [R4,#0x48]
00019a80  MOV             R3, #0
00019a84  STR             R0, [SP,#0x10+var_8]
00019a88  LDR             R0, [R4,#0x44]
00019a8c  ADD             R2, SP, #0x10+var_C
00019a90  LDR             R1, [R0]
00019a94  ADR             LR, loc_19AA4
00019a98  LDR             R12, [R1,#0x10]
00019a9c  MOV             R1, #1
00019aa0  BX              R12
00019aa4  LDR             R0, [R4,#0x44]
00019aa8  MOV             R2, R4
00019aac  LDR             R1, [R0]
00019ab0  LDR             R3, [R1,#0xC]
00019ab4  LDR             R1, =(sub_1997C - 0x19AC0)
00019ab8  ADD             R1, PC, R1; sub_1997C
00019abc  MOV             LR, PC
00019ac0  BX              R3
00019ac4  LDR             R0, [R4,#0x44]
00019ac8  MOV             R3, #0
00019acc  LDR             R1, [R0]
00019ad0  MOV             R2, #0x64 ; 'd'
00019ad4  LDR             R12, [R1,#0x10]
00019ad8  MOV             R1, #4
00019adc  MOV             LR, PC
00019ae0  BX              R12
00019ae4  STR             R5, [R4,#0x54]
00019ae8  POP             {R0-R6,LR}
00019aec  BX              LR
