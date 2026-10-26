000109d0  PUSH            {R4-R8,LR}
000109d4  LDRH            R4, [R0,#0xE]
000109d8  ADD             R12, SP, #arg_0
000109dc  LDRH            LR, [R0,#0xC]
000109e0  ADD             R2, R4, R2
000109e4  MOV             R4, R2,LSL#16
000109e8  LDM             R12, {R7,R12}
000109ec  LDRH            R2, [R0,#6]
000109f0  ADD             LR, LR, R1
000109f4  MOV             LR, LR,LSL#16
000109f8  MOV             R4, R4,ASR#16
000109fc  CMP             R2, R4
00010a00  MOV             LR, LR,ASR#16
00010a04  BGT             loc_10C40
00010a08  LDRH            R2, [R0,#0xA]
00010a0c  CMP             R2, R4
00010a10  BLE             loc_10C40
00010a14  LDRH            R2, [R0,#4]
00010a18  CMP             R2, LR
00010a1c  MOVLT           R2, LR
00010a20  MOV             R5, R2,LSL#16
00010a24  ADD             R2, LR, R3
00010a28  LDRH            R3, [R0,#8]
00010a2c  MOV             R5, R5,ASR#16
00010a30  CMP             R2, R3
00010a34  MOVGT           R2, R3
00010a38  MOV             R6, R2,LSL#16
00010a3c  MOV             R6, R6,ASR#16
00010a40  CMP             R6, R5
00010a44  BLE             loc_10C40
00010a48  MOV             R2, #1
00010a4c  ANDS            LR, R2, R7,LSR#4
00010a50  MOVNE           R2, #0
00010a54  BNE             loc_10A7C
00010a58  MOV             R1, R7,LSR#8
00010a5c  ANDS            R2, R2, R7,LSR#1
00010a60  BEQ             loc_10A7C
00010a64  CMP             R1, #0
00010a68  BEQ             loc_10C40
00010a6c  CMP             R1, #0x20 ; ' '
00010a70  RSB             R1, R1, #0x20 ; ' '
00010a74  AND             R1, R1, #0xFF
00010a78  MOVEQ           R2, #0
00010a7c  LDR             R0, [R0,#0x14]
00010a80  CMP             LR, #0
00010a84  LDR             R0, [R0,R4,LSL#2]
00010a88  ADD             R0, R0, R5,LSL#1
00010a8c  ADD             R3, R0, R6,LSL#1
00010a90  SUB             R3, R3, R5,LSL#1
00010a94  SUB             R3, R3, #2
00010a98  BEQ             loc_10AF4
00010a9c  LDR             R2, =0x7BEF
00010aa0  TST             R5, #1
00010aa4  AND             R1, R2, R12,LSR#1
00010aa8  LDRHNE          R12, [R0]
00010aac  ANDNE           R12, R2, R12,LSR#1
00010ab0  ADDNE           R12, R12, R1
00010ab4  STRHNE          R12, [R0],#2
00010ab8  TST             R6, #1
00010abc  LDRHNE          R12, [R3]
00010ac0  ADDEQ           R3, R3, #2
00010ac4  ANDNE           R2, R2, R12,LSR#1
00010ac8  ADDNE           R2, R2, R1
00010acc  STRHNE          R2, [R3]
00010ad0  LDR             R2, =0xFBEF7BEF
00010ad4  ORR             R1, R1, R1,LSL#16
00010ad8  CMP             R0, R3
00010adc  LDRCC           R12, [R0]
00010ae0  ANDCC           R12, R2, R12,LSR#1
00010ae4  ADDCC           R12, R12, R1
00010ae8  STRCC           R12, [R0],#4
00010aec  BCC             loc_10AD8
00010af0  B               loc_10C40
00010af4  MOVS            LR, R2
00010af8  ORR             R2, R12, R12,LSL#16
00010afc  BEQ             loc_10C18
00010b00  AND             LR, R12, #0xF800
00010b04  AND             R4, R12, #0x7E0
00010b08  MOV             LR, LR,LSL#11
00010b0c  ORR             LR, LR, R4,LSL#5
00010b10  AND             R12, R12, #0x1F
00010b14  ORR             LR, LR, R12
00010b18  RSB             R12, R1, #0x20 ; ' '
00010b1c  MUL             R4, R12, LR
00010b20  TST             R5, #1
00010b24  BEQ             loc_10B68
00010b28  LDRH            LR, [R0]
00010b2c  AND             R7, LR, #0xF800
00010b30  AND             R8, LR, #0x7E0
00010b34  MOV             R7, R7,LSL#11
00010b38  ORR             R7, R7, R8,LSL#5
00010b3c  AND             LR, LR, #0x1F
00010b40  ORR             LR, R7, LR
00010b44  MLA             LR, R1, LR, R4
00010b48  MOV             LR, LR,LSR#5
00010b4c  AND             R7, LR, #0x7C00000
00010b50  AND             R8, LR, #0xFC00
00010b54  MOV             R7, R7,LSR#11
00010b58  ORR             R7, R7, R8,LSR#5
00010b5c  AND             LR, LR, #0x1F
00010b60  ORR             LR, R7, LR
00010b64  STRH            LR, [R0],#2
00010b68  AND             LR, R6, #1
00010b6c  CMP             LR, #0
00010b70  CMPNE           R5, R6
00010b74  ADDGE           R3, R3, #2
00010b78  BGE             loc_10BBC
00010b7c  LDRH            LR, [R3]
00010b80  AND             R5, LR, #0xF800
00010b84  AND             R6, LR, #0x7E0
00010b88  MOV             R5, R5,LSL#11
00010b8c  ORR             R5, R5, R6,LSL#5
00010b90  AND             LR, LR, #0x1F
00010b94  ORR             LR, R5, LR
00010b98  MLA             LR, R1, LR, R4
00010b9c  MOV             LR, LR,LSR#5
00010ba0  AND             R4, LR, #0x7C00000
00010ba4  AND             R5, LR, #0xFC00
00010ba8  MOV             R4, R4,LSR#11
00010bac  ORR             R4, R4, R5,LSR#5
00010bb0  AND             LR, LR, #0x1F
00010bb4  ORR             LR, R4, LR
00010bb8  STRH            LR, [R3]
00010bbc  LDR             R5, =0x7E0F81F
00010bc0  AND             LR, R2, R5
00010bc4  BIC             R2, R2, #0x7E00000
00010bc8  BIC             R2, R2, #0xF800
00010bcc  MOV             R2, R2,LSR#5
00010bd0  MUL             LR, R12, LR
00010bd4  MUL             R12, R2, R12
00010bd8  MOV             R6, R5,ROR#16
00010bdc  B               loc_10C0C
00010be0  LDR             R2, [R0]
00010be4  AND             R4, R2, R5
00010be8  BIC             R2, R2, #0x7E00000
00010bec  BIC             R2, R2, #0xF800
00010bf0  MOV             R2, R2,LSR#5
00010bf4  MLA             R2, R1, R2, R12
00010bf8  MLA             R4, R1, R4, LR
00010bfc  AND             R4, R5, R4,LSR#5
00010c00  AND             R2, R2, R6
00010c04  ORR             R2, R4, R2
00010c08  STR             R2, [R0],#4
00010c0c  CMP             R0, R3
00010c10  BCC             loc_10BE0
00010c14  B               loc_10C40
00010c18  TST             R5, #1
00010c1c  STRHNE          R12, [R0],#2
00010c20  AND             R1, R6, #1
00010c24  CMP             R1, #0
00010c28  CMPNE           R5, R6
00010c2c  ADDGE           R3, R3, #2
00010c30  STRHLT          R12, [R3]
00010c34  CMP             R0, R3
00010c38  STRCC           R2, [R0],#4
00010c3c  BCC             loc_10C34
00010c40  POP             {R4-R8,LR}
00010c44  MOV             R0, #0
00010c48  BX              LR
