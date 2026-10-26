00020134  PUSH            {R4-R8,LR}
00020138  MOV             R5, R2
0002013c  MOVS            R4, R1
00020140  CMPNE           R5, #0
00020144  MOV             R6, R0
00020148  LDRNE           R0, [R6,#0x170]
0002014c  MOV             R7, R3
00020150  CMPNE           R0, #0
00020154  MOVEQ           R0, #0
00020158  BEQ             loc_20208
0002015c  LDRB            R1, [R4,#0x150]
00020160  MOV             R2, #0
00020164  ADD             R0, R4, #0x100
00020168  CMP             R1, #0
0002016c  BEQ             loc_201A0
00020170  LDRH            R1, [R0,#0x4E]
00020174  ADD             R1, R1, #1
00020178  BIC             R1, R1, #0x10000
0002017c  STRH            R1, [R0,#0x4E]
00020180  LDRB            R3, [R4,#0x150]
00020184  CMP             R3, #1
00020188  BNE             loc_20204
0002018c  LDRH            R3, [R0,#0x52]
00020190  CMP             R1, R3
00020194  STRBHI          R2, [R4,#0x150]
00020198  STRHHI          R2, [R0,#0x4E]
0002019c  B               loc_20204
000201a0  LDRB            R1, [R4,#0x154]
000201a4  CMP             R1, #0
000201a8  LDRHNE          R1, [R0,#0x56]
000201ac  ADDNE           R1, R1, #1
000201b0  BICNE           R1, R1, #0x10000
000201b4  STRHNE          R1, [R0,#0x56]
000201b8  LDRHNE          R3, [R0,#0x58]
000201bc  CMPNE           R1, R3
000201c0  BLS             loc_20210
000201c4  STRB            R2, [R4,#0x154]
000201c8  STRH            R2, [R0,#0x56]
000201cc  MOV             R0, #0xFFFFFFFF
000201d0  STR             R0, [R4,#0x164]
000201d4  LDR             R3, [R4,#0x15C]
000201d8  CMP             R3, #0
000201dc  BEQ             loc_20210
000201e0  MOV             R2, R7
000201e4  LDR             R8, [R5,#0x760]
000201e8  MOV             R1, R5
000201ec  MOV             R0, R4
000201f0  MOV             LR, PC
000201f4  BX              R3
000201f8  LDR             R0, [R5,#0x760]
000201fc  CMP             R0, R8
00020200  BEQ             loc_20210
00020204  MOV             R0, #1
00020208  POP             {R4-R8,LR}
0002020c  BX              LR
00020210  MOV             R2, R7
00020214  MOV             R1, R5
00020218  MOV             R0, R4
0002021c  LDR             R3, [R6,#0x170]
00020220  POP             {R4-R8,LR}
00020224  BX              R3
