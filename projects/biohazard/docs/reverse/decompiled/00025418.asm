00025418  PUSH            {R2-R8,LR}
0002541c  MOV             R7, R1
00025420  LDR             R1, [R0,#0xE0]
00025424  MOV             R8, R3
00025428  MOV             R6, R2
0002542c  MOV             R4, R0
00025430  BL              sub_1058
00025434  CMP             R7, #0x100
00025438  SUBEQ           R12, R6, #0xE000
0002543c  MOV             R5, R0
00025440  LDR             R0, [R5]
00025444  SUBSEQ          R12, R12, #0x37 ; '7'
00025448  LDREQ           R6, =0xE030
0002544c  CMP             R0, #0
00025450  BEQ             loc_2546C
00025454  MOV             R3, R8
00025458  MOV             R2, R6
0002545c  MOV             R1, R7
00025460  BL              sub_14DEC
00025464  CMP             R0, #0
00025468  BNE             loc_255A8
0002546c  CMP             R7, #2
00025470  BEQ             loc_2554C
00025474  CMP             R7, #3
00025478  BEQ             loc_25574
0002547c  CMP             R7, #0x100
00025480  BNE             loc_255B0
00025484  SUB             R12, R6, #0xE000
00025488  SUBS            R12, R12, #0x36 ; '6'
0002548c  SUBNE           R12, R6, #0xE000
00025490  SUBSNE          R12, R12, #0x35 ; '5'
00025494  BNE             loc_25500
00025498  LDR             R0, [R5]
0002549c  BL              sub_14DE4
000254a0  LDR             R1, =(start - 0x254AC)
000254a4  ADD             R1, PC, R1; start
000254a8  LDR             R1, [R1,#(dword_8 - 0xC)]
000254ac  LDR             R1, [R1,#0x30]
000254b0  BLX             R1
000254b4  CMP             R0, #0
000254b8  BLE             loc_255A8
000254bc  LDR             R0, [R5]
000254c0  BL              sub_14DD4
000254c4  CMP             R0, #0
000254c8  BNE             loc_255A8
000254cc  ADD             R1, R5, #0x4C ; 'L'
000254d0  MOV             R0, R4
000254d4  BL              sub_24F9C
000254d8  MOV             R1, #0
000254dc  LDR             R0, [R5]
000254e0  BL              sub_152CC
000254e4  MOV             R0, #4
000254e8  STRB            R0, [R4,#0xD5]
000254ec  MOV             R0, R4
000254f0  BL              sub_162C
000254f4  MOV             R0, R4
000254f8  BL              sub_243A0
000254fc  B               loc_255A8
00025500  SUB             R12, R6, #0xE000
00025504  SUBS            R12, R12, #0x37 ; '7'
00025508  SUBNE           R12, R6, #0xE000
0002550c  SUBSNE          R12, R12, #0x30 ; '0'
00025510  BNE             loc_255B0
00025514  ADD             R1, R5, #0x4C ; 'L'
00025518  MOV             R0, R4
0002551c  BL              sub_24F9C
00025520  MOV             R1, #0
00025524  LDR             R0, [R5]
00025528  BL              sub_152CC
0002552c  MOV             R3, #0
00025530  STR             R3, [SP,#8+var_8]
00025534  STR             R3, [SP,#8+var_4]
00025538  MOV             R2, #0
0002553c  LDR             R1, =(off_3EC+1)
00025540  MOV             R0, R4
00025544  BL              sub_21CCC
00025548  B               loc_255A8
0002554c  MOV             R1, #0
00025550  LDR             R0, [R5]
00025554  BL              sub_152CC
00025558  ADD             R1, R4, #0xD8
0002555c  MOV             R0, R4
00025560  BL              sub_1837C
00025564  ADD             R1, R5, #0x4C ; 'L'
00025568  MOV             R0, R4
0002556c  BL              sub_24F9C
00025570  B               loc_255A8
00025574  LDR             R1, [R4,#0xD8]
00025578  MOV             R0, R4
0002557c  BL              sub_182E8
00025580  ADD             R1, R5, #0x4C ; 'L'
00025584  MOV             R0, R4
00025588  BL              sub_24EB4
0002558c  MOV             R1, #1
00025590  LDR             R0, [R5]
00025594  BL              sub_152CC
00025598  LDR             R0, [R5]
0002559c  BL              sub_14FF8
000255a0  LDR             R0, [R5,#0xC]
000255a4  BL              sub_145AC
000255a8  MOV             R0, #1
000255ac  POP             {R2-R8,PC}
000255b0  MOV             R0, #0
000255b4  B               locret_255AC
