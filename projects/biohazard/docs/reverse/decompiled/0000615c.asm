0000615c  PUSH            {R1-R9,LR}
00006160  LDR             R6, [SP,#0xC+arg_4]
00006164  LDR             R9, [SP,#0xC+arg_8]
00006168  LDR             R8, [SP,#0xC+arg_0]
0000616c  LDRH            R0, [R3]
00006170  MOV             R7, R3
00006174  MOV             R4, R2
00006178  CMP             R0, R1
0000617c  BNE             loc_61F8
00006180  LDR             R5, [R6]
00006184  MOV             R1, #8
00006188  ADD             R0, R5, #2
0000618c  BL              sub_9A0
00006190  STR             R0, [SP,#0xC+var_4]
00006194  ADD             R0, R5, #0xD
00006198  MOV             R1, #8
0000619c  BL              sub_9A0
000061a0  STR             R0, [SP,#0xC+var_8]
000061a4  LDRSH           R1, [R4]
000061a8  LDR             R2, [SP,#0xC+var_4]
000061ac  MOV             R3, #0
000061b0  CMP             R1, R2
000061b4  BGT             loc_61F8
000061b8  LDRSH           R12, [R4,#4]
000061bc  ADD             R1, R1, R12
000061c0  CMP             R1, R2
000061c4  BLE             loc_61F8
000061c8  LDRSH           R1, [R4,#2]
000061cc  CMP             R1, R0
000061d0  BGT             loc_61F8
000061d4  LDRSH           R2, [R4,#6]
000061d8  ADD             R1, R1, R2
000061dc  CMP             R1, R0
000061e0  MOVGT           R0, #0x100
000061e4  STRHGT          R0, [R7]
000061e8  STRHGT          R9, [R8]
000061ec  STRGT           R3, [R6]
000061f0  MOVGT           R0, #0
000061f4  BGT             locret_61FC
000061f8  MOV             R0, #0xFFFFFFFE
000061fc  POP             {R1-R9,PC}
