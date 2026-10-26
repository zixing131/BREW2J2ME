0001660c  PUSH            {R4-R6,LR}
00016610  STR             R1, [R0]
00016614  MOV             R4, R0
00016618  LDR             R0, [R1,#8]
0001661c  ADD             R3, R4, #8
00016620  STR             R0, [R4,#4]
00016624  ADD             R0, R1, #0x28 ; '('
00016628  STM             R3, {R0,R2}
0001662c  LDR             R0, =(off_3EC+1)
00016630  MOV             R6, #0
00016634  STRB            R6, [R4,#0x10]
00016638  STR             R0, [R4,#0x158]
0001663c  LDR             R0, [R1,#8]
00016640  ADD             R5, R2, R2,LSL#2
00016644  ADD             R3, R0, R5,LSL#2
00016648  LDRB            R0, [R3,#6]
0001664c  CMP             R0, #0
00016650  BEQ             loc_16670
00016654  LDR             R1, [R1]
00016658  ADD             R1, R1, R2
0001665c  LDRB            R1, [R1,#4]
00016660  CMP             R0, R1
00016664  MOVLS           R0, #4
00016668  BLS             loc_1668C
0001666c  B               loc_16690
00016670  LDR             R0, [R1]
00016674  ADD             R0, R0, R2
00016678  LDRB            R0, [R0,#0x18]
0001667c  LDRB            R1, [R3,#4]
00016680  CMP             R0, R1
00016684  BCC             loc_16690
00016688  MOV             R0, #2
0001668c  STRB            R0, [R4,#0x10]
00016690  LDR             R0, =(start - 0x1669C)
00016694  ADD             R0, PC, R0; start
00016698  LDR             R0, [R0,#(dword_8 - 0xC)]
0001669c  ADR             LR, loc_166A8
000166a0  LDR             R0, [R0,#0xC0]
000166a4  BX              R0
000166a8  LDR             R1, [R4]
000166ac  LDR             R0, [R0,#0x28]
000166b0  LDR             R1, [R1,#8]
000166b4  MOV             R3, #0xF0
000166b8  ADD             R1, R1, R5,LSL#2
000166bc  LDRH            R1, [R1,#2]
000166c0  ADD             R2, R4, #0x32 ; '2'
000166c4  BL              sub_19618
000166c8  STRB            R6, [R4,#0x122]
000166cc  STR             R6, [R4,#0x124]
000166d0  STR             R6, [R4,#0x128]
000166d4  POP             {R4-R6,LR}
000166d8  BX              LR
