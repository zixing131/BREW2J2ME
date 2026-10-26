0001627c  PUSH            {R3-R5,LR}
00016280  MOV             R2, #6
00016284  STRH            R2, [R0]
00016288  MOV             R5, #0
0001628c  LDR             R4, =0x197D
00016290  STRH            R5, [R0,#2]
00016294  MOV             R2, #0
00016298  ADD             R12, R2, #0x2300
0001629c  ADD             R12, R12, #0x32 ; '2'
000162a0  ADD             R3, R0, R2,LSL#3
000162a4  STRH            R12, [R3,#4]
000162a8  CMP             R2, #0
000162ac  LDRNE           R12, [R0,#0x110]
000162b0  ADDNE           LR, R2, R2,LSL#2
000162b4  LDRNE           R12, [R12,#8]
000162b8  ADDNE           R12, R12, LR,LSL#2
000162bc  LDRHNE          R12, [R12,#-0x12]
000162c0  STRHNE          R12, [R3,#6]
000162c4  SUB             R12, R2, #1
000162c8  STRHEQ          R4, [R0,#6]
000162cc  STRH            R12, [R3,#8]
000162d0  STRH            R5, [R3,#0xA]
000162d4  LDRSH           R3, [R0]
000162d8  ADD             R2, R2, #1
000162dc  MOV             R2, R2,LSL#16
000162e0  MOV             R2, R2,ASR#16
000162e4  CMP             R3, R2
000162e8  BGT             loc_16298
000162ec  LDR             R2, [R0,#0x110]
000162f0  ADD             R4, R0, #0x100
000162f4  LDR             R3, [R2]
000162f8  SUB             R1, R1, #0x92
000162fc  LDRB            R12, [R3,#0x2F]
00016300  MOV             R3, #1
00016304  CMP             R12, #0
00016308  STRHNE          R3, [R0,#0x12]
0001630c  LDR             R2, [R2]
00016310  LDRB            R2, [R2,#0x2E]
00016314  CMP             R2, #0
00016318  STRHNE          R3, [R0,#0x2A]
0001631c  STRH            R5, [R4,#4]
00016320  MOV             R0, #0x19
00016324  STRH            R0, [R4,#0xA]
00016328  BL              sub_104
0001632c  CMP             R0, #6
00016330  BGE             loc_16340
00016334  CMP             R0, #2
00016338  MOVLE           R0, #2
0001633c  BLE             loc_16348
00016340  CMP             R0, #6
00016344  MOVGE           R0, #6
00016348  STRH            R0, [R4,#6]
0001634c  STRH            R5, [R4,#8]
00016350  STRH            R5, [R4,#0x20]
00016354  POP             {R3-R5,LR}
00016358  BX              LR
