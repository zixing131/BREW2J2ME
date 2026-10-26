00012108  PUSH            {R4-R10,LR}
0001210c  LDR             R7, [R1]
00012110  MOV             R6, R1
00012114  ADD             R1, R0, #0x20 ; ' '
00012118  MOV             R4, R0
0001211c  LDM             R1, {R0,R1}
00012120  LDR             R8, =(start - 0x12134)
00012124  MOV             R5, #4
00012128  SUB             R1, R1, R0
0001212c  ADD             R8, PC, R8; start
00012130  CMP             R1, R7
00012134  BCS             loc_121EC
00012138  ADD             R0, R0, R7
0001213c  ADD             R0, R0, #0x64 ; 'd'
00012140  STR             R0, [R4,#0x24]
00012144  LDR             R1, [R8,#(dword_8 - 0xC)]
00012148  MOV             R0, R0,LSL#1
0001214c  LDR             R1, [R1,#0x68]
00012150  MOV             LR, PC
00012154  BX              R1
00012158  MOV             R9, R0
0001215c  LDR             R0, [R4,#0x20]
00012160  LDR             R1, [R4,#0x28]
00012164  MOV             R2, R0,LSL#1
00012168  LDR             R0, [R8,#(dword_8 - 0xC)]
0001216c  ADR             LR, loc_1217C
00012170  LDR             R3, [R0]
00012174  MOV             R0, R9
00012178  BX              R3
0001217c  LDR             R1, [R8,#(dword_8 - 0xC)]
00012180  LDR             R0, [R4,#0x28]
00012184  LDR             R1, [R1,#0x6C]
00012188  MOV             LR, PC
0001218c  BX              R1
00012190  STR             R9, [R4,#0x28]
00012194  LDR             R0, [R4,#0x24]
00012198  MOV             R10, #0x18
0001219c  LDR             R1, [R8,#(dword_8 - 0xC)]
000121a0  MUL             R0, R10, R0
000121a4  LDR             R1, [R1,#0x68]
000121a8  MOV             LR, PC
000121ac  BX              R1
000121b0  MOV             R9, R0
000121b4  LDR             R0, [R4,#0x20]
000121b8  LDR             R1, [R4,#0x2C]
000121bc  MUL             R2, R10, R0
000121c0  LDR             R0, [R8,#(dword_8 - 0xC)]
000121c4  ADR             LR, loc_121D4
000121c8  LDR             R3, [R0]
000121cc  MOV             R0, R9
000121d0  BX              R3
000121d4  LDR             R1, [R8,#(dword_8 - 0xC)]
000121d8  LDR             R0, [R4,#0x2C]
000121dc  LDR             R1, [R1,#0x6C]
000121e0  MOV             LR, PC
000121e4  BX              R1
000121e8  STR             R9, [R4,#0x2C]
000121ec  MOV             R9, #0
000121f0  B               loc_12278
000121f4  LDR             R0, [R6,R5]
000121f8  LDR             R2, [R4,#0x20]
000121fc  ADD             R5, R5, #4
00012200  MOV             R1, #0
00012204  B               loc_12220
00012208  LDR             R3, [R4,#0x28]
0001220c  ADD             R3, R3, R1,LSL#1
00012210  LDRH            R3, [R3]
00012214  CMP             R3, R0
00012218  BEQ             loc_12228
0001221c  ADD             R1, R1, #1
00012220  CMP             R2, R1
00012224  BHI             loc_12208
00012228  CMP             R2, R1
0001222c  BNE             loc_12270
00012230  LDR             R1, [R4,#0x28]
00012234  ADR             LR, loc_12264
00012238  ADD             R1, R1, R2,LSL#1
0001223c  STRH            R0, [R1]
00012240  LDR             R1, [R4,#0x20]
00012244  LDR             R0, [R4,#0x2C]
00012248  LDR             R2, [R8,#(dword_8 - 0xC)]
0001224c  ADD             R1, R1, R1,LSL#1
00012250  ADD             R0, R0, R1,LSL#3
00012254  LDR             R3, [R2]
00012258  MOV             R2, #0x18
0001225c  ADD             R1, R6, R5
00012260  BX              R3
00012264  LDR             R0, [R4,#0x20]
00012268  ADD             R0, R0, #1
0001226c  STR             R0, [R4,#0x20]
00012270  ADD             R5, R5, #0x18
00012274  ADD             R9, R9, #1
00012278  CMP             R9, R7
0001227c  BCC             loc_121F4
00012280  POP             {R4-R10,LR}
00012284  BX              LR
