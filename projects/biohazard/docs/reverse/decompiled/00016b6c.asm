00016b6c  PUSH            {R4-R8,LR}
00016b70  MOVS            R6, R1
00016b74  CMPNE           R2, #0
00016b78  MOV             R5, R0
00016b7c  MOVEQ           R0, #2
00016b80  SUB             SP, SP, #0x50
00016b84  BEQ             loc_16C48
00016b88  LDR             R0, [R5,#0x50]
00016b8c  CMP             R0, #0
00016b90  MOVNE           R0, #6
00016b94  BNE             loc_16C48
00016b98  STR             R2, [R5,#0x40]
00016b9c  LDR             R0, [R2,#0xC]
00016ba0  ADD             R2, SP, #0x50+var_4
00016ba4  LDR             R1, [R0]
00016ba8  ADR             LR, loc_16BB8
00016bac  LDR             R3, [R1,#8]
00016bb0  LDR             R1, =0x1001003
00016bb4  BX              R3
00016bb8  CMP             R0, #0
00016bbc  BNE             loc_16C44
00016bc0  LDR             R0, [SP,#0x50+var_4]
00016bc4  MOV             R2, #1
00016bc8  LDR             R1, [R0]
00016bcc  ADR             LR, loc_16BDC
00016bd0  LDR             R3, [R1,#8]
00016bd4  MOV             R1, R6
00016bd8  BX              R3
00016bdc  MOVS            R4, R0
00016be0  BNE             loc_16BFC
00016be4  LDR             R0, [SP,#0x50+var_4]
00016be8  ADR             LR, loc_16BF8
00016bec  LDR             R1, [R0]
00016bf0  LDR             R1, [R1,#4]
00016bf4  BX              R1
00016bf8  B               loc_16C44
00016bfc  LDR             R0, [R4]
00016c00  MOV             R1, SP
00016c04  LDR             R2, [R0,#0x18]
00016c08  MOV             R0, R4
00016c0c  MOV             LR, PC
00016c10  BX              R2
00016c14  CMP             R0, #0
00016c18  BEQ             loc_16C54
00016c1c  LDR             R0, [R4]
00016c20  ADR             LR, loc_16C30
00016c24  LDR             R1, [R0,#4]
00016c28  MOV             R0, R4
00016c2c  BX              R1
00016c30  LDR             R0, [SP,#0x50+var_4]
00016c34  LDR             R1, [R0]
00016c38  ADR             LR, loc_16C44
00016c3c  LDR             R1, [R1,#4]
00016c40  BX              R1
00016c44  MOV             R0, #5
00016c48  ADD             SP, SP, #0x50 ; 'P'
00016c4c  POP             {R4-R8,LR}
00016c50  BX              LR
00016c54  LDR             R7, [SP,#0x50+var_48]
00016c58  LDR             R0, [R4]
00016c5c  MOV             R2, #4
00016c60  LDR             R3, [R0,#0xC]
00016c64  MOV             R0, R4
00016c68  ADD             R1, R5, #0x44 ; 'D'
00016c6c  MOV             LR, PC
00016c70  BX              R3
00016c74  CMP             R0, #4
00016c78  BEQ             loc_16CA8
00016c7c  LDR             R0, [R4]
00016c80  ADR             LR, loc_16C90
00016c84  LDR             R1, [R0,#4]
00016c88  MOV             R0, R4
00016c8c  BX              R1
00016c90  LDR             R0, [SP,#0x50+var_4]
00016c94  LDR             R1, [R0]
00016c98  ADR             LR, loc_16CA4
00016c9c  LDR             R1, [R1,#4]
00016ca0  BX              R1
00016ca4  B               loc_16E78
00016ca8  LDR             R0, [R5,#0x44]
00016cac  LDR             R8, =(start - 0x16CBC)
00016cb0  MOV             R0, R0,LSL#5
00016cb4  ADD             R8, PC, R8; start
00016cb8  LDR             R1, [R8,#(dword_8 - 0xC)]
00016cbc  ADR             LR, loc_16CC8
00016cc0  LDR             R1, [R1,#0x68]
00016cc4  BX              R1
00016cc8  STR             R0, [R5,#0x50]
00016ccc  CMP             R0, #0
00016cd0  BNE             loc_16D00
00016cd4  LDR             R0, [R4]
00016cd8  ADR             LR, loc_16CE8
00016cdc  LDR             R1, [R0,#4]
00016ce0  MOV             R0, R4
00016ce4  BX              R1
00016ce8  LDR             R0, [SP,#0x50+var_4]
00016cec  LDR             R1, [R0]
00016cf0  ADR             LR, loc_16CFC
00016cf4  LDR             R1, [R1,#4]
00016cf8  BX              R1
00016cfc  B               loc_16DBC
00016d00  LDR             R1, [R5,#0x44]
00016d04  ADR             LR, loc_16D1C
00016d08  MOV             R2, R1,LSL#5
00016d0c  LDR             R1, [R8,#(dword_8 - 0xC)]
00016d10  LDR             R3, [R1,#4]
00016d14  MOV             R1, #0
00016d18  BX              R3
00016d1c  LDR             R0, [R5,#0x44]
00016d20  MOV             R1, #4
00016d24  ADD             R0, R1, R0,LSL#2
00016d28  LDR             R1, [R8,#(dword_8 - 0xC)]
00016d2c  ADR             LR, loc_16D38
00016d30  LDR             R1, [R1,#0x68]
00016d34  BX              R1
00016d38  STR             R0, [R5,#0x48]
00016d3c  CMP             R0, #0
00016d40  BNE             loc_16D70
00016d44  LDR             R0, [R4]
00016d48  ADR             LR, loc_16D58
00016d4c  LDR             R1, [R0,#4]
00016d50  MOV             R0, R4
00016d54  BX              R1
00016d58  LDR             R0, [SP,#0x50+var_4]
00016d5c  LDR             R1, [R0]
00016d60  ADR             LR, loc_16D6C
00016d64  LDR             R1, [R1,#4]
00016d68  BX              R1
00016d6c  B               loc_16DBC
00016d70  LDR             R1, [R8,#(dword_8 - 0xC)]
00016d74  LDR             R0, [R5,#0x44]
00016d78  LDR             R1, [R1,#0x68]
00016d7c  ADR             LR, loc_16D88
00016d80  MOV             R0, R0,LSL#2
00016d84  BX              R1
00016d88  STR             R0, [R5,#0x4C]
00016d8c  CMP             R0, #0
00016d90  BNE             loc_16DC4
00016d94  LDR             R0, [R4]
00016d98  ADR             LR, loc_16DA8
00016d9c  LDR             R1, [R0,#4]
00016da0  MOV             R0, R4
00016da4  BX              R1
00016da8  LDR             R0, [SP,#0x50+var_4]
00016dac  LDR             R1, [R0]
00016db0  ADR             LR, loc_16DBC
00016db4  LDR             R1, [R1,#4]
00016db8  BX              R1
00016dbc  MOV             R0, #3
00016dc0  B               loc_16C48
00016dc4  LDR             R0, [R5,#0x44]
00016dc8  LDR             R1, [R5,#0x48]
00016dcc  MOV             R2, R0,LSL#2
00016dd0  LDR             R0, [R4]
00016dd4  ADR             LR, loc_16DE4
00016dd8  LDR             R3, [R0,#0xC]
00016ddc  MOV             R0, R4
00016de0  BX              R3
00016de4  LDR             R1, [R5,#0x44]
00016de8  CMP             R0, R1,LSL#2
00016dec  BEQ             loc_16E1C
00016df0  LDR             R0, [R4]
00016df4  ADR             LR, loc_16E04
00016df8  LDR             R1, [R0,#4]
00016dfc  MOV             R0, R4
00016e00  BX              R1
00016e04  LDR             R0, [SP,#0x50+var_4]
00016e08  LDR             R1, [R0]
00016e0c  ADR             LR, loc_16E18
00016e10  LDR             R1, [R1,#4]
00016e14  BX              R1
00016e18  B               loc_16E78
00016e1c  LDR             R0, [R5,#0x48]
00016e20  ADR             LR, loc_16E44
00016e24  STR             R7, [R0,R1,LSL#2]
00016e28  LDR             R0, [R5,#0x44]
00016e2c  LDR             R1, [R5,#0x4C]
00016e30  MOV             R2, R0,LSL#2
00016e34  LDR             R0, [R4]
00016e38  LDR             R3, [R0,#0xC]
00016e3c  MOV             R0, R4
00016e40  BX              R3
00016e44  LDR             R1, [R5,#0x44]
00016e48  CMP             R0, R1,LSL#2
00016e4c  LDR             R0, [R4]
00016e50  LDR             R1, [R0,#4]
00016e54  MOV             R0, R4
00016e58  BEQ             loc_16E80
00016e5c  MOV             LR, PC
00016e60  BX              R1
00016e64  LDR             R0, [SP,#0x50+var_4]
00016e68  LDR             R1, [R0]
00016e6c  ADR             LR, loc_16E78
00016e70  LDR             R1, [R1,#4]
00016e74  BX              R1
00016e78  MOV             R0, #4
00016e7c  B               loc_16C48
00016e80  MOV             LR, PC
00016e84  BX              R1
00016e88  LDR             R0, [SP,#0x50+var_4]
00016e8c  LDR             R1, [R0]
00016e90  ADR             LR, loc_16E9C
00016e94  LDR             R1, [R1,#4]
00016e98  BX              R1
00016e9c  LDR             R0, [R8,#(dword_8 - 0xC)]
00016ea0  MOV             R2, #0x3F ; '?'
00016ea4  LDR             R3, [R0,#0xC8]
00016ea8  MOV             R0, R5
00016eac  MOV             R1, R6
00016eb0  MOV             LR, PC
00016eb4  BX              R3
00016eb8  MOV             R0, #0
00016ebc  B               loc_16C48
