000189e8  PUSH            {R3-R7,LR}
000189ec  MOV             R4, R0
000189f0  MOV             R0, R1
000189f4  ADD             R5, R0, #4
000189f8  MOV             R0, R4
000189fc  LDR             R1, [R1]
00018a00  BL              sub_24CC8
00018a04  LDR             R0, [R5]
00018a08  ADD             R7, R5, #4
00018a0c  MOV             R1, #0x24 ; '$'
00018a10  LDR             R6, =(start - 0x18A24)
00018a14  MUL             R5, R1, R0
00018a18  STR             R0, [R4,#0x878]
00018a1c  ADD             R6, PC, R6; start
00018a20  LDR             R0, [R6,#(dword_8 - 0xC)]
00018a24  ADR             LR, loc_18A34
00018a28  LDR             R1, [R0,#0x68]
00018a2c  MOV             R0, R5
00018a30  BX              R1
00018a34  STR             R0, [R4,#0x87C]
00018a38  LDR             R1, [R6,#(dword_8 - 0xC)]
00018a3c  MOV             R2, R5
00018a40  LDR             R3, [R1]
00018a44  MOV             R1, R7
00018a48  MOV             LR, PC
00018a4c  BX              R3
00018a50  ADD             R1, R7, R5
00018a54  LDR             R0, [R1]
00018a58  ADD             R7, R1, #4
00018a5c  STR             R0, [R4,#0x880]
00018a60  MOV             R5, R0,LSL#5
00018a64  LDR             R0, [R6,#(dword_8 - 0xC)]
00018a68  ADR             LR, loc_18A78
00018a6c  LDR             R1, [R0,#0x68]
00018a70  MOV             R0, R5
00018a74  BX              R1
00018a78  STR             R0, [R4,#0x884]
00018a7c  LDR             R1, [R6,#(dword_8 - 0xC)]
00018a80  MOV             R2, R5
00018a84  LDR             R3, [R1]
00018a88  MOV             R1, R7
00018a8c  MOV             LR, PC
00018a90  BX              R3
00018a94  ADD             R1, R7, R5
00018a98  LDR             R0, [R1]
00018a9c  ADD             R7, R1, #4
00018aa0  MOV             R1, #0x54 ; 'T'
00018aa4  MUL             R5, R1, R0
00018aa8  STR             R0, [R4,#0x888]
00018aac  LDR             R0, [R6,#(dword_8 - 0xC)]
00018ab0  ADR             LR, loc_18AC0
00018ab4  LDR             R1, [R0,#0x68]
00018ab8  MOV             R0, R5
00018abc  BX              R1
00018ac0  STR             R0, [R4,#0x88C]
00018ac4  LDR             R1, [R6,#(dword_8 - 0xC)]
00018ac8  MOV             R2, R5
00018acc  LDR             R3, [R1]
00018ad0  MOV             R1, R7
00018ad4  MOV             LR, PC
00018ad8  BX              R3
00018adc  ADD             R1, R7, R5
00018ae0  LDR             R0, [R1]
00018ae4  ADD             R7, R1, #4
00018ae8  MOV             R1, #0x74 ; 't'
00018aec  MUL             R5, R1, R0
00018af0  STR             R0, [R4,#0x890]
00018af4  LDR             R0, [R6,#(dword_8 - 0xC)]
00018af8  ADR             LR, loc_18B08
00018afc  LDR             R1, [R0,#0x68]
00018b00  MOV             R0, R5
00018b04  BX              R1
00018b08  STR             R0, [R4,#0x894]
00018b0c  LDR             R1, [R6,#(dword_8 - 0xC)]
00018b10  MOV             R2, R5
00018b14  LDR             R3, [R1]
00018b18  MOV             R1, R7
00018b1c  MOV             LR, PC
00018b20  BX              R3
00018b24  ADD             R0, R7, R5
00018b28  LDR             R1, [R0]
00018b2c  ADD             R5, R0, #4
00018b30  ADD             R0, R4, #0x810
00018b34  MOV             R4, R0
00018b38  BL              sub_24CD0
00018b3c  LDR             R1, [R5]
00018b40  ADD             R2, R5, #4
00018b44  MOV             R0, R4
00018b48  BL              sub_24CD8
00018b4c  POP             {R3-R7,LR}
00018b50  MOV             R0, #1
00018b54  BX              LR
