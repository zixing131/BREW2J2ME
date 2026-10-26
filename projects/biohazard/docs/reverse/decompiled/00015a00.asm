00015a00  PUSH            {R4-R8,LR}
00015a04  MOV             R4, R0
00015a08  LDR             R0, =(start - 0x15A14)
00015a0c  ADD             R0, PC, R0; start
00015a10  LDR             R0, [R0,#(dword_8 - 0xC)]
00015a14  ADR             LR, loc_15A20
00015a18  LDR             R0, [R0,#0xC0]
00015a1c  BX              R0
00015a20  LDR             R5, [R0,#0x20]
00015a24  MOV             R0, R4
00015a28  BL              sub_602C
00015a2c  MOV             R0, R4
00015a30  BL              sub_16580
00015a34  MOV             R8, #1
00015a38  STRH            R8, [R4,#0x9E]
00015a3c  MOV             R0, #0xFFFFFFFF
00015a40  STR             R0, [R4,#0x10]
00015a44  STR             R0, [R4,#0x80]
00015a48  MOV             R0, #0x20 ; ' '
00015a4c  STRH            R0, [R4,#0x90]
00015a50  MOV             R0, #0x10
00015a54  ADD             R6, R4, #0x100
00015a58  STRH            R0, [R6,#0x20]
00015a5c  MOV             R7, #0
00015a60  STRH            R7, [R4,#0x76]
00015a64  STRH            R7, [R4,#0x78]
00015a68  STRH            R7, [R4,#0x92]
00015a6c  MOV             R0, #0x3A ; ':'
00015a70  STRH            R0, [R4,#0x94]
00015a74  LDRSH           R0, [R5]
00015a78  STRH            R0, [R4,#0x96]
00015a7c  LDRH            R1, [R5,#2]
00015a80  SUB             R1, R1, #0x55 ; 'U'
00015a84  MOV             R2, R1,ASR#31
00015a88  ADD             R1, R1, R2,LSR#28
00015a8c  MOV             R1, R1,ASR#4
00015a90  MOV             R2, #2
00015a94  ADD             R1, R2, R1,LSL#4
00015a98  STRH            R1, [R4,#0x98]
00015a9c  SUB             R1, R0, #0x20 ; ' '
00015aa0  MOV             R0, #0xE
00015aa4  BL              sub_104
00015aa8  ADD             R0, R1, R1,LSR#31
00015aac  MOV             R0, R0,ASR#1
00015ab0  ADD             R0, R0, #0x10
00015ab4  STRH            R0, [R4,#0x9A]
00015ab8  STRH            R8, [R4,#0x9C]
00015abc  STRH            R7, [R6,#0x22]
00015ac0  LDR             R0, =0x18C4
00015ac4  STRB            R8, [R4,#0x124]
00015ac8  STRH            R0, [R4,#0x8E]
00015acc  STRH            R7, [R6,#0x2E]
00015ad0  POP             {R4-R8,LR}
00015ad4  BX              LR
