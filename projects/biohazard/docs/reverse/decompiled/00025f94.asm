00025f94  PUSH            {R4-R6,LR}
00025f98  LDR             R1, [R0,#0xE0]
00025f9c  MOV             R5, R0
00025fa0  BL              sub_1058
00025fa4  LDR             R1, [R0,#0x9C]
00025fa8  MOV             R4, R0
00025fac  CMP             R1, #0
00025fb0  ADDNE           R0, R4, #0x94
00025fb4  BLXNE           R1
00025fb8  LDR             R1, [R4,#0xB8]
00025fbc  CMP             R1, #0
00025fc0  ADDNE           R0, R4, #0xB0
00025fc4  BLXNE           R1
00025fc8  LDR             R0, [R5]
00025fcc  MOV             R2, R5
00025fd0  LDR             R1, [R0]
00025fd4  LDR             R3, [R1,#0x30]
00025fd8  LDR             R1, =(sub_26D18 - 0x25FE4)
00025fdc  ADD             R1, PC, R1; sub_26D18
00025fe0  BLX             R3
00025fe4  LDR             R0, [R4,#0x90]
00025fe8  MOV             R5, #0
00025fec  CMP             R0, #0
00025ff0  BEQ             loc_25FFC
00025ff4  BL              sub_14314
00025ff8  STR             R5, [R4,#0x90]
00025ffc  LDR             R0, [R4,#0x8C]
00026000  CMP             R0, #0
00026004  BEQ             loc_26010
00026008  BL              sub_14314
0002600c  STR             R5, [R4,#0x8C]
00026010  LDR             R6, =(start - 0x2601C)
00026014  ADD             R6, PC, R6; start
00026018  LDR             R0, [R4,#0x17C]
0002601c  CMP             R0, #0
00026020  BEQ             loc_26034
00026024  LDR             R1, [R6,#(dword_8 - 0xC)]
00026028  LDR             R1, [R1,#0x6C]
0002602c  BLX             R1
00026030  STR             R5, [R4,#0x17C]
00026034  LDR             R0, [R4,#0x178]
00026038  CMP             R0, #0
0002603c  BEQ             loc_26050
00026040  LDR             R1, [R6,#(dword_8 - 0xC)]
00026044  LDR             R1, [R1,#0x6C]
00026048  BLX             R1
0002604c  STR             R5, [R4,#0x178]
00026050  STR             R5, [R4,#0x184]
00026054  STR             R5, [R4,#0x180]
00026058  STR             R5, [R4,#0x188]
0002605c  POP             {R4-R6,PC}
