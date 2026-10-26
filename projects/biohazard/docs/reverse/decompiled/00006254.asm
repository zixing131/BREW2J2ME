00006254  PUSH            {R3-R9,LR}
00006258  ADD             R8, R0, #0x200
0000625c  MOV             R6, R0
00006260  LDRSH           R0, [R8,#0x1C]
00006264  MOV             R4, #0
00006268  B               loc_6328
0000626c  ADD             R2, R6, R4,LSL#3
00006270  LDRB            R2, [R2,#0x21E]
00006274  CMP             R2, R1
00006278  BNE             loc_631C
0000627c  ADD             R0, R4, #1
00006280  MOV             R5, R0,LSL#16
00006284  ADD             R7, R6, #0x300
00006288  LDRSH           R0, [R7,#0x20]
0000628c  LDR             R9, =(start - 0x62A8)
00006290  MOV             R5, R5,ASR#16
00006294  CMP             R0, R4
00006298  SUBGT           R0, R0, #1
0000629c  STRHGT          R0, [R7,#0x20]
000062a0  ADD             R9, PC, R9; start
000062a4  B               loc_62DC
000062a8  ADD             R0, R6, R5,LSL#3
000062ac  ADD             R1, R0, #0x200
000062b0  LDR             R2, [R9,#(dword_8 - 0xC)]
000062b4  ADD             R0, R0, #0x200
000062b8  LDR             R3, [R2]
000062bc  MOV             R2, #8
000062c0  ADD             R0, R0, #0x16
000062c4  ADD             R1, R1, #0x1E
000062c8  MOV             LR, PC
000062cc  BX              R3
000062d0  ADD             R0, R5, #1
000062d4  MOV             R5, R0,LSL#16
000062d8  MOV             R5, R5,ASR#16
000062dc  LDRSH           R0, [R8,#0x1C]
000062e0  CMP             R0, R5
000062e4  BGT             loc_62A8
000062e8  LDRH            R0, [R8,#0x1C]
000062ec  SUB             R0, R0, #1
000062f0  STRH            R0, [R8,#0x1C]
000062f4  LDRSH           R0, [R7,#0x1E]
000062f8  CMP             R0, R4
000062fc  MOVEQ           R0, #0
00006300  STRHEQ          R0, [R7,#0x1E]
00006304  LDRSH           R0, [R7,#0x1E]
00006308  CMP             R0, R4
0000630c  SUBGT           R0, R0, #1
00006310  STRHGT          R0, [R7,#0x1E]
00006314  POP             {R3-R9,LR}
00006318  BX              LR
0000631c  ADD             R2, R4, #1
00006320  MOV             R4, R2,LSL#16
00006324  MOV             R4, R4,ASR#16
00006328  CMP             R0, R4
0000632c  BGT             loc_626C
00006330  B               loc_6314
