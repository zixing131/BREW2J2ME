00017184  PUSH            {R3-R5,LR}
00017188  MOV             R4, R0
0001718c  ADD             R3, R4, #0x13C
00017190  MOV             R0, #7
00017194  MOV             R5, #0
00017198  STM             R3, {R0,R5}
0001719c  LDR             R0, =(sub_1D460 - 0x171A8)
000171a0  ADD             R0, PC, R0; sub_1D460
000171a4  STR             R0, [R4,#0x16C]
000171a8  LDR             R0, =(sub_202F0 - 0x171B4)
000171ac  ADD             R0, PC, R0; sub_202F0
000171b0  STR             R0, [R4,#0x170]
000171b4  LDR             R0, =(sub_13774 - 0x171C0)
000171b8  ADD             R0, PC, R0; sub_13774
000171bc  STR             R0, [R4,#0x174]
000171c0  LDR             R0, =(sub_11AD0 - 0x171CC)
000171c4  ADD             R0, PC, R0; sub_11AD0
000171c8  STR             R0, [R4,#0x178]
000171cc  LDR             R0, [R1,#0x24]
000171d0  BL              sub_22508
000171d4  MOV             R0, #0x17C
000171d8  STRH            R5, [R0,R4]
000171dc  MOV             R0, R4
000171e0  BL              sub_166E4
000171e4  POP             {R3-R5,LR}
000171e8  MOV             R0, #1
000171ec  BX              LR
