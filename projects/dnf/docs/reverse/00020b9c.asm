0x20b9c PUSH            {R4-R7,LR}
0x20b9e SUB             SP, SP, #0x3C
0x20ba0 LSLS            R2, R0, #0x10
0x20ba2 ADD             R4, SP, #0x3C+var_1C
0x20ba4 LSRS            R2, R2, #0x10
0x20ba6 LDR             R1, =aDSc; "%d.sc"
0x20ba8 LDR             R3, =unk_14032CC
0x20baa MOVS            R0, R4
0x20bac BL              sub_22468
0x20bb0 MOVS            R0, R4
0x20bb2 LDR             R3, =0x6CBE1
0x20bb4 BL              sub_22468
0x20bb8 STR             R0, [SP,#0x3C+var_38]
0x20bba CMP             R0, #0
0x20bbc BNE             loc_20BC0
0x20bbe B               loc_20E92
0x20bc0 BL              sub_20494
0x20bc4 LDR             R4, =byte_150C79C
0x20bc6 LDR             R1, [SP,#0x3C+var_38]
0x20bc8 MOVS            R2, #2
0x20bca LDR             R5, =unk_140327C
0x20bcc MOVS            R0, R4
0x20bce BL              sub_2246C
0x20bd2 LDRB            R3, [R4]
0x20bd4 LSLS            R0, R3, #3
0x20bd6 SUBS            R0, R0, R3
0x20bd8 LSLS            R0, R0, #2
0x20bda LDR             R6, =unk_14032EC
0x20bdc ADDS            R0, #2
0x20bde LDR             R7, [SP,#0x3C+var_38]
0x20be0 BL              sub_2246E
0x20be4 ADDS            R7, #2
0x20be6 STR             R0, [R4,#(dword_150C7A0 - 0x150C79C)]
0x20be8 STR             R0, [R4,#(dword_150C7A4 - 0x150C79C)]
0x20bea MOVS            R1, R7
0x20bec MOVS            R2, #4
0x20bee ADD             R0, SP, #0x3C+var_8
0x20bf0 BL              sub_2246C
0x20bf4 LDR             R1, [SP,#0x3C+var_38]
0x20bf6 MOVS            R2, #4
0x20bf8 ADDS            R1, #6
0x20bfa ADD             R0, SP, #0x3C+var_4
0x20bfc BL              sub_2246C
0x20c00 LDR             R0, [SP,#0x3C+var_8]
0x20c02 ADDS            R0, #2
0x20c04 BL              sub_2246E
0x20c08 STR             R0, [SP,#0x3C+var_34]
0x20c0a MOVS            R6, R0
0x20c0c LDR             R0, [SP,#0x3C+var_38]
0x20c0e MOVS            R1, #6
0x20c10 STR             R1, [SP,#0x3C+var_3C]
0x20c12 ADDS            R0, #0xA
0x20c14 MOVS            R1, R6
0x20c16 LDR             R2, [SP,#0x3C+var_8]
0x20c18 LDR             R3, [SP,#0x3C+var_4]
0x20c1a LDR             R4, =0x692B5
0x20c1c BL              sub_2246A
0x20c20 MOVS            R1, #0
0x20c22 STR             R1, [SP,#0x3C+var_30]
0x20c24 STR             R1, [SP,#0x3C+var_28]
0x20c26 B               loc_20E70
0x20c28 LDR             R2, [SP,#0x3C+var_28]
0x20c2a LDR             R0, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c2c MOVS            R1, R6
0x20c2e LDR             R5, =unk_140327C
0x20c30 ADDS            R0, R2, R0
0x20c32 MOVS            R2, #1
0x20c34 BL              sub_2246C
0x20c38 LDR             R3, [SP,#0x3C+var_28]
0x20c3a LDR             R0, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c3c ADDS            R4, R6, #1
0x20c3e ADDS            R0, R3, R0
0x20c40 MOVS            R1, R4
0x20c42 MOVS            R2, #1
0x20c44 ADDS            R0, #1
0x20c46 BL              sub_2246C
0x20c4a LDR             R1, [SP,#0x3C+var_28]
0x20c4c LDR             R0, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c4e ADDS            R4, #1
0x20c50 ADDS            R0, R1, R0
0x20c52 MOVS            R2, #2
0x20c54 MOVS            R1, R4
0x20c56 ADDS            R0, #2
0x20c58 BL              sub_2246C
0x20c5c LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c5e LDR             R2, [SP,#0x3C+var_28]
0x20c60 ADDS            R4, R2, R3
0x20c62 LDRB            R0, [R4]
0x20c64 ADDS            R6, #4
0x20c66 CMP             R0, #0
0x20c68 BEQ             loc_20CEC
0x20c6a LSLS            R0, R0, #3
0x20c6c LDR             R3, =unk_14032EC
0x20c6e ADDS            R0, #2
0x20c70 BL              sub_22468
0x20c74 LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c76 LDR             R1, [SP,#0x3C+var_28]
0x20c78 STR             R0, [R4,#4]
0x20c7a ADDS            R3, R1, R3
0x20c7c LDR             R2, [R3,#4]
0x20c7e STR             R2, [R3,#8]
0x20c80 MOVS            R2, #0
0x20c82 B               loc_20CDA
0x20c84 LDR             R3, [SP,#0x3C+var_2C]
0x20c86 LDR             R0, [R2,#8]
0x20c88 LSLS            R4, R3, #3
0x20c8a LDR             R5, =unk_140327C
0x20c8c MOVS            R1, R6
0x20c8e ADDS            R0, R4, R0
0x20c90 MOVS            R2, #1
0x20c92 BL              sub_2246C
0x20c96 LDR             R1, [SP,#0x3C+var_28]
0x20c98 LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20c9a ADDS            R3, R3, R1
0x20c9c LDR             R0, [R3,#8]
0x20c9e ADDS            R0, R4, R0
0x20ca0 ADDS            R1, R6, #1
0x20ca2 MOVS            R2, #1
0x20ca4 ADDS            R0, #1
0x20ca6 BL              sub_2246C
0x20caa LDR             R2, [SP,#0x3C+var_28]
0x20cac LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20cae ADDS            R3, R3, R2
0x20cb0 LDR             R0, [R3,#8]
0x20cb2 ADDS            R0, R4, R0
0x20cb4 ADDS            R1, R6, #2
0x20cb6 MOVS            R2, #2
0x20cb8 ADDS            R0, #2
0x20cba BL              sub_2246C
0x20cbe LDR             R1, [SP,#0x3C+var_28]
0x20cc0 LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20cc2 ADDS            R3, R3, R1
0x20cc4 LDR             R3, [R3,#8]
0x20cc6 ADDS            R4, R4, R3
0x20cc8 ADDS            R4, #4
0x20cca ADDS            R1, R6, #4
0x20ccc MOVS            R2, #1
0x20cce MOVS            R0, R4
0x20cd0 BL              sub_2246C
0x20cd4 LDR             R2, [SP,#0x3C+var_2C]
0x20cd6 ADDS            R6, #5
0x20cd8 ADDS            R2, #1
0x20cda LDR             R7, =byte_150C79C
0x20cdc LDR             R1, [SP,#0x3C+var_28]
0x20cde LDR             R3, [R7,#(dword_150C7A4 - 0x150C79C)]
0x20ce0 STR             R2, [SP,#0x3C+var_2C]
0x20ce2 ADDS            R2, R1, R3
0x20ce4 LDRB            R3, [R2]
0x20ce6 LDR             R1, [SP,#0x3C+var_2C]
0x20ce8 CMP             R1, R3
0x20cea BLT             loc_20C84
0x20cec LDR             R5, =byte_150C79C
0x20cee LDR             R2, [SP,#0x3C+var_28]
0x20cf0 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20cf2 ADDS            R4, R2, R3
0x20cf4 LDRB            R3, [R4,#1]
0x20cf6 CMP             R3, #0
0x20cf8 BEQ             loc_20DA8
0x20cfa LSLS            R0, R3, #2
0x20cfc ADDS            R0, R0, R3
0x20cfe LSLS            R0, R0, #5
0x20d00 LDR             R3, =unk_14032EC
0x20d02 ADDS            R0, #2
0x20d04 BL              sub_22468
0x20d08 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d0a LDR             R1, [SP,#0x3C+var_28]
0x20d0c STR             R0, [R4,#0xC]
0x20d0e ADDS            R3, R1, R3
0x20d10 LDR             R2, [R3,#0xC]
0x20d12 MOVS            R7, #0
0x20d14 STR             R2, [R3,#0x10]
0x20d16 MOVS            R2, #0
0x20d18 STR             R2, [SP,#0x3C+var_24]
0x20d1a B               loc_20D98
0x20d1c LDR             R0, [R2,#0x10]
0x20d1e LDR             R4, =unk_140327C
0x20d20 MOVS            R1, R6
0x20d22 ADDS            R0, R7, R0
0x20d24 MOVS            R2, #1
0x20d26 BL              sub_2246A
0x20d2a LDR             R1, [SP,#0x3C+var_28]
0x20d2c LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d2e ADDS            R3, R3, R1
0x20d30 LDR             R0, [R3,#0x10]
0x20d32 ADDS            R0, R7, R0
0x20d34 ADDS            R1, R6, #1
0x20d36 MOVS            R2, #1
0x20d38 ADDS            R0, #1
0x20d3a BL              sub_2246A
0x20d3e LDR             R2, [SP,#0x3C+var_28]
0x20d40 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d42 ADDS            R3, R3, R2
0x20d44 LDR             R0, [R3,#0x10]
0x20d46 ADDS            R0, R7, R0
0x20d48 ADDS            R1, R6, #2
0x20d4a MOVS            R2, #2
0x20d4c ADDS            R0, #2
0x20d4e BL              sub_2246A
0x20d52 LDR             R1, [SP,#0x3C+var_28]
0x20d54 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d56 ADDS            R3, R3, R1
0x20d58 LDR             R0, [R3,#0x10]
0x20d5a ADDS            R0, R7, R0
0x20d5c ADDS            R1, R6, #4
0x20d5e MOVS            R2, #1
0x20d60 ADDS            R0, #4
0x20d62 BL              sub_2246A
0x20d66 LDR             R2, [SP,#0x3C+var_28]
0x20d68 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d6a ADDS            R3, R3, R2
0x20d6c LDR             R0, [R3,#0x10]
0x20d6e ADDS            R0, R7, R0
0x20d70 ADDS            R1, R6, #5
0x20d72 MOVS            R2, #2
0x20d74 ADDS            R0, #6
0x20d76 BL              sub_2246A
0x20d7a LDR             R1, [SP,#0x3C+var_28]
0x20d7c LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d7e ADDS            R3, R3, R1
0x20d80 LDR             R0, [R3,#0x10]
0x20d82 ADDS            R0, R7, R0
0x20d84 ADDS            R1, R6, #7
0x20d86 MOVS            R2, #0x96
0x20d88 ADDS            R0, #8
0x20d8a BL              sub_2246A
0x20d8e LDR             R2, [SP,#0x3C+var_24]
0x20d90 ADDS            R2, #1
0x20d92 STR             R2, [SP,#0x3C+var_24]
0x20d94 ADDS            R6, #0x9D
0x20d96 ADDS            R7, #0xA0
0x20d98 LDR             R5, =byte_150C79C
0x20d9a LDR             R1, [SP,#0x3C+var_28]
0x20d9c LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20d9e ADDS            R2, R1, R3
0x20da0 LDRB            R3, [R2,#1]
0x20da2 LDR             R1, [SP,#0x3C+var_24]
0x20da4 CMP             R1, R3
0x20da6 BLT             loc_20D1C
0x20da8 LDR             R5, =byte_150C79C
0x20daa LDR             R2, [SP,#0x3C+var_28]
0x20dac LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20dae ADDS            R4, R2, R3
0x20db0 LDRH            R3, [R4,#2]
0x20db2 CMP             R3, #0
0x20db4 BEQ             loc_20E64
0x20db6 LSLS            R0, R3, #2
0x20db8 ADDS            R0, R0, R3
0x20dba LSLS            R0, R0, #5
0x20dbc LDR             R3, =unk_14032EC
0x20dbe ADDS            R0, #2
0x20dc0 BL              sub_22468
0x20dc4 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20dc6 LDR             R1, [SP,#0x3C+var_28]
0x20dc8 STR             R0, [R4,#0x14]
0x20dca ADDS            R3, R1, R3
0x20dcc LDR             R2, [R3,#0x14]
0x20dce MOVS            R7, #0
0x20dd0 STR             R2, [R3,#0x18]
0x20dd2 MOVS            R2, #0
0x20dd4 STR             R2, [SP,#0x3C+var_20]
0x20dd6 B               loc_20E54
0x20dd8 LDR             R0, [R2,#0x18]
0x20dda LDR             R4, =unk_140327C
0x20ddc MOVS            R1, R6
0x20dde ADDS            R0, R7, R0
0x20de0 MOVS            R2, #1
0x20de2 BL              sub_2246A
0x20de6 LDR             R1, [SP,#0x3C+var_28]
0x20de8 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20dea ADDS            R3, R3, R1
0x20dec LDR             R0, [R3,#0x18]
0x20dee ADDS            R0, R7, R0
0x20df0 ADDS            R1, R6, #1
0x20df2 MOVS            R2, #1
0x20df4 ADDS            R0, #1
0x20df6 BL              sub_2246A
0x20dfa LDR             R2, [SP,#0x3C+var_28]
0x20dfc LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20dfe ADDS            R3, R3, R2
0x20e00 LDR             R0, [R3,#0x18]
0x20e02 ADDS            R0, R7, R0
0x20e04 ADDS            R1, R6, #2
0x20e06 MOVS            R2, #2
0x20e08 ADDS            R0, #2
0x20e0a BL              sub_2246A
0x20e0e LDR             R1, [SP,#0x3C+var_28]
0x20e10 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20e12 ADDS            R3, R3, R1
0x20e14 LDR             R0, [R3,#0x18]
0x20e16 ADDS            R0, R7, R0
0x20e18 ADDS            R1, R6, #4
0x20e1a MOVS            R2, #1
0x20e1c ADDS            R0, #4
0x20e1e BL              sub_2246A
0x20e22 LDR             R2, [SP,#0x3C+var_28]
0x20e24 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20e26 ADDS            R3, R3, R2
0x20e28 LDR             R0, [R3,#0x18]
0x20e2a ADDS            R0, R7, R0
0x20e2c ADDS            R1, R6, #5
0x20e2e MOVS            R2, #2
0x20e30 ADDS            R0, #6
0x20e32 BL              sub_2246A
0x20e36 LDR             R1, [SP,#0x3C+var_28]
0x20e38 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20e3a ADDS            R3, R3, R1
0x20e3c LDR             R0, [R3,#0x18]
0x20e3e ADDS            R0, R7, R0
0x20e40 ADDS            R1, R6, #7
0x20e42 MOVS            R2, #0x96
0x20e44 ADDS            R0, #8
0x20e46 BL              sub_2246A
0x20e4a LDR             R2, [SP,#0x3C+var_20]
0x20e4c ADDS            R2, #1
0x20e4e STR             R2, [SP,#0x3C+var_20]
0x20e50 ADDS            R6, #0x9D
0x20e52 ADDS            R7, #0xA0
0x20e54 LDR             R5, =byte_150C79C
0x20e56 LDR             R1, [SP,#0x3C+var_28]
0x20e58 LDR             R3, [R5,#(dword_150C7A4 - 0x150C79C)]
0x20e5a ADDS            R2, R1, R3
0x20e5c LDRH            R3, [R2,#2]
0x20e5e LDR             R1, [SP,#0x3C+var_20]
0x20e60 CMP             R1, R3
0x20e62 BLT             loc_20DD8
0x20e64 LDR             R2, [SP,#0x3C+var_30]
0x20e66 LDR             R3, [SP,#0x3C+var_28]
0x20e68 ADDS            R2, #1
0x20e6a ADDS            R3, #0x1C
0x20e6c STR             R2, [SP,#0x3C+var_30]
0x20e6e STR             R3, [SP,#0x3C+var_28]
0x20e70 LDR             R7, =byte_150C79C
0x20e72 LDR             R1, [SP,#0x3C+var_30]
0x20e74 LDRB            R3, [R7]
0x20e76 CMP             R1, R3
0x20e78 BGE             loc_20E7C
0x20e7a B               loc_20C28
0x20e7c LDR             R2, [SP,#0x3C+var_34]
0x20e7e CMP             R2, #0
0x20e80 BEQ             loc_20E8A
0x20e82 MOVS            R0, R2
0x20e84 LDR             R3, =unk_14032FC
0x20e86 BL              sub_22468
0x20e8a LDR             R0, [SP,#0x3C+var_38]
0x20e8c LDR             R3, =unk_14032FC
0x20e8e BL              sub_22468
0x20e92 ADD             SP, SP, #0x3C ; '<'
0x20e94 POP             {R4-R7}
0x20e96 POP             {R0}
0x20e98 BX              R0