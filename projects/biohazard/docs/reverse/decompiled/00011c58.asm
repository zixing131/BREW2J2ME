00011c58  PUSH            {LR}
00011c5c  LDR             R0, [R0,#0x50]
00011c60  ADD             R0, R0, R1,LSL#5
00011c64  LDRH            R1, [R2],#2
00011c68  ADD             R12, R2, #2
00011c6c  STRH            R1, [R0]
00011c70  LDRH            R1, [R2]
00011c74  STRH            R1, [R0,#2]
00011c78  LDRH            R2, [R2,#2]
00011c7c  STRH            R2, [R0,#4]
00011c80  LDRH            LR, [R12,#2]!
00011c84  TST             R2, #3
00011c88  STRH            LR, [R0,#6]
00011c8c  LDRH            LR, [R12,#2]!
00011c90  STRH            LR, [R0,#0x18]
00011c94  LDRH            R12, [R12,#2]
00011c98  STRH            R12, [R0,#0x1A]
00011c9c  MOV             R12, #0
00011ca0  BNE             loc_11D3C
00011ca4  STR             R3, [R0,#8]
00011ca8  STR             R12, [R0,#0x1C]
00011cac  TST             R2, #0x10
00011cb0  STREQ           R12, [R0,#0x14]
00011cb4  STREQ           R12, [R0,#0x10]
00011cb8  STREQ           R12, [R0,#0xC]
00011cbc  ADD             R3, R3, R1,LSL#2
00011cc0  LDRHEQ          R1, [R0]
00011cc4  MOVEQ           R12, R1,LSL#1
00011cc8  MOVEQ           R1, #0
00011ccc  BEQ             loc_11D2C
00011cd0  STR             R3, [R0,#0xC]
00011cd4  ADD             R2, R1, R3
00011cd8  STR             R2, [R0,#0x10]
00011cdc  ADD             R2, R1, R2
00011ce0  STR             R2, [R0,#0x14]
00011ce4  ADD             R2, R1, R2
00011ce8  TST             R1, #1
00011cec  ADDNE           R2, R2, #1
00011cf0  MOV             R1, #0
00011cf4  LDRH            R3, [R0,#2]
00011cf8  CMP             R3, R1
00011cfc  LDRHI           R3, [R0,#8]
00011d00  STRHI           R2, [R3,R1,LSL#2]
00011d04  LDRHI           R3, [R0,#0x10]
00011d08  LDRBHI          R3, [R3,R1]
00011d0c  ADDHI           R1, R1, #1
00011d10  ADDHI           R2, R2, R3,LSL#1
00011d14  BHI             loc_11CF4
00011d18  B               loc_11DCC
00011d1c  LDR             R2, [R0,#8]
00011d20  STR             R3, [R2,R1,LSL#2]
00011d24  ADD             R3, R3, R12
00011d28  ADD             R1, R1, #1
00011d2c  LDRH            R2, [R0,#2]
00011d30  CMP             R2, R1
00011d34  BHI             loc_11D1C
00011d38  B               loc_11DCC
00011d3c  AND             LR, R2, #3
00011d40  CMP             LR, #1
00011d44  MOVNE           R0, #1
00011d48  BNE             loc_11DD0
00011d4c  STR             R12, [R0,#0x1C]
00011d50  STR             R3, [R0,#8]
00011d54  TST             R2, #0x10
00011d58  STR             R12, [R0,#0x14]
00011d5c  STREQ           R12, [R0,#0x10]
00011d60  STREQ           R12, [R0,#0xC]
00011d64  ADD             R3, R3, R1,LSL#2
00011d68  MOVEQ           R1, #0
00011d6c  LDRHEQ          R12, [R0]
00011d70  BEQ             loc_11DC0
00011d74  STR             R3, [R0,#0xC]
00011d78  ADD             R2, R1, R3
00011d7c  STR             R2, [R0,#0x10]
00011d80  ADD             R2, R1, R2
00011d84  MOV             R1, #0
00011d88  LDRH            R3, [R0,#2]
00011d8c  CMP             R3, R1
00011d90  LDRHI           R3, [R0,#8]
00011d94  STRHI           R2, [R3,R1,LSL#2]
00011d98  LDRHI           R3, [R0,#0x10]
00011d9c  LDRBHI          R3, [R3,R1]
00011da0  ADDHI           R1, R1, #1
00011da4  ADDHI           R2, R3, R2
00011da8  BHI             loc_11D88
00011dac  B               loc_11DCC
00011db0  LDR             R2, [R0,#8]
00011db4  STR             R3, [R2,R1,LSL#2]
00011db8  ADD             R3, R3, R12
00011dbc  ADD             R1, R1, #1
00011dc0  LDRH            R2, [R0,#2]
00011dc4  CMP             R2, R1
00011dc8  BHI             loc_11DB0
00011dcc  MOV             R0, #0
00011dd0  POP             {LR}
00011dd4  BX              LR
