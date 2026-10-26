0001228c  LDR             R3, [R0,#0x898]
00012290  CMP             R3, #0
00012294  BXEQ            LR
00012298  LDRH            R3, [R3]
0001229c  MOV             R3, R3,LSL#1
000122a0  STR             R3, [R1]
000122a4  LDR             R0, [R0,#0x898]
000122a8  LDRH            R0, [R0,#2]
000122ac  MOV             R0, R0,LSL#1
000122b0  STR             R0, [R2]
000122b4  BX              LR
