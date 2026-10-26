000167e4  PUSH            {R3-R5,LR}
000167e8  MOV             R5, #0
000167ec  ADD             R2, R0, #0x40 ; '@'
000167f0  STM             R2, {R1,R5}
000167f4  STR             R5, [R0,#0x38]
000167f8  MOV             R4, R0
000167fc  MOV             R0, #0xFFFFFFFF
00016800  STRH            R0, [R4,#0x48]
00016804  STRH            R0, [R4,#0x4A]
00016808  STRH            R5, [R4,#0x3C]
0001680c  LDR             R0, =(start - 0x16820)
00016810  STRH            R5, [R4,#0x3E]
00016814  STRB            R5, [R4,#5]
00016818  ADD             R0, PC, R0; start
0001681c  LDR             R0, [R0,#(dword_8 - 0xC)]
00016820  ADR             LR, loc_1682C
00016824  LDR             R0, [R0,#0xC0]
00016828  BX              R0
0001682c  LDR             R0, [R0,#0x760]
00016830  LDR             R0, [R0,#0x190]
00016834  ADD             R0, R0, #0x28 ; '('
00016838  STR             R0, [R4,#0x34]
0001683c  STR             R5, [R4,#8]
00016840  STR             R5, [R4,#0xC]
00016844  STRH            R5, [R4,#0x28]
00016848  STRH            R5, [R4]
0001684c  STRH            R5, [R4,#2]
00016850  STRB            R5, [R4,#4]
00016854  POP             {R3-R5,LR}
00016858  BX              LR
