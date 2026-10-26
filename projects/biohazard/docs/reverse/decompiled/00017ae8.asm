00017ae8  PUSH            {R4,LR}
00017aec  MOV             R4, R0
00017af0  MOV             R1, R0
00017af4  BL              sub_17ACC
00017af8  MOV             R1, R4
00017afc  ADD             R0, R4, #0x810
00017b00  BL              sub_167C0
00017b04  ADD             R0, R4, #0x800
00017b08  ADD             R0, R0, #0x28 ; '('
00017b0c  MOV             R1, R4
00017b10  BL              sub_17858
00017b14  MOV             R0, #0
00017b18  STR             R0, [R4,#0x878]
00017b1c  STR             R0, [R4,#0x87C]
00017b20  STR             R0, [R4,#0x880]
00017b24  STR             R0, [R4,#0x884]
00017b28  STR             R0, [R4,#0x888]
00017b2c  STR             R0, [R4,#0x88C]
00017b30  STR             R0, [R4,#0x890]
00017b34  STR             R0, [R4,#0x894]
00017b38  STR             R0, [R4,#0x898]
00017b3c  STR             R0, [R4,#0x8A4]
00017b40  STR             R0, [R4,#0x8BC]
00017b44  STR             R0, [R4,#0x8C0]
00017b48  STR             R0, [R4,#0x8C4]
00017b4c  STR             R0, [R4,#0x8C8]
00017b50  STR             R0, [R4,#0x8CC]
00017b54  STR             R0, [R4,#0x8B0]
00017b58  POP             {R4,LR}
00017b5c  BX              LR
