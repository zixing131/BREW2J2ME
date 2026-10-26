00021ba8  PUSH            {R4,LR}
00021bac  LDR             R2, [R0,#0x1C]
00021bb0  CMP             R2, #0
00021bb4  LDRHNE          R1, [R0,#0x20]
00021bb8  CMPNE           R1, #0
00021bbc  BEQ             loc_21C60
00021bc0  LDRH            R3, [R0,#0x14]
00021bc4  CMP             R3, #0
00021bc8  SUBNE           R1, R3, #1
00021bcc  STRHNE          R1, [R0,#0x14]
00021bd0  BNE             loc_21CC4
00021bd4  LDRH            R12, [R0,#4]
00021bd8  LDRH            LR, [R0,#2]
00021bdc  MOV             R3, #0
00021be0  CMP             R12, LR
00021be4  BEQ             loc_21C4C
00021be8  LDRH            R12, [R0,#2]
00021bec  STRH            R12, [R0,#4]
00021bf0  MOV             R12, #0
00021bf4  B               loc_21C14
00021bf8  ADD             R4, R2, R12,LSL#3
00021bfc  LDRH            R4, [R4]
00021c00  CMP             R4, LR
00021c04  BEQ             loc_21C1C
00021c08  ADD             R12, R12, #1
00021c0c  MOV             R12, R12,LSL#16
00021c10  MOV             R12, R12,ASR#16
00021c14  CMP             R1, R12
00021c18  BGT             loc_21BF8
00021c1c  CMP             R1, R12
00021c20  STRHGT          R12, [R0,#6]
00021c24  STRHLE          R3, [R0,#2]
00021c28  STRHLE          R3, [R0,#4]
00021c2c  STRHLE          R3, [R0,#6]
00021c30  LDRSH           R12, [R0,#6]
00021c34  ADD             R12, R2, R12,LSL#3
00021c38  LDRSH           R12, [R12,#2]
00021c3c  STRH            R12, [R0,#0x22]
00021c40  LDRSH           LR, [R0,#8]
00021c44  CMP             LR, R12
00021c48  STRHGE          R3, [R0,#8]
00021c4c  LDRSH           R12, [R0,#6]
00021c50  CMP             R12, #0
00021c54  BLT             loc_21C60
00021c58  CMP             R12, R1
00021c5c  BLT             loc_21C6C
00021c60  MOV             R0, #0
00021c64  POP             {R4,LR}
00021c68  BX              LR
00021c6c  STRH            R3, [R0,#0x14]
00021c70  STRH            R3, [R0,#0x12]
00021c74  LDRSH           R4, [R0,#0x22]
00021c78  LDRSH           R3, [R0,#8]
00021c7c  CMP             R3, R4
00021c80  BGE             loc_21CC4
00021c84  ADD             R1, R2, R12,LSL#3
00021c88  LDR             R1, [R1,#4]
00021c8c  LDR             R1, [R1,R3,LSL#2]
00021c90  ADD             R3, R3, #1
00021c94  LDRB            LR, [R1]
00021c98  CMP             LR, #0
00021c9c  LDRHEQ          LR, [R1,#4]
00021ca0  STRHEQ          LR, [R0,#0x14]
00021ca4  LDRHEQ          LR, [R1,#6]
00021ca8  STRHEQ          LR, [R0,#0x16]
00021cac  LDREQ           LR, [R1,#8]
00021cb0  STREQ           LR, [R0,#0x18]
00021cb4  STRH            R3, [R0,#8]
00021cb8  LDRB            R1, [R1]
00021cbc  CMP             R1, #0
00021cc0  BNE             loc_21C78
00021cc4  MOV             R0, #1
00021cc8  B               loc_21C64
