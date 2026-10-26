00011928  PUSH            {R4-R6,LR}
0001192c  MOV             R4, R0
00011930  BL              sub_11A24
00011934  LDR             R0, [R4,#0x44]
00011938  CMP             R0, #0
0001193c  BEQ             loc_1194C
00011940  BL              sub_145C8
00011944  LDR             R0, [R4,#0x44]
00011948  BL              sub_145BC
0001194c  LDR             R5, =(start - 0x11958)
00011950  ADD             R5, PC, R5; start
00011954  LDR             R0, [R4,#0x48]
00011958  CMP             R0, #0
0001195c  LDRNE           R1, [R5,#(dword_8 - 0xC)]
00011960  ADRNE           LR, loc_1196C
00011964  LDRNE           R1, [R1,#0x6C]
00011968  BXNE            R1
0001196c  LDR             R0, [R4,#0x20]
00011970  MOV             R6, #0
00011974  CMP             R0, #0
00011978  BEQ             loc_11998
0001197c  BL              sub_22D38
00011980  LDR             R1, [R5,#(dword_8 - 0xC)]
00011984  LDR             R0, [R4,#0x20]
00011988  LDR             R1, [R1,#0x6C]
0001198c  MOV             LR, PC
00011990  BX              R1
00011994  STR             R6, [R4,#0x20]
00011998  LDR             R0, [R4,#0x2C]
0001199c  CMP             R0, #0
000119a0  BEQ             loc_119C0
000119a4  BL              sub_22A30
000119a8  LDR             R1, [R5,#(dword_8 - 0xC)]
000119ac  LDR             R0, [R4,#0x2C]
000119b0  LDR             R1, [R1,#0x6C]
000119b4  MOV             LR, PC
000119b8  BX              R1
000119bc  STR             R6, [R4,#0x2C]
000119c0  LDR             R0, [R4,#0x24]
000119c4  CMP             R0, #0
000119c8  BEQ             loc_119E8
000119cc  BL              sub_22B34
000119d0  LDR             R1, [R5,#(dword_8 - 0xC)]
000119d4  LDR             R0, [R4,#0x24]
000119d8  LDR             R1, [R1,#0x6C]
000119dc  MOV             LR, PC
000119e0  BX              R1
000119e4  STR             R6, [R4,#0x24]
000119e8  LDR             R0, [R4,#0x734]
000119ec  BL              sub_145D4
000119f0  LDR             R0, [R4,#0x28]
000119f4  CMP             R0, #0
000119f8  BEQ             loc_11A18
000119fc  BL              sub_22C00
00011a00  LDR             R1, [R5,#(dword_8 - 0xC)]
00011a04  LDR             R0, [R4,#0x28]
00011a08  LDR             R1, [R1,#0x6C]
00011a0c  MOV             LR, PC
00011a10  BX              R1
00011a14  STR             R6, [R4,#0x28]
00011a18  POP             {R4-R6,LR}
00011a1c  BX              LR
