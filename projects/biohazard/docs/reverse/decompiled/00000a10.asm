00000a10  LDRH            R1, [R0,#0x52]
00000a14  LDRH            R2, [R0,#0x40]
00000a18  MOV             R12, #0
00000a1c  CMP             R1, R2
00000a20  BCS             loc_A34
00000a24  ADD             R3, R0, R1,LSL#2
00000a28  LDR             R3, [R3,#0x10]
00000a2c  CMP             R3, #0
00000a30  BNE             loc_A4C
00000a34  LDRB            R3, [R0,#6]
00000a38  CMP             R3, #0
00000a3c  STRHEQ          R12, [R0,#4]
00000a40  MOVEQ           R1, #1
00000a44  STRBEQ          R1, [R0,#6]
00000a48  BXEQ            LR
00000a4c  CMP             R1, R2
00000a50  BXCS            LR
00000a54  ADD             R2, R0, R1,LSL#2
00000a58  LDR             R3, [R2,#0x10]
00000a5c  CMP             R3, #0
00000a60  BXEQ            LR
00000a64  LDRH            R1, [R0,#0x54]
00000a68  ADD             R3, R3, R1,LSL#1
00000a6c  LDRH            R3, [R3]
00000a70  CMP             R3, #0
00000a74  BNE             loc_AC4
00000a78  LDRH            R1, [R0,#0x56]
00000a7c  MOV             R3, #0x24 ; '$'
00000a80  ADD             R2, R1, #1
00000a84  STRH            R2, [R0,#0x56]
00000a88  LDR             R2, [R0,#0x38]
00000a8c  ADD             R1, R2, R1,LSL#1
00000a90  STRH            R3, [R1]
00000a94  LDRH            R1, [R0,#0x56]
00000a98  MOV             R3, #0x6E ; 'n'
00000a9c  ADD             R2, R1, #1
00000aa0  STRH            R2, [R0,#0x56]
00000aa4  LDR             R2, [R0,#0x38]
00000aa8  ADD             R1, R2, R1,LSL#1
00000aac  STRH            R3, [R1]
00000ab0  LDRH            R1, [R0,#0x52]
00000ab4  ADD             R1, R1, #1
00000ab8  STRH            R1, [R0,#0x52]
00000abc  STRH            R12, [R0,#0x54]
00000ac0  BX              LR
00000ac4  ADD             R3, R1, #1
00000ac8  STRH            R3, [R0,#0x54]
00000acc  LDR             R2, [R2,#0x10]
00000ad0  ADD             R1, R2, R1,LSL#1
00000ad4  LDRH            R3, [R1]
00000ad8  LDRH            R1, [R0,#0x56]
00000adc  ADD             R2, R1, #1
00000ae0  STRH            R2, [R0,#0x56]
00000ae4  LDR             R2, [R0,#0x38]
00000ae8  ADD             R1, R2, R1,LSL#1
00000aec  STRH            R3, [R1]
00000af0  LDRH            R1, [R0,#0x56]
00000af4  LDR             R3, [R0,#0x38]
00000af8  ADD             R2, R3, R1,LSL#1
00000afc  LDRH            R2, [R2,#-2]
00000b00  CMP             R2, #0x24 ; '$'
00000b04  BXNE            LR
00000b08  PUSH            {LR}
00000b0c  LDRH            R2, [R0,#0x52]
00000b10  ADD             R12, R0, R2,LSL#2
00000b14  LDRH            R2, [R0,#0x54]
00000b18  LDR             LR, [R12,#0x10]
00000b1c  ADD             LR, LR, R2,LSL#1
00000b20  LDRH            LR, [LR]
00000b24  CMP             LR, #0x4E ; 'N'
00000b28  BEQ             loc_B6C
00000b2c  CMP             LR, #0x54 ; 'T'
00000b30  BEQ             loc_B44
00000b34  CMP             LR, #0x6E ; 'n'
00000b38  BEQ             loc_B6C
00000b3c  CMP             LR, #0x74 ; 't'
00000b40  BNE             loc_B98
00000b44  ADD             LR, R2, #1
00000b48  STRH            LR, [R0,#0x54]
00000b4c  LDR             R12, [R12,#0x10]
00000b50  ADD             R2, R12, R2,LSL#1
00000b54  LDRH            R12, [R2]
00000b58  ADD             R2, R1, #1
00000b5c  STRH            R2, [R0,#0x56]
00000b60  ADD             R1, R3, R1,LSL#1
00000b64  STRH            R12, [R1]
00000b68  B               loc_BF4
00000b6c  ADD             LR, R2, #1
00000b70  STRH            LR, [R0,#0x54]
00000b74  LDR             R12, [R12,#0x10]
00000b78  ADD             R2, R12, R2,LSL#1
00000b7c  LDRH            R12, [R2]
00000b80  ADD             R2, R1, #1
00000b84  STRH            R2, [R0,#0x56]
00000b88  ADD             R0, R3, R1,LSL#1
00000b8c  STRH            R12, [R0]
00000b90  POP             {LR}
00000b94  BX              LR
00000b98  ADD             LR, R2, #1
00000b9c  STRH            LR, [R0,#0x54]
00000ba0  LDR             R12, [R12,#0x10]
00000ba4  ADD             R2, R12, R2,LSL#1
00000ba8  LDRH            R12, [R2]
00000bac  ADD             R2, R1, #1
00000bb0  STRH            R2, [R0,#0x56]
00000bb4  ADD             R1, R3, R1,LSL#1
00000bb8  STRH            R12, [R1]
00000bbc  LDRH            R1, [R0,#0x54]
00000bc0  ADD             R2, R1, #1
00000bc4  STRH            R2, [R0,#0x54]
00000bc8  LDRH            R2, [R0,#0x52]
00000bcc  ADD             R2, R0, R2,LSL#2
00000bd0  LDR             R2, [R2,#0x10]
00000bd4  ADD             R1, R2, R1,LSL#1
00000bd8  LDRH            R3, [R1]
00000bdc  LDRH            R1, [R0,#0x56]
00000be0  ADD             R2, R1, #1
00000be4  STRH            R2, [R0,#0x56]
00000be8  LDR             R2, [R0,#0x38]
00000bec  ADD             R1, R2, R1,LSL#1
00000bf0  STRH            R3, [R1]
00000bf4  LDRH            R1, [R0,#0x54]
00000bf8  ADD             R2, R1, #1
00000bfc  STRH            R2, [R0,#0x54]
00000c00  LDRH            R2, [R0,#0x52]
00000c04  ADD             R2, R0, R2,LSL#2
00000c08  LDR             R2, [R2,#0x10]
00000c0c  ADD             R1, R2, R1,LSL#1
00000c10  LDRH            R3, [R1]
00000c14  LDRH            R1, [R0,#0x56]
00000c18  ADD             R2, R1, #1
00000c1c  STRH            R2, [R0,#0x56]
00000c20  LDR             R2, [R0,#0x38]
00000c24  ADD             R1, R2, R1,LSL#1
00000c28  STRH            R3, [R1]
00000c2c  LDRH            R1, [R0,#0x54]
00000c30  ADD             R2, R1, #1
00000c34  STRH            R2, [R0,#0x54]
00000c38  LDRH            R2, [R0,#0x52]
00000c3c  ADD             R2, R0, R2,LSL#2
00000c40  LDR             R2, [R2,#0x10]
00000c44  ADD             R1, R2, R1,LSL#1
00000c48  LDRH            R3, [R1]
00000c4c  LDRH            R1, [R0,#0x56]
00000c50  ADD             R2, R1, #1
00000c54  STRH            R2, [R0,#0x56]
00000c58  LDR             R2, [R0,#0x38]
00000c5c  ADD             R1, R2, R1,LSL#1
00000c60  STRH            R3, [R1]
00000c64  LDRH            R1, [R0,#0x54]
00000c68  ADD             R2, R1, #1
00000c6c  STRH            R2, [R0,#0x54]
00000c70  LDRH            R2, [R0,#0x52]
00000c74  ADD             R2, R0, R2,LSL#2
00000c78  LDR             R2, [R2,#0x10]
00000c7c  ADD             R1, R2, R1,LSL#1
00000c80  LDRH            R3, [R1]
00000c84  LDRH            R1, [R0,#0x56]
00000c88  ADD             R2, R1, #1
00000c8c  STRH            R2, [R0,#0x56]
00000c90  LDR             R2, [R0,#0x38]
00000c94  ADD             R1, R2, R1,LSL#1
00000c98  STRH            R3, [R1]
00000c9c  LDRH            R1, [R0,#0x54]
00000ca0  ADD             R2, R1, #1
00000ca4  STRH            R2, [R0,#0x54]
00000ca8  LDRH            R2, [R0,#0x52]
00000cac  ADD             R2, R0, R2,LSL#2
00000cb0  LDR             R2, [R2,#0x10]
00000cb4  ADD             R1, R2, R1,LSL#1
00000cb8  LDRH            R3, [R1]
00000cbc  LDRH            R1, [R0,#0x56]
00000cc0  ADD             R2, R1, #1
00000cc4  STRH            R2, [R0,#0x56]
00000cc8  LDR             R2, [R0,#0x38]
00000ccc  ADD             R1, R2, R1,LSL#1
00000cd0  STRH            R3, [R1]
00000cd4  LDRH            R1, [R0,#0x54]
00000cd8  ADD             R2, R1, #1
00000cdc  STRH            R2, [R0,#0x54]
00000ce0  LDRH            R2, [R0,#0x52]
00000ce4  ADD             R2, R0, R2,LSL#2
00000ce8  LDR             R2, [R2,#0x10]
00000cec  ADD             R1, R2, R1,LSL#1
00000cf0  LDRH            R3, [R1]
00000cf4  LDRH            R1, [R0,#0x56]
00000cf8  ADD             R2, R1, #1
00000cfc  STRH            R2, [R0,#0x56]
00000d00  LDR             R0, [R0,#0x38]
00000d04  ADD             R0, R0, R1,LSL#1
00000d08  STRH            R3, [R0]
00000d0c  B               loc_B90
