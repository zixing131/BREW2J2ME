00017e2c  PUSH            {R4,LR}
00017e30  MOV             R4, R0
00017e34  MOV             R2, #0x2C ; ','
00017e38  MUL             R0, R2, R1
00017e3c  LDR             R1, =(start - 0x17E48)
00017e40  ADD             R1, PC, R1; start
00017e44  LDR             R1, [R1,#(dword_8 - 0xC)]
00017e48  LDR             R1, [R1,#0x68]
00017e4c  BLX             R1
00017e50  STR             R0, [R4]
00017e54  CMP             R0, #0
00017e58  MOVNE           R0, #0
00017e5c  MOVEQ           R0, #2
00017e60  POP             {R4,PC}
