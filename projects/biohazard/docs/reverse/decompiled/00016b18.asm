00016b18  PUSH            {R4,LR}
00016b1c  MOV             R4, R0
00016b20  LDR             R0, =(start - 0x16B2C)
00016b24  ADD             R0, PC, R0; start
00016b28  LDR             R0, [R0,#(dword_8 - 0xC)]
00016b2c  MOV             R2, #0x17C
00016b30  LDR             R3, [R0,#4]
00016b34  MOV             R0, R4
00016b38  MOV             R1, #0
00016b3c  MOV             LR, PC
00016b40  BX              R3
00016b44  MOV             R0, #0
00016b48  STR             R0, [R4,#0x13C]
00016b4c  STRB            R0, [R4,#0x150]
00016b50  STRB            R0, [R4,#0x154]
00016b54  STR             R0, [R4,#0x15C]
00016b58  MOV             R0, #0xFFFFFFFF
00016b5c  STR             R0, [R4,#0x164]
00016b60  POP             {R4,LR}
00016b64  BX              LR
