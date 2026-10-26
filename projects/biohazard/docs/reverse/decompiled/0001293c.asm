0001293c  PUSH            {R4-R6,LR}
00012940  MOV             R4, R0
00012944  CMP             R1, #0
00012948  LDRHGE          R0, [R4,#4]
0001294c  CMPGE           R0, R1
00012950  BLE             loc_12BB8
00012954  LDR             R0, [R4,#8]
00012958  ADD             R5, R1, R1,LSL#2
0001295c  ADD             R0, R0, R5,LSL#2
00012960  LDRB            R0, [R0,#7]
00012964  MOV             R6, #1
00012968  ADD             R0, R0, R4
0001296c  LDRB            R1, [R0,#0x28]!
00012970  ADD             R1, R1, #1
00012974  STRB            R1, [R0]
00012978  LDR             R0, [R4,#8]
0001297c  ADD             R0, R0, R5,LSL#2
00012980  LDRH            R0, [R0,#0xE]
00012984  TST             R0, #2
00012988  STRBNE          R6, [R4,#0x21]
0001298c  LDRNE           R0, [R4]
00012990  STRBNE          R6, [R0,#0x2F]
00012994  LDR             R0, [R4,#8]
00012998  ADD             R0, R0, R5,LSL#2
0001299c  LDRH            R0, [R0,#0xE]
000129a0  TST             R0, #4
000129a4  LDRNE           R0, [R4]
000129a8  LDRHNE          R1, [R0,#0x2C]!
000129ac  ADDNE           R1, R1, #1
000129b0  STRHNE          R1, [R0]
000129b4  LDR             R0, [R4,#8]
000129b8  ADD             R0, R0, R5,LSL#2
000129bc  LDRH            R0, [R0,#0xE]
000129c0  TST             R0, #0x20
000129c4  BEQ             loc_129F0
000129c8  LDR             R0, [R4,#0x14]
000129cc  LDR             R1, [R0]
000129d0  MOV             R1, R1,LSL#1
000129d4  STR             R1, [R0]
000129d8  LDR             R0, [R4]
000129dc  STR             R1, [R0]
000129e0  LDR             R0, [R4,#0x14]
000129e4  LDR             R1, [R4,#0x18]
000129e8  LDR             R0, [R0]
000129ec  STR             R0, [R1]
000129f0  LDR             R0, [R4,#8]
000129f4  ADD             R0, R0, R5,LSL#2
000129f8  LDRH            R0, [R0,#0xE]
000129fc  TST             R0, #0x10
00012a00  LDRNE           R0, [R4]
00012a04  STRBNE          R6, [R0,#0x2E]
00012a08  LDR             R0, [R4,#8]
00012a0c  ADD             R0, R0, R5,LSL#2
00012a10  LDRH            R1, [R0,#0xE]
00012a14  TST             R1, #0x40
00012a18  LDRBNE          R1, [R0,#0xA]
00012a1c  LDRNE           R2, =0x271
00012a20  MULNE           R1, R2, R1
00012a24  LDRNE           R2, [R4,#0x1C]
00012a28  ADDNE           R1, R2, R1,LSL#3
00012a2c  STRNE           R1, [R4,#0x1C]
00012a30  LDRH            R0, [R0,#0xE]
00012a34  TST             R0, #8
00012a38  MOVNE           R0, R4
00012a3c  BLNE            sub_23DB4
00012a40  LDR             R0, [R4,#8]
00012a44  ADD             R0, R0, R5,LSL#2
00012a48  LDRH            R1, [R0,#0xE]
00012a4c  TST             R1, #0x400
00012a50  LDRBNE          R1, [R0,#0xD]
00012a54  LDRNE           R2, [R4,#0x24]
00012a58  ADDNE           R1, R1, R1,LSL#2
00012a5c  ADDNE           R1, R2, R1,LSL#1
00012a60  STRNE           R1, [R4,#0x24]
00012a64  LDRH            R0, [R0,#0xE]
00012a68  TST             R0, #0x100
00012a6c  BEQ             loc_12BB8
00012a70  LDR             R0, [R4]
00012a74  STRB            R6, [R0,#0x38]
00012a78  LDR             R0, [R4,#8]
00012a7c  LDR             R1, [R4]
00012a80  ADD             R0, R0, R5,LSL#2
00012a84  LDRB            R0, [R0,#0x10]
00012a88  STRB            R0, [R1,#0x30]
00012a8c  LDR             R0, [R4,#8]
00012a90  ADD             R0, R0, R5,LSL#2
00012a94  LDRB            R1, [R0,#0x10]
00012a98  MOV             R0, R4
00012a9c  BL              sub_12E0C
00012aa0  LDR             R1, [R4]
00012aa4  AND             R0, R0, #0xFF
00012aa8  STRB            R0, [R1,#0x31]
00012aac  LDR             R2, [R4,#0x10]
00012ab0  ADD             R0, R0, R0,LSL#3
00012ab4  ADD             R0, R2, R0,LSL#3
00012ab8  LDRH            R0, [R0,#6]
00012abc  LDR             R1, [R4]
00012ac0  ADD             R5, R4, #0x300
00012ac4  STRB            R0, [R1,#0x32]
00012ac8  LDR             R0, [R4]
00012acc  LDR             R1, [R4,#0x10]
00012ad0  LDRB            R2, [R0,#0x31]
00012ad4  ADD             R2, R2, R2,LSL#3
00012ad8  ADD             R1, R1, R2,LSL#3
00012adc  LDRH            R1, [R1,#0x16]
00012ae0  STRB            R1, [R0,#0x33]
00012ae4  LDR             R0, [R4]
00012ae8  LDR             R1, [R4,#0x10]
00012aec  LDRB            R2, [R0,#0x31]
00012af0  ADD             R2, R2, R2,LSL#3
00012af4  ADD             R1, R1, R2,LSL#3
00012af8  LDRH            R1, [R1,#0xE]
00012afc  STRB            R1, [R0,#0x34]
00012b00  LDR             R0, [R4]
00012b04  LDR             R1, [R4,#0x10]
00012b08  LDRB            R2, [R0,#0x31]
00012b0c  ADD             R2, R2, R2,LSL#3
00012b10  ADD             R1, R1, R2,LSL#3
00012b14  LDRH            R1, [R1,#0x26]
00012b18  STRB            R1, [R0,#0x35]
00012b1c  LDR             R0, [R4]
00012b20  LDR             R1, [R4,#0x10]
00012b24  LDRB            R2, [R0,#0x31]
00012b28  ADD             R2, R2, R2,LSL#3
00012b2c  ADD             R1, R1, R2,LSL#3
00012b30  LDRH            R1, [R1,#0x2E]
00012b34  LDR             R2, =(start - 0x12B84)
00012b38  STRB            R1, [R0,#0x36]
00012b3c  LDR             R1, [R4]
00012b40  MOV             R0, #0
00012b44  STRB            R0, [R1,#0x37]
00012b48  LDRSH           R0, [R5,#0x20]
00012b4c  CMP             R0, #0
00012b50  ADDLT           R1, R4, #0x200
00012b54  LDRHLT          R0, [R1,#0x1C]
00012b58  STRHLT          R0, [R5,#0x20]
00012b5c  ADDLT           R0, R0, #1
00012b60  STRHLT          R0, [R1,#0x1C]
00012b64  LDR             R0, [R4]
00012b68  ADD             R1, R0, #0x30 ; '0'
00012b6c  LDRSH           R0, [R5,#0x20]
00012b70  ADD             R0, R4, R0,LSL#3
00012b74  ADD             R0, R0, #0x200
00012b78  ADD             R0, R0, #0x1E
00012b7c  ADD             R2, PC, R2; start
00012b80  LDR             R2, [R2,#(dword_8 - 0xC)]
00012b84  ADR             LR, loc_12B94
00012b88  LDR             R3, [R2]
00012b8c  MOV             R2, #8
00012b90  BX              R3
00012b94  LDRH            R0, [R5,#0x20]
00012b98  STRH            R0, [R5,#0x1E]
00012b9c  LDR             R0, [R4]
00012ba0  LDRB            R1, [R0,#0x39]!
00012ba4  ADD             R1, R1, #1
00012ba8  STRB            R1, [R0]
00012bac  LDR             R0, [R4]
00012bb0  LDRB            R0, [R0,#0x39]
00012bb4  STRB            R0, [R4,#0x7A]
00012bb8  POP             {R4-R6,LR}
00012bbc  BX              LR
