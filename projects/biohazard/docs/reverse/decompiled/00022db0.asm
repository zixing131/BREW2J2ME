00022db0  PUSH            {R4-R6,LR}
00022db4  MOV             R4, R0
00022db8  BL              sub_22DAC
00022dbc  ADD             R0, R4, #0x810
00022dc0  BL              sub_22870
00022dc4  MOV             R6, #0
00022dc8  LDR             R5, =(start - 0x22DD8)
00022dcc  STR             R6, [R4,#0x878]
00022dd0  ADD             R5, PC, R5; start
00022dd4  LDR             R0, [R4,#0x87C]
00022dd8  CMP             R0, #0
00022ddc  BEQ             loc_22DF4
00022de0  LDR             R1, [R5,#(dword_8 - 0xC)]
00022de4  ADR             LR, loc_22DF0
00022de8  LDR             R1, [R1,#0x6C]
00022dec  BX              R1
00022df0  STR             R6, [R4,#0x87C]
00022df4  STR             R6, [R4,#0x880]
00022df8  LDR             R0, [R4,#0x884]
00022dfc  CMP             R0, #0
00022e00  BEQ             loc_22E18
00022e04  LDR             R1, [R5,#(dword_8 - 0xC)]
00022e08  ADR             LR, loc_22E14
00022e0c  LDR             R1, [R1,#0x6C]
00022e10  BX              R1
00022e14  STR             R6, [R4,#0x884]
00022e18  STR             R6, [R4,#0x888]
00022e1c  LDR             R0, [R4,#0x88C]
00022e20  CMP             R0, #0
00022e24  BEQ             loc_22E3C
00022e28  LDR             R1, [R5,#(dword_8 - 0xC)]
00022e2c  ADR             LR, loc_22E38
00022e30  LDR             R1, [R1,#0x6C]
00022e34  BX              R1
00022e38  STR             R6, [R4,#0x88C]
00022e3c  STR             R6, [R4,#0x890]
00022e40  LDR             R0, [R4,#0x894]
00022e44  CMP             R0, #0
00022e48  BEQ             loc_22E60
00022e4c  LDR             R1, [R5,#(dword_8 - 0xC)]
00022e50  ADR             LR, loc_22E5C
00022e54  LDR             R1, [R1,#0x6C]
00022e58  BX              R1
00022e5c  STR             R6, [R4,#0x894]
00022e60  LDR             R0, [R4,#0x8BC]
00022e64  CMP             R0, #0
00022e68  BEQ             loc_22E80
00022e6c  LDR             R1, [R5,#(dword_8 - 0xC)]
00022e70  ADR             LR, loc_22E7C
00022e74  LDR             R1, [R1,#0x6C]
00022e78  BX              R1
00022e7c  STR             R6, [R4,#0x8BC]
00022e80  LDR             R0, [R4,#0x8C0]
00022e84  CMP             R0, #0
00022e88  BEQ             loc_22EA0
00022e8c  LDR             R1, [R5,#(dword_8 - 0xC)]
00022e90  ADR             LR, loc_22E9C
00022e94  LDR             R1, [R1,#0x6C]
00022e98  BX              R1
00022e9c  STR             R6, [R4,#0x8C0]
00022ea0  LDR             R0, [R4,#0x8C4]
00022ea4  CMP             R0, #0
00022ea8  BEQ             loc_22EC0
00022eac  LDR             R1, [R5,#(dword_8 - 0xC)]
00022eb0  ADR             LR, loc_22EBC
00022eb4  LDR             R1, [R1,#0x6C]
00022eb8  BX              R1
00022ebc  STR             R6, [R4,#0x8C4]
00022ec0  LDR             R0, [R4,#0x8C8]
00022ec4  CMP             R0, #0
00022ec8  BEQ             loc_22EE0
00022ecc  LDR             R1, [R5,#(dword_8 - 0xC)]
00022ed0  ADR             LR, loc_22EDC
00022ed4  LDR             R1, [R1,#0x6C]
00022ed8  BX              R1
00022edc  STR             R6, [R4,#0x8C8]
00022ee0  LDR             R0, [R4,#0x8CC]
00022ee4  CMP             R0, #0
00022ee8  BEQ             loc_22F00
00022eec  LDR             R1, [R5,#(dword_8 - 0xC)]
00022ef0  ADR             LR, loc_22EFC
00022ef4  LDR             R1, [R1,#0x6C]
00022ef8  BX              R1
00022efc  STR             R6, [R4,#0x8CC]
00022f00  MOV             R0, R4
00022f04  BL              sub_22744
00022f08  STR             R6, [R4,#0x8A4]
00022f0c  POP             {R4-R6,LR}
00022f10  BX              LR
