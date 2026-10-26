0x20ebc PUSH            {R4-R7,LR}
0x20ebe SUB             SP, SP, #0x28
0x20ec0 LDR             R0, =aNpcinfo; "npcInfo"
0x20ec2 LDR             R3, =0x6CBE1
0x20ec4 BL              sub_22468
0x20ec8 STR             R0, [SP,#0x28+var_24]
0x20eca CMP             R0, #0
0x20ecc BNE             loc_20ED0
0x20ece B               loc_21106
0x20ed0 MOV             R0, SP
0x20ed2 LDR             R5, =unk_140327C
0x20ed4 LDR             R1, [SP,#0x28+var_24]
0x20ed6 MOVS            R2, #2
0x20ed8 ADDS            R0, #0x26 ; '&'
0x20eda BL              sub_2246C
0x20ede LDR             R1, [SP,#0x28+var_24]
0x20ee0 MOVS            R2, #4
0x20ee2 ADDS            R1, #2
0x20ee4 ADD             R0, SP, #0x28+var_C
0x20ee6 BL              sub_2246C
0x20eea LDR             R1, [SP,#0x28+var_24]
0x20eec MOVS            R2, #4
0x20eee ADDS            R1, #6
0x20ef0 ADD             R0, SP, #0x28+var_8
0x20ef2 BL              sub_2246C
0x20ef6 LDR             R0, [SP,#0x28+var_C]
0x20ef8 LDR             R6, =unk_14032EC
0x20efa ADDS            R0, #2
0x20efc BL              sub_2246E
0x20f00 STR             R0, [SP,#0x28+var_20]
0x20f02 LDR             R0, [SP,#0x28+var_24]
0x20f04 MOVS            R1, #6
0x20f06 LDR             R3, [SP,#0x28+var_8]
0x20f08 LDR             R2, [SP,#0x28+var_C]
0x20f0a STR             R1, [SP,#0x28+var_28]
0x20f0c LDR             R4, =0x692B5
0x20f0e LDR             R1, [SP,#0x28+var_20]
0x20f10 ADDS            R0, #0xA
0x20f12 BL              sub_2246A
0x20f16 LDR             R4, =byte_150D160
0x20f18 MOVS            R2, #1
0x20f1a LDR             R1, [SP,#0x28+var_20]
0x20f1c MOVS            R0, R4
0x20f1e BL              sub_2246C
0x20f22 LDR             R1, [SP,#0x28+var_20]
0x20f24 ADDS            R1, #1
0x20f26 STR             R1, [SP,#0x28+var_10]
0x20f28 LDRB            R0, [R4]
0x20f2a LSLS            R0, R0, #4
0x20f2c BL              sub_2246E
0x20f30 MOVS            R2, #0
0x20f32 STR             R0, [R4,#(dword_150D164 - 0x150D160)]
0x20f34 STR             R0, [R4,#(dword_150D168 - 0x150D160)]
0x20f36 B               loc_210E2
0x20f38 LDR             R3, [SP,#0x28+var_1C]
0x20f3a LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f3c LSLS            R7, R3, #4
0x20f3e LDR             R5, =unk_140327C
0x20f40 LDR             R1, [SP,#0x28+var_10]
0x20f42 MOVS            R2, #1
0x20f44 ADDS            R0, R7, R0
0x20f46 BL              sub_2246C
0x20f4a LDR             R4, [SP,#0x28+var_10]
0x20f4c LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f4e ADDS            R4, #1
0x20f50 ADDS            R0, R7, R0
0x20f52 MOVS            R1, R4
0x20f54 MOVS            R2, #1
0x20f56 ADDS            R0, #1
0x20f58 BL              sub_2246C
0x20f5c LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f5e ADDS            R4, #1
0x20f60 ADDS            R0, R7, R0
0x20f62 MOVS            R1, R4
0x20f64 MOVS            R2, #1
0x20f66 ADDS            R0, #2
0x20f68 BL              sub_2246C
0x20f6c LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f6e ADDS            R4, #1
0x20f70 ADDS            R0, R7, R0
0x20f72 MOVS            R1, R4
0x20f74 MOVS            R2, #1
0x20f76 ADDS            R0, #3
0x20f78 BL              sub_2246C
0x20f7c LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f7e ADDS            R4, #1
0x20f80 ADDS            R0, R7, R0
0x20f82 MOVS            R1, R4
0x20f84 MOVS            R2, #1
0x20f86 ADDS            R0, #4
0x20f88 BL              sub_2246C
0x20f8c LDR             R0, [R6,#(dword_150D168 - 0x150D160)]
0x20f8e ADDS            R4, #1
0x20f90 ADDS            R0, R7, R0
0x20f92 MOVS            R1, R4
0x20f94 MOVS            R2, #2
0x20f96 ADDS            R0, #6
0x20f98 BL              sub_2246C
0x20f9c LDR             R1, [SP,#0x28+var_10]
0x20f9e LDR             R4, [R6,#(dword_150D168 - 0x150D160)]
0x20fa0 ADDS            R1, #7
0x20fa2 STR             R1, [SP,#0x28+var_10]
0x20fa4 ADDS            R4, R7, R4
0x20fa6 LDRB            R3, [R4]
0x20fa8 LSLS            R0, R3, #1
0x20faa ADDS            R0, R0, R3
0x20fac LSLS            R0, R0, #3
0x20fae LDR             R3, =unk_14032EC
0x20fb0 ADDS            R0, #2
0x20fb2 BL              sub_22468
0x20fb6 LDR             R3, [R6,#(dword_150D168 - 0x150D160)]
0x20fb8 STR             R0, [R4,#8]
0x20fba ADDS            R3, R7, R3
0x20fbc LDR             R2, [R3,#8]
0x20fbe STR             R2, [R3,#0xC]
0x20fc0 MOVS            R2, #0
0x20fc2 STR             R2, [SP,#0x28+var_18]
0x20fc4 STR             R2, [SP,#0x28+var_14]
0x20fc6 B               loc_210CE
0x20fc8 LDR             R0, [R2,#0xC]
0x20fca LDR             R3, [SP,#0x28+var_14]
0x20fcc LDR             R5, =unk_140327C
0x20fce ADDS            R0, R3, R0
0x20fd0 LDR             R1, [SP,#0x28+var_10]
0x20fd2 MOVS            R2, #1
0x20fd4 BL              sub_2246C
0x20fd8 LDR             R3, [R6,#(dword_150D168 - 0x150D160)]
0x20fda ADDS            R3, R3, R7
0x20fdc LDR             R0, [R3,#0xC]
0x20fde LDR             R1, [SP,#0x28+var_14]
0x20fe0 LDR             R4, [SP,#0x28+var_10]
0x20fe2 ADDS            R0, R1, R0
0x20fe4 ADDS            R4, #1
0x20fe6 MOVS            R1, R4
0x20fe8 MOVS            R2, #1
0x20fea ADDS            R0, #1
0x20fec BL              sub_2246C
0x20ff0 LDR             R3, [R6,#(dword_150D168 - 0x150D160)]
0x20ff2 ADDS            R3, R3, R7
0x20ff4 LDR             R3, [R3,#0xC]
0x20ff6 LDR             R2, [SP,#0x28+var_14]
0x20ff8 ADDS            R5, R2, R3
0x20ffa LDRB            R0, [R5,#1]
0x20ffc ADDS            R4, #1
0x20ffe CMP             R0, #0
0x21000 BEQ             loc_21048
0x21002 LSLS            R0, R0, #1
0x21004 LDR             R3, =unk_14032EC
0x21006 ADDS            R0, #2
0x21008 BL              sub_22468
0x2100c LDR             R3, [R6,#(dword_150D168 - 0x150D160)]
0x2100e ADDS            R3, R3, R7
0x21010 LDR             R3, [R3,#0xC]
0x21012 LDR             R1, [SP,#0x28+var_14]
0x21014 STR             R0, [R5,#4]
0x21016 ADDS            R3, R1, R3
0x21018 LDR             R2, [R3,#4]
0x2101a MOVS            R5, #0
0x2101c STR             R2, [R3,#8]
0x2101e B               loc_21034
0x21020 LDR             R3, [R2,#8]
0x21022 LSLS            R0, R5, #1
0x21024 ADDS            R0, R0, R3
0x21026 MOVS            R1, R4
0x21028 MOVS            R2, #2
0x2102a LDR             R3, =unk_140327C
0x2102c BL              sub_22468
0x21030 ADDS            R4, #2
0x21032 ADDS            R5, #1
0x21034 LDR             R3, =byte_150D160
0x21036 LDR             R3, [R3,#(dword_150D168 - 0x150D160)]
0x21038 ADDS            R3, R3, R7
0x2103a LDR             R3, [R3,#0xC]
0x2103c LDR             R1, [SP,#0x28+var_14]
0x2103e ADDS            R2, R1, R3
0x21040 LDRB            R3, [R2,#1]
0x21042 CMP             R5, R3
0x21044 BLT             loc_21020
0x21046 B               loc_2104A
0x21048 STR             R0, [R5,#8]
0x2104a LDR             R5, =byte_150D160
0x2104c LDR             R3, [R5,#(dword_150D168 - 0x150D160)]
0x2104e ADDS            R3, R3, R7
0x21050 LDR             R0, [R3,#0xC]
0x21052 LDR             R2, [SP,#0x28+var_14]
0x21054 ADDS            R0, R2, R0
0x21056 MOVS            R1, R4
0x21058 LDR             R3, =unk_140327C
0x2105a ADDS            R0, #0xC
0x2105c MOVS            R2, #1
0x2105e BL              sub_22468
0x21062 LDR             R3, [R5,#(dword_150D168 - 0x150D160)]
0x21064 ADDS            R3, R3, R7
0x21066 ADDS            R4, #1
0x21068 LDR             R3, [R3,#0xC]
0x2106a LDR             R1, [SP,#0x28+var_14]
0x2106c STR             R4, [SP,#0x28+var_10]
0x2106e ADDS            R4, R1, R3
0x21070 LDRB            R0, [R4,#0xC]
0x21072 CMP             R0, #0
0x21074 BEQ             loc_210C0
0x21076 LSLS            R0, R0, #1
0x21078 LDR             R3, =unk_14032EC
0x2107a ADDS            R0, #2
0x2107c BL              sub_22468
0x21080 LDR             R3, [R5,#(dword_150D168 - 0x150D160)]
0x21082 ADDS            R3, R3, R7
0x21084 LDR             R2, [SP,#0x28+var_14]
0x21086 LDR             R3, [R3,#0xC]
0x21088 STR             R0, [R4,#0x10]
0x2108a ADDS            R3, R2, R3
0x2108c LDR             R2, [R3,#0x10]
0x2108e MOVS            R4, #0
0x21090 STR             R2, [R3,#0x14]
0x21092 B               loc_210AC
0x21094 LDR             R3, [R2,#0x14]
0x21096 LSLS            R0, R4, #1
0x21098 ADDS            R0, R0, R3
0x2109a LDR             R1, [SP,#0x28+var_10]
0x2109c LDR             R3, =unk_140327C
0x2109e MOVS            R2, #2
0x210a0 BL              sub_22468
0x210a4 LDR             R3, [SP,#0x28+var_10]
0x210a6 ADDS            R3, #2
0x210a8 STR             R3, [SP,#0x28+var_10]
0x210aa ADDS            R4, #1
0x210ac LDR             R3, =byte_150D160
0x210ae LDR             R3, [R3,#(dword_150D168 - 0x150D160)]
0x210b0 ADDS            R3, R3, R7
0x210b2 LDR             R3, [R3,#0xC]
0x210b4 LDR             R1, [SP,#0x28+var_14]
0x210b6 ADDS            R2, R1, R3
0x210b8 LDRB            R3, [R2,#0xC]
0x210ba CMP             R4, R3
0x210bc BLT             loc_21094
0x210be B               loc_210C2
0x210c0 STR             R0, [R4,#0x14]
0x210c2 LDR             R2, [SP,#0x28+var_18]
0x210c4 LDR             R3, [SP,#0x28+var_14]
0x210c6 ADDS            R2, #1
0x210c8 ADDS            R3, #0x18
0x210ca STR             R2, [SP,#0x28+var_18]
0x210cc STR             R3, [SP,#0x28+var_14]
0x210ce LDR             R6, =byte_150D160
0x210d0 LDR             R3, [R6,#(dword_150D168 - 0x150D160)]
0x210d2 ADDS            R2, R7, R3
0x210d4 LDRB            R3, [R2]
0x210d6 LDR             R1, [SP,#0x28+var_18]
0x210d8 CMP             R1, R3
0x210da BGE             loc_210DE
0x210dc B               loc_20FC8
0x210de LDR             R2, [SP,#0x28+var_1C]
0x210e0 ADDS            R2, #1
0x210e2 STR             R2, [SP,#0x28+var_1C]
0x210e4 LDR             R6, =byte_150D160
0x210e6 LDR             R1, [SP,#0x28+var_1C]
0x210e8 LDRB            R3, [R6]
0x210ea CMP             R1, R3
0x210ec BGE             loc_210F0
0x210ee B               loc_20F38
0x210f0 LDR             R2, [SP,#0x28+var_20]
0x210f2 CMP             R2, #0
0x210f4 BEQ             loc_210FE
0x210f6 MOVS            R0, R2
0x210f8 LDR             R3, =unk_14032FC
0x210fa BL              sub_22468
0x210fe LDR             R0, [SP,#0x28+var_24]
0x21100 LDR             R3, =unk_14032FC
0x21102 BL              sub_22468
0x21106 ADD             SP, SP, #0x28 ; '('
0x21108 POP             {R4-R7}
0x2110a POP             {R0}
0x2110c BX              R0