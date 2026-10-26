00016444  PUSH            {R4-R8,LR}
00016448  MOV             R4, R0
0001644c  LDR             R0, [R0,#0x110]
00016450  MOV             R7, #0
00016454  ADD             R0, R0, #0x200
00016458  LDRH            R0, [R0,#0x1C]
0001645c  MOV             R8, R1
00016460  MOV             R5, #0
00016464  STRH            R0, [R4]
00016468  STRH            R7, [R4,#2]
0001646c  B               loc_164C8
00016470  LDR             R0, [R4,#0x110]
00016474  ADD             R6, R4, R5,LSL#3
00016478  ADD             R1, R0, R5,LSL#3
0001647c  LDRB            R1, [R1,#0x21F]
00016480  LDR             R0, [R0,#0x10]
00016484  ADD             R1, R1, R1,LSL#3
00016488  ADD             R0, R0, R1,LSL#3
0001648c  LDRH            R1, [R0,#0x32]
00016490  STRH            R1, [R6,#4]
00016494  LDRH            R0, [R0,#0x34]
00016498  MOV             R1, R5
0001649c  STRH            R0, [R6,#6]
000164a0  LDR             R0, [R4,#0x110]
000164a4  ADD             R0, R0, R5,LSL#3
000164a8  LDRB            R0, [R0,#0x21F]
000164ac  STRH            R0, [R6,#8]
000164b0  LDR             R0, [R4,#0x110]
000164b4  BL              sub_12E5C
000164b8  STRH            R0, [R6,#0xA]
000164bc  ADD             R0, R5, #1
000164c0  MOV             R5, R0,LSL#16
000164c4  MOV             R5, R5,ASR#16
000164c8  LDRSH           R0, [R4]
000164cc  CMP             R0, R5
000164d0  BGT             loc_16470
000164d4  ADD             R5, R4, #0x100
000164d8  STRH            R7, [R5,#4]
000164dc  MOV             R0, #0x24 ; '$'
000164e0  STRH            R0, [R5,#0xA]
000164e4  SUB             R1, R8, #0x64 ; 'd'
000164e8  BL              sub_104
000164ec  LDRSH           R1, [R4]
000164f0  CMP             R0, R1
000164f4  MOVGE           R0, R1
000164f8  STRH            R0, [R5,#6]
000164fc  MOV             R0, #3
00016500  STRH            R0, [R5,#8]
00016504  POP             {R4-R8,LR}
00016508  BX              LR
