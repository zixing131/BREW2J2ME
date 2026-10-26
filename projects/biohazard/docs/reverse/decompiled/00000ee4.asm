00000ee4  PUSH            {R3-R9,LR}
00000ee8  LDR             R6, [SP,#4+arg_0]
00000eec  MOV             R8, R3
00000ef0  MOV             R7, R1
00000ef4  MOV             R5, R2
00000ef8  MOV             R4, R0
00000efc  BL              sub_22F60
00000f00  MOV             R0, #0
00000f04  STRB            R0, [R4,#6]
00000f08  STRH            R0, [R4]
00000f0c  CMP             R5, #0xA
00000f10  MOVHI           R5, #0xA
00000f14  STRH            R0, [R4,#2]
00000f18  STRH            R6, [R4,#0x5A]
00000f1c  MOV             R1, R5,LSL#16
00000f20  STR             R7, [R4,#0x44]
00000f24  MOVS            R1, R1,LSR#16
00000f28  STRH            R1, [R4,#0x40]
00000f2c  MOVEQ           R1, #1
00000f30  STRH            R1, [R4,#0x40]
00000f34  STR             R0, [R4,#0xC]
00000f38  STRH            R8, [R4,#0x3C]
00000f3c  MOV             R1, #3
00000f40  STRH            R1, [R4,#0x48]
00000f44  STRH            R1, [R4,#0x4A]
00000f48  STR             R0, [R4,#0x4C]
00000f4c  STRH            R0, [R4,#0x50]
00000f50  STRH            R0, [R4,#0x52]
00000f54  STRH            R0, [R4,#0x54]
00000f58  LDR             R9, =(start - 0xF74)
00000f5c  STRH            R0, [R4,#0x56]
00000f60  STRB            R0, [R4,#0x58]
00000f64  MOV             R7, #0
00000f68  MOV             R5, #0
00000f6c  ADD             R9, PC, R9; start
00000f70  B               loc_FF0
00000f74  LDR             R0, [R4,#0x44]
00000f78  MOV             R3, #0
00000f7c  ADD             R1, R0, R5
00000f80  LDR             R0, [R4,#8]
00000f84  MOV             R2, #0
00000f88  BL              sub_19618
00000f8c  MOV             R6, R0
00000f90  ADD             R8, R4, R5,LSL#2
00000f94  LDR             R0, [R8,#0x10]
00000f98  CMP             R0, #0
00000f9c  LDRNE           R1, [R9,#(dword_8 - 0xC)]
00000fa0  ADRNE           LR, loc_FAC
00000fa4  LDRNE           R1, [R1,#0x6C]
00000fa8  BXNE            R1
00000fac  LDR             R0, [R9,#(dword_8 - 0xC)]
00000fb0  LDR             R1, [R0,#0x68]
00000fb4  MOV             R0, R6
00000fb8  MOV             LR, PC
00000fbc  BX              R1
00000fc0  STR             R0, [R8,#0x10]
00000fc4  MOV             R2, R0
00000fc8  LDR             R0, [R4,#0x44]
00000fcc  MOV             R3, R6
00000fd0  ADD             R1, R0, R5
00000fd4  LDR             R0, [R4,#8]
00000fd8  BL              sub_19618
00000fdc  ADD             R0, R7, R6
00000fe0  ADD             R0, R0, #8
00000fe4  MOV             R7, R0,LSL#16
00000fe8  MOV             R7, R7,ASR#16
00000fec  ADD             R5, R5, #1
00000ff0  LDRH            R0, [R4,#0x40]
00000ff4  CMP             R0, R5
00000ff8  BGT             loc_F74
00000ffc  LDR             R0, [R4,#0x38]
00001000  CMP             R0, #0
00001004  LDRNE           R1, [R9,#(dword_8 - 0xC)]
00001008  ADRNE           LR, loc_1014
0000100c  LDRNE           R1, [R1,#0x6C]
00001010  BXNE            R1
00001014  LDR             R0, [R9,#(dword_8 - 0xC)]
00001018  LDR             R1, [R0,#0x68]
0000101c  MOV             R0, R7
00001020  MOV             LR, PC
00001024  BX              R1
00001028  STR             R0, [R4,#0x38]
0000102c  LDR             R1, [R9,#(dword_8 - 0xC)]
00001030  MOV             R2, R7
00001034  LDR             R3, [R1,#4]
00001038  MOV             R1, #0
0000103c  MOV             LR, PC
00001040  BX              R3
00001044  MOV             R0, #1
00001048  STRB            R0, [R4,#0x3E]
0000104c  POP             {R3-R9,LR}
00001050  BX              LR
